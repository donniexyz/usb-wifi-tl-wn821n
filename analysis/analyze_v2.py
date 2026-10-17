#!/usr/bin/env python3
"""
RTL8192EU firmware analyzer v2 - alignment-aware 8051 disassembly.

Strategy:
  1. Verified seeds: interrupt vectors.
  2. Fixpoint expansion: walk chains from accepted entries; harvest call
     targets ONLY from accepted chains (transitively trusted).
  3. Gap fill: linear sweep over unclaimed bytes; accept a chain only if it
     is >=4 instructions, contains no invalid opcode, never overlaps claimed
     instruction bytes, and ends at a terminator (RET/RETI/LJMP/AJMP) or
     joins accepted code at an instruction boundary.  Otherwise advance one
     byte (resync) and mark data.
Confidence: HIGH = reachable from vectors/calls of accepted code.
            MED  = gap-fill only.
Outputs: disasm.asm, functions.txt, map.txt, summary to stdout.
"""
import os, re, struct, math, sys
from collections import defaultdict, Counter

HERE = os.path.dirname(os.path.abspath(__file__))
BIN = sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, "..", "rtl8192eu_nic.bin")
data = open(BIN, "rb").read()
HDR, IMG = data[:32], data[32:]
N = len(IMG)

T = {}
def put(op, m, s, f=""): T[op] = (m, s, f)
put(0x00, "NOP", 1)
for op in (0x01, 0x21, 0x41, 0x61, 0x81, 0xA1, 0xC1, 0xE1): put(op, "AJMP", 2, "Q")
put(0x02, "LJMP", 3, "P"); put(0x03, "RR A", 1); put(0x04, "INC A", 1)
put(0x05, "INC", 2, "d"); put(0x06, "INC", 1, "@"); put(0x07, "INC", 1, "@")
for r in range(8): put(0x08 + r, "INC R%d" % r, 1)
put(0x10, "JBC", 3, "br")
for op in (0x11, 0x31, 0x51, 0x71, 0x91, 0xB1, 0xD1, 0xF1): put(op, "ACALL", 2, "Q")
put(0x12, "LCALL", 3, "P"); put(0x13, "RRC A", 1); put(0x14, "DEC A", 1)
put(0x15, "DEC", 2, "d"); put(0x16, "DEC", 1, "@"); put(0x17, "DEC", 1, "@")
for r in range(8): put(0x18 + r, "DEC R%d" % r, 1)
put(0x20, "JB", 3, "br"); put(0x30, "JNB", 3, "br")
put(0x22, "RET", 1); put(0x23, "RL A", 1); put(0x33, "RLC A", 1); put(0x32, "RETI", 1)
put(0x42, "ORL dir,A", 2, "d"); put(0x43, "ORL dir,#", 3, "d#")
put(0x52, "ANL dir,A", 2, "d"); put(0x53, "ANL dir,#", 3, "d#")
put(0x62, "XRL dir,A", 2, "d"); put(0x63, "XRL dir,#", 3, "d#")
for base, mn in ((0x24, "ADD A,"), (0x34, "ADDC A,"), (0x44, "ORL A,"), (0x54, "ANL A,"),
                 (0x64, "XRL A,"), (0x74, "MOV A,"), (0x94, "SUBB A,")):
    put(base, mn + "#", 2, "#"); put(base + 1, mn + "dir", 2, "d")
    put(base + 2, mn + "@R0", 1, "@"); put(base + 3, mn + "@R1", 1, "@")
    for r in range(8): put(base + 4 + r, mn + "R%d" % r, 1)
