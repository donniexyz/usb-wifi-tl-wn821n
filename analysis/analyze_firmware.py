#!/usr/bin/env python3
"""
Static analysis of a Realtek RTL8192EU firmware blob (rtl8192eu_nic.bin).

- Decodes the 32-byte Realtek firmware header (struct rtl8xxxu_firmware_header
  layout, drivers/net/wireless/realtek/rtl8xxxu).
- Disassembles the 8051 program image (payload after the header, which the
  driver downloads into the dongle's code RAM starting at address 0).
- Recovers the interrupt vector table, functions (call targets), call graph,
  strings, string xrefs, DPTR (memory-mapped I/O window) usage, jump tables
  and code/data coverage.

Outputs (same directory):
  disasm.asm      - annotated 8051 disassembly listing
  functions.txt   - function table + call graph
  strings.txt     - ASCII strings with RAM/file offsets + xrefs
  map.txt         - memory map / coverage / entropy / DPTR histogram
  report.md       - human-readable summary
"""
import os, re, math, struct, sys
from collections import defaultdict, Counter

HERE = os.path.dirname(os.path.abspath(__file__))
BIN = sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, "..", "rtl8192eu_nic.bin")

data = open(BIN, "rb").read()
HDR = data[:32]
IMG = data[32:]
N = len(IMG)

# ----------------------------------------------------------------------------
# 8051 opcode table:  op -> (mnemonic, size, fmt)  fmt = per-operand-byte chars
#   d=direct  #=imm8  b=bitaddr  r=rel   P=addr16 target  N=imm16  Q=addr11
# ----------------------------------------------------------------------------
T = {}
def put(op, m, s, f=""): T[op] = (m, s, f)

put(0x00, "NOP", 1)
for op in (0x01, 0x21, 0x41, 0x61, 0x81, 0xA1, 0xC1, 0xE1): put(op, "AJMP", 2, "Q")
put(0x02, "LJMP", 3, "P")
put(0x03, "RR A", 1); put(0x04, "INC A", 1)
put(0x05, "INC", 2, "d")
put(0x06, "INC", 1, "@"); put(0x07, "INC", 1, "@")
for r in range(8): put(0x08 + r, "INC R%d" % r, 1)
put(0x10, "JBC", 3, "br")
for op in (0x11, 0x31, 0x51, 0x71, 0x91, 0xB1, 0xD1, 0xF1): put(op, "ACALL", 2, "Q")
put(0x12, "LCALL", 3, "P")
put(0x13, "RRC A", 1); put(0x14, "DEC A", 1)
put(0x15, "DEC", 2, "d")
put(0x16, "DEC", 1, "@"); put(0x17, "DEC", 1, "@")
for r in range(8): put(0x18 + r, "DEC R%d" % r, 1)
put(0x20, "JB", 3, "br"); put(0x30, "JNB", 3, "br")
put(0x22, "RET", 1); put(0x23, "RL A", 1); put(0x33, "RLC A", 1)
put(0x32, "RETI", 1)
put(0x42, "ORL dir,A", 2, "d"); put(0x43, "ORL dir,#", 3, "d#")
put(0x52, "ANL dir,A", 2, "d"); put(0x53, "ANL dir,#", 3, "d#")
put(0x62, "XRL dir,A", 2, "d"); put(0x63, "XRL dir,#", 3, "d#")
for base, mn in ((0x24, "ADD A,"), (0x34, "ADDC A,"), (0x44, "ORL A,"),
                 (0x54, "ANL A,"), (0x64, "XRL A,"), (0x74, "MOV A,"),
                 (0x94, "SUBB A,")):
    put(base, mn + "#", 2, "#")
    put(base + 1, mn + "dir", 2, "d")
    put(base + 2, mn + "@R0", 1, "@"); put(base + 3, mn + "@R1", 1, "@")
    for r in range(8): put(base + 4 + r, mn + "R%d" % r, 1)
