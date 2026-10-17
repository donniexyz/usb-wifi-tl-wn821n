#!/usr/bin/env python3
"""
Generate rtl8192eu_firmware.c: a complete C transcription of the RTL8192EU
firmware disassembly (see analyze_v2.py for the disassembly engine).

Output compiles as a standalone translation unit: gcc -c -w rtl8192eu_firmware.c
"""
import os, sys, re
from collections import defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
sys.argv = ["x", os.path.join(HERE, "..", "rtl8192eu_nic.bin")]
exec(open(os.path.join(HERE, "analyze_v2.py")).read().split("# ---------------------------------------------------------------- outputs")[0])

N = len(IMG)
VEC_NAME = {0x00: "reset_handler", 0x03: "irq_slot1_handler", 0x13: "irq_slot3_handler",
            0x43: "irq_slot9_handler", 0x4B: "irq_slot10_handler"}
fname_map = {}
for off, t in vec.items():
    fname_map[t] = VEC_NAME.get(off, "irq_%02X_handler" % off)
for f in funcs:
    fname_map.setdefault(f, "sub_%04X" % f)

out = []
w = out.append

HAND = r"""
/* ============================================================
 * PART 1 - HAND-DECOMPILED KEY ROUTINES (readable reconstruction)
 * Semantic restorations; PART 2 below is the exact 1:1 reference.
 * ============================================================ */

/* RAM 0x4937 - RESET entry (vector slot 0x00).
 * Entered with DPTR pre-set by the chip boot ROM / download engine
 * (the sibling 8723BU firmware shows the same convention). */
static void hl_reset_entry(void)
{
    DPTR = (uint16_t)(DPTR + 1);                             /* 4937: A3        */
    XDATA[DPTR] = (uint8_t)((XDATA[DPTR] & ~0x03) | 0x02);   /* clear b0,b1; set b1 */
    hl_init_5209();                                          /* 493F, A=0       */
    XDATA[0x9FA9] &= (uint8_t)~0x04;                         /* clear flag bit 2 */
    /* RET - returns to the boot-ROM continuation */
}

/* RAM 0x5209 - first-stage init (called from reset with A=0, R4=0xF2).
 * Reads config from internal RAM 0x51-0x55/0x5B and a code table at
 * 0x411D; clamps values; may tail-jump into ROM 0x990D. */
static void hl_init_5209(void)
{
    if (R[4] != 0xF2) { /* branch 0x51EC - gray zone, not recovered */ return; }
    if (A >= 5) { rom_990D(); return; }                      /* 520C-5211       */
    B_ = 0x12;                                               /* 5214            */
    A = IRAM[0x51];                                          /* 5217            */
    sub_6F33();                                              /* 5219            */
    R[7] = A;                                                /* 521C            */
    {                                                        /* 521D-5232       */
        int t = IRAM[0x54] - R[7] - 1;                       /* C=1; SUBB A,R7  */
        if (t < 0) goto clamp_done;                          /* JC 0x5234       */
        IRAM[0x54] = R[7];                                   /* clamp 0x54 down */
        R[7] = (IRAM[0x53] != 0) ? (uint8_t)(IRAM[0x54] | 0x80) : IRAM[0x54];
        IRAM[0x52] = R[7];
    }
clamp_done:
    IRAM[0x55] = IRAM[0x54];                                 /* 5234            */
    A = CODE[0x411D + IRAM[0x55]];                           /* 5237-523C       */
    R[7] = A;                                                /* 523D            */
    {                                                        /* 523E-5242       */
        int t = IRAM[0x5B] - R[7] - 1;
        if (t < 0) return;                                   /* JC 0x524B       */
    }
    rom_BD27();                                              /* 5244            */
    if (A != 0) { /* SJMP 0x52A0 - beyond hand window */ return; }
    /* 0x524B: recovered chain continues - see PART 2 sub_5209 */
    return;
}

/* RAM 0x48F3 - clear bit 1 of the register at DPTR (25 direct callers,
 * plus fall-through arrivals from 0x48BD). */
static void hl_reg_clear_bit1(void)
{
    XDATA[DPTR] &= (uint8_t)~0x02;
}

/* RAM 0x48FF - empty callback placeholder (11 callers). */
static void hl_null_callback(void) { }

/* RAM 0x085A - 16-bit subtract R4:R5 -= R0:R1 (9 callers; assumes C=0). */
static void hl_sub16(void)
{
    uint16_t acc = (uint16_t)((R[4] << 8) | R[5]);
    uint16_t sub = (uint16_t)((R[0] << 8) | R[1]);
    acc = (uint16_t)(acc - sub);
    R[4] = (uint8_t)(acc >> 8);
    R[5] = (uint8_t)(acc & 0xFF);
}

/* RAM 0x48BD - "enable + commit" sequence (10 callers).
 * Caller sets DPTR and A. Sets bit 1 of the register, calls ROM, fills a
 * 50-byte block (extended pointer R3:R2:R1 = 01:9E:B6 into the state
 * window), writes 0x9EB7=0x0B, 0x9EB8=0x08, calls ROM again, sets
 * 0x9ECF=1, clears register 0x048F, then falls into the shared bit-clear
 * tail at 0x48F3. */
static void hl_48BD(void)
{
    XDATA[DPTR] = (uint8_t)(A | 0x02);                       /* 48BD-48BF       */
    R[7] = 1;  rom_876E();                                   /* 48C0-48C4       */
    R[6] = 0;  R[7] = 0x32;  R[5] = 0;  R[3] = 1;  R[2] = 0x9E;  R[1] = 0xB6;
    sub_08AA();                                              /* 48D1            */
    XDATA[0x9EB7] = 0x0B;                                    /* 48D4-48D8       */
    XDATA[0x9EB8] = 0x08;                                    /* 48DA-48DD       */
    rom_A7A4();                                              /* 48DE            */
    XDATA[0x9ECF] = 0x01;                                    /* 48E1-48E6       */
    XDATA[0x048F] = 0x00;                                    /* 48E7-48EB       */
    A = XDATA[0x9F15];                                       /* 48EC-48EF       */
    XDATA[0x9F15] &= (uint8_t)~0x01;                         /* 48F0-48F2       */
    hl_reg_clear_bit1();                                     /* fall-through    */
}

/* IRQ slot 9 - RAM 0x6FF1 (vector 0x43). Retry loop: write R6 into state
 * register 0x9F23 (after clearing its bit 1) until R7 reaches 3. The loop
 * head (0x6FE4) is in a gray zone; the recovered tail is shown.
 * (Slot 1 - RAM 0x6FF0 - is a single MOVX @DPTR,A falling through here.) */
static void hl_irq_slot9(void)
{
    R[3]--;                                                  /* 6FF1            */
    do {
        { uint16_t save = DPTR;                              /* 6FF3-6FF6       */
          DPTR = 0x9F23; XDATA[DPTR] &= (uint8_t)~0x02; DPTR = save; }
        XDATA[0x9F23] = R[6];                                /* 6FF9-6FFA       */
        R[7]++;                                              /* 6FFB            */
    } while (R[7] != 3);                                     /* 6FFD            */
}

/* IRQ slot 3 - RAM 0x702C (vector 0x13).
 * Flushes queued events through the command processor 0x34BC (first ID is
 * whatever R7 held on interrupt entry, then explicit 0xF4, 0xF3, 0xF2);
 * each success (R7==1) copies the result byte 0xA05C to its slot
 * 0xA05E-0xA061. Then relays state bytes and tail-jumps into ROM 0xA775. */
static void hl_irq_slot3(void)
{
    R[6] = 1;  sub_34BC();                                   /* 702C-702E       */
    if (R[7] == 1) XDATA[0xA05E] = XDATA[0xA05C];
    rom_7F69();  R[7] = 0xF4;  R[6] = 1;  sub_34BC();
    if (R[7] == 1) XDATA[0xA05F] = XDATA[0xA05C];
    rom_7F69();  R[7] = 0xF3;  R[6] = 1;  sub_34BC();
    if (R[7] == 1) XDATA[0xA060] = XDATA[0xA05C];
    rom_7F69();  R[7] = 0xF2;  R[6] = 1;  sub_34BC();
    if (R[7] == 1) XDATA[0xA061] = XDATA[0xA05C];
    R[7] = XDATA[0xA05D];                                    /* 707B-7093       */
    R[5] = XDATA[0xA05E];
    R[3] = XDATA[0xA05F];
    XDATA[0xA065] = XDATA[0xA060];
    XDATA[0xA066] = XDATA[0xA061];
    rom_A775();                                              /* 7094: LJMP tail */
}

/* RAM 0x34BC - command/queue processor (R7 = ID, R6 = 1; returns R7 = 1).
 * Starts with a backward branch into a gray zone (0x34AE): this is the
 * recovered core of a larger routine. Semaphore 0x9E59, lock state
 * 0x9E50, status word 0x9E48 (bit 0 = busy-wait). */
static void hl_cmd_process(void)
{
    if (CARRY) { /* branch 0x34AE - gray zone */ return; }   /* 34BC            */
    rom_AFCE();  rom_BD09();  rom_B75A();                    /* 34BE-34C6       */
    sub_37C4();  sub_3520();                                 /* 34C7-34CA       */
    XDATA[0x9E59]--;                                         /* 34CB-34D0       */
    goto check_status;
lock_wait:                                                   /* 0x34D3          */
    { uint8_t v = XDATA[0x9E50];                             /* swap; low nibble*/
      if ((uint8_t)(((v << 4) | (v >> 4)) & 0x0F) != 1) goto done; }
    { uint8_t id;
      sub_37D1();  id = A;  R[6] = A;                        /* 34DE-34E0       */
      if (id == R[7]) goto done;                             /* 34E1            */
      if (id == XDATA[0x0573]) goto done;                    /* 34E4-34EB       */ }
    sub_35B0();                                              /* 34ED            */
    if (!(A & 0x01)) goto done;                              /* 34EF            */
    A &= (uint8_t)~0x40;                                     /* 34F2-34F3       */
    rom_BD09();                                              /* 34F5            */
    sub_37A6();  sub_37B9();  sub_350C();                    /* 34F8-34FC       */
check_status:                                                /* 0x34FE          */
    sub_3518();
    for (;;) {                                               /* busy-wait       */
        { uint8_t t = XDATA[0x9E48];                         /* RRC; JB ACC.0   */
          if (((t >> 1) | (t << 7)) & 0x01) break; }
        sub_3518();
    }
done:
    return;
}
"""

