# RTL8192EU Firmware Analysis — `rtl8192eu_nic.bin`

Analysis date: 2026-10-17 · Target: TP-Link TL-WN821N v5/v6 (Realtek RTL8192EU chipset)

---

## 1. Identity & provenance

| Property | Value |
|---|---|
| File size | 32,286 bytes |
| SHA-256 | `b15bc955fba2fc3abc093affe62c9f7284a0b84d4f13f8ce55366488dc9aad8b` |
| Identical to | `linux-firmware` → `rtlwifi/rtl8192eu_nic.bin` (byte-for-byte, hash-verified) |
| Content | 32-byte Realtek firmware header + 8051 program image (32,254 bytes) |

### Header decode (offsets 0x00–0x1F, little-endian)

Layout matches `struct rtl8xxxu_firmware_header` (Linux driver that parses this exact file).

| Offset | Field | Value | Meaning |
|---|---|---|---|
| 0x00 | signature | `0x92E1` | Realtek chip ID: RTL8192E |
| 0x02 | category | `0x10` | NIC / USB build |
| 0x03 | function | `0x00` | standard NIC firmware |
| 0x04 | version | `0x0023` | **FW version 35** (sub-version 0) |
| 0x07–0x0A | date fields | `07 11 10 10` | plausibly 2014-07-17 16:16 build time |
| 0x0C | rambcodesize | `0x7DFE` = 32,254 | exactly `filesize − 32` → whole payload is RAM code |
| 0x10 | svn_idx | `0x5A0C` = 23,052 | vendor source-control revision |

Cross-check: `rtl8723bu_nic.bin` (same generation) has the same structure — version 35, `rambcodesize = filesize − 32`, signature `0x5301` for the 8723B.

---

## 2. What this firmware is

The RTL8192EU dongle contains an **8051-architecture microcontroller** inside the WiFi chip.
When you plug the adapter in:

1. The host driver (Windows `rtwlane`/Realtek driver, Linux `rtl8xxxu`/vendor driver) detects the USB device.
2. The driver downloads the 32,254-byte payload into the chip's **code RAM at address 0x0000** (via the firmware-download register protocol), then releases the 8051's CPU reset.
3. From then on the 8051 runs **autonomously** and does everything too time-critical for USB: 802.11n MAC timing (SIFS ACK/CTS responses), beacon/TSF scheduling, rate adaptation, RF/PHY register sequencing, calibration (IQK), power-save transitions, and event reporting.
4. Host ↔ firmware communication is asynchronous: the driver sends commands (H2C) and receives events (C2H); the firmware reads/writes the chip's MAC/BB/RF registers through an internal memory-mapped bus (8051 `MOVX` space).

**Important structural fact (evidence-backed):** the code space is bigger than this file.
The downloaded image occupies 0x0000–0x7DFD; the region above (~0x7E00/0x8000–0xFFFF) is
**on-chip mask ROM** containing a library of helper routines and additional interrupt
handlers. The RAM image calls into it constantly. Proof:

- Vector slots 0x23 and 0x53 hold `LJMP 0x8094` / `LJMP 0x8056` — targets beyond the image.
- Verified, aligned code repeatedly executes `LCALL 0x7F69` (just past image end) before
  every command-send, `LJMP 0x990D` (tail-call into ROM), and hundreds of `LCALL`s into
  0x8000–0xBDF3 (dense clusters: 0x80AD ×9, 0x86F2 ×8, 0x87D1 ×7, 0x8FFC ×7, 0x901D ×7…).
- The sibling `rtl8723bu_nic.bin` shows the identical pattern (vectors → 0x7FE7, 0x87DF),
  confirming this is the generation's architecture, not a defect.
- The file is byte-identical to the stock linux-firmware blob, which works in production —
  so the ROM must supply those routines.

---

## 3. Memory model (for reading the disassembly)

| Space | Access | Range | Use |
|---|---|---|---|
| Code RAM | PC fetch, `MOVC` | 0x0000–0x7DFD | this file's payload |
| Code ROM | PC fetch, `MOVC` | ~0x7E00–0xFFFF | mask-ROM helper library + IRQ handlers |
| XDATA (data bus, `MOVX`) | `MOVX A,@DPTR` | 0x0000–0x07FF | chip registers: page 0 = system/MAC regs (0x108 refs), 0x0400–0x07FF = extended regs (148 refs) |
| XDATA | 0x0500–0x07FF | tables/values mapped in reg window (e.g. 0x0522 ×14, 0x0573) | |
| XDATA | 0x4000–0x49FF, 0x8100+, 0x8900+, 0x8D00+, 0x9300+ | sparse windows | more register/PHY windows |
| XDATA | **0x9D00–0xA1FF (1,566 refs)** | **firmware state RAM** — its globals/variables. Hottest: 0x9E55, 0xA05C, 0x9E4D, 0x9E48, 0xA093, 0x9E52 |
| XDATA | 0xFD00–0xFDFF (24 refs) | auxiliary window (e.g. 0xFD70) |
| IRAM 0x00–0x7F | direct addressing | 8051 internal scratch (e.g. bytes 0x51–0x55, 0x5B used by init) |