put(0x40, "JC", 2, "r"); put(0x50, "JNC", 2, "r"); put(0x60, "JZ", 2, "r"); put(0x70, "JNZ", 2, "r")
put(0x72, "ORL C,bit", 2, "b"); put(0xA0, "ORL C,/bit", 2, "b")
put(0x82, "ANL C,bit", 2, "b"); put(0xB0, "ANL C,/bit", 2, "b")
put(0x73, "JMP @A+DPTR", 1); put(0x83, "MOVC A,@A+PC", 1); put(0x93, "MOVC A,@A+DPTR", 1)
put(0x84, "DIV AB", 1); put(0xA4, "MUL AB", 1); put(0xA5, ".db 0xA5", 1)
put(0x80, "SJMP", 2, "r"); put(0x85, "MOV dir,dir", 3, "D")
put(0x86, "MOV dir,@R0", 2, "d"); put(0x87, "MOV dir,@R1", 2, "d")
for r in range(8): put(0x88 + r, "MOV dir,R%d" % r, 2, "d")
put(0x90, "MOV DPTR,#", 3, "N")
put(0x92, "MOV bit,C", 2, "b"); put(0xA2, "MOV C,bit", 2, "b"); put(0xA3, "INC DPTR", 1)
put(0xA6, "MOV @R0,dir", 2, "d"); put(0xA7, "MOV @R1,dir", 2, "d")
for r in range(8): put(0xA8 + r, "MOV R%d,dir" % r, 2, "d")
put(0xB2, "CPL bit", 2, "b"); put(0xB3, "CPL C", 1); put(0xC3, "CLR C", 1); put(0xD3, "SETB C", 1)
put(0xC2, "CLR bit", 2, "b"); put(0xD2, "SETB bit", 2, "b")
put(0xB4, "CJNE A,#", 3, "#r"); put(0xB5, "CJNE A,dir", 3, "dr")
put(0xB6, "CJNE @R0,#", 3, "#r"); put(0xB7, "CJNE @R1,#", 3, "#r")
for r in range(8): put(0xB8 + r, "CJNE R%d,#" % r, 3, "#r")
put(0x75, "MOV dir,#", 3, "d#")
put(0x76, "MOV @R0,#", 2, "#"); put(0x77, "MOV @R1,#", 2, "#")
for r in range(8): put(0x78 + r, "MOV R%d,#" % r, 2, "#")
put(0xC0, "PUSH dir", 2, "d"); put(0xD0, "POP dir", 2, "d")
put(0xC4, "SWAP A", 1); put(0xD4, "DA A", 1); put(0xE4, "CLR A", 1); put(0xF4, "CPL A", 1)
put(0xC5, "XCH A,dir", 2, "d"); put(0xC6, "XCH A,@R0", 1); put(0xC7, "XCH A,@R1", 1)
for r in range(8): put(0xC8 + r, "XCH A,R%d" % r, 1)
put(0xD5, "DJNZ dir,", 3, "dr")
for r in range(8): put(0xD8 + r, "DJNZ R%d," % r, 2, "r")
put(0xD6, "XCHD A,@R0", 1); put(0xD7, "XCHD A,@R1", 1)
put(0xE0, "MOVX A,@DPTR", 1); put(0xF0, "MOVX @DPTR,A", 1)
put(0xE2, "MOVX A,@R0", 1); put(0xE3, "MOVX A,@R1", 1)
put(0xF2, "MOVX @R0,A", 1); put(0xF3, "MOVX @R1,A", 1)
put(0xE5, "MOV A,dir", 2, "d"); put(0xE6, "MOV A,@R0", 1); put(0xE7, "MOV A,@R1", 1)
for r in range(8): put(0xE8 + r, "MOV A,R%d" % r, 1)
put(0xF5, "MOV dir,A", 2, "d"); put(0xF6, "MOV @R0,A", 1); put(0xF7, "MOV @R1,A", 1)
for r in range(8): put(0xF8 + r, "MOV R%d,A" % r, 1)
assert len(T) == 256

AJMPS = {op for op in T if T[op][0] == "AJMP"}
ACALLS = {op for op in T if T[op][0] == "ACALL"}
TERM = {0x02, 0x22, 0x32, 0x73} | AJMPS
CALLS = {0x12} | ACALLS

SFR = {0x80: "P0", 0x81: "SP", 0x82: "DPL", 0x83: "DPH", 0x87: "PCON", 0x88: "TCON",
       0x89: "TMOD", 0x8A: "TL0", 0x8B: "TL1", 0x8C: "TH0", 0x8D: "TH1", 0x90: "P1",
       0x98: "SCON", 0x99: "SBUF", 0xA0: "P2", 0xA8: "IE", 0xB0: "P3", 0xB8: "IP",
       0xC8: "T2CON", 0xCA: "RCAP2L", 0xCB: "RCAP2H", 0xCC: "TL2", 0xCD: "TH2",
       0xD0: "PSW", 0xE0: "ACC", 0xF0: "B"}