# ------------------------------------------------------------------ header
w("""/* ==========================================================================
 * rtl8192eu_firmware.c
 *
 * C transcription of the RTL8192EU WiFi firmware (rtl8192eu_nic.bin,
 * TP-Link TL-WN821N v5/v6), generated from an 8051 disassembly.
 *
 * provenance:
 *   - byte-identical to linux-firmware rtlwifi/rtl8192eu_nic.bin
 *     (sha256 b15bc955fba2fc3abc093affe62c9f7284a0b84d4f13f8ce55366488dc9aad8b)
 *   - 32-byte Realtek header + 32,254-byte 8051 image (FW v35, SVN 23052)
 *   - RAM address = file offset - 0x20
 *
 * layout:
 *   PART 0  8051 machine model + the code image (CODE[])
 *   PART 1  hand-decompiled readable C for the key routines
 *   PART 2  mechanical 1:1 transcription, HIGH confidence functions
 *   PART 3  mechanical transcription, MEDIUM confidence (heuristic
 *           gap-fill; may be data misread as code - treat with care)
 *   PART 4  data islands (bytes not decoded as instructions)
 *
 * conventions:
 *   - 8051 registers are hardware-global, hence file-scope variables;
 *     R0-R7 ignore the register-bank select (PSW.3/PSW.4)
 *   - sub_XXXX = routine at RAM 0xXXXX; irq_* = interrupt handlers;
 *     rom_XXXX = call into the chip's mask ROM (bytes NOT in this file;
 *     the code space continues above the downloaded image)
 *   - branches leaving a transcribed function become tail-calls - an
 *     artifact of function-boundary recovery, not original structure
 *
 * This is a study artifact, not buildable firmware.
 * Compile check: gcc -c -w rtl8192eu_firmware.c
 * ========================================================================== */
#include <stdint.h>

/* ---- PART 0: machine state ---------------------------------------------- */
static uint8_t  A;                 /* accumulator */
static uint8_t  B_;                /* B register */
static uint8_t  CARRY;             /* PSW.7 */
static uint8_t  SP_ = 0x07;        /* stack pointer */
static uint8_t  Rv[8];             /* R0-R7 (current bank) */
static uint16_t DPTR;              /* data pointer */
static uint8_t  IRAM[0x80];        /* direct 0x00-0x7F */
static uint8_t  SFRm[0x80];        /* direct 0x80-0xFF */
static uint8_t  stack_mem[256];
static uint8_t  XDATA[0x10000];    /* MOVX space: chip regs (page 0, 0x04xx-0x07xx,
                                     sparse windows) + firmware state 0x9D00-0xA1FF */

#define R Rv

/* direct-address access: ACC/B/DPL/DPH aliased to the variables above */
#define DIR_R(x) ((uint8_t)((x) == 0xE0 ? A : (x) == 0xF0 ? B_ : \\
                 (x) == 0x82 ? (DPTR & 0xFF) : (x) == 0x83 ? (DPTR >> 8) : \\
                 ((x) < 0x80 ? IRAM[x] : SFRm[(x) - 0x80])))
#define DIR_W(x, v) do { uint8_t _v = (uint8_t)(v); \\
        if ((x) == 0xE0) A = _v; else if ((x) == 0xF0) B_ = _v; \\
        else if ((x) == 0x82) DPTR = (uint16_t)((DPTR & 0xFF00) | _v); \\
        else if ((x) == 0x83) DPTR = (uint16_t)((DPTR & 0x00FF) | ((uint16_t)_v << 8)); \\
        else if ((x) < 0x80) IRAM[x] = _v; else SFRm[(x) - 0x80] = _v; } while (0)

/* bit-addressed access: 0x00-0x7F -> IRAM 0x20-0x2F; 0x80-0xFF -> SFRs;
 * 0xD7 (PSW.7) aliased to CARRY */
#define BIT_R(bb) ((uint8_t)((bb) == 0xD7 ? CARRY : \\
        (((bb) & 0xF8) < 0x80) ? ((IRAM[0x20 + ((bb) >> 3)] >> ((bb) & 7)) & 1) : \\
        ((SFRm[((bb) & 0xF8) - 0x80] >> ((bb) & 7)) & 1)))
#define BIT_W(bb, vv) do { unsigned _b = (bb), _v = (vv) & 1; \\
        if (_b == 0xD7) CARRY = (uint8_t)_v; \\
        else if ((_b & 0xF8) < 0x80) { if (_v) IRAM[0x20 + (_b >> 3)] |= (uint8_t)(1u << (_b & 7)); else IRAM[0x20 + (_b >> 3)] &= (uint8_t)~(1u << (_b & 7)); } \\
        else { if (_v) SFRm[(_b & 0xF8) - 0x80] |= (uint8_t)(1u << (_b & 7)); else SFRm[(_b & 0xF8) - 0x80] &= (uint8_t)~(1u << (_b & 7)); } } while (0)

#define PUSH_(v) (stack_mem[++SP_] = (uint8_t)(v))
#define POP_()  (stack_mem[SP_--])

static void computed_jump(void) { /* JMP @A+DPTR: none recovered in this image */ }

/* ---- the raw 8051 image (RAM 0x0000-0x%04X; file offset = RAM + 0x20) ----
   referenced by MOVC instructions and useful for data-table lookups ----- */
static const uint8_t CODE[%d] = {
""" % (N - 1, N))
for i in range(0, N, 16):
    w("    " + ", ".join("0x%02X" % b for b in IMG[i:i + 16]) + ",")