put(0x40, "JC", 2, "r"); put(0x50, "JNC", 2, "r")
put(0x60, "JZ", 2, "r"); put(0x70, "JNZ", 2, "r")
put(0x72, "ORL C,bit", 2, "b"); put(0xA0, "ORL C,/bit", 2, "b")
put(0x82, "ANL C,bit", 2, "b"); put(0xB0, "ANL C,/bit", 2, "b")
put(0x73, "JMP @A+DPTR", 1)
put(0x83, "MOVC A,@A+PC", 1); put(0x93, "MOVC A,@A+DPTR", 1)
put(0x84, "DIV AB", 1); put(0xA4, "MUL AB", 1); put(0xA5, ".DB 0xA5", 1)
put(0x80, "SJMP", 2, "r")
put(0x85, "MOV dir,dir", 3, "dd")          # note: operand bytes are src,dst
put(0x86, "MOV dir,@R0", 2, "d"); put(0x87, "MOV dir,@R1", 2, "d")
for r in range(8): put(0x88 + r, "MOV dir,R%d" % r, 2, "d")
put(0x90, "MOV DPTR,#", 3, "N")
put(0x92, "MOV bit,C", 2, "b"); put(0xA2, "MOV C,bit", 2, "b")
put(0xA3, "INC DPTR", 1)
put(0xA6, "MOV @R0,dir", 2, "d"); put(0xA7, "MOV @R1,dir", 2, "d")
for r in range(8): put(0xA8 + r, "MOV R%d,dir" % r, 2, "d")
put(0xB2, "CPL bit", 2, "b")
put(0xB3, "CPL C", 1); put(0xC3, "CLR C", 1); put(0xD3, "SETB C", 1)
put(0xC2, "CLR bit", 2, "b"); put(0xD2, "SETB bit", 2, "b")
put(0xB4, "CJNE A,#", 3, "#r"); put(0xB5, "CJNE A,dir", 3, "dr")
put(0xB6, "CJNE @R0,#", 3, "#r"); put(0xB7, "CJNE @R1,#", 3, "#r")
for r in range(8): put(0xB8 + r, "CJNE R%d,#" % r, 3, "#r")
put(0x75, "MOV dir,#", 3, "d#")
put(0x76, "MOV @R0,#", 2, "#"); put(0x77, "MOV @R1,#", 2, "#")
for r in range(8): put(0x78 + r, "MOV R%d,#" % r, 2, "#")
put(0xC0, "PUSH dir", 2, "d"); put(0xD0, "POP dir", 2, "d")
put(0xC4, "SWAP A", 1); put(0xD4, "DA A", 1)
put(0xE4, "CLR A", 1); put(0xF4, "CPL A", 1)
put(0xC5, "XCH A,dir", 2, "d")
put(0xC6, "XCH A,@R0", 1); put(0xC7, "XCH A,@R1", 1)
for r in range(8): put(0xC8 + r, "XCH A,R%d" % r, 1)
put(0xD5, "DJNZ dir,", 3, "dr")
for r in range(8): put(0xD8 + r, "DJNZ R%d," % r, 2, "r")
put(0xD6, "XCHD A,@R0", 1); put(0xD7, "XCHD A,@R1", 1)
put(0xE0, "MOVX A,@DPTR", 1); put(0xF0, "MOVX @DPTR,A", 1)
put(0xE2, "MOVX A,@R0", 1); put(0xE3, "MOVX A,@R1", 1)
put(0xF2, "MOVX @R0,A", 1); put(0xF3, "MOVX @R1,A", 1)
put(0xE5, "MOV A,dir", 2, "d")
put(0xE6, "MOV A,@R0", 1); put(0xE7, "MOV A,@R1", 1)
for r in range(8): put(0xE8 + r, "MOV A,R%d" % r, 1)
put(0xF5, "MOV dir,A", 2, "d")
put(0xF6, "MOV @R0,A", 1); put(0xF7, "MOV @R1,A", 1)
for r in range(8): put(0xF8 + r, "MOV R%d,A" % r, 1)
assert len(T) == 256, len(T)

UNCOND = set([0x02]) | {op for op in T if T[op][0] == "AJMP"}
TERMINATE = UNCOND | {0x22, 0x32, 0x73}          # LJMP/AJMP/RET/RETI/JMP@A+DPTR
CALLS = {0x12} | {op for op in T if T[op][0] == "ACALL"}

SFR = {0x80: "P0", 0x81: "SP", 0x82: "DPL", 0x83: "DPH", 0x87: "PCON",
       0x88: "TCON", 0x89: "TMOD", 0x8A: "TL0", 0x8B: "TL1", 0x8C: "TH0",
       0x8D: "TH1", 0x90: "P1", 0x98: "SCON", 0x99: "SBUF", 0xA0: "P2",
       0xA8: "IE", 0xB0: "P3", 0xB8: "IP", 0xC8: "T2CON", 0xCA: "RCAP2L",
       0xCB: "RCAP2H", 0xCC: "TL2", 0xCD: "TH2", 0xD0: "PSW", 0xE0: "ACC",
       0xF0: "B"}

def fmt_direct(v):
    return SFR.get(v, "0x%02X" % v)