def decode(a):
    op = IMG[a]
    m, s, f = T[op]
    ob = [IMG[a + 1 + i] for i in range(s - 1)]
    if op == 0x85: ob = [ob[1], ob[0]]           # encoding is src,dst
    ops, tg, cl, dptr = [], [], [], None
    ti = 0
    for c in f:
        v = ob[ti]; ti += 1
        if c == "d": ops.append(SFR.get(v, "0x%02X" % v))
        elif c == "D": ops.append("%s,%s" % (SFR.get(ob[0], "0x%02X" % ob[0]), SFR.get(ob[1], "0x%02X" % ob[1])))
        elif c == "#": ops.append("#0x%02X" % v)
        elif c == "b":
            base = v & 0xF8
            ops.append(("%s.%d" % (SFR[base], v & 7)) if base in SFR else "0x%02X.%d" % (base, v & 7))
        elif c == "r":
            t = (a + s + (v - 256 if v > 127 else v)) & 0xFFFF
            ops.append("0x%04X" % t); tg.append(t)
        elif c == "P":
            t = (ob[ti - 1] << 8) | ob[ti]; ti += 1
            ops.append("0x%04X" % t); tg.append(t)
            if op == 0x12: cl.append(t)
        elif c == "N":
            v16 = (ob[ti - 1] << 8) | ob[ti]; ti += 1
            ops.append("#0x%04X" % v16)
            if op == 0x90: dptr = v16; tg.append(v16)
        elif c == "Q":
            t = (((a + 2) & 0xF800) | (((op & 0xE0) << 3) | ob[ti - 1]))
            ops.append("0x%04X" % t); tg.append(t)
            if T[op][0] == "ACALL": cl.append(t)
        elif c == "@": ops.append("@R%d" % (op & 1))
    return m + (" " + ", ".join(ops) if ops else ""), s, tg, cl, dptr

# ---------------------------------------------------------------- vectors
SLOT = {0x00: "RESET", 0x03: "IRQ slot 1", 0x0B: "IRQ slot 2", 0x13: "IRQ slot 3",
        0x1B: "IRQ slot 4", 0x23: "IRQ slot 5", 0x2B: "IRQ slot 6", 0x33: "IRQ slot 7",
        0x3B: "IRQ slot 8", 0x43: "IRQ slot 9", 0x4B: "IRQ slot 10", 0x53: "IRQ slot 11",
        0x5B: "IRQ slot 12"}
vec = {}
for off in [0x00] + list(range(0x03, 0x60, 8)):
    if IMG[off] == 0x02 and ((IMG[off + 1] << 8) | IMG[off + 2]) < N:
        vec[off] = (IMG[off + 1] << 8) | IMG[off + 2]

# ------------------------------------------------- acceptance-based sweeper
mid_claimed = set()      # bytes that are NOT instruction starts (mid-insn)
starts = {}              # addr -> size of accepted instruction starting here
insn_text = {}           # addr -> (text, size, dptr)
insn_conf = {}           # addr -> 'H'|'M'
func_of = {}             # addr -> function entry that contains this insn
callers = defaultdict(set)
callees = defaultdict(set)
entries = set()

def try_chain(start, conf):
    """Decode a chain from start. Return list of (addr, text, size, dptr, tg, cl)
    or None if invalid/overlap. Chain stops at terminator or when joining
    accepted code exactly at an instruction boundary."""
    chain = []
    a = start
    for _ in range(4096):
        if a >= N: return None
        if a in insn_text:                     # join accepted code
            if a in mid_claimed: return None
            return chain
        if a in mid_claimed: return None
        op = IMG[a]
        if op not in T: return None
        if op == 0xA5: return None
        try: text, s, tg, cl, dptr = decode(a)
        except IndexError: return None
        if a + s > N: return None
        # any byte of this insn claimed as mid-insn elsewhere -> conflict
        for b in range(a + 1, a + s):
            if b in mid_claimed: return None
            if b in starts: return None        # would overlap another instruction
        chain.append((a, text, s, dptr, tg, cl))
        if op in TERM: return chain
        a += s
    return None

def commit(chain, conf, entry):
    for a, text, s, dptr, tg, cl in chain:
        insn_text[a] = (text, s, dptr)
        insn_conf[a] = conf
        starts[a] = s
        for b in range(a + 1, a + s): mid_claimed.add(b)
        func_of[a] = entry
        for t in cl:
            callers[t].add(entry); callees[entry].add(t)

# phase 1+2: fixpoint from vectors
queue = list(vec.values())
entries = set(vec.values())
processed = set()
while queue:
    e = queue.pop(0)
    if e in processed or e >= N: continue
    processed.add(e)
    # walk from entry greedily; if conflict, retry later (entry may be inside data)
    chain = try_chain(e, 'H')
    if chain is None: continue
    commit(chain, 'H', e)
    for a, text, s, dptr, tg, cl in chain:
        for t in cl:
            if 0 <= t < N and t not in entries:
                entries.add(t); queue.append(t)
        for t in tg:
            if 0 <= t < N and t not in entries and t not in insn_text:
                # jump targets inside image: worth walking too
                entries.add(t); queue.append(t)