w("};")

w(HAND)

# --------- pre-pass: references, stubs --------------------------------------
refs = set()
rom_targets = set()
BRANCH_OPS = set([0x02, 0x80, 0x40, 0x50, 0x60, 0x70, 0x20, 0x30, 0x10,
                  0xB4, 0xB5, 0xB6, 0xB7, 0xD5]) | AJMPS | CALLS | \
             set(range(0xB8, 0xC0)) | set(range(0xD8, 0xE0))
for a in insn_text:
    if IMG[a] in BRANCH_OPS:
        try: _, _, tg, cl, _ = decode(a)
        except Exception: continue
        for t in (cl if IMG[a] in CALLS else tg):
            refs.add((a, t, "call" if IMG[a] in CALLS else "jump"))

defined = set(funcs)
need_stub = set()
for a, t, kind in refs:
    if t >= N:
        rom_targets.add(t)
    elif t not in defined:
        need_stub.add(t)

# hand-written section references that need stubs
hand_names = set(re.findall(r"\b(sub_[0-9A-F]{4}|rom_[0-9A-F]{4})\b", HAND))
for n in sorted(hand_names):
    t = int(n.split("_")[1], 16)
    if n.startswith("rom_"):
        rom_targets.add(t)
    elif t not in defined and t not in need_stub:
        need_stub.add(t)