def fmt_bit(v):
    base, bit = v & 0xF8, v & 7
    name = SFR.get(base)
    if name: return "%s.%d" % (name, bit)
    return "0x%02X.%d" % (base, bit)

# ----------------------------------------------------------------------------
# decode one instruction; returns (text, size, targets, call_targets, dptr_imm)
# ----------------------------------------------------------------------------
def decode(a):
    op = IMG[a]
    m, s, f = T[op]
    ob = [IMG[a + 1 + i] for i in range(s - 1)]
    targets, calls, ops, dptr_imm = [], [], [], None
    ti = 0
    special_85 = (op == 0x85 and len(ob) == 2)
    if special_85:  # encoding is src,dst
        ob = [ob[1], ob[0]]
    for c in f:
        v = ob[ti]; ti += 1
        if c == "d":
            ops.append(fmt_direct(v))
        elif c == "#":
            ops.append("#0x%02X" % v)
        elif c == "b":
            ops.append(fmt_bit(v))
        elif c == "r":
            t = (a + s + (v - 256 if v > 127 else v)) & 0xFFFF
            ops.append("0x%04X" % t); targets.append(t)
        elif c == "P":
            t = (ob[ti - 1] << 8) | ob[ti]; ti += 1
            ops.append("0x%04X" % t); targets.append(t)
            if op == 0x12: calls.append(t)
        elif c == "N":
            v16 = (ob[ti - 1] << 8) | ob[ti]; ti += 1
            ops.append("#0x%04X" % v16)
            if op == 0x90:
                dptr_imm = v16
                targets.append(v16)   # may point at table/string
        elif c == "Q":
            t = (((a + 2) & 0xF800) | (((op & 0xE0) << 3) | ob[ti - 1]))
            ops.append("0x%04X" % t); targets.append(t)
            if T[op][0] == "ACALL": calls.append(t)
        elif c == "@":
            ops.append("@R%d" % (op & 1))
    text = m + (" " + ", ".join(ops) if ops else "")
    text = text.replace("dir,", "").replace("dir", "") if False else text
    return text, s, targets, calls, dptr_imm

# ----------------------------------------------------------------------------
# 1) header
# ----------------------------------------------------------------------------
def u16(o): return struct.unpack_from("<H", HDR, o)[0]
def u32(o): return struct.unpack_from("<I", HDR, o)[0]

hdr = dict(
    signature=u16(0), category=HDR[2], function=HDR[3],
    major_version=u16(4), minor_version=HDR[6],
    month=HDR[7], day=HDR[8], hour=HDR[9], minute=HDR[10],
    reserved_b=HDR[11], rambcodesize=u16(12), reserved2=u16(14),
    svn_idx=u32(16),
)

# ----------------------------------------------------------------------------
# 2) recursive-descent disassembly from vectors
#    Realtek's enhanced 8051 keeps the classic 8-byte-spaced vector slots;
#    auto-detect every slot in 0x00..0x5F that holds an LJMP.
# ----------------------------------------------------------------------------
SLOT_NAME = {0x00: "RESET", 0x03: "IRQ slot 1 (INT0)", 0x0B: "IRQ slot 2 (TMR0)",
             0x13: "IRQ slot 3 (INT1)", 0x1B: "IRQ slot 4 (TMR1)",
             0x23: "IRQ slot 5 (serial)", 0x2B: "IRQ slot 6 (TMR2)",
             0x33: "IRQ slot 7", 0x3B: "IRQ slot 8", 0x43: "IRQ slot 9",
             0x4B: "IRQ slot 10", 0x53: "IRQ slot 11", 0x5B: "IRQ slot 12"}

vec_targets = {}
for off in [0x00] + list(range(0x03, 0x60, 8)):
    if IMG[off] == 0x02:
        t = (IMG[off + 1] << 8) | IMG[off + 2]
        if t < N:
            vec_targets[off] = t

code = {}        # addr -> (text, size, raw)
seen = set()
call_targets = set()
jump_targets = set()
dptr_refs = []   # (addr, imm)
jumps_via_dptr = []

stack = list(vec_targets.values())
while stack:
    a = stack.pop()
    while True:
        if a in seen or not (0 <= a < N - 1):
            break
        op = IMG[a]
        if op not in T:
            seen.add(a); break
        try:
            text, s, tg, cl, dp = decode(a)
        except IndexError:
            break
        seen.add(a)
        code[a] = (text, s, IMG[a:a + s])
        for t in tg: jump_targets.add(t)
        for t in cl: call_targets.add(t)
        if dp is not None:
            dptr_refs.append((a, dp))
        if op == 0x73:
            jumps_via_dptr.append(a)
        for t in tg:
            if 0 <= t < N and t not in seen:
                stack.append(t)
        if op in TERMINATE:
            break
        a += s