# phase 3: gap fill with resync
a = 0
med_entries = set()
while a < N:
    if a in insn_text:
        a += insn_text[a][1]
        continue
    ch = try_chain(a, 'M')
    if ch and len(ch) >= 4:
        e = ch[0][0]
        commit(ch, 'M', e)
        med_entries.add(e)
        a = ch[-1][0] + ch[-1][2]
    else:
        a += 1

covered = len(insn_text) + sum(starts[a] - 1 for a in insn_text if False)  # approx
covered = sum(starts.values())
funcs = sorted(entries | med_entries)

# function extents (address span until next entry)
fsize = {}
for i, f in enumerate(funcs):
    fsize[f] = (funcs[i + 1] if i + 1 < len(funcs) else N) - f

def fname(f):
    for off, t in vec.items():
        if t == f: return "irq_%02X_handler" % off
    return "sub_%04X" % f

# per-function DPTR windows
func_dptr = defaultdict(Counter)
for a, (text, s, dptr) in insn_text.items():
    if dptr is not None and func_of.get(a) is not None:
        func_dptr[func_of[a]][dptr] += 1

def win_name(d):
    if d < 0x0400: return "MAC/reg-low"
    if d < 0x4000: return "RAM/table"
    if d < 0x8000: return "RAM/table-hi"
    if d < 0x9000: return "win-8x"
    if d < 0xA000: return "win-9x"
    if d < 0xB000: return "win-Ax"
    return "win-Bx+"

# ---------------------------------------------------------------- outputs
lbl = {}
for off, t in vec.items(): lbl[t] = "irq_%02X" % off
for f in funcs: lbl.setdefault(f, fname(f))

with open(os.path.join(HERE, "disasm.asm"), "w", encoding="utf-8") as fo:
    fo.write("; RTL8192EU firmware 8051 disassembly. RAM addr = file offset - 0x20.\n")
    fo.write("; Confidence H = from vectors/calls, M = heuristic gap fill.\n")
    for off, t in sorted(vec.items()):
        fo.write("; vector RAM 0x%02X (%s) -> 0x%04X\n" % (off, SLOT.get(off, "IRQ"), t))
    fo.write("\n")
    a = 0
    while a < N:
        if a in insn_text:
            text, s, dptr = insn_text[a]
            if a in lbl: fo.write("\n%s:  ; %s func, size~%d\n" % (lbl[a], insn_conf[a], fsize.get(a, 0)))
            cm = []
            if dptr is not None:
                cm.append("dptr win: %s (0x%04X)" % (win_name(dptr), dptr))
            fo.write("%04X  %-9s %-22s ;%s %s\n" % (a, IMG[a:a + s].hex(), text, insn_conf[a], " ".join(cm)))
            a += s
        else:
            run = []
            while a < N and a not in insn_text:
                run.append(IMG[a]); a += 1
            a0 = a - len(run)
            if a - 1 in lbl: pass
            for j in range(0, len(run), 16):
                fo.write("%04X  .db %s\n" % (a0 + j, " ".join("%02X" % b for b in run[j:j + 16])))

with open(os.path.join(HERE, "functions.txt"), "w", encoding="utf-8") as fo:
    fo.write("addr   conf size callers  dptr-windows-used\n")
    for f in funcs:
        wins = Counter()
        for d in func_dptr[f]: wins[win_name(d)] += func_dptr[f][d]
        fo.write("%04X  %s  %-5d %-7d %s\n" % (f, insn_conf.get(f, 'M'), fsize[f],
                 len(callers[f]), ", ".join("%s x%d" % (k, v) for k, v in wins.most_common(6))))
    fo.write("\ncall graph (accepted calls only):\n")
    for f in funcs:
        if callees[f]:
            fo.write("%s -> %s\n" % (fname(f), ", ".join(sorted(fname(c) for c in callees[f]))))

# console summary
print("vectors:")
for off, t in sorted(vec.items()): print("  RAM 0x%02X %-12s -> 0x%04X" % (off, SLOT.get(off, ""), t))
print("coverage: %d/%d bytes accepted as instructions (%.1f%%)" % (covered, N, 100.0 * covered / N))
print("functions: %d (H: %d, M: %d)" % (len(funcs), len(entries), len(med_entries)))
print("\nlargest H functions:")
hf = [f for f in funcs if insn_conf.get(f) == 'H']
for f in sorted(hf, key=lambda x: -fsize[x])[:20]:
    print("  %04X size=%-5d callers=%d" % (f, fsize[f], len(callers[f])))
print("\nmost-called H functions:")
for f in sorted(hf, key=lambda x: -len(callers[x]))[:15]:
    print("  %04X callers=%-3d size=%d" % (f, len(callers[f]), fsize[f]))