w("\n/* ---- forward declarations ---- */")
for f in sorted(defined):
    w("static void %s(void);" % fname_map[f])
for t in sorted(need_stub):
    w("static void sub_%04X(void);" % t)
for t in sorted(rom_targets):
    w("static void rom_%04X(void);" % t)
w("")

w("\n/* ---- ROM call stubs (mask ROM above the downloaded image) ---- */")
for t in sorted(rom_targets):
    w("static void rom_%04X(void) { /* mask ROM - bytes not in this file */ }" % t)
w("")

# ---------------------------------------------------- mechanical transcription
def target_ref(a, t, kind, f):
    if t >= N:
        if kind == "call":
            return "rom_%04X();" % t
        return "{ rom_%04X(); return; } /* tail-jump into ROM */" % t
    if t not in insn_text:
        return "{ /* branch to 0x%04X: target not recovered */ return; }" % t
    nm = fname_map.get(t, "sub_%04X" % t)
    if kind == "call":
        return "%s();" % nm
    if func_of.get(t) == f:
        return "goto L_%04X;" % t
    return "{ %s(); return; } /* tail-branch (function split) */" % nm

def insn_c(a, f):
    op = IMG[a]
    text, s, dptr = insn_text[a]
    try: _, _, tg, cl, dp = decode(a)
    except Exception:
        tg, cl = [], []
    comment = "%04X: %-9s %s" % (a, IMG[a:a + s].hex(), text)
    t0 = tg[0] if tg else None
    c0 = cl[0] if cl else None
    d1 = IMG[a + 1] if a + 1 < N else 0

    if op == 0x00: return ";", comment
    if op in AJMPS or op == 0x02: return target_ref(a, t0, "jump", f), comment
    if op in CALLS:              return target_ref(a, c0, "call", f), comment
    if op == 0x80:               return target_ref(a, t0, "jump", f), comment
    if op == 0x22: return "return;", comment + " RET"
    if op == 0x32: return "return;", comment + " RETI"
    if op == 0x73: return "{ computed_jump(); return; }", comment
    if op == 0x40: return "if (CARRY) " + target_ref(a, t0, "jump", f), comment
    if op == 0x50: return "if (!CARRY) " + target_ref(a, t0, "jump", f), comment
    if op == 0x60: return "if (A == 0) " + target_ref(a, t0, "jump", f), comment
    if op == 0x70: return "if (A != 0) " + target_ref(a, t0, "jump", f), comment
    if op == 0x20: return "if (BIT_R(0x%02X)) " % d1 + target_ref(a, t0, "jump", f), comment
    if op == 0x30: return "if (!BIT_R(0x%02X)) " % d1 + target_ref(a, t0, "jump", f), comment
    if op == 0x10: return "if (BIT_R(0x%02X)) { BIT_W(0x%02X,0); " % (d1, d1) + target_ref(a, t0, "jump", f) + " }", comment
    if op == 0xB4:
        return "CARRY = (A < 0x%02X); if (A != 0x%02X) " % (d1, d1) + target_ref(a, t0, "jump", f), comment
    if op == 0xB5:
        return "CARRY = (A < DIR_R(0x%02X)); if (A != DIR_R(0x%02X)) " % (d1, d1) + target_ref(a, t0, "jump", f), comment
    if op in (0xB6, 0xB7):
        return "CARRY = (XDATA[R[%d]] < 0x%02X); if (XDATA[R[%d]] != 0x%02X) " % (op & 1, d1, op & 1, d1) + target_ref(a, t0, "jump", f), comment
    if 0xB8 <= op <= 0xBF:
        r = op & 7
        return "CARRY = (R[%d] < 0x%02X); if (R[%d] != 0x%02X) " % (r, d1, r, d1) + target_ref(a, t0, "jump", f), comment
    if op == 0xD5:
        d2 = IMG[a + 2]
        return 'DIR_W(0x%02X, (uint8_t)(DIR_R(0x%02X) - 1)); if (DIR_R(0x%02X)) ' % (d1, d1, d1) + target_ref(a, t0, "jump", f), comment
    if 0xD8 <= op <= 0xDF:
        r = op & 7
        return "R[%d] = (uint8_t)(R[%d] - 1); if (R[%d]) " % (r, r, r) + target_ref(a, t0, "jump", f), comment

    if op == 0x90: return "DPTR = 0x%04X;" % dptr, comment
    if op == 0xA3: return "DPTR = (uint16_t)(DPTR + 1);", comment
    if op == 0xE0: return "A = XDATA[DPTR];", comment
    if op == 0xF0: return "XDATA[DPTR] = A;", comment
    if op in (0xE2, 0xE3): return "A = XDATA[R[%d]];" % (op & 1), comment
    if op in (0xF2, 0xF3): return "XDATA[R[%d]] = A;" % (op & 1), comment
    if op == 0x93: return "A = ((DPTR + A) < sizeof(CODE)) ? CODE[DPTR + A] : 0;", comment
    if op == 0x83: return ";", comment + " MOVC A,@A+PC"
    if op == 0xE4: return "A = 0;", comment
    if op == 0xF4: return "A = (uint8_t)~A;", comment
    if op == 0xC4: return "A = (uint8_t)((A << 4) | (A >> 4));", comment
    if op == 0xD4: return ";", comment + " DA A"
    if op == 0x23: return "A = (uint8_t)((A << 1) | (A >> 7));", comment
    if op == 0x03: return "A = (uint8_t)((A >> 1) | (A << 7));", comment
    if op == 0x33: return "{ uint8_t _c = (uint8_t)(A >> 7); A = (uint8_t)((A << 1) | CARRY); CARRY = _c; }", comment
    if op == 0x13: return "{ uint8_t _c = (uint8_t)(A & 1); A = (uint8_t)((A >> 1) | (uint8_t)(CARRY << 7)); CARRY = _c; }", comment
    if op == 0xC3: return "CARRY = 0;", comment
    if op == 0xD3: return "CARRY = 1;", comment
    if op == 0xB3: return "CARRY = (uint8_t)(CARRY ^ 1);", comment
    if op == 0x72: return "CARRY = (uint8_t)(CARRY | BIT_R(0x%02X));" % d1, comment
    if op == 0xA0: return "CARRY = (uint8_t)(CARRY | !BIT_R(0x%02X));" % d1, comment
    if op == 0x82: return "CARRY = (uint8_t)(CARRY & BIT_R(0x%02X));" % d1, comment
    if op == 0xB0: return "CARRY = (uint8_t)(CARRY & !BIT_R(0x%02X));" % d1, comment
    if op == 0xC2: return "BIT_W(0x%02X, 0);" % d1, comment
    if op == 0xD2: return "BIT_W(0x%02X, 1);" % d1, comment
    if op == 0xB2: return "BIT_W(0x%02X, !BIT_R(0x%02X));" % (d1, d1), comment
    if op == 0x92: return "BIT_W(0x%02X, CARRY);" % d1, comment
    if op == 0xA2: return "CARRY = BIT_R(0x%02X);" % d1, comment
    if op == 0xC0: return "PUSH_(DIR_R(0x%02X));" % d1, comment
    if op == 0xD0: return "DIR_W(0x%02X, POP_());" % d1, comment
    if op == 0x84:
        return "{ uint8_t _q = B_ ? (uint8_t)(A / B_) : 0, _r = B_ ? (uint8_t)(A % B_) : 0; A = _q; B_ = _r; }", comment
    if op == 0xA4:
        return "{ unsigned _p = (unsigned)A * B_; A = (uint8_t)(_p & 0xFF); B_ = (uint8_t)(_p >> 8); }", comment

    def alu_src():
        if op % 16 in (0x4, 0x5, 0x6, 0x7) or 0x8 <= (op & 0x0F) <= 0xF:
            col = op & 0x0F
            if col == 4: return "0x%02X" % d1
            if col == 5: return "DIR_R(0x%02X)" % d1
            if col in (6, 7): return "XDATA[R[%d]]" % (op & 1)
            return "R[%d]" % (op & 7)
        return "0"

    for base, tmpl in ((0x24, "ADD"), (0x34, "ADDC"), (0x94, "SUBB")):
        if base <= op <= base + 11:
            src = alu_src()
            if tmpl == "ADD":
                return "{ unsigned _t = A + %s; CARRY = (uint8_t)(_t > 0xFF); A = (uint8_t)_t; }" % src, comment
            if tmpl == "ADDC":
                return "{ unsigned _t = A + %s + CARRY; CARRY = (uint8_t)(_t > 0xFF); A = (uint8_t)_t; }" % src, comment
            return "{ int _t = A - %s - CARRY; CARRY = (uint8_t)(_t < 0); A = (uint8_t)(_t & 0xFF); }" % src, comment
    for base, sym in ((0x44, "|"), (0x54, "&"), (0x64, "^")):
        if base <= op <= base + 11:
            src = alu_src()
            return "A = (uint8_t)(A %s %s);" % (sym, src), comment

    if op == 0x74: return "A = 0x%02X;" % d1, comment
    if op == 0x75: return "DIR_W(0x%02X, 0x%02X);" % (d1, IMG[a + 2]), comment
    if op in (0x76, 0x77): return "XDATA[R[%d]] = 0x%02X;" % (op & 1, d1), comment
    if 0x78 <= op <= 0x7F: return "R[%d] = 0x%02X;" % (op & 7, d1), comment
    if op in (0x42, 0x52, 0x62):
        return "DIR_W(0x%02X, (uint8_t)(DIR_R(0x%02X) & A));" % (d1, d1), comment
    if op in (0x43, 0x53, 0x63):
        sym = {0x43: "|", 0x53: "&", 0x63: "^"}[op]
        return "DIR_W(0x%02X, (uint8_t)(DIR_R(0x%02X) %s 0x%02X));" % (d1, d1, sym, IMG[a + 2]), comment
    if op == 0x05: return "DIR_W(0x%02X, (uint8_t)(DIR_R(0x%02X) + 1));" % (d1, d1), comment
    if op == 0x15: return "DIR_W(0x%02X, (uint8_t)(DIR_R(0x%02X) - 1));" % (d1, d1), comment
    if op in (0x06, 0x07): return "XDATA[R[%d]] = (uint8_t)(XDATA[R[%d]] + 1);" % (op & 1, op & 1), comment
    if op in (0x16, 0x17): return "XDATA[R[%d]] = (uint8_t)(XDATA[R[%d]] - 1);" % (op & 1, op & 1), comment
    if 0x08 <= op <= 0x0F: return "R[%d] = (uint8_t)(R[%d] + 1);" % (op & 7, op & 7), comment
    if 0x18 <= op <= 0x1F: return "R[%d] = (uint8_t)(R[%d] - 1);" % (op & 7, op & 7), comment
    if op == 0x85:
        return "DIR_W(0x%02X, DIR_R(0x%02X));" % (IMG[a + 2], IMG[a + 1]), comment
    if op in (0x86, 0x87): return "DIR_W(0x%02X, XDATA[R[%d]]);" % (d1, op & 1), comment
    if 0x88 <= op <= 0x8F: return "DIR_W(0x%02X, R[%d]);" % (d1, op & 7), comment
    if op in (0xA6, 0xA7): return "XDATA[R[%d]] = DIR_R(0x%02X);" % (op & 1, d1), comment
    if 0xA8 <= op <= 0xAF: return "R[%d] = DIR_R(0x%02X);" % (op & 7, d1), comment
    if op == 0xE5: return "A = DIR_R(0x%02X);" % d1, comment
    if op in (0xE6, 0xE7): return "A = XDATA[R[%d]];" % (op & 1), comment
    if 0xE8 <= op <= 0xEF: return "A = R[%d];" % (op & 7), comment
    if op == 0xF5: return "DIR_W(0x%02X, A);" % d1, comment
    if op in (0xF6, 0xF7): return "XDATA[R[%d]] = A;" % (op & 1), comment
    if 0xF8 <= op <= 0xFF: return "R[%d] = A;" % (op & 7), comment
    if op == 0xC5:
        return "{ uint8_t _t = A; A = DIR_R(0x%02X); DIR_W(0x%02X, _t); }" % (d1, d1), comment
    if op in (0xC6, 0xC7):
        return "{ uint8_t _t = A; A = XDATA[R[%d]]; XDATA[R[%d]] = _t; }" % (op & 1, op & 1), comment
    if 0xC8 <= op <= 0xCF:
        return "{ uint8_t _t = A; A = R[%d]; R[%d] = _t; }" % (op & 7, op & 7), comment
    if op in (0xD6, 0xD7):
        return "{ uint8_t _t = (uint8_t)(A & 0x0F); A = (uint8_t)((A & 0xF0) | (XDATA[R[%d]] & 0x0F)); XDATA[R[%d]] = (uint8_t)((XDATA[R[%d]] & 0xF0) | _t); }" % (op & 1, op & 1, op & 1), comment
    return ";", comment + " ??"