# ----------------------------------------------------------------------------
# 3) strings
# ----------------------------------------------------------------------------
strings = {}   # start -> text
for m in re.finditer(rb"[\x20-\x7e]{6,}", IMG):
    a, s = m.start(), m.end() - m.start()
    tx = IMG[a:a + s].decode("ascii")
    # cut junk: require letter-dominant runs
    if sum(c.isalpha() or c.isspace() for c in tx) >= 0.6 * len(tx):
        strings[a] = tx

def string_at(addr):
    for sa, tx in strings.items():
        if sa <= addr < sa + len(tx):
            return tx[addr - sa:]
    return None

# ----------------------------------------------------------------------------
# 4) functions: call targets, sizes, callers
# ----------------------------------------------------------------------------
callers = defaultdict(set)
callees = defaultdict(set)
for a in sorted(code):
    text, s, raw = code[a]
    op = IMG[a]
    if op in CALLS:
        _, _, tg, cl, _ = decode(a)
        for t in cl:
            callers[t].add(a)
            callees[a].add(t)

funcs = sorted(call_targets | set(vec_targets.values()))
func_size = {}
for i, f in enumerate(funcs):
    nxt = funcs[i + 1] if i + 1 < len(funcs) else N
    func_size[f] = nxt - f

def fname(a):
    for off, t in vec_targets.items():
        if t == a: return "irq_%03X_handler" % off
    return "sub_%04X" % a

# ----------------------------------------------------------------------------
# 5) DPTR histogram (I/O windows), jump tables, coverage, entropy
# ----------------------------------------------------------------------------
io_dptr = Counter(d for _, d in dptr_refs if d >= N or d in strings or d not in code)
code_dptr = Counter(d for _, d in dptr_refs if 0 <= d < N and d in code)

def entropy(b):
    if not b: return 0.0
    c = Counter(b); n = len(b)
    return -sum((v / n) * math.log2(v / n) for v in c.values())

blocks = []
for i in range(0, N, 512):
    chunk = IMG[i:i + 512]
    cov = sum(1 for j in range(i, min(i + 512, N)) if j in seen)
    blocks.append((i, entropy(chunk), cov / len(chunk), chunk.count(0) / len(chunk)))