Note: the *same number* can be a ROM function (code space, e.g. 0xA7A4) and a state variable
(data space, e.g. 0xA05C) — 8051 separates code and data buses.

---

## 4. Interrupt vector table (RAM 0x0000–0x005F, file offsets 0x20–0x7F)

| Slot (RAM) | Type | Handler | In file? |
|---|---|---|---|
| 0x00 | Reset | LJMP 0x4937 | yes |
| 0x03 | IRQ slot 1 | LJMP 0x6FF0 | yes |
| 0x0B | IRQ slot 2 | — (zeros) | |
| 0x13 | IRQ slot 3 | LJMP 0x702C | yes |
| 0x1B | IRQ slot 4 | — (zeros) | |
| 0x23 | IRQ slot 5 | LJMP 0x8094 | **ROM** |
| 0x2B | IRQ slot 6 | — (zeros) | |
| 0x33/0x3B | slots 7/8 | — (zeros) | |
| 0x43 | IRQ slot 9 | LJMP 0x6FF1 | yes |
| 0x4B | IRQ slot 10 | LJMP 0x77ED | yes |
| 0x53 | IRQ slot 11 | LJMP 0x8056 | **ROM** |

Two slots point into ROM — consistent with a chip that owns some interrupt sources in silicon.

---

## 5. Boot flow (as disassembled)

```
CPU released by driver/download engine (DPTR appears pre-set — the ROM/download
engine passes a register address in DPTR; the sibling 8723BU shows the same
convention: its first instruction is also MOVX A,@DPTR)

RAM 0x4937   read reg @DPTR, clear bits[1:0], set bit 1, write back
             LCALL 0x5209  (init: C JNE R4,#0xF2; code-table lookup at 0x411D via MOVC;
                            IRAM 0x51–0x55 config; tail-LJMP 0x990D into ROM)
             clear bit 2 of state var 0x9FA9
             RET  (returns to ROM continuation → ROM runs the main loop)
```

IRQ slot 3 handler (0x702C) shows the runtime pattern:
```
LCALL 0x7F69          ; ROM helper (mailbox/lock guard) before every command
MOV  R7,#0xF2..0xF6   ; command/event ID
MOV  R6,#0x01
LCALL 0x34BC          ; RAM command processor (queue/semaphore logic:
                      ;  lock counter at 0x9E59, status 0x9E50, busy-wait on 0x9E48)
CJNE R7,#0x01, ...    ; check completion
MOV  DPTR,#0xA05C ... ; copy result between state variables
```

---

## 6. Code structure (recovered)

Coverage: **29,583 / 32,254 bytes (91.7%)** disassembled as valid instruction streams;
834 function starts (211 high-confidence = reached from vectors/call chains,
623 heuristic gap-fill). Remaining 8.3% = data tables + resync gaps.

### Largest high-confidence functions (RAM addresses)

| Address | Size | Callers | Role (inferred) |
|---|---|---|---|
| 0x45BC | 310 | — | init/state machine |
| 0x53A5 | 244 | — | |
| 0x5499 | 220 | 7 | shared worker (7 call sites) |
| 0x59CD | 195 | — | |
| 0x4819 | 164 | 1 | |
| 0x6962 | 160 | — | |
| 0x702C | 107 | IRQ slot 3 handler | command/event issuing IRQ |
| 0x58A7 | 102 | **12** | hub helper |
| 0x66A2 | 106 | 3 | |

### Most-called helpers