H_FUNCS = [f for f in funcs if insn_conf.get(f) == "H"]
M_FUNCS = [f for f in funcs if insn_conf.get(f) == "M"]

for part, flist, tag in ((2, H_FUNCS, "HIGH"), (3, M_FUNCS, "MEDIUM")):
    w("\n/* ---- PART %d: mechanical transcription - %s confidence %s---- */" %
      (part, tag, "" if tag == "HIGH" else "(heuristic gap-fill; may be data misread as code) "))
    for f in flist:
        name = fname_map.get(f, "sub_%04X" % f)
        w("")
        if f in insn_text and func_of.get(f) == f:
            w("/* RAM 0x%04X - %s, %d caller(s) */" % (f, tag.lower(), len(callers.get(f, ()))))
            w("static void %s(void)" % name)
            w("{")
            addrs = [a for a in sorted(insn_text) if func_of.get(a) == f]
            labels = set()
            for a in addrs:
                if IMG[a] in BRANCH_OPS:
                    try: _, _, tg, cl, _ = decode(a)
                    except Exception: continue
                    for t in (cl if IMG[a] in CALLS else tg):
                        if t < N and func_of.get(t) == f:
                            labels.add(t)
            for a in addrs:
                if a in labels:
                    w("L_%04X:;" % a)
                stmt, cm = insn_c(a, f)
                w("    %-72s /* %s */" % (stmt, cm))
            w("}")
        else:
            w("/* RAM 0x%04X - no body: bytes attributed to another recovered chain */" % f)
            w("static void %s(void) { }" % name)