regions = []
cur = None
for i in range(0, N, 512):
    kind = "CODE" if blocks[i // 512][2] > 0.5 else "DATA"
    if cur and cur[2] == kind and i == cur[1]:
        cur = (cur[0], i + 512, kind)
    else:
        if cur: regions.append(cur)
        cur = (i, i + 512, kind)
if cur: regions.append(cur)

# ----------------------------------------------------------------------------
# 6) outputs
# ----------------------------------------------------------------------------
lbl = {}
for off, t in vec_targets.items(): lbl[t] = "irq_%03X" % off
for f in funcs: lbl.setdefault(f, "sub_%04X" % f)
for t in sorted(jump_targets): lbl.setdefault(t, "loc_%04X" % t)
for sa in sorted(strings): lbl.setdefault(sa, "str_%04X" % sa)

with open(os.path.join(HERE, "disasm.asm"), "w", encoding="utf-8") as f:
    f.write("; RTL8192EU firmware - 8051 disassembly (RAM addresses; file offset = RAM+0x20)\n")
    f.write("; generated by analyze_firmware.py - linear+recursive sweep, best effort\n\n")
    for off, t in sorted(vec_targets.items()):
        f.write("; ---- vector RAM 0x%02X (%s) -> 0x%04X ----\n" % (off, SLOT_NAME.get(off, "IRQ"), t))
    a = 0
    while a < N:
        if a in code:
            text, s, raw = code[a]
            lab = lbl.get(a)
            if lab:
                f.write("\n%s:\n" % lab)
            cm = []
            dp = None
            if IMG[a] == 0x90:
                dp = (IMG[a + 1] << 8) | IMG[a + 2]
            if dp is not None:
                sx = string_at(dp)
                if sx: cm.append("str: %r" % sx[:60])
                elif dp >= N: cm.append("I/O window")
            xt = string_at(a)
            if xt: cm.append("ASCII: %r" % xt[:60])
            f.write("%04X  %-9s %s%s\n" % (a, raw.hex(), text.ljust(20),
                    ("; " + " ".join(cm)) if cm else ""))
            a += s
        else:
            if a in lbl:
                f.write("\n%s:\n" % lbl[a])
            # data run
            run = []
            a0 = a
            while a < N and a not in code:
                run.append(IMG[a]); a += 1
            for j in range(0, len(run), 16):
                f.write("%04X  .db %s\n" % (a0 + j, " ".join("%02X" % b for b in run[j:j + 16])))
    f.write("\n; end\n")

with open(os.path.join(HERE, "functions.txt"), "w", encoding="utf-8") as f:
    f.write("RTL8192EU 8051 function table (call targets + vector handlers)\n")
    f.write("%-8s %-8s %-8s %s\n" % ("addr", "size", "callers", "name"))
    for fn in funcs:
        f.write("%04X    %-6d %-8d %s\n" % (fn, func_size[fn], len(callers[fn]), fname(fn)))
    f.write("\nCall graph (caller -> callees):\n")
    for a in sorted(callees):
        cs = ", ".join("sub_%04X" % c for c in sorted(callees[a]))
        f.write("sub_%04X -> %s\n" % (a, cs))
    f.write("\nCallers of each function:\n")
    for fn in funcs:
        cs = ", ".join("sub_%04X" % c for c in sorted(callers[fn]))
        f.write("sub_%04X <- %s\n" % (fn, cs if cs else "(entry/indirect)"))

with open(os.path.join(HERE, "strings.txt"), "w", encoding="utf-8") as f:
    f.write("RAM addr  file off  string\n")
    for sa in sorted(strings):
        f.write("%04X     %06X  %r\n" % (sa, sa + 32, strings[sa]))

with open(os.path.join(HERE, "map.txt"), "w", encoding="utf-8") as f:
    f.write("== header ==\n")
    for k, v in hdr.items(): f.write("%-14s 0x%X (%d)\n" % (k, v, v))
    f.write("\n== vectors ==\n")
    for off, t in sorted(vec_targets.items()):
        f.write("RAM 0x%02X  %-20s -> 0x%04X\n" % (off, SLOT_NAME.get(off, "IRQ"), t))
    f.write("\n== regions (512B granularity) ==\n")
    for a0, a1, kind in regions:
        f.write("RAM %04X-%04X  %s\n" % (a0, a1 - 1, kind))
    f.write("\n== entropy/coverage per 512B block ==\n")
    for a0, e, cov, z in blocks:
        f.write("%04X  H=%.2f  code=%3d%%  zeros=%3d%%\n" % (a0, e, int(cov * 100), int(z * 100)))
    f.write("\n== DPTR constant histogram: I/O / data windows (top 40) ==\n")
    for d, c in io_dptr.most_common(40):
        sx = string_at(d)
        f.write("0x%04X  x%-4d %s\n" % (d, c, ("str: " + repr(sx[:40])) if sx else ("code" if d in code else "data/io")))
    f.write("\n== JMP @A+DPTR sites (switch dispatchers) ==\n")
    for a in jumps_via_dptr:
        f.write("0x%04X: %s\n" % (a, code[a][0]))

# console summary
print("== header =="); [print("%-14s 0x%X (%d)" % (k, v, v)) for k, v in hdr.items()]
print("\n== vectors ==")
for off, t in sorted(vec_targets.items()):
    print("RAM 0x%02X  %-20s -> 0x%04X" % (off, SLOT_NAME.get(off, "IRQ"), t))
print("\ncode bytes decoded : %d / %d (%.1f%%)" % (len(seen), N, 100 * len(seen) / N))
print("functions (call targets): %d" % len(funcs))
print("strings: %d" % len(strings))
print("\n== strings ==")
for sa in sorted(strings):
    print("%04X %r" % (sa, strings[sa]))
print("\n== regions ==")
for a0, a1, kind in regions:
    print("RAM %04X-%04X  %s" % (a0, a1 - 1, kind))
print("\n== top I/O DPTR windows ==")
for d, c in io_dptr.most_common(20):
    print("0x%04X x%d" % (d, c))
print("\n== JMP @A+DPTR sites ==", jumps_via_dptr)
print("\n== MOVC A,@A+DPTR sites ==", sorted(a for a in code if IMG[a] == 0x93))
print("\n== biggest functions ==")
for fn in sorted(funcs, key=lambda f: -func_size[f])[:15]:
    print("sub_%04X size=%-5d callers=%d" % (fn, func_size[fn], len(callers[fn])))
print("\n== most-called functions ==")
for fn in sorted(funcs, key=lambda f: -len(callers[fn]))[:15]:
    print("sub_%04X callers=%-3d size=%d" % (fn, len(callers[fn]), func_size[fn]))