| Address | Size | Callers | Semantics (from disassembly) |
|---|---|---|---|
| 0x48F3 | 3 | **25** | `ANL A,#0xFD; MOVX @DPTR,A` — clear bit 1 of register |
| 0x0689 | 5 | 28 | compare/clamp (R7 = 0xFF on carry) |
| 0x48FF | 1 | 11 | `RET` — empty callback stub |
| 0x58A7 | 102 | 12 | multi-step worker |
| 0x48DB | 6 | 11 | write reg + call ROM 0xA7A4 |
| 0x48BD | 30 | 10 | register write sequence |
| 0x085A | 7 | 9 | 16-bit subtract (R4:R5 −= R0:R1) |
| 0x607E | 4 | 9 | trampoline (`POP; AJMP`) |
| 0x0879 | ~20 | 4 | register write helper (used as `MOV DPTR,#0xA145; LCALL 0x0879`) |

### Command/event IDs observed

`LCALL 0x34BC` (command processor) is invoked with IDs **0xF2, 0xF3, 0xF4, 0xF5, 0xF6**
(one each, all from the IRQ path) — an internal event/notification vocabulary.

### Data tables (unclaimed islands — candidate tables, 2,465 bytes total)

| RAM range | Size | Content pattern |
|---|---|---|
| 0x01AE–0x0572 | **965 B** | parameter tables (heads `04 06 08 0C 10 12 14 18 1B…`) |
| 0x00CA–0x0134 | ~100 B | mixed table zone (heads `32 24 32 32 43 4B 43 4B…`) |
| 0x0DE4–0x0E01 | 30 B | **register-init pairs**: (0x4E61, v), (0x4E78, v), (0x4E7D, v)… |
| 0x09BB–0x09D7 | 29 B | pairs (0xA1CE/0xA1CF/0xA1B9…, 0x0041) — init values for state window |
| 0x7D1B–0x7D25 | 11 B | **DPTR trampoline jump table**: `MOV DPTR,#0x0008; LJMP 0x07AB; …` |
| 0x0575–0x05A4, 0x068E–0x0702, 0x0861–0x08A9, 0x0E13–0x0EB1, 0x5161–0x5208… | 8–168 B each | gray zones: tables or code needing manual resync |

---

## 7. What the dongle actually does with this firmware (synthesis)

Inside your device, this image implements the USB-adapter's real-time half:

- **Plug-in:** driver downloads the blob → 8051 boots → first-stage init pokes the
  system-enable register, runs config lookup, hands control back to the ROM-resident
  main loop.
- **Runtime:** interrupt handlers service chip events; a command processor (0x34BC with a
  lock counter at 0x9E59 and status flags at 0x9E48/0x9E50) executes queued operations
  with IDs like 0xF2–0xF6 and reports results back to the host (C2H events).
- **Register layer:** all MAC/BB/RF hardware access goes through `MOVX` to the register
  windows (page 0, 0x04xx–0x07xx, 0x4Exx init tables), using tiny helpers like
  "set/clear bit" (0x48F3, 0x48BD, 0x0879) and ROM primitives.
- **State:** ~1.3 KB of state variables at XDATA 0x9D00–0xA1FF, with the hottest
  variables (0x9E55, 0xA05C, 0x9E4D…) being status/queue fields.

---

## 8. Method & caveats

- Disassembly: custom 8051 disassembler (`analyze_v2.py`), full opcode map, alignment-aware
  acceptance (chains rejected on overlap/invalid opcode), recursive descent from vectors +
  call-target fixpoint + gap-fill. Coverage 91.7%.
- **Confidence tags** in `disasm.asm`: `;H` = verified chain (from vectors/calls), `;M` =
  heuristic gap-fill. Sub-10-byte "functions" and gray-zone islands may be tables or
  mis-synced code.
- The ROM region (≥0x7E00) is **not in this file** — its content can only be studied by
  dumping the chip's ROM (not possible from the host through the normal driver).
- Header date fields: version/size/SVN fields are structurally certain (cross-validated
  with the 8723BU image); the month/day/hour/minute decode is plausible but not proven.
- No authentication, encryption, or obfuscation present — plain 8051 image.

## 9. Files in this directory

| File | Content |
|---|---|
| `rtl8192eu_firmware.c` | **C program transcription of the firmware** — 8051 machine model, hand-decompiled key routines, mechanical 1:1 instruction→C translation (2,444 functions, ~45k lines), data islands, raw image as `CODE[]` |
| `gen_c.py` | generator that produces the C file from the disassembly engine |
| `disasm.asm` | full annotated 8051 disassembly (RAM addresses; file offset = RAM + 0x20) |
| `functions.txt` | function table + call graph + per-function register windows |
| `map.txt` | header, vectors, regions, entropy, DPTR histograms |
| `strings.txt` | printable strings (the firmware contains essentially none — table-driven build) |
| `analyze_firmware.py` / `analyze_v2.py` | analysis scripts (v2 is the final engine) |