covered = set(H_FUNCS) | set(M_FUNCS)
for f in sorted(set(funcs) - covered):
    w("\n/* RAM 0x%04X - recovery candidate; chain not accepted (no body) */" % f)
    w("static void %s(void) { }" % fname_map.get(f, "sub_%04X" % f))

for t in sorted(need_stub):
    w("\n/* RAM 0x%04X - call target whose bytes were not recovered as code */" % t)
    w("static void sub_%04X(void) { }" % t)

# ---------------------------------------------------------------- data islands
w("\n/* ---- PART 4: data islands (bytes not decoded as instructions) ---- */")
islands = []
a = 0
while a < N:
    if a not in insn_text:
        s = a
        while a < N and a not in insn_text:
            a += 1
        islands.append((s, a))
    else:
        a += 1
for s, e in islands:
    if e - s < 2:
        continue
    w("\n/* RAM 0x%04X-0x%04X (%d bytes) */" % (s, e - 1, e - s))
    w("static const uint8_t data_%04X[] = {" % s)
    for i in range(s, e, 12):
        w("    " + ", ".join("0x%02X" % b for b in IMG[i:min(i + 12, e)]) + ",")
    w("};")

# ---------------------------------------------------------------- vector map
w("\n/* ---- vector table (RAM 0x0000) ---- */")
for off, t in sorted(vec.items()):
    w("#define VECTOR_%02X %s   /* RAM 0x%02X -> 0x%04X%s */" %
      (off, fname_map.get(t, "sub_%04X" % t), off, t, " (ROM)" if t >= N else ""))
w("""
/* orientation notes - hot state variables (XDATA):
   0x9E59 command semaphore   0x9E48 status word (bit 0 busy)
   0x9E50 lock state          0xA05C command result source
   0xA05E-0xA061 per-ID results (events 0xF6/F4/F3/F2)
   0x9D00-0xA1FF firmware state RAM (1500+ MOVX references) */
""")

path = os.path.join(HERE, "rtl8192eu_firmware.c")
open(path, "w", encoding="utf-8").write("\n".join(out) + "\n")
print("wrote %s (%d lines, %.1f KB)" % (path, len(out), os.path.getsize(path) / 1024))
