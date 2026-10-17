; RTL8192EU firmware 8051 disassembly. RAM addr = file offset - 0x20.
; Confidence H = from vectors/calls, M = heuristic gap fill.
; vector RAM 0x00 (RESET) -> 0x4937
; vector RAM 0x03 (IRQ slot 1) -> 0x6FF0
; vector RAM 0x13 (IRQ slot 3) -> 0x702C
; vector RAM 0x43 (IRQ slot 9) -> 0x6FF1
; vector RAM 0x4B (IRQ slot 10) -> 0x77ED

0000  .db 02 49 37 02

sub_0004:  ; H func, size~2
0004  6f        XRL A,R7               ;H 
0005  f0        MOVX @DPTR,A           ;H 

sub_0006:  ; H func, size~16
0006  00        NOP                    ;H 
0007  00        NOP                    ;H 
0008  00        NOP                    ;H 
0009  00        NOP                    ;H 
000A  00        NOP                    ;H 
000B  00        NOP                    ;H 
000C  00        NOP                    ;H 
000D  00        NOP                    ;H 
000E  00        NOP                    ;H 
000F  00        NOP                    ;H 
0010  00        NOP                    ;H 
0011  00        NOP                    ;H 
0012  00        NOP                    ;H 
0013  02702c    LJMP 0x702C            ;H 

sub_0016:  ; M func, size~16
0016  00        NOP                    ;M 
0017  00        NOP                    ;M 
0018  00        NOP                    ;M 
0019  00        NOP                    ;M 
001A  00        NOP                    ;M 
001B  00        NOP                    ;M 
001C  00        NOP                    ;M 
001D  00        NOP                    ;M 
001E  00        NOP                    ;M 
001F  00        NOP                    ;M 
0020  00        NOP                    ;M 
0021  00        NOP                    ;M 
0022  00        NOP                    ;M 
0023  028094    LJMP 0x8094            ;M 

sub_0026:  ; M func, size~32
0026  00        NOP                    ;M 
0027  00        NOP                    ;M 
0028  00        NOP                    ;M 
0029  00        NOP                    ;M 
002A  00        NOP                    ;M 
002B  00        NOP                    ;M 
002C  00        NOP                    ;M 
002D  00        NOP                    ;M 
002E  00        NOP                    ;M 
002F  00        NOP                    ;M 
0030  00        NOP                    ;M 
0031  00        NOP                    ;M 
0032  00        NOP                    ;M 
0033  00        NOP                    ;M 
0034  00        NOP                    ;M 
0035  00        NOP                    ;M 
0036  00        NOP                    ;M 
0037  00        NOP                    ;M 
0038  00        NOP                    ;M 
0039  00        NOP                    ;M 
003A  00        NOP                    ;M 
003B  00        NOP                    ;M 
003C  00        NOP                    ;M 
003D  00        NOP                    ;M 
003E  00        NOP                    ;M 
003F  00        NOP                    ;M 
0040  00        NOP                    ;M 
0041  00        NOP                    ;M 
0042  00        NOP                    ;M 
0043  026ff1    LJMP 0x6FF1            ;M 

sub_0046:  ; M func, size~8
0046  00        NOP                    ;M 
0047  00        NOP                    ;M 
0048  00        NOP                    ;M 
0049  00        NOP                    ;M 
004A  00        NOP                    ;M 
004B  0277ed    LJMP 0x77ED            ;M 

sub_004E:  ; M func, size~37
004E  00        NOP                    ;M 
004F  00        NOP                    ;M 
0050  00        NOP                    ;M 
0051  00        NOP                    ;M 
0052  00        NOP                    ;M 
0053  028056    LJMP 0x8056            ;M 
0056  .db 00 00 00 07 07 08 08 09 00 00 00 06 07 08 09 0A
0066  .db 00 00 00 06 07 08 09 0A 00 00 00 06 07

sub_0073:  ; M func, size~9
0073  08        INC R0                 ;M 
0074  09        INC R1                 ;M 
0075  0a        INC R2                 ;M 
0076  00        NOP                    ;M 
0077  00        NOP                    ;M 
0078  00        NOP                    ;M 
0079  0106      AJMP 0x0006            ;M 
007B  .db 07

sub_007C:  ; M func, size~8
007C  09        INC R1                 ;M 
007D  0a        INC R2                 ;M 
007E  00        NOP                    ;M 
007F  00        NOP                    ;M 
0080  00        NOP                    ;M 
0081  0102      AJMP 0x0002            ;M 
0083  .db 07

sub_0084:  ; M func, size~7
0084  08        INC R0                 ;M 
0085  09        INC R1                 ;M 
0086  00        NOP                    ;M 
0087  00        NOP                    ;M 
0088  00        NOP                    ;M 
0089  0102      AJMP 0x0002            ;M 

sub_008B:  ; M func, size~8
008B  03        RR A                   ;M 
008C  08        INC R0                 ;M 
008D  09        INC R1                 ;M 
008E  00        NOP                    ;M 
008F  00        NOP                    ;M 
0090  00        NOP                    ;M 
0091  0102      AJMP 0x0002            ;M 

sub_0093:  ; M func, size~13
0093  03        RR A                   ;M 
0094  04        INC A                  ;M 
0095  09        INC R1                 ;M 
0096  00        NOP                    ;M 
0097  00        NOP                    ;M 
0098  00        NOP                    ;M 
0099  0102      AJMP 0x0002            ;M 
009B  .db 03 04 07 06 07

sub_00A0:  ; M func, size~18
00A0  08        INC R0                 ;M 
00A1  09        INC R1                 ;M 
00A2  0a        INC R2                 ;M 
00A3  0b        INC R3                 ;M 
00A4  0c        INC R4                 ;M 
00A5  0d        INC R5                 ;M 
00A6  0e        INC R6                 ;M 
00A7  0f        INC R7                 ;M 
00A8  101112    JBC 0x10.1, 0x00BD     ;M 
00AB  13        RRC A                  ;M 
00AC  14        DEC A                  ;M 
00AD  32        RETI                   ;M 
00AE  .db 32 24 32 32

sub_00B2:  ; M func, size~9
00B2  434b43    ORL dir,# 0x4B, #0x43  ;M 
00B5  4b        ORL A,R3               ;M 
00B6  434b59    ORL dir,# 0x4B, #0x59  ;M 
00B9  32        RETI                   ;M 
00BA  .db 32

sub_00BB:  ; M func, size~8
00BB  434b43    ORL dir,# 0x4B, #0x43  ;M 
00BE  4b        ORL A,R3               ;M 
00BF  59        ANL A,R1               ;M 
00C0  5a        ANL A,R2               ;M 
00C1  32        RETI                   ;M 
00C2  .db 32

sub_00C3:  ; M func, size~56
00C3  434b43    ORL dir,# 0x4B, #0x43  ;M 
00C6  4b        ORL A,R3               ;M 
00C7  59        ANL A,R1               ;M 
00C8  5a        ANL A,R2               ;M 
00C9  32        RETI                   ;M 
00CA  .db 32 24 32 32 43 4B 43 4B 43 4B 59 58 58 58 58 58
00DA  .db 58 58 58 58 58 58 58 58 58 58 58 52 53 54 55 53
00EA  .db 54 55 56 57 58 59 5A 56 57 58 59 5A 5B 5C 5D 56
00FA  .db 57

sub_00FB:  ; M func, size~58
00FB  58        ANL A,R0               ;M 
00FC  59        ANL A,R1               ;M 
00FD  5a        ANL A,R2               ;M 
00FE  5b        ANL A,R3               ;M 
00FF  5c        ANL A,R4               ;M 
0100  5d        ANL A,R5               ;M 
0101  00        NOP                    ;M 
0102  00        NOP                    ;M 
0103  00        NOP                    ;M 
0104  0100      AJMP 0x0000            ;M 
0106  .db 00 01 01 01 02 02 03 00 01 01 01 01 02 02 03 00
0116  .db 01 01 02 02 02 02 03 01 01 01 01 01 02 03 04 05
0126  .db 06 07 08 01 02 03 04 05 06 07 08 05 06 06 07

sub_0135:  ; M func, size~7
0135  08        INC R0                 ;M 
0136  0a        INC R2                 ;M 
0137  0b        INC R3                 ;M 
0138  0c        INC R4                 ;M 
0139  020408    LJMP 0x0408            ;M 

sub_013C:  ; M func, size~28
013C  101014    JBC 0x10.0, 0x0153     ;M 
013F  18        DEC R0                 ;M 
0140  1c        DEC R4                 ;M 
0141  1c        DEC R4                 ;M 
0142  202020    JB 0x20.0, 0x0165      ;M 
0145  101418    JBC 0x10.4, 0x0160     ;M 
0148  1c        DEC R4                 ;M 
0149  1c        DEC R4                 ;M 
014A  202020    JB 0x20.0, 0x016D      ;M 
014D  101418    JBC 0x10.4, 0x0168     ;M 
0150  1c        DEC R4                 ;M 
0151  1c        DEC R4                 ;M 
0152  202020    JB 0x20.0, 0x0175      ;M 
0155  0104      AJMP 0x0004            ;M 
0157  .db 02

sub_0158:  ; M func, size~24
0158  04        INC A                  ;M 
0159  04        INC A                  ;M 
015A  03        RR A                   ;M 
015B  0c        INC R4                 ;M 
015C  04        INC A                  ;M 
015D  0c        INC R4                 ;M 
015E  03        RR A                   ;M 
015F  00        NOP                    ;M 
0160  00        NOP                    ;M 
0161  0102      AJMP 0x0002            ;M 
0163  .db 01 01 02 03 04 06 08 09 01 02 03 04 06

sub_0170:  ; M func, size~6
0170  08        INC R0                 ;M 
0171  09        INC R1                 ;M 
0172  0a        INC R2                 ;M 
0173  020406    LJMP 0x0406            ;M 

sub_0176:  ; M func, size~22
0176  08        INC R0                 ;M 
0177  0c        INC R4                 ;M 
0178  101214    JBC 0x10.2, 0x018F     ;M 
017B  00        NOP                    ;M 
017C  00        NOP                    ;M 
017D  0102      AJMP 0x0002            ;M 
017F  .db 01 01 02 03 04 06 08 09 01 02 03 04 06

sub_018C:  ; M func, size~6
018C  08        INC R0                 ;M 
018D  09        INC R1                 ;M 
018E  0a        INC R2                 ;M 
018F  020406    LJMP 0x0406            ;M 

sub_0192:  ; M func, size~22
0192  08        INC R0                 ;M 
0193  0c        INC R4                 ;M 
0194  101214    JBC 0x10.2, 0x01AB     ;M 
0197  00        NOP                    ;M 
0198  00        NOP                    ;M 
0199  0102      AJMP 0x0002            ;M 
019B  .db 01 01 02 03 04 06 08 09 01 02 03 04 06

sub_01A8:  ; M func, size~605
01A8  08        INC R0                 ;M 
01A9  09        INC R1                 ;M 
01AA  0a        INC R2                 ;M 
01AB  0c        INC R4                 ;M 
01AC  0e        INC R6                 ;M 
01AD  020406    LJMP 0x0406            ;M 
01B0  .db 08 0C 10 12 14 18 1B 14 0D 15 0E 15 0F 16 10 17
01C0  .db 11 18 12 18 13 18 FF 15 0E 16 10 17 11 18 12 19
01D0  .db FF 1A FF 1B FF 14 0C 14 0D 0E 14 15 0F 16 10 17
01E0  .db 11 12 17 0C FF 0E 14 15 0F 16 10 13 17 18 13 19
01F0  .db 18 1A 19 00 00 00 00 00 00 00 00 00 00 00 00 00
0200  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0210  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0220  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0230  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0240  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0250  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0260  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0270  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0280  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0290  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
02A0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
02B0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
02C0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
02D0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
02E0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
02F0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0300  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0310  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0320  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0330  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0340  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0350  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0360  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0370  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0380  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0390  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
03A0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
03B0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
03C0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
03D0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
03E0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
03F0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0400  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0410  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0420  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0430  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0440  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0450  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0460  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0470  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0480  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0490  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
04A0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
04B0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
04C0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
04D0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
04E0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
04F0  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0500  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0510  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0520  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0530  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0540  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0550  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0560  .db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0570  .db C2 AF 80

sub_0573:  ; H func, size~50
0573  fe        MOV R6,A               ;H 
0574  32        RETI                   ;H 
0575  .db 12 45 74 85 D0 0B 75 D0 08 AA E0 C2 8C E5 8A 24
0585  .db 67 F5 8A E5 8C 34 79 F5 8C D2 8C EC 24 87 F8 E6
0595  .db BC 02 02 74 FF C3 95 81 B4 40 00 40 CE 79 03 78

sub_05A5:  ; M func, size~24
05A5  8016      SJMP 0x05BD            ;M 
05A7  e6        MOV A,@R0              ;M 
05A8  08        INC R0                 ;M 
05A9  700b      JNZ 0x05B6             ;M 
05AB  c2af      CLR bit IE.7           ;M 
05AD  e6        MOV A,@R0              ;M 
05AE  30e103    JNB ACC.1, 0x05B4      ;M 
05B1  4418      ORL A,# #0x18          ;M 
05B3  f6        MOV @R0,A              ;M 
05B4  d2af      SETB bit IE.7          ;M 
05B6  08        INC R0                 ;M 
05B7  d9ed      DJNZ R1, 0x05A6        ;M 
05B9  ea        MOV A,R2               ;M 
05BA  8bd0      MOV dir,R3 PSW         ;M 
05BC  22        RET                    ;M 

sub_05BD:  ; M func, size~144
05BD  e50c      MOV A,dir 0x0C         ;M 
05BF  ff        MOV R7,A               ;M 
05C0  23        RL A                   ;M 
05C1  2481      ADD A,# #0x81          ;M 
05C3  f8        MOV R0,A               ;M 
05C4  0f        INC R7                 ;M 
05C5  08        INC R0                 ;M 
05C6  08        INC R0                 ;M 
05C7  bf0304    CJNE R7,# #0x03, 0x05CE ;M 
05CA  7f00      MOV R7,# #0x00         ;M 
05CC  7881      MOV R0,# #0x81         ;M 
05CE  e6        MOV A,@R0              ;M 
05CF  30e4f2    JNB ACC.4, 0x05C4      ;M 
05D2  00        NOP                    ;M 
05D3  e50c      MOV A,dir 0x0C         ;M 
05D5  c3        CLR C                  ;M 
05D6  9f        SUBB A,R7              ;M 
05D7  5020      JNC 0x05F9             ;M 
05D9  050c      INC 0x0C               ;M 
05DB  7486      MOV A,# #0x86          ;M 
05DD  250c      ADD A,dir 0x0C         ;M 
05DF  f8        MOV R0,A               ;M 
05E0  e6        MOV A,@R0              ;M 
05E1  fd        MOV R5,A               ;M 
05E2  a681      MOV @R0,dir SP         ;M 
05E4  08        INC R0                 ;M 
05E5  e6        MOV A,@R0              ;M 
05E6  ae0c      MOV R6,dir 0x0C        ;M 
05E8  be0202    CJNE R6,# #0x02, 0x05ED ;M 
05EB  74ff      MOV A,# #0xFF          ;M 
05ED  cd        XCH A,R5               ;M 
05EE  f8        MOV R0,A               ;M 
05EF  e8        MOV A,R0               ;M 
05F0  6d        XRL A,R5               ;M 
05F1  60e0      JZ 0x05D3              ;M 
05F3  08        INC R0                 ;M 
05F4  e6        MOV A,@R0              ;M 
05F5  c0e0      PUSH dir ACC           ;M 
05F7  80f6      SJMP 0x05EF            ;M 
05F9  e50c      MOV A,dir 0x0C         ;M 
05FB  d3        SETB C                 ;M 
05FC  9f        SUBB A,R7              ;M 
05FD  4027      JC 0x0626              ;M 
05FF  e50c      MOV A,dir 0x0C         ;M 
0601  2487      ADD A,# #0x87          ;M 
0603  f8        MOV R0,A               ;M 
0604  e6        MOV A,@R0              ;M 
0605  ae0c      MOV R6,dir 0x0C        ;M 
0607  be0202    CJNE R6,# #0x02, 0x060C ;M 
060A  74ff      MOV A,# #0xFF          ;M 
060C  fd        MOV R5,A               ;M 
060D  18        DEC R0                 ;M 
060E  e6        MOV A,@R0              ;M 
060F  cd        XCH A,R5               ;M 
0610  f8        MOV R0,A               ;M 
0611  e581      MOV A,dir SP           ;M 
0613  6d        XRL A,R5               ;M 
0614  6006      JZ 0x061C              ;M 
0616  d0e0      POP dir ACC            ;M 
0618  f6        MOV @R0,A              ;M 
0619  18        DEC R0                 ;M 
061A  80f5      SJMP 0x0611            ;M 
061C  e50c      MOV A,dir 0x0C         ;M 
061E  2486      ADD A,# #0x86          ;M 
0620  c8        XCH A,R0               ;M 
0621  f6        MOV @R0,A              ;M 
0622  150c      DEC 0x0C               ;M 
0624  80d3      SJMP 0x05F9            ;M 
0626  e50c      MOV A,dir 0x0C         ;M 
0628  23        RL A                   ;M 
0629  2481      ADD A,# #0x81          ;M 
062B  f8        MOV R0,A               ;M 
062C  7f04      MOV R7,# #0x04         ;M 
062E  c2af      CLR bit IE.7           ;M 
0630  e6        MOV A,@R0              ;M 
0631  30e003    JNB ACC.0, 0x0637      ;M 
0634  10e20c    JBC ACC.2, 0x0643      ;M 
0637  7f00      MOV R7,# #0x00         ;M 
0639  30e107    JNB ACC.1, 0x0643      ;M 
063C  30e304    JNB ACC.3, 0x0643      ;M 
063F  7f08      MOV R7,# #0x08         ;M 
0641  54f4      ANL A,# #0xF4          ;M 
0643  547c      ANL A,# #0x7C          ;M 
0645  c6        XCH A,@R0              ;M 
0646  d2af      SETB bit IE.7          ;M 
0648  5480      ANL A,# #0x80          ;M 
064A  4207      ORL dir,A 0x07         ;M 
064C  22        RET                    ;M 

sub_064D:  ; M func, size~60
064D  7886      MOV R0,# #0x86         ;M 
064F  a681      MOV @R0,dir SP         ;M 
0651  7402      MOV A,# #0x02          ;M 
0653  6006      JZ 0x065B              ;M 
0655  ff        MOV R7,A               ;M 
0656  08        INC R0                 ;M 
0657  76ff      MOV @R0,# #0xFF        ;M 
0659  dffb      DJNZ R7, 0x0656        ;M 
065B  7f03      MOV R7,# #0x03         ;M 
065D  e4        CLR A                  ;M 
065E  7880      MOV R0,# #0x80         ;M 
0660  f6        MOV @R0,A              ;M 
0661  08        INC R0                 ;M 
0662  f6        MOV @R0,A              ;M 
0663  08        INC R0                 ;M 
0664  dffa      DJNZ R7, 0x0660        ;M 
0666  7881      MOV R0,# #0x81         ;M 
0668  7630      MOV @R0,# #0x30        ;M 
066A  9049d3    MOV DPTR,# #0x49D3     ;M dptr win: RAM/table-hi (0x49D3)
066D  7401      MOV A,# #0x01          ;M 
066F  93        MOVC A,@A+DPTR         ;M 
0670  c0e0      PUSH dir ACC           ;M 
0672  e4        CLR A                  ;M 
0673  93        MOVC A,@A+DPTR         ;M 
0674  c0e0      PUSH dir ACC           ;M 
0676  438901    ORL dir,# TMOD, #0x01  ;M 
0679  758a60    MOV dir,# TL0, #0x60   ;M 
067C  758c79    MOV dir,# TH0, #0x79   ;M 
067F  d28c      SETB bit TCON.4        ;M 
0681  d2af      SETB bit IE.7          ;M 
0683  22        RET                    ;M 
0684  .db 02 EF D3 94 02

sub_0689:  ; H func, size~5
0689  4003      JC 0x068E              ;H 
068B  7fff      MOV R7,# #0xFF         ;H 
068D  22        RET                    ;H 
068E  .db 74 81 2F 2F F8 E6 20 E5 F4 C2 AF E6 44 30 F6 D2
069E  .db AF AE 0C EE C3 9F 50 21 0E 74 86 2E F8 E6 F9 08
06AE  .db E6 18 BE 02 02 74 FF FD ED 69 60 09 09 E7 19 19
06BE  .db F7 09 09 80 F3 16 16 80 DA EE D3 9F 40 04 05

sub_06CD:  ; H func, size~2
06CD  8105      AJMP 0x0405            ;H 

sub_06CF:  ; H func, size~52
06CF  81ee      AJMP 0x04EE            ;H 
06D1  .db D3 9F 40 22 74 86 2E F8 08 E6 F9 EE B5 0C 02 A9
06E1  .db 81 18 06 06 E6 FD ED 69 60 09 19 19 E7 09 09 F7
06F1  .db 19 80 F3 1E 80 D9 EF 24 86 F8 E6 04 F8 EF 2F 04
0701  .db 90 49

sub_0703:  ; H func, size~11
0703  d3        SETB C                 ;H 
0704  93        MOVC A,@A+DPTR         ;H 
0705  f6        MOV @R0,A              ;H 
0706  08        INC R0                 ;H 
0707  ef        MOV A,R7               ;H 
0708  2f        ADD A,R7               ;H 
0709  93        MOVC A,@A+DPTR         ;H 
070A  f6        MOV @R0,A              ;H 
070B  7f00      MOV R7,# #0x00         ;H 
070D  22        RET                    ;H 

sub_070E:  ; M func, size~9
070E  ef        MOV A,R7               ;M 
070F  d3        SETB C                 ;M 
0710  9402      SUBB A,# #0x02         ;M 
0712  4003      JC 0x0717              ;M 
0714  7fff      MOV R7,# #0xFF         ;M 
0716  22        RET                    ;M 

sub_0717:  ; M func, size~32
0717  ef        MOV A,R7               ;M 
0718  23        RL A                   ;M 
0719  2481      ADD A,# #0x81          ;M 
071B  f8        MOV R0,A               ;M 
071C  e6        MOV A,@R0              ;M 
071D  30e5f4    JNB ACC.5, 0x0714      ;M 
0720  c2af      CLR bit IE.7           ;M 
0722  e6        MOV A,@R0              ;M 
0723  548c      ANL A,# #0x8C          ;M 
0725  f6        MOV @R0,A              ;M 
0726  d2af      SETB bit IE.7          ;M 
0728  e50c      MOV A,dir 0x0C         ;M 
072A  b5070a    CJNE A,dir 0x07, 0x0737 ;M 
072D  7486      MOV A,# #0x86          ;M 
072F  2f        ADD A,R7               ;M 
0730  f8        MOV R0,A               ;M 
0731  e6        MOV A,@R0              ;M 
0732  f581      MOV dir,A SP           ;M 
0734  0245bd    LJMP 0x45BD            ;M 

sub_0737:  ; M func, size~65
0737  502e      JNC 0x0767             ;M 
0739  7487      MOV A,# #0x87          ;M 
073B  2f        ADD A,R7               ;M 
073C  f8        MOV R0,A               ;M 
073D  e6        MOV A,@R0              ;M 
073E  bf0202    CJNE R7,# #0x02, 0x0743 ;M 
0741  74ff      MOV A,# #0xFF          ;M 
0743  fd        MOV R5,A               ;M 
0744  18        DEC R0                 ;M 
0745  e6        MOV A,@R0              ;M 
0746  f9        MOV R1,A               ;M 
0747  7486      MOV A,# #0x86          ;M 
0749  2f        ADD A,R7               ;M 
074A  f8        MOV R0,A               ;M 
074B  fb        MOV R3,A               ;M 
074C  e6        MOV A,@R0              ;M 
074D  fc        MOV R4,A               ;M 
074E  e9        MOV A,R1               ;M 
074F  6c        XRL A,R4               ;M 
0750  6008      JZ 0x075A              ;M 
0752  a805      MOV R0,dir 0x05        ;M 
0754  e7        MOV A,@R1              ;M 
0755  f6        MOV @R0,A              ;M 
0756  1d        DEC R5                 ;M 
0757  19        DEC R1                 ;M 
0758  80f4      SJMP 0x074E            ;M 
075A  a803      MOV R0,dir 0x03        ;M 
075C  a605      MOV @R0,dir 0x05       ;M 
075E  1f        DEC R7                 ;M 
075F  e50c      MOV A,dir 0x0C         ;M 
0761  b507e3    CJNE A,dir 0x07, 0x0747 ;M 
0764  7f00      MOV R7,# #0x00         ;M 
0766  22        RET                    ;M 
0767  .db 74 87 2F F8 E6 FD 18 86 01 0F 74 86 2F F8 A6 01
0777  .db 08 86 04 E5 0C B5 07 02 AC

sub_0780:  ; H func, size~2
0780  81ed      AJMP 0x04ED            ;H 

sub_0782:  ; M func, size~21
0782  6c        XRL A,R4               ;M 
0783  6008      JZ 0x078D              ;M 
0785  0d        INC R5                 ;M 
0786  09        INC R1                 ;M 
0787  a805      MOV R0,dir 0x05        ;M 
0789  e6        MOV A,@R0              ;M 
078A  f7        MOV @R1,A              ;M 
078B  80f4      SJMP 0x0781            ;M 
078D  e50c      MOV A,dir 0x0C         ;M 
078F  b507de    CJNE A,dir 0x07, 0x0770 ;M 
0792  8981      MOV dir,R1 SP          ;M 
0794  7f00      MOV R7,# #0x00         ;M 
0796  22        RET                    ;M 

sub_0797:  ; M func, size~9
0797  ef        MOV A,R7               ;M 
0798  d3        SETB C                 ;M 
0799  9402      SUBB A,# #0x02         ;M 
079B  4003      JC 0x07A0              ;M 
079D  7fff      MOV R7,# #0xFF         ;M 
079F  22        RET                    ;M 

sub_07A0:  ; M func, size~11
07A0  ef        MOV A,R7               ;M 
07A1  23        RL A                   ;M 
07A2  2481      ADD A,# #0x81          ;M 
07A4  f8        MOV R0,A               ;M 
07A5  c2af      CLR bit IE.7           ;M 
07A7  e6        MOV A,@R0              ;M 
07A8  30e505    JNB ACC.5, 0x07B0      ;M 

sub_07AB:  ; H func, size~19
07AB  30e002    JNB ACC.0, 0x07B0      ;H 
07AE  d2e4      SETB bit ACC.4         ;H 
07B0  d2e2      SETB bit ACC.2         ;H 
07B2  c6        XCH A,@R0              ;H 
07B3  d2af      SETB bit IE.7          ;H 
07B5  7f00      MOV R7,# #0x00         ;H 
07B7  30e201    JNB ACC.2, 0x07BB      ;H 
07BA  0f        INC R7                 ;H 
07BB  0245bc    LJMP 0x45BC            ;H 

sub_07BE:  ; M func, size~81
07BE  8ff0      MOV dir,R7 B           ;M 
07C0  e4        CLR A                  ;M 
07C1  ff        MOV R7,A               ;M 
07C2  fe        MOV R6,A               ;M 
07C3  e50c      MOV A,dir 0x0C         ;M 
07C5  23        RL A                   ;M 
07C6  2480      ADD A,# #0x80          ;M 
07C8  f8        MOV R0,A               ;M 
07C9  c2a9      CLR bit IE.1           ;M 
07CB  30f70d    JNB B.7, 0x07DB        ;M 
07CE  7f08      MOV R7,# #0x08         ;M 
07D0  e6        MOV A,@R0              ;M 
07D1  600b      JZ 0x07DE              ;M 
07D3  2d        ADD A,R5               ;M 
07D4  f6        MOV @R0,A              ;M 
07D5  6030      JZ 0x0807              ;M 
07D7  502e      JNC 0x0807             ;M 
07D9  8007      SJMP 0x07E2            ;M 
07DB  30f106    JNB B.1, 0x07E4        ;M 
07DE  ed        MOV A,R5               ;M 
07DF  f6        MOV @R0,A              ;M 
07E0  6025      JZ 0x0807              ;M 
07E2  7e02      MOV R6,# #0x02         ;M 
07E4  08        INC R0                 ;M 
07E5  30f010    JNB B.0, 0x07F8        ;M 
07E8  c2af      CLR bit IE.7           ;M 
07EA  e6        MOV A,@R0              ;M 
07EB  10e723    JBC ACC.7, 0x0811      ;M 
07EE  0e        INC R6                 ;M 
07EF  30e20c    JNB ACC.2, 0x07FE      ;M 
07F2  d2af      SETB bit IE.7          ;M 
07F4  7f04      MOV R7,# #0x04         ;M 
07F6  8012      SJMP 0x080A            ;M 
07F8  c2af      CLR bit IE.7           ;M 
07FA  e6        MOV A,@R0              ;M 
07FB  10e713    JBC ACC.7, 0x0811      ;M 
07FE  54ec      ANL A,# #0xEC          ;M 
0800  4e        ORL A,R6               ;M 
0801  f6        MOV @R0,A              ;M 
0802  d2af      SETB bit IE.7          ;M 
0804  0245bd    LJMP 0x45BD            ;M 
0807  .db 7F 08 08 EF 44 83 F4 C2

sub_080F:  ; M func, size~10
080F  af56      MOV R7,dir 0x56        ;M 
0811  c6        XCH A,@R0              ;M 
0812  d2af      SETB bit IE.7          ;M 
0814  5480      ANL A,# #0x80          ;M 
0816  4f        ORL A,R7               ;M 
0817  ff        MOV R7,A               ;M 
0818  22        RET                    ;M 

sub_0819:  ; M func, size~21
0819  f8        MOV R0,A               ;M 
081A  bb0111    CJNE R3,# #0x01, 0x082E ;M 
081D  e582      MOV A,dir DPL          ;M 
081F  29        ADD A,R1               ;M 
0820  f582      MOV dir,A DPL          ;M 
0822  e583      MOV A,dir DPH          ;M 
0824  3a        ADDC A,R2              ;M 
0825  f583      MOV dir,A DPH          ;M 
0827  e8        MOV A,R0               ;M 
0828  f0        MOVX @DPTR,A           ;M 
0829  e5f0      MOV A,dir B            ;M 
082B  a3        INC DPTR               ;M 
082C  f0        MOVX @DPTR,A           ;M 
082D  22        RET                    ;M 

sub_082E:  ; M func, size~11
082E  5009      JNC 0x0839             ;M 
0830  e9        MOV A,R1               ;M 
0831  2582      ADD A,dir DPL          ;M 
0833  c8        XCH A,R0               ;M 
0834  f6        MOV @R0,A              ;M 
0835  08        INC R0                 ;M 
0836  a6f0      MOV @R0,dir B          ;M 
0838  22        RET                    ;M 

sub_0839:  ; M func, size~13
0839  bbfe09    CJNE R3,# #0xFE, 0x0845 ;M 
083C  e9        MOV A,R1               ;M 
083D  2582      ADD A,dir DPL          ;M 
083F  c8        XCH A,R0               ;M 
0840  f2        MOVX @R0,A             ;M 
0841  e5f0      MOV A,dir B            ;M 
0843  08        INC R0                 ;M 
0844  f2        MOVX @R0,A             ;M 
0845  22        RET                    ;M 

sub_0846:  ; M func, size~13
0846  ef        MOV A,R7               ;M 
0847  2b        ADD A,R3               ;M 
0848  ff        MOV R7,A               ;M 
0849  ee        MOV A,R6               ;M 
084A  3a        ADDC A,R2              ;M 
084B  fe        MOV R6,A               ;M 
084C  ed        MOV A,R5               ;M 
084D  39        ADDC A,R1              ;M 
084E  fd        MOV R5,A               ;M 
084F  ec        MOV A,R4               ;M 
0850  38        ADDC A,R0              ;M 
0851  fc        MOV R4,A               ;M 
0852  22        RET                    ;M 

sub_0853:  ; M func, size~7
0853  c3        CLR C                  ;M 
0854  ef        MOV A,R7               ;M 
0855  9b        SUBB A,R3              ;M 
0856  ff        MOV R7,A               ;M 
0857  ee        MOV A,R6               ;M 
0858  9a        SUBB A,R2              ;M 
0859  fe        MOV R6,A               ;M 

sub_085A:  ; H func, size~19
085A  ed        MOV A,R5               ;H 
085B  99        SUBB A,R1              ;H 
085C  fd        MOV R5,A               ;H 
085D  ec        MOV A,R4               ;H 
085E  98        SUBB A,R0              ;H 
085F  fc        MOV R4,A               ;H 
0860  22        RET                    ;H 
0861  .db E8 8F F0 A4 CC 8B F0 A4 2C FC E9 8E F0 A4 2C FC
0871  .db 8A F0 ED A4 2C FC EA 8E F0 A4 CD A8 F0 8B F0 A4
0881  .db 2D CC 38 25 F0 FD E9 8F F0 A4 2C CD 35 F0 FC EB
0891  .db 8E F0 A4 FE A9 F0 EB 8F F0 A4 CF C5 F0 2E CD 39
08A1  .db FE E4 3C FC EA A4 2D CE 35

sub_08AA:  ; H func, size~6
08AA  f0        MOVX @DPTR,A           ;H 
08AB  fd        MOV R5,A               ;H 
08AC  e4        CLR A                  ;H 
08AD  3c        ADDC A,R4              ;H 
08AE  fc        MOV R4,A               ;H 
08AF  22        RET                    ;H 

sub_08B0:  ; M func, size~13
08B0  ef        MOV A,R7               ;M 
08B1  5b        ANL A,R3               ;M 
08B2  ff        MOV R7,A               ;M 
08B3  ee        MOV A,R6               ;M 
08B4  5a        ANL A,R2               ;M 
08B5  fe        MOV R6,A               ;M 
08B6  ed        MOV A,R5               ;M 
08B7  59        ANL A,R1               ;M 
08B8  fd        MOV R5,A               ;M 
08B9  ec        MOV A,R4               ;M 
08BA  58        ANL A,R0               ;M 
08BB  fc        MOV R4,A               ;M 
08BC  22        RET                    ;M 

sub_08BD:  ; M func, size~13
08BD  ef        MOV A,R7               ;M 
08BE  4b        ORL A,R3               ;M 
08BF  ff        MOV R7,A               ;M 
08C0  ee        MOV A,R6               ;M 
08C1  4a        ORL A,R2               ;M 
08C2  fe        MOV R6,A               ;M 
08C3  ed        MOV A,R5               ;M 
08C4  49        ORL A,R1               ;M 
08C5  fd        MOV R5,A               ;M 
08C6  ec        MOV A,R4               ;M 
08C7  48        ORL A,R0               ;M 
08C8  fc        MOV R4,A               ;M 
08C9  22        RET                    ;M 

sub_08CA:  ; M func, size~17
08CA  eb        MOV A,R3               ;M 
08CB  9f        SUBB A,R7              ;M 
08CC  f5f0      MOV dir,A B            ;M 
08CE  ea        MOV A,R2               ;M 
08CF  9e        SUBB A,R6              ;M 
08D0  42f0      ORL dir,A B            ;M 
08D2  e9        MOV A,R1               ;M 
08D3  9d        SUBB A,R5              ;M 
08D4  42f0      ORL dir,A B            ;M 
08D6  e8        MOV A,R0               ;M 
08D7  9c        SUBB A,R4              ;M 
08D8  45f0      ORL A,dir B            ;M 
08DA  22        RET                    ;M 

sub_08DB:  ; M func, size~12
08DB  e0        MOVX A,@DPTR           ;M 
08DC  fc        MOV R4,A               ;M 
08DD  a3        INC DPTR               ;M 
08DE  e0        MOVX A,@DPTR           ;M 
08DF  fd        MOV R5,A               ;M 
08E0  a3        INC DPTR               ;M 
08E1  e0        MOVX A,@DPTR           ;M 
08E2  fe        MOV R6,A               ;M 
08E3  a3        INC DPTR               ;M 
08E4  e0        MOVX A,@DPTR           ;M 
08E5  ff        MOV R7,A               ;M 
08E6  22        RET                    ;M 

sub_08E7:  ; M func, size~12
08E7  e0        MOVX A,@DPTR           ;M 
08E8  f8        MOV R0,A               ;M 
08E9  a3        INC DPTR               ;M 
08EA  e0        MOVX A,@DPTR           ;M 
08EB  f9        MOV R1,A               ;M 
08EC  a3        INC DPTR               ;M 
08ED  e0        MOVX A,@DPTR           ;M 
08EE  fa        MOV R2,A               ;M 
08EF  a3        INC DPTR               ;M 
08F0  e0        MOVX A,@DPTR           ;M 
08F1  fb        MOV R3,A               ;M 
08F2  22        RET                    ;M 

sub_08F3:  ; M func, size~12
08F3  a4        MUL AB                 ;M 
08F4  2582      ADD A,dir DPL          ;M 
08F6  f582      MOV dir,A DPL          ;M 
08F8  e5f0      MOV A,dir B            ;M 
08FA  3583      ADDC A,dir DPH         ;M 
08FC  f583      MOV dir,A DPH          ;M 
08FE  22        RET                    ;M 

sub_08FF:  ; M func, size~9
08FF  e0        MOVX A,@DPTR           ;M 
0900  fb        MOV R3,A               ;M 
0901  a3        INC DPTR               ;M 
0902  e0        MOVX A,@DPTR           ;M 
0903  fa        MOV R2,A               ;M 
0904  a3        INC DPTR               ;M 
0905  e0        MOVX A,@DPTR           ;M 
0906  f9        MOV R1,A               ;M 
0907  22        RET                    ;M 

sub_0908:  ; M func, size~9
0908  eb        MOV A,R3               ;M 
0909  f0        MOVX @DPTR,A           ;M 
090A  a3        INC DPTR               ;M 
090B  ea        MOV A,R2               ;M 
090C  f0        MOVX @DPTR,A           ;M 
090D  a3        INC DPTR               ;M 
090E  e9        MOV A,R1               ;M 
090F  f0        MOVX @DPTR,A           ;M 
0910  22        RET                    ;M 

sub_0911:  ; M func, size~27
0911  d083      POP dir DPH            ;M 
0913  d082      POP dir DPL            ;M 
0915  f8        MOV R0,A               ;M 
0916  e4        CLR A                  ;M 
0917  93        MOVC A,@A+DPTR         ;M 
0918  7012      JNZ 0x092C             ;M 
091A  7401      MOV A,# #0x01          ;M 
091C  93        MOVC A,@A+DPTR         ;M 
091D  700d      JNZ 0x092C             ;M 
091F  a3        INC DPTR               ;M 
0920  a3        INC DPTR               ;M 
0921  93        MOVC A,@A+DPTR         ;M 
0922  f8        MOV R0,A               ;M 
0923  7401      MOV A,# #0x01          ;M 
0925  93        MOVC A,@A+DPTR         ;M 
0926  f582      MOV dir,A DPL          ;M 
0928  8883      MOV dir,R0 DPH         ;M 
092A  e4        CLR A                  ;M 
092B  73        JMP @A+DPTR            ;M 

sub_092C:  ; M func, size~60
092C  7402      MOV A,# #0x02          ;M 
092E  93        MOVC A,@A+DPTR         ;M 
092F  68        XRL A,R0               ;M 
0930  60ef      JZ 0x0921              ;M 
0932  a3        INC DPTR               ;M 
0933  a3        INC DPTR               ;M 
0934  a3        INC DPTR               ;M 
0935  80df      SJMP 0x0916            ;M 
0937  024975    LJMP 0x4975            ;M 
093A  .db 02 46 4D E4 93 A3 F8 E4 93 A3 40 03 F6 80 01 F2
094A  .db 08 DF F4 80 29 E4 93 A3 F8 54 07 24 0C C8 C3 33
095A  .db C4 54 0F 44 20 C8 83 40 04 F4 56 80 01 46

sub_0968:  ; M func, size~7
0968  f6        MOV @R0,A              ;M 
0969  dfe4      DJNZ R7, 0x094F        ;M 
096B  800b      SJMP 0x0978            ;M 
096D  0102      AJMP 0x0802            ;M 

sub_096F:  ; M func, size~13
096F  04        INC A                  ;M 
0970  08        INC R0                 ;M 
0971  102040    JBC 0x20.0, 0x09B4     ;M 
0974  8090      SJMP 0x0906            ;M 
0976  49        ORL A,R1               ;M 
0977  bae47e    CJNE R2,# #0xE4, 0x09F8 ;M 
097A  0193      AJMP 0x0893            ;M 

sub_097C:  ; M func, size~92
097C  60bc      JZ 0x093A              ;M 
097E  a3        INC DPTR               ;M 
097F  ff        MOV R7,A               ;M 
0980  543f      ANL A,# #0x3F          ;M 
0982  30e509    JNB ACC.5, 0x098E      ;M 
0985  541f      ANL A,# #0x1F          ;M 
0987  fe        MOV R6,A               ;M 
0988  e4        CLR A                  ;M 
0989  93        MOVC A,@A+DPTR         ;M 
098A  a3        INC DPTR               ;M 
098B  6001      JZ 0x098E              ;M 
098D  0e        INC R6                 ;M 
098E  cf        XCH A,R7               ;M 
098F  54c0      ANL A,# #0xC0          ;M 
0991  25e0      ADD A,dir ACC          ;M 
0993  60a8      JZ 0x093D              ;M 
0995  40b8      JC 0x094F              ;M 
0997  e4        CLR A                  ;M 
0998  93        MOVC A,@A+DPTR         ;M 
0999  a3        INC DPTR               ;M 
099A  fa        MOV R2,A               ;M 
099B  e4        CLR A                  ;M 
099C  93        MOVC A,@A+DPTR         ;M 
099D  a3        INC DPTR               ;M 
099E  f8        MOV R0,A               ;M 
099F  e4        CLR A                  ;M 
09A0  93        MOVC A,@A+DPTR         ;M 
09A1  a3        INC DPTR               ;M 
09A2  c8        XCH A,R0               ;M 
09A3  c582      XCH A,dir DPL          ;M 
09A5  c8        XCH A,R0               ;M 
09A6  ca        XCH A,R2               ;M 
09A7  c583      XCH A,dir DPH          ;M 
09A9  ca        XCH A,R2               ;M 
09AA  f0        MOVX @DPTR,A           ;M 
09AB  a3        INC DPTR               ;M 
09AC  c8        XCH A,R0               ;M 
09AD  c582      XCH A,dir DPL          ;M 
09AF  c8        XCH A,R0               ;M 
09B0  ca        XCH A,R2               ;M 
09B1  c583      XCH A,dir DPH          ;M 
09B3  ca        XCH A,R2               ;M 
09B4  dfe9      DJNZ R7, 0x099F        ;M 
09B6  dee7      DJNZ R6, 0x099F        ;M 
09B8  80be      SJMP 0x0978            ;M 
09BA  41a1      AJMP 0x0AA1            ;M 
09BC  .db CE 00 41 A1 CF 00 41 A1 B9 00 41 A1 BA 00 41 A1
09CC  .db BB 00 41 A1 E3 00 00 51 0E 60 1B 67

sub_09D8:  ; M func, size~15
09D8  f5d3      MOV dir,A 0xD3         ;M 
09DA  10af01    JBC IE.7, 0x09DE       ;M 
09DD  c3        CLR C                  ;M 
09DE  c0d0      PUSH dir PSW           ;M 
09E0  f1df      ACALL 0x0FDF           ;M 
09E2  20e602    JB ACC.6, 0x09E7       ;M 
09E5  41fb      AJMP 0x0AFB            ;M 

sub_09E7:  ; M func, size~45
09E7  90008c    MOV DPTR,# #0x008C     ;M dptr win: MAC/reg-low (0x008C)
09EA  e0        MOVX A,@DPTR           ;M 
09EB  90a1bc    MOV DPTR,# #0xA1BC     ;M dptr win: win-Ax (0xA1BC)
09EE  f0        MOVX @DPTR,A           ;M 
09EF  7f8d      MOV R7,# #0x8D         ;M 
09F1  12500f    LCALL 0x500F           ;M 
09F4  90a1bd    MOV DPTR,# #0xA1BD     ;M dptr win: win-Ax (0xA1BD)
09F7  ef        MOV A,R7               ;M 
09F8  f0        MOVX @DPTR,A           ;M 
09F9  90008e    MOV DPTR,# #0x008E     ;M dptr win: MAC/reg-low (0x008E)
09FC  e0        MOVX A,@DPTR           ;M 
09FD  90a1be    MOV DPTR,# #0xA1BE     ;M dptr win: win-Ax (0xA1BE)
0A00  f0        MOVX @DPTR,A           ;M 
0A01  90a1bd    MOV DPTR,# #0xA1BD     ;M dptr win: win-Ax (0xA1BD)
0A04  e0        MOVX A,@DPTR           ;M 
0A05  24fc      ADD A,# #0xFC          ;M 
0A07  6016      JZ 0x0A1F              ;M 
0A09  24ee      ADD A,# #0xEE          ;M 
0A0B  7002      JNZ 0x0A0F             ;M 
0A0D  41b8      AJMP 0x0AB8            ;M 
0A0F  .db 24 15 60 02 41

sub_0A14:  ; M func, size~11
0A14  f3        MOVX @R1,A             ;M 
0A15  90a1bc    MOV DPTR,# #0xA1BC     ;M dptr win: win-Ax (0xA1BC)
0A18  e0        MOVX A,@DPTR           ;M 
0A19  ff        MOV R7,A               ;M 
0A1A  125449    LCALL 0x5449           ;M 
0A1D  41f3      AJMP 0x0AF3            ;M 

sub_0A1F:  ; M func, size~225
0A1F  90a1bc    MOV DPTR,# #0xA1BC     ;M dptr win: win-Ax (0xA1BC)
0A22  e0        MOVX A,@DPTR           ;M 
0A23  75f012    MOV dir,# B, #0x12     ;M 
0A26  129b2b    LCALL 0x9B2B           ;M 
0A29  fb        MOV R3,A               ;M 
0A2A  e4        CLR A                  ;M 
0A2B  fd        MOV R5,A               ;M 
0A2C  713a      ACALL 0x0B3A           ;M 
0A2E  13        RRC A                  ;M 
0A2F  13        RRC A                  ;M 
0A30  5403      ANL A,# #0x03          ;M 
0A32  7137      ACALL 0x0B37           ;M 
0A34  f1d8      ACALL 0x0FD8           ;M 
0A36  7137      ACALL 0x0B37           ;M 
0A38  c4        SWAP A                 ;M 
0A39  5403      ANL A,# #0x03          ;M 
0A3B  fb        MOV R3,A               ;M 
0A3C  0d        INC R5                 ;M 
0A3D  e4        CLR A                  ;M 
0A3E  ff        MOV R7,A               ;M 
0A3F  7130      ACALL 0x0B30           ;M 
0A41  75f012    MOV dir,# B, #0x12     ;M 
0A44  126f33    LCALL 0x6F33           ;M 
0A47  fb        MOV R3,A               ;M 
0A48  e4        CLR A                  ;M 
0A49  fd        MOV R5,A               ;M 
0A4A  0f        INC R7                 ;M 
0A4B  7130      ACALL 0x0B30           ;M 
0A4D  75f012    MOV dir,# B, #0x12     ;M 
0A50  909382    MOV DPTR,# #0x9382     ;M dptr win: win-9x (0x9382)
0A53  712b      ACALL 0x0B2B           ;M 
0A55  75f012    MOV dir,# B, #0x12     ;M 
0A58  f1b0      ACALL 0x0FB0           ;M 
0A5A  c4        SWAP A                 ;M 
0A5B  13        RRC A                  ;M 
0A5C  5401      ANL A,# #0x01          ;M 
0A5E  fb        MOV R3,A               ;M 
0A5F  0d        INC R5                 ;M 
0A60  7f01      MOV R7,# #0x01         ;M 
0A62  7130      ACALL 0x0B30           ;M 
0A64  75f012    MOV dir,# B, #0x12     ;M 
0A67  f1b0      ACALL 0x0FB0           ;M 
0A69  541f      ANL A,# #0x1F          ;M 
0A6B  712e      ACALL 0x0B2E           ;M 
0A6D  75f008    MOV dir,# B, #0x08     ;M 
0A70  908900    MOV DPTR,# #0x8900     ;M dptr win: win-8x (0x8900)
0A73  12bd82    LCALL 0xBD82           ;M 
0A76  7130      ACALL 0x0B30           ;M 
0A78  75f008    MOV dir,# B, #0x08     ;M 
0A7B  908901    MOV DPTR,# #0x8901     ;M dptr win: win-8x (0x8901)
0A7E  712b      ACALL 0x0B2B           ;M 
0A80  75f008    MOV dir,# B, #0x08     ;M 
0A83  908902    MOV DPTR,# #0x8902     ;M dptr win: win-8x (0x8902)
0A86  712b      ACALL 0x0B2B           ;M 
0A88  75f008    MOV dir,# B, #0x08     ;M 
0A8B  908903    MOV DPTR,# #0x8903     ;M dptr win: win-8x (0x8903)
0A8E  712b      ACALL 0x0B2B           ;M 
0A90  75f008    MOV dir,# B, #0x08     ;M 
0A93  908904    MOV DPTR,# #0x8904     ;M dptr win: win-8x (0x8904)
0A96  12bd82    LCALL 0xBD82           ;M 
0A99  7130      ACALL 0x0B30           ;M 
0A9B  75f008    MOV dir,# B, #0x08     ;M 
0A9E  908905    MOV DPTR,# #0x8905     ;M dptr win: win-8x (0x8905)
0AA1  712b      ACALL 0x0B2B           ;M 
0AA3  75f008    MOV dir,# B, #0x08     ;M 
0AA6  908906    MOV DPTR,# #0x8906     ;M dptr win: win-8x (0x8906)
0AA9  712b      ACALL 0x0B2B           ;M 
0AAB  75f008    MOV dir,# B, #0x08     ;M 
0AAE  908907    MOV DPTR,# #0x8907     ;M dptr win: win-8x (0x8907)
0AB1  11f3      ACALL 0x08F3           ;M 
0AB3  e0        MOVX A,@DPTR           ;M 
0AB4  fb        MOV R3,A               ;M 
0AB5  0d        INC R5                 ;M 
0AB6  8039      SJMP 0x0AF1            ;M 
0AB8  909fa5    MOV DPTR,# #0x9FA5     ;M dptr win: win-9x (0x9FA5)
0ABB  e0        MOVX A,@DPTR           ;M 
0ABC  fb        MOV R3,A               ;M 
0ABD  e4        CLR A                  ;M 
0ABE  fd        MOV R5,A               ;M 
0ABF  ff        MOV R7,A               ;M 
0AC0  7103      ACALL 0x0B03           ;M 
0AC2  909fa6    MOV DPTR,# #0x9FA6     ;M dptr win: win-9x (0x9FA6)
0AC5  a3        INC DPTR               ;M 
0AC6  7100      ACALL 0x0B00           ;M 
0AC8  909fa8    MOV DPTR,# #0x9FA8     ;M dptr win: win-9x (0x9FA8)
0ACB  7100      ACALL 0x0B00           ;M 
0ACD  909fa9    MOV DPTR,# #0x9FA9     ;M dptr win: win-9x (0x9FA9)
0AD0  e0        MOVX A,@DPTR           ;M 
0AD1  5403      ANL A,# #0x03          ;M 
0AD3  fb        MOV R3,A               ;M 
0AD4  0d        INC R5                 ;M 
0AD5  7103      ACALL 0x0B03           ;M 
0AD7  909faa    MOV DPTR,# #0x9FAA     ;M dptr win: win-9x (0x9FAA)
0ADA  a3        INC DPTR               ;M 
0ADB  e0        MOVX A,@DPTR           ;M 
0ADC  fb        MOV R3,A               ;M 
0ADD  e4        CLR A                  ;M 
0ADE  fd        MOV R5,A               ;M 
0ADF  0f        INC R7                 ;M 
0AE0  7103      ACALL 0x0B03           ;M 
0AE2  909faa    MOV DPTR,# #0x9FAA     ;M dptr win: win-9x (0x9FAA)
0AE5  e0        MOVX A,@DPTR           ;M 
0AE6  fb        MOV R3,A               ;M 
0AE7  0d        INC R5                 ;M 
0AE8  7103      ACALL 0x0B03           ;M 
0AEA  909fac    MOV DPTR,# #0x9FAC     ;M dptr win: win-9x (0x9FAC)
0AED  e0        MOVX A,@DPTR           ;M 
0AEE  fb        MOV R3,A               ;M 
0AEF  1d        DEC R5                 ;M 
0AF0  0f        INC R7                 ;M 
0AF1  7103      ACALL 0x0B03           ;M 
0AF3  f1df      ACALL 0x0FDF           ;M 
0AF5  30e003    JNB ACC.0, 0x0AFB      ;M 
0AF8  12509c    LCALL 0x509C           ;M 
0AFB  d0d0      POP dir PSW            ;M 
0AFD  92af      MOV bit,C IE.7         ;M 
0AFF  22        RET                    ;M 

sub_0B00:  ; M func, size~43
0B00  e0        MOVX A,@DPTR           ;M 
0B01  fb        MOV R3,A               ;M 
0B02  0d        INC R5                 ;M 
0B03  ef        MOV A,R7               ;M 
0B04  7004      JNZ 0x0B0A             ;M 
0B06  74f0      MOV A,# #0xF0          ;M 
0B08  8016      SJMP 0x0B20            ;M 
0B0A  ef        MOV A,R7               ;M 
0B0B  b40104    CJNE A,# #0x01, 0x0B12 ;M 
0B0E  74f4      MOV A,# #0xF4          ;M 
0B10  800e      SJMP 0x0B20            ;M 
0B12  ef        MOV A,R7               ;M 
0B13  b40204    CJNE A,# #0x02, 0x0B1A ;M 
0B16  74f8      MOV A,# #0xF8          ;M 
0B18  8006      SJMP 0x0B20            ;M 
0B1A  ef        MOV A,R7               ;M 
0B1B  b4030c    CJNE A,# #0x03, 0x0B2A ;M 
0B1E  74fc      MOV A,# #0xFC          ;M 
0B20  2d        ADD A,R5               ;M 
0B21  f582      MOV dir,A DPL          ;M 
0B23  e4        CLR A                  ;M 
0B24  3402      ADDC A,# #0x02         ;M 
0B26  f583      MOV dir,A DPH          ;M 
0B28  eb        MOV A,R3               ;M 
0B29  f0        MOVX @DPTR,A           ;M 
0B2A  22        RET                    ;M 

sub_0B2B:  ; M func, size~12
0B2B  11f3      ACALL 0x08F3           ;M 
0B2D  e0        MOVX A,@DPTR           ;M 
0B2E  fb        MOV R3,A               ;M 
0B2F  0d        INC R5                 ;M 
0B30  7103      ACALL 0x0B03           ;M 
0B32  90a1bc    MOV DPTR,# #0xA1BC     ;M dptr win: win-Ax (0xA1BC)
0B35  e0        MOVX A,@DPTR           ;M 
0B36  22        RET                    ;M 

sub_0B37:  ; M func, size~20
0B37  fb        MOV R3,A               ;M 
0B38  0d        INC R5                 ;M 
0B39  e4        CLR A                  ;M 
0B3A  ff        MOV R7,A               ;M 
0B3B  7103      ACALL 0x0B03           ;M 
0B3D  90a1bc    MOV DPTR,# #0xA1BC     ;M dptr win: win-Ax (0xA1BC)
0B40  e0        MOVX A,@DPTR           ;M 
0B41  75f012    MOV dir,# B, #0x12     ;M 
0B44  909385    MOV DPTR,# #0x9385     ;M dptr win: win-9x (0x9385)
0B47  11f3      ACALL 0x08F3           ;M 
0B49  e0        MOVX A,@DPTR           ;M 
0B4A  22        RET                    ;M 

sub_0B4B:  ; M func, size~644
0B4B  120689    LCALL 0x0689           ;M 
0B4E  547f      ANL A,# #0x7F          ;M 
0B50  ff        MOV R7,A               ;M 
0B51  125733    LCALL 0x5733           ;M 
0B54  541f      ANL A,# #0x1F          ;M 
0B56  fe        MOV R6,A               ;M 
0B57  75f012    MOV dir,# B, #0x12     ;M 
0B5A  ef        MOV A,R7               ;M 
0B5B  f1b0      ACALL 0x0FB0           ;M 
0B5D  54e0      ANL A,# #0xE0          ;M 
0B5F  4e        ORL A,R6               ;M 
0B60  125732    LCALL 0x5732           ;M 
0B63  fe        MOV R6,A               ;M 
0B64  5460      ANL A,# #0x60          ;M 
0B66  c4        SWAP A                 ;M 
0B67  13        RRC A                  ;M 
0B68  5407      ANL A,# #0x07          ;M 
0B6A  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
0B6D  f0        MOVX @DPTR,A           ;M 
0B6E  ee        MOV A,R6               ;M 
0B6F  5480      ANL A,# #0x80          ;M 
0B71  f1d8      ACALL 0x0FD8           ;M 
0B73  c4        SWAP A                 ;M 
0B74  33        RLC A                  ;M 
0B75  54e0      ANL A,# #0xE0          ;M 
0B77  fe        MOV R6,A               ;M 
0B78  75f012    MOV dir,# B, #0x12     ;M 
0B7B  ef        MOV A,R7               ;M 
0B7C  f1b0      ACALL 0x0FB0           ;M 
0B7E  54df      ANL A,# #0xDF          ;M 
0B80  f1b7      ACALL 0x0FB7           ;M 
0B82  fe        MOV R6,A               ;M 
0B83  5403      ANL A,# #0x03          ;M 
0B85  fd        MOV R5,A               ;M 
0B86  ee        MOV A,R6               ;M 
0B87  5408      ANL A,# #0x08          ;M 
0B89  13        RRC A                  ;M 
0B8A  13        RRC A                  ;M 
0B8B  13        RRC A                  ;M 
0B8C  541f      ANL A,# #0x1F          ;M 
0B8E  90a05d    MOV DPTR,# #0xA05D     ;M dptr win: win-Ax (0xA05D)
0B91  f1b8      ACALL 0x0FB8           ;M 
0B93  5430      ANL A,# #0x30          ;M 
0B95  c4        SWAP A                 ;M 
0B96  5403      ANL A,# #0x03          ;M 
0B98  c4        SWAP A                 ;M 
0B99  54f0      ANL A,# #0xF0          ;M 
0B9B  fe        MOV R6,A               ;M 
0B9C  75f012    MOV dir,# B, #0x12     ;M 
0B9F  ef        MOV A,R7               ;M 
0BA0  7144      ACALL 0x0B44           ;M 
0BA2  54cf      ANL A,# #0xCF          ;M 
0BA4  f1b7      ACALL 0x0FB7           ;M 
0BA6  5440      ANL A,# #0x40          ;M 
0BA8  c4        SWAP A                 ;M 
0BA9  13        RRC A                  ;M 
0BAA  13        RRC A                  ;M 
0BAB  128912    LCALL 0x8912           ;M 
0BAE  fe        MOV R6,A               ;M 
0BAF  75f012    MOV dir,# B, #0x12     ;M 
0BB2  ef        MOV A,R7               ;M 
0BB3  7144      ACALL 0x0B44           ;M 
0BB5  54bf      ANL A,# #0xBF          ;M 
0BB7  f1b7      ACALL 0x0FB7           ;M 
0BB9  5480      ANL A,# #0x80          ;M 
0BBB  f1d8      ACALL 0x0FD8           ;M 
0BBD  c4        SWAP A                 ;M 
0BBE  33        RLC A                  ;M 
0BBF  33        RLC A                  ;M 
0BC0  33        RLC A                  ;M 
0BC1  5480      ANL A,# #0x80          ;M 
0BC3  fe        MOV R6,A               ;M 
0BC4  75f012    MOV dir,# B, #0x12     ;M 
0BC7  ef        MOV A,R7               ;M 
0BC8  7144      ACALL 0x0B44           ;M 
0BCA  547f      ANL A,# #0x7F          ;M 
0BCC  4e        ORL A,R6               ;M 
0BCD  f0        MOVX @DPTR,A           ;M 
0BCE  ed        MOV A,R5               ;M 
0BCF  5403      ANL A,# #0x03          ;M 
0BD1  fe        MOV R6,A               ;M 
0BD2  75f012    MOV dir,# B, #0x12     ;M 
0BD5  ef        MOV A,R7               ;M 
0BD6  7144      ACALL 0x0B44           ;M 
0BD8  54fc      ANL A,# #0xFC          ;M 
0BDA  4e        ORL A,R6               ;M 
0BDB  f0        MOVX @DPTR,A           ;M 
0BDC  90a05d    MOV DPTR,# #0xA05D     ;M dptr win: win-Ax (0xA05D)
0BDF  e0        MOVX A,@DPTR           ;M 
0BE0  7014      JNZ 0x0BF6             ;M 
0BE2  ae05      MOV R6,dir 0x05        ;M 
0BE4  ee        MOV A,R6               ;M 
0BE5  5403      ANL A,# #0x03          ;M 
0BE7  25e0      ADD A,dir ACC          ;M 
0BE9  25e0      ADD A,dir ACC          ;M 
0BEB  fe        MOV R6,A               ;M 
0BEC  75f012    MOV dir,# B, #0x12     ;M 
0BEF  ef        MOV A,R7               ;M 
0BF0  7144      ACALL 0x0B44           ;M 
0BF2  54f3      ANL A,# #0xF3          ;M 
0BF4  4e        ORL A,R6               ;M 
0BF5  f0        MOVX @DPTR,A           ;M 
0BF6  e4        CLR A                  ;M 
0BF7  fe        MOV R6,A               ;M 
0BF8  ee        MOV A,R6               ;M 
0BF9  f582      MOV dir,A DPL          ;M 
0BFB  758300    MOV dir,# DPH, #0x00   ;M 
0BFE  a3        INC DPTR               ;M 
0BFF  a3        INC DPTR               ;M 
0C00  a3        INC DPTR               ;M 
0C01  1206a2    LCALL 0x06A2           ;M 
0C04  fd        MOV R5,A               ;M 
0C05  f1c8      ACALL 0x0FC8           ;M 
0C07  2e        ADD A,R6               ;M 
0C08  d1da      ACALL 0x0EDA           ;M 
0C0A  ed        MOV A,R5               ;M 
0C0B  f0        MOVX @DPTR,A           ;M 
0C0C  0e        INC R6                 ;M 
0C0D  ee        MOV A,R6               ;M 
0C0E  b404e7    CJNE A,# #0x04, 0x0BF8 ;M 
0C11  d3        SETB C                 ;M 
0C12  10af01    JBC IE.7, 0x0C16       ;M 
0C15  c3        CLR C                  ;M 
0C16  c0d0      PUSH dir PSW           ;M 
0C18  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
0C1B  ef        MOV A,R7               ;M 
0C1C  f0        MOVX @DPTR,A           ;M 
0C1D  e4        CLR A                  ;M 
0C1E  a3        INC DPTR               ;M 
0C1F  f0        MOVX @DPTR,A           ;M 
0C20  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
0C23  e0        MOVX A,@DPTR           ;M 
0C24  ff        MOV R7,A               ;M 
0C25  75f012    MOV dir,# B, #0x12     ;M 
0C28  f1b0      ACALL 0x0FB0           ;M 
0C2A  541f      ANL A,# #0x1F          ;M 
0C2C  fe        MOV R6,A               ;M 
0C2D  6012      JZ 0x0C41              ;M 
0C2F  6402      XRL A,# #0x02          ;M 
0C31  600e      JZ 0x0C41              ;M 
0C33  ee        MOV A,R6               ;M 
0C34  6404      XRL A,# #0x04          ;M 
0C36  6009      JZ 0x0C41              ;M 
0C38  ee        MOV A,R6               ;M 
0C39  6409      XRL A,# #0x09          ;M 
0C3B  6004      JZ 0x0C41              ;M 
0C3D  ee        MOV A,R6               ;M 
0C3E  b40c0f    CJNE A,# #0x0C, 0x0C50 ;M 
0C41  75f012    MOV dir,# B, #0x12     ;M 
0C44  ef        MOV A,R7               ;M 
0C45  126c5a    LCALL 0x6C5A           ;M 
0C48  e0        MOVX A,@DPTR           ;M 
0C49  54fc      ANL A,# #0xFC          ;M 
0C4B  4402      ORL A,# #0x02          ;M 
0C4D  f0        MOVX @DPTR,A           ;M 
0C4E  8010      SJMP 0x0C60            ;M 
0C50  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
0C53  e0        MOVX A,@DPTR           ;M 
0C54  75f012    MOV dir,# B, #0x12     ;M 
0C57  126c5a    LCALL 0x6C5A           ;M 
0C5A  e0        MOVX A,@DPTR           ;M 
0C5B  54fc      ANL A,# #0xFC          ;M 
0C5D  4401      ORL A,# #0x01          ;M 
0C5F  f0        MOVX @DPTR,A           ;M 
0C60  e4        CLR A                  ;M 
0C61  fd        MOV R5,A               ;M 
0C62  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
0C65  e0        MOVX A,@DPTR           ;M 
0C66  ff        MOV R7,A               ;M 
0C67  75f008    MOV dir,# B, #0x08     ;M 
0C6A  f1cc      ACALL 0x0FCC           ;M 
0C6C  2d        ADD A,R5               ;M 
0C6D  d1da      ACALL 0x0EDA           ;M 
0C6F  e0        MOVX A,@DPTR           ;M 
0C70  fe        MOV R6,A               ;M 
0C71  f1c8      ACALL 0x0FC8           ;M 
0C73  2d        ADD A,R5               ;M 
0C74  d1da      ACALL 0x0EDA           ;M 
0C76  ee        MOV A,R6               ;M 
0C77  f0        MOVX @DPTR,A           ;M 
0C78  0d        INC R5                 ;M 
0C79  ed        MOV A,R5               ;M 
0C7A  b408e5    CJNE A,# #0x08, 0x0C62 ;M 
0C7D  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
0C80  7140      ACALL 0x0B40           ;M 
0C82  ff        MOV R7,A               ;M 
0C83  c4        SWAP A                 ;M 
0C84  5403      ANL A,# #0x03          ;M 
0C86  90a060    MOV DPTR,# #0xA060     ;M dptr win: win-Ax (0xA060)
0C89  f0        MOVX @DPTR,A           ;M 
0C8A  e4        CLR A                  ;M 
0C8B  a3        INC DPTR               ;M 
0C8C  f0        MOVX @DPTR,A           ;M 
0C8D  7c06      MOV R4,# #0x06         ;M 
0C8F  ec        MOV A,R4               ;M 
0C90  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
0C93  b40607    CJNE A,# #0x06, 0x0C9D ;M 
0C96  d1ce      ACALL 0x0ECE           ;M 
0C98  e0        MOVX A,@DPTR           ;M 
0C99  540f      ANL A,# #0x0F          ;M 
0C9B  8003      SJMP 0x0CA0            ;M 
0C9D  d1ce      ACALL 0x0ECE           ;M 
0C9F  e0        MOVX A,@DPTR           ;M 
0CA0  90a062    MOV DPTR,# #0xA062     ;M dptr win: win-Ax (0xA062)
0CA3  f0        MOVX @DPTR,A           ;M 
0CA4  90a062    MOV DPTR,# #0xA062     ;M dptr win: win-Ax (0xA062)
0CA7  e0        MOVX A,@DPTR           ;M 
0CA8  6025      JZ 0x0CCF              ;M 
0CAA  7d07      MOV R5,# #0x07         ;M 
0CAC  f1e6      ACALL 0x0FE6           ;M 
0CAE  8005      SJMP 0x0CB5            ;M 
0CB0  c3        CLR C                  ;M 
0CB1  33        RLC A                  ;M 
0CB2  ce        XCH A,R6               ;M 
0CB3  33        RLC A                  ;M 
0CB4  ce        XCH A,R6               ;M 
0CB5  d8f9      DJNZ R0, 0x0CB0        ;M 
0CB7  12bda5    LCALL 0xBDA5           ;M 
0CBA  600c      JZ 0x0CC8              ;M 
0CBC  ec        MOV A,R4               ;M 
0CBD  75f008    MOV dir,# B, #0x08     ;M 
0CC0  a4        MUL AB                 ;M 
0CC1  2d        ADD A,R5               ;M 
0CC2  90a061    MOV DPTR,# #0xA061     ;M dptr win: win-Ax (0xA061)
0CC5  f0        MOVX @DPTR,A           ;M 
0CC6  8011      SJMP 0x0CD9            ;M 
0CC8  1d        DEC R5                 ;M 
0CC9  ed        MOV A,R5               ;M 
0CCA  c3        CLR C                  ;M 
0CCB  9400      SUBB A,# #0x00         ;M 
0CCD  50dd      JNC 0x0CAC             ;M 
0CCF  ec        MOV A,R4               ;M 
0CD0  6007      JZ 0x0CD9              ;M 
0CD2  1c        DEC R4                 ;M 
0CD3  ec        MOV A,R4               ;M 
0CD4  c3        CLR C                  ;M 
0CD5  9400      SUBB A,# #0x00         ;M 
0CD7  50b6      JNC 0x0C8F             ;M 
0CD9  e4        CLR A                  ;M 
0CDA  f9        MOV R1,A               ;M 
0CDB  fc        MOV R4,A               ;M 
0CDC  ec        MOV A,R4               ;M 
0CDD  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
0CE0  b40607    CJNE A,# #0x06, 0x0CEA ;M 
0CE3  d1ce      ACALL 0x0ECE           ;M 
0CE5  e0        MOVX A,@DPTR           ;M 
0CE6  540f      ANL A,# #0x0F          ;M 
0CE8  8003      SJMP 0x0CED            ;M 
0CEA  d1ce      ACALL 0x0ECE           ;M 
0CEC  e0        MOVX A,@DPTR           ;M 
0CED  90a062    MOV DPTR,# #0xA062     ;M dptr win: win-Ax (0xA062)
0CF0  f0        MOVX @DPTR,A           ;M 
0CF1  90a062    MOV DPTR,# #0xA062     ;M dptr win: win-Ax (0xA062)
0CF4  e0        MOVX A,@DPTR           ;M 
0CF5  6020      JZ 0x0D17              ;M 
0CF7  e4        CLR A                  ;M 
0CF8  fd        MOV R5,A               ;M 
0CF9  f1e6      ACALL 0x0FE6           ;M 
0CFB  8005      SJMP 0x0D02            ;M 
0CFD  c3        CLR C                  ;M 
0CFE  33        RLC A                  ;M 
0CFF  ce        XCH A,R6               ;M 
0D00  33        RLC A                  ;M 
0D01  ce        XCH A,R6               ;M 
0D02  d8f9      DJNZ R0, 0x0CFD        ;M 
0D04  12bda5    LCALL 0xBDA5           ;M 
0D07  6009      JZ 0x0D12              ;M 
0D09  ec        MOV A,R4               ;M 
0D0A  75f008    MOV dir,# B, #0x08     ;M 
0D0D  a4        MUL AB                 ;M 
0D0E  2d        ADD A,R5               ;M 
0D0F  f9        MOV R1,A               ;M 
0D10  800b      SJMP 0x0D1D            ;M 
0D12  0d        INC R5                 ;M 
0D13  ed        MOV A,R5               ;M 
0D14  b408e2    CJNE A,# #0x08, 0x0CF9 ;M 
0D17  0c        INC R4                 ;M 
0D18  ec        MOV A,R4               ;M 
0D19  6407      XRL A,# #0x07          ;M 
0D1B  70bf      JNZ 0x0CDC             ;M 
0D1D  90a061    MOV DPTR,# #0xA061     ;M dptr win: win-Ax (0xA061)
0D20  e0        MOVX A,@DPTR           ;M 
0D21  ff        MOV R7,A               ;M 
0D22  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
0D25  e0        MOVX A,@DPTR           ;M 
0D26  fe        MOV R6,A               ;M 
0D27  75f012    MOV dir,# B, #0x12     ;M 
0D2A  909381    MOV DPTR,# #0x9381     ;M dptr win: win-9x (0x9381)
0D2D  11f3      ACALL 0x08F3           ;M 
0D2F  ef        MOV A,R7               ;M 
0D30  f0        MOVX @DPTR,A           ;M 
0D31  75f012    MOV dir,# B, #0x12     ;M 
0D34  ee        MOV A,R6               ;M 
0D35  126fd8    LCALL 0x6FD8           ;M 
0D38  e9        MOV A,R1               ;M 
0D39  f0        MOVX @DPTR,A           ;M 
0D3A  75f010    MOV dir,# B, #0x10     ;M 
0D3D  ee        MOV A,R6               ;M 
0D3E  f1c3      ACALL 0x0FC3           ;M 
0D40  e0        MOVX A,@DPTR           ;M 
0D41  fc        MOV R4,A               ;M 
0D42  547f      ANL A,# #0x7F          ;M 
0D44  fd        MOV R5,A               ;M 
0D45  75f012    MOV dir,# B, #0x12     ;M 
0D48  ee        MOV A,R6               ;M 
0D49  f1b0      ACALL 0x0FB0           ;M 
0D4B  c4        SWAP A                 ;M 
0D4C  13        RRC A                  ;M 
0D4D  5407      ANL A,# #0x07          ;M 
0D4F  30e007    JNB ACC.0, 0x0D59      ;M 
0D52  ec        MOV A,R4               ;M 
0D53  5480      ANL A,# #0x80          ;M 
0D55  90a05f    MOV DPTR,# #0xA05F     ;M dptr win: win-Ax (0xA05F)
0D58  f0        MOVX @DPTR,A           ;M 
0D59  ed        MOV A,R5               ;M 
0D5A  d3        SETB C                 ;M 
0D5B  9f        SUBB A,R7              ;M 
0D5C  4007      JC 0x0D65              ;M 
0D5E  90a061    MOV DPTR,# #0xA061     ;M dptr win: win-Ax (0xA061)
0D61  e0        MOVX A,@DPTR           ;M 
0D62  fd        MOV R5,A               ;M 
0D63  8009      SJMP 0x0D6E            ;M 
0D65  ed        MOV A,R5               ;M 
0D66  c3        CLR C                  ;M 
0D67  99        SUBB A,R1              ;M 
0D68  5004      JNC 0x0D6E             ;M 
0D6A  af01      MOV R7,dir 0x01        ;M 
0D6C  ad07      MOV R5,dir 0x07        ;M 
0D6E  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
0D71  e0        MOVX A,@DPTR           ;M 
0D72  ff        MOV R7,A               ;M 
0D73  7141      ACALL 0x0B41           ;M 
0D75  126f23    LCALL 0x6F23           ;M 
0D78  90a05f    MOV DPTR,# #0xA05F     ;M dptr win: win-Ax (0xA05F)
0D7B  e0        MOVX A,@DPTR           ;M 
0D7C  4d        ORL A,R5               ;M 
0D7D  fd        MOV R5,A               ;M 
0D7E  e4        CLR A                  ;M 
0D7F  fb        MOV R3,A               ;M 
0D80  126a02    LCALL 0x6A02           ;M 
0D83  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
0D86  e0        MOVX A,@DPTR           ;M 
0D87  75f010    MOV dir,# B, #0x10     ;M 
0D8A  1269c5    LCALL 0x69C5           ;M 
0D8D  e4        CLR A                  ;M 
0D8E  f0        MOVX @DPTR,A           ;M 
0D8F  d0d0      POP dir PSW            ;M 
0D91  92af      MOV bit,C IE.7         ;M 
0D93  22        RET                    ;M 
0D94  .db 90 A0 59 31 08 90 A0 58 EF F0 31 11 4E 10 00 4E
0DA4  .db 15 01 4E 1A 10 4E 1F 12 4E 24 14 4E C8 15 4E 29
0DB4  .db 16 4E 2E 18 4E 33 19 4E 38 1C 4E 42 1E 4E 3D 1F
0DC4  .db 4E 47 20 4E 4C 23 4E 51 24 4E 56

sub_0DCF:  ; M func, size~13
0DCF  254e      ADD A,dir 0x4E         ;M 
0DD1  5b        ANL A,R3               ;M 
0DD2  404e      JC 0x0E22              ;M 
0DD4  69        XRL A,R1               ;M 
0DD5  414e      AJMP 0x0A4E            ;M 
0DD7  .db 5F 42 4E C8 47

sub_0DDC:  ; M func, size~38
0DDC  4e        ORL A,R6               ;M 
0DDD  6449      XRL A,# #0x49          ;M 
0DDF  4e        ORL A,R6               ;M 
0DE0  6e        XRL A,R6               ;M 
0DE1  604e      JZ 0x0E31              ;M 
0DE3  73        JMP @A+DPTR            ;M 
0DE4  .db 61 4E 78 62 4E 7D 63 4E 82 64 4E 87 65 4E 8C 66
0DF4  .db 4E 91 67 4E 96 68 4E 9B 69 4E A0 6C 4E A5

sub_0E02:  ; M func, size~106
0E02  6d        XRL A,R5               ;M 
0E03  4e        ORL A,R6               ;M 
0E04  aa6e      MOV R2,dir 0x6E        ;M 
0E06  4e        ORL A,R6               ;M 
0E07  af6f      MOV R7,dir 0x6F        ;M 
0E09  4e        ORL A,R6               ;M 
0E0A  b47000    CJNE A,# #0x70, 0x0E0D ;M 
0E0D  00        NOP                    ;M 
0E0E  4e        ORL A,R6               ;M 
0E0F  b9d1c9    CJNE R1,# #0xD1, 0x0DDB ;M 
0E12  028c7d    LJMP 0x8C7D            ;M 
0E15  .db D1 C9 02 89 EA D1 C9 02 AF D6 D1 C9 02 B0 01 D1
0E25  .db C9 02 B0 97 D1 C9 02 8C 48 D1 C9 02 8A 8E D1 C9
0E35  .db 02 8B 99 D1 C9 02 56 CB D1 C9 02 7D 43 D1 C9 02
0E45  .db B0 C2 D1 C9 02 8D A3 D1 C9 02 B1 3C D1 C9 02 63
0E55  .db 02 D1 C9 02 B1 4C D1 C9 61 4B D1 C9 02 8D 5B D1
0E65  .db C9 02 9D 61 D1 C9 02

sub_0E6C:  ; M func, size~70
0E6C  9d        SUBB A,R5              ;M 
0E6D  c4        SWAP A                 ;M 
0E6E  d1c9      ACALL 0x0EC9           ;M 
0E70  028524    LJMP 0x8524            ;M 
0E73  .db D1 C9 02 AE 62 D1 C9 02 B1 62 D1 C9 02 AF 6C D1
0E83  .db C9 02 B1 69 D1 C9 02 B1 CA D1 C9 02 AE B3 D1 C9
0E93  .db 02 B1 D8 D1 C9 02 AF 18 D1 C9 02 8C BB D1 C9 02
0EA3  .db 57 13 D1 C9 02 53 F3 D1 C9 02 B2 E0 D1 C9 02

sub_0EB2:  ; M func, size~7
0EB2  b3        CPL C                  ;M 
0EB3  14        DEC A                  ;M 
0EB4  d1c9      ACALL 0x0EC9           ;M 
0EB6  025210    LJMP 0x5210            ;M 

sub_0EB9:  ; M func, size~20
0EB9  9001c0    MOV DPTR,# #0x01C0     ;M dptr win: MAC/reg-low (0x01C0)
0EBC  e0        MOVX A,@DPTR           ;M 
0EBD  4401      ORL A,# #0x01          ;M 
0EBF  f0        MOVX @DPTR,A           ;M 
0EC0  90a058    MOV DPTR,# #0xA058     ;M dptr win: win-Ax (0xA058)
0EC3  e0        MOVX A,@DPTR           ;M 
0EC4  9001c2    MOV DPTR,# #0x01C2     ;M dptr win: MAC/reg-low (0x01C2)
0EC7  f0        MOVX @DPTR,A           ;M 
0EC8  22        RET                    ;M 
0EC9  .db 90 A0 59 01

sub_0ECD:  ; M func, size~21
0ECD  ff        MOV R7,A               ;M 
0ECE  e0        MOVX A,@DPTR           ;M 
0ECF  75f008    MOV dir,# B, #0x08     ;M 
0ED2  908900    MOV DPTR,# #0x8900     ;M dptr win: win-8x (0x8900)
0ED5  11f3      ACALL 0x08F3           ;M 
0ED7  e582      MOV A,dir DPL          ;M 
0ED9  2c        ADD A,R4               ;M 
0EDA  f582      MOV dir,A DPL          ;M 
0EDC  e4        CLR A                  ;M 
0EDD  3583      ADDC A,dir DPH         ;M 
0EDF  f583      MOV dir,A DPH          ;M 
0EE1  22        RET                    ;M 

sub_0EE2:  ; M func, size~201
0EE2  e4        CLR A                  ;M 
0EE3  90a056    MOV DPTR,# #0xA056     ;M dptr win: win-Ax (0xA056)
0EE6  f0        MOVX @DPTR,A           ;M 
0EE7  90a056    MOV DPTR,# #0xA056     ;M dptr win: win-Ax (0xA056)
0EEA  e0        MOVX A,@DPTR           ;M 
0EEB  ff        MOV R7,A               ;M 
0EEC  c3        CLR C                  ;M 
0EED  941c      SUBB A,# #0x1C         ;M 
0EEF  5015      JNC 0x0F06             ;M 
0EF1  7426      MOV A,# #0x26          ;M 
0EF3  2f        ADD A,R7               ;M 
0EF4  1290e5    LCALL 0x90E5           ;M 
0EF7  745a      MOV A,# #0x5A          ;M 
0EF9  f0        MOVX @DPTR,A           ;M 
0EFA  740a      MOV A,# #0x0A          ;M 
0EFC  2f        ADD A,R7               ;M 
0EFD  12bc75    LCALL 0xBC75           ;M 
0F00  7405      MOV A,# #0x05          ;M 
0F02  f1ee      ACALL 0x0FEE           ;M 
0F04  80e1      SJMP 0x0EE7            ;M 
0F06  e4        CLR A                  ;M 
0F07  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
0F0A  f0        MOVX @DPTR,A           ;M 
0F0B  e4        CLR A                  ;M 
0F0C  90a055    MOV DPTR,# #0xA055     ;M dptr win: win-Ax (0xA055)
0F0F  f0        MOVX @DPTR,A           ;M 
0F10  90a055    MOV DPTR,# #0xA055     ;M dptr win: win-Ax (0xA055)
0F13  e0        MOVX A,@DPTR           ;M 
0F14  ff        MOV R7,A               ;M 
0F15  c3        CLR C                  ;M 
0F16  9410      SUBB A,# #0x10         ;M 
0F18  5037      JNC 0x0F51             ;M 
0F1A  ef        MOV A,R7               ;M 
0F1B  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
0F1E  b4030c    CJNE A,# #0x03, 0x0F2D ;M 
0F21  f1bf      ACALL 0x0FBF           ;M 
0F23  e582      MOV A,dir DPL          ;M 
0F25  2f        ADD A,R7               ;M 
0F26  d1da      ACALL 0x0EDA           ;M 
0F28  7480      MOV A,# #0x80          ;M 
0F2A  f0        MOVX @DPTR,A           ;M 
0F2B  8009      SJMP 0x0F36            ;M 
0F2D  f1bf      ACALL 0x0FBF           ;M 
0F2F  e582      MOV A,dir DPL          ;M 
0F31  2f        ADD A,R7               ;M 
0F32  d1da      ACALL 0x0EDA           ;M 
0F34  e4        CLR A                  ;M 
0F35  f0        MOVX @DPTR,A           ;M 
0F36  90a055    MOV DPTR,# #0xA055     ;M dptr win: win-Ax (0xA055)
0F39  e0        MOVX A,@DPTR           ;M 
0F3A  ff        MOV R7,A               ;M 
0F3B  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
0F3E  e0        MOVX A,@DPTR           ;M 
0F3F  75f008    MOV dir,# B, #0x08     ;M 
0F42  f1cc      ACALL 0x0FCC           ;M 
0F44  2f        ADD A,R7               ;M 
0F45  d1da      ACALL 0x0EDA           ;M 
0F47  e4        CLR A                  ;M 
0F48  f0        MOVX @DPTR,A           ;M 
0F49  90a055    MOV DPTR,# #0xA055     ;M dptr win: win-Ax (0xA055)
0F4C  e0        MOVX A,@DPTR           ;M 
0F4D  04        INC A                  ;M 
0F4E  f0        MOVX @DPTR,A           ;M 
0F4F  80bf      SJMP 0x0F10            ;M 
0F51  12bd42    LCALL 0xBD42           ;M 
0F54  70b5      JNZ 0x0F0B             ;M 
0F56  e4        CLR A                  ;M 
0F57  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
0F5A  f0        MOVX @DPTR,A           ;M 
0F5B  e4        CLR A                  ;M 
0F5C  90a056    MOV DPTR,# #0xA056     ;M dptr win: win-Ax (0xA056)
0F5F  f0        MOVX @DPTR,A           ;M 
0F60  90a056    MOV DPTR,# #0xA056     ;M dptr win: win-Ax (0xA056)
0F63  e0        MOVX A,@DPTR           ;M 
0F64  ff        MOV R7,A               ;M 
0F65  c3        CLR C                  ;M 
0F66  9405      SUBB A,# #0x05         ;M 
0F68  500e      JNC 0x0F78             ;M 
0F6A  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
0F6D  e0        MOVX A,@DPTR           ;M 
0F6E  75f00a    MOV dir,# B, #0x0A     ;M 
0F71  1269b4    LCALL 0x69B4           ;M 
0F74  f1ee      ACALL 0x0FEE           ;M 
0F76  80e8      SJMP 0x0F60            ;M 
0F78  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
0F7B  e0        MOVX A,@DPTR           ;M 
0F7C  ff        MOV R7,A               ;M 
0F7D  1269e8    LCALL 0x69E8           ;M 
0F80  e4        CLR A                  ;M 
0F81  f0        MOVX @DPTR,A           ;M 
0F82  75f012    MOV dir,# B, #0x12     ;M 
0F85  ef        MOV A,R7               ;M 
0F86  7144      ACALL 0x0B44           ;M 
0F88  4440      ORL A,# #0x40          ;M 
0F8A  f0        MOVX @DPTR,A           ;M 
0F8B  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
0F8E  e0        MOVX A,@DPTR           ;M 
0F8F  ff        MOV R7,A               ;M 
0F90  7141      ACALL 0x0B41           ;M 
0F92  4480      ORL A,# #0x80          ;M 
0F94  f0        MOVX @DPTR,A           ;M 
0F95  75f012    MOV dir,# B, #0x12     ;M 
0F98  ef        MOV A,R7               ;M 
0F99  126fea    LCALL 0x6FEA           ;M 
0F9C  e0        MOVX A,@DPTR           ;M 
0F9D  ff        MOV R7,A               ;M 
0F9E  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
0FA1  f1bf      ACALL 0x0FBF           ;M 
0FA3  ef        MOV A,R7               ;M 
0FA4  f0        MOVX @DPTR,A           ;M 
0FA5  12bd42    LCALL 0xBD42           ;M 
0FA8  70b1      JNZ 0x0F5B             ;M 
0FAA  22        RET                    ;M 

sub_0FAB:  ; M func, size~12
0FAB  75f012    MOV dir,# B, #0x12     ;M 
0FAE  e551      MOV A,dir 0x51         ;M 
0FB0  909383    MOV DPTR,# #0x9383     ;M dptr win: win-9x (0x9383)
0FB3  11f3      ACALL 0x08F3           ;M 
0FB5  e0        MOVX A,@DPTR           ;M 
0FB6  22        RET                    ;M 

sub_0FB7:  ; M func, size~8
0FB7  4e        ORL A,R6               ;M 
0FB8  f0        MOVX @DPTR,A           ;M 
0FB9  900002    MOV DPTR,# #0x0002     ;M dptr win: MAC/reg-low (0x0002)
0FBC  0206a2    LJMP 0x06A2            ;M 

sub_0FBF:  ; M func, size~9
0FBF  e0        MOVX A,@DPTR           ;M 
0FC0  75f010    MOV dir,# B, #0x10     ;M 
0FC3  908100    MOV DPTR,# #0x8100     ;M dptr win: win-8x (0x8100)
0FC6  01f3      AJMP 0x08F3            ;M 

sub_0FC8:  ; M func, size~12
0FC8  75f008    MOV dir,# B, #0x08     ;M 
0FCB  ef        MOV A,R7               ;M 
0FCC  908900    MOV DPTR,# #0x8900     ;M dptr win: win-8x (0x8900)
0FCF  11f3      ACALL 0x08F3           ;M 
0FD1  e582      MOV A,dir DPL          ;M 
0FD3  22        RET                    ;M 

sub_0FD4:  ; M func, size~11
0FD4  909eb9    MOV DPTR,# #0x9EB9     ;M dptr win: win-9x (0x9EB9)
0FD7  e0        MOVX A,@DPTR           ;M 
0FD8  c4        SWAP A                 ;M 
0FD9  13        RRC A                  ;M 
0FDA  13        RRC A                  ;M 
0FDB  13        RRC A                  ;M 
0FDC  5401      ANL A,# #0x01          ;M 
0FDE  22        RET                    ;M 

sub_0FDF:  ; M func, size~7
0FDF  7f8f      MOV R7,# #0x8F         ;M 
0FE1  12500f    LCALL 0x500F           ;M 
0FE4  ef        MOV A,R7               ;M 
0FE5  22        RET                    ;M 

sub_0FE6:  ; M func, size~8
0FE6  7401      MOV A,# #0x01          ;M 
0FE8  7e00      MOV R6,# #0x00         ;M 
0FEA  a805      MOV R0,dir 0x05        ;M 
0FEC  08        INC R0                 ;M 
0FED  22        RET                    ;M 

sub_0FEE:  ; M func, size~8
0FEE  f0        MOVX @DPTR,A           ;M 
0FEF  90a056    MOV DPTR,# #0xA056     ;M dptr win: win-Ax (0xA056)
0FF2  e0        MOVX A,@DPTR           ;M 
0FF3  04        INC A                  ;M 
0FF4  f0        MOVX @DPTR,A           ;M 
0FF5  22        RET                    ;M 

sub_0FF6:  ; M func, size~25
0FF6  7ff4      MOV R7,# #0xF4         ;M 
0FF8  12500f    LCALL 0x500F           ;M 
0FFB  ef        MOV A,R7               ;M 
0FFC  20e50d    JB ACC.5, 0x100C       ;M 
0FFF  7ff4      MOV R7,# #0xF4         ;M 
1001  110f      ACALL 0x100F           ;M 
1003  ef        MOV A,R7               ;M 
1004  7f01      MOV R7,# #0x01         ;M 
1006  20e405    JB ACC.4, 0x100E       ;M 
1009  7f02      MOV R7,# #0x02         ;M 
100B  22        RET                    ;M 
100C  .db 7F 03 22

sub_100F:  ; M func, size~29
100F  d3        SETB C                 ;M 
1010  10af01    JBC IE.7, 0x1014       ;M 
1013  c3        CLR C                  ;M 
1014  c0d0      PUSH dir PSW           ;M 
1016  8f82      MOV dir,R7 DPL         ;M 
1018  758300    MOV dir,# DPH, #0x00   ;M 
101B  e0        MOVX A,@DPTR           ;M 
101C  90a1da    MOV DPTR,# #0xA1DA     ;M dptr win: win-Ax (0xA1DA)
101F  12bdb7    LCALL 0xBDB7           ;M 
1022  90a1da    MOV DPTR,# #0xA1DA     ;M dptr win: win-Ax (0xA1DA)
1025  e0        MOVX A,@DPTR           ;M 
1026  ff        MOV R7,A               ;M 
1027  d0d0      POP dir PSW            ;M 
1029  92af      MOV bit,C IE.7         ;M 
102B  22        RET                    ;M 

sub_102C:  ; M func, size~112
102C  d3        SETB C                 ;M 
102D  10af01    JBC IE.7, 0x1031       ;M 
1030  c3        CLR C                  ;M 
1031  c0d0      PUSH dir PSW           ;M 
1033  785f      MOV R0,# #0x5F         ;M 
1035  7ca1      MOV R4,# #0xA1         ;M 
1037  7d01      MOV R5,# #0x01         ;M 
1039  7bff      MOV R3,# #0xFF         ;M 
103B  7a41      MOV R2,# #0x41         ;M 
103D  79fb      MOV R1,# #0xFB         ;M 
103F  12bde4    LCALL 0xBDE4           ;M 
1042  125823    LCALL 0x5823           ;M 
1045  11c8      ACALL 0x10C8           ;M 
1047  11b5      ACALL 0x10B5           ;M 
1049  11b5      ACALL 0x10B5           ;M 
104B  54fe      ANL A,# #0xFE          ;M 
104D  fd        MOV R5,A               ;M 
104E  7f02      MOV R7,# #0x02         ;M 
1050  11a0      ACALL 0x10A0           ;M 
1052  900100    MOV DPTR,# #0x0100     ;M dptr win: MAC/reg-low (0x0100)
1055  743f      MOV A,# #0x3F          ;M 
1057  f0        MOVX @DPTR,A           ;M 
1058  a3        INC DPTR               ;M 
1059  e0        MOVX A,@DPTR           ;M 
105A  54fd      ANL A,# #0xFD          ;M 
105C  f0        MOVX @DPTR,A           ;M 
105D  900553    MOV DPTR,# #0x0553     ;M dptr win: RAM/table (0x0553)
1060  e0        MOVX A,@DPTR           ;M 
1061  4420      ORL A,# #0x20          ;M 
1063  f0        MOVX @DPTR,A           ;M 
1064  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
1067  e0        MOVX A,@DPTR           ;M 
1068  30e00f    JNB ACC.0, 0x107A      ;M 
106B  90a15f    MOV DPTR,# #0xA15F     ;M dptr win: win-Ax (0xA15F)
106E  7401      MOV A,# #0x01          ;M 
1070  f0        MOVX @DPTR,A           ;M 
1071  a3        INC DPTR               ;M 
1072  f0        MOVX @DPTR,A           ;M 
1073  fb        MOV R3,A               ;M 
1074  7aa1      MOV R2,# #0xA1         ;M 
1076  795f      MOV R1,# #0x5F         ;M 
1078  b1e7      ACALL 0x15E7           ;M 
107A  900065    MOV DPTR,# #0x0065     ;M dptr win: MAC/reg-low (0x0065)
107D  e0        MOVX A,@DPTR           ;M 
107E  54fe      ANL A,# #0xFE          ;M 
1080  f0        MOVX @DPTR,A           ;M 
1081  900064    MOV DPTR,# #0x0064     ;M dptr win: MAC/reg-low (0x0064)
1084  e0        MOVX A,@DPTR           ;M 
1085  4404      ORL A,# #0x04          ;M 
1087  f0        MOVX @DPTR,A           ;M 
1088  90004f    MOV DPTR,# #0x004F     ;M dptr win: MAC/reg-low (0x004F)
108B  e0        MOVX A,@DPTR           ;M 
108C  4409      ORL A,# #0x09          ;M 
108E  f0        MOVX @DPTR,A           ;M 
108F  909eb3    MOV DPTR,# #0x9EB3     ;M dptr win: win-9x (0x9EB3)
1092  e0        MOVX A,@DPTR           ;M 
1093  6002      JZ 0x1097              ;M 
1095  e4        CLR A                  ;M 
1096  f0        MOVX @DPTR,A           ;M 
1097  d0d0      POP dir PSW            ;M 
1099  92af      MOV bit,C IE.7         ;M 
109B  22        RET                    ;M 

sub_109C:  ; M func, size~25
109C  e4        CLR A                  ;M 
109D  fd        MOV R5,A               ;M 
109E  7f8d      MOV R7,# #0x8D         ;M 
10A0  d3        SETB C                 ;M 
10A1  10af01    JBC IE.7, 0x10A5       ;M 
10A4  c3        CLR C                  ;M 
10A5  c0d0      PUSH dir PSW           ;M 
10A7  8f82      MOV dir,R7 DPL         ;M 
10A9  758300    MOV dir,# DPH, #0x00   ;M 
10AC  ed        MOV A,R5               ;M 
10AD  12bdb7    LCALL 0xBDB7           ;M 
10B0  d0d0      POP dir PSW            ;M 
10B2  92af      MOV bit,C IE.7         ;M 
10B4  22        RET                    ;M 

sub_10B5:  ; M func, size~25
10B5  54fe      ANL A,# #0xFE          ;M 
10B7  fd        MOV R5,A               ;M 
10B8  7f02      MOV R7,# #0x02         ;M 
10BA  11a0      ACALL 0x10A0           ;M 
10BC  7f02      MOV R7,# #0x02         ;M 
10BE  110f      ACALL 0x100F           ;M 
10C0  ef        MOV A,R7               ;M 
10C1  4401      ORL A,# #0x01          ;M 
10C3  fd        MOV R5,A               ;M 
10C4  7f02      MOV R7,# #0x02         ;M 
10C6  11a0      ACALL 0x10A0           ;M 
10C8  7f02      MOV R7,# #0x02         ;M 
10CA  110f      ACALL 0x100F           ;M 
10CC  ef        MOV A,R7               ;M 
10CD  22        RET                    ;M 

sub_10CE:  ; M func, size~64
10CE  7f54      MOV R7,# #0x54         ;M 
10D0  110f      ACALL 0x100F           ;M 
10D2  e50d      MOV A,dir 0x0D         ;M 
10D4  5f        ANL A,R7               ;M 
10D5  f511      MOV dir,A 0x11         ;M 
10D7  7f55      MOV R7,# #0x55         ;M 
10D9  110f      ACALL 0x100F           ;M 
10DB  e50e      MOV A,dir 0x0E         ;M 
10DD  5f        ANL A,R7               ;M 
10DE  f512      MOV dir,A 0x12         ;M 
10E0  7f56      MOV R7,# #0x56         ;M 
10E2  110f      ACALL 0x100F           ;M 
10E4  e50f      MOV A,dir 0x0F         ;M 
10E6  5f        ANL A,R7               ;M 
10E7  f513      MOV dir,A 0x13         ;M 
10E9  7f57      MOV R7,# #0x57         ;M 
10EB  110f      ACALL 0x100F           ;M 
10ED  e510      MOV A,dir 0x10         ;M 
10EF  5f        ANL A,R7               ;M 
10F0  f514      MOV dir,A 0x14         ;M 
10F2  ad11      MOV R5,dir 0x11        ;M 
10F4  7f54      MOV R7,# #0x54         ;M 
10F6  11a0      ACALL 0x10A0           ;M 
10F8  ad12      MOV R5,dir 0x12        ;M 
10FA  7f55      MOV R7,# #0x55         ;M 
10FC  11a0      ACALL 0x10A0           ;M 
10FE  ad13      MOV R5,dir 0x13        ;M 
1100  7f56      MOV R7,# #0x56         ;M 
1102  11a0      ACALL 0x10A0           ;M 
1104  ad14      MOV R5,dir 0x14        ;M 
1106  7f57      MOV R7,# #0x57         ;M 
1108  11a0      ACALL 0x10A0           ;M 
110A  5391ef    ANL dir,# 0x91, #0xEF  ;M 
110D  22        RET                    ;M 

sub_110E:  ; M func, size~110
110E  7f81      MOV R7,# #0x81         ;M 
1110  110f      ACALL 0x100F           ;M 
1112  ef        MOV A,R7               ;M 
1113  54fe      ANL A,# #0xFE          ;M 
1115  fd        MOV R5,A               ;M 
1116  7f81      MOV R7,# #0x81         ;M 
1118  11a0      ACALL 0x10A0           ;M 
111A  7f80      MOV R7,# #0x80         ;M 
111C  110f      ACALL 0x100F           ;M 
111E  ef        MOV A,R7               ;M 
111F  4480      ORL A,# #0x80          ;M 
1121  fd        MOV R5,A               ;M 
1122  7f80      MOV R7,# #0x80         ;M 
1124  11a0      ACALL 0x10A0           ;M 
1126  12b3f4    LCALL 0xB3F4           ;M 
1129  123e48    LCALL 0x3E48           ;M 
112C  129fb8    LCALL 0x9FB8           ;M 
112F  12b479    LCALL 0xB479           ;M 
1132  7f01      MOV R7,# #0x01         ;M 
1134  124685    LCALL 0x4685           ;M 
1137  909f16    MOV DPTR,# #0x9F16     ;M dptr win: win-9x (0x9F16)
113A  7402      MOV A,# #0x02          ;M 
113C  f0        MOVX @DPTR,A           ;M 
113D  ff        MOV R7,A               ;M 
113E  124685    LCALL 0x4685           ;M 
1141  909f16    MOV DPTR,# #0x9F16     ;M dptr win: win-9x (0x9F16)
1144  e0        MOVX A,@DPTR           ;M 
1145  04        INC A                  ;M 
1146  f0        MOVX @DPTR,A           ;M 
1147  125ff9    LCALL 0x5FF9           ;M 
114A  12891a    LCALL 0x891A           ;M 
114D  9001cc    MOV DPTR,# #0x01CC     ;M dptr win: MAC/reg-low (0x01CC)
1150  740f      MOV A,# #0x0F          ;M 
1152  f0        MOVX @DPTR,A           ;M 
1153  7f80      MOV R7,# #0x80         ;M 
1155  110f      ACALL 0x100F           ;M 
1157  ef        MOV A,R7               ;M 
1158  4440      ORL A,# #0x40          ;M 
115A  fd        MOV R5,A               ;M 
115B  7f80      MOV R7,# #0x80         ;M 
115D  11a0      ACALL 0x10A0           ;M 
115F  7528ff    MOV dir,# 0x28, #0xFF  ;M 
1162  126014    LCALL 0x6014           ;M 
1165  12b401    LCALL 0xB401           ;M 
1168  7f81      MOV R7,# #0x81         ;M 
116A  110f      ACALL 0x100F           ;M 
116C  ef        MOV A,R7               ;M 
116D  4404      ORL A,# #0x04          ;M 
116F  fd        MOV R5,A               ;M 
1170  7f81      MOV R7,# #0x81         ;M 
1172  11a0      ACALL 0x10A0           ;M 
1174  12b4ac    LCALL 0xB4AC           ;M 
1177  e4        CLR A                  ;M 
1178  ff        MOV R7,A               ;M 
1179  02470e    LJMP 0x470E            ;M 

sub_117C:  ; M func, size~68
117C  909e5d    MOV DPTR,# #0x9E5D     ;M dptr win: win-9x (0x9E5D)
117F  e0        MOVX A,@DPTR           ;M 
1180  fd        MOV R5,A               ;M 
1181  7f93      MOV R7,# #0x93         ;M 
1183  11a0      ACALL 0x10A0           ;M 
1185  909e53    MOV DPTR,# #0x9E53     ;M dptr win: win-9x (0x9E53)
1188  e0        MOVX A,@DPTR           ;M 
1189  6012      JZ 0x119D              ;M 
118B  90012f    MOV DPTR,# #0x012F     ;M dptr win: MAC/reg-low (0x012F)
118E  e0        MOVX A,@DPTR           ;M 
118F  30e705    JNB ACC.7, 0x1197      ;M 
1192  7410      MOV A,# #0x10          ;M 
1194  f0        MOVX @DPTR,A           ;M 
1195  8006      SJMP 0x119D            ;M 
1197  90012f    MOV DPTR,# #0x012F     ;M dptr win: MAC/reg-low (0x012F)
119A  7490      MOV A,# #0x90          ;M 
119C  f0        MOVX @DPTR,A           ;M 
119D  7f08      MOV R7,# #0x08         ;M 
119F  110f      ACALL 0x100F           ;M 
11A1  ef        MOV A,R7               ;M 
11A2  4410      ORL A,# #0x10          ;M 
11A4  fd        MOV R5,A               ;M 
11A5  7f08      MOV R7,# #0x08         ;M 
11A7  11a0      ACALL 0x10A0           ;M 
11A9  7f01      MOV R7,# #0x01         ;M 
11AB  f1c7      ACALL 0x17C7           ;M 
11AD  7f90      MOV R7,# #0x90         ;M 
11AF  110f      ACALL 0x100F           ;M 
11B1  ef        MOV A,R7               ;M 
11B2  4401      ORL A,# #0x01          ;M 
11B4  fd        MOV R5,A               ;M 
11B5  7f90      MOV R7,# #0x90         ;M 
11B7  11a0      ACALL 0x10A0           ;M 
11B9  7f14      MOV R7,# #0x14         ;M 
11BB  7e00      MOV R6,# #0x00         ;M 
11BD  023e87    LJMP 0x3E87            ;M 

sub_11C0:  ; M func, size~34
11C0  900130    MOV DPTR,# #0x0130     ;M dptr win: MAC/reg-low (0x0130)
11C3  e4        CLR A                  ;M 
11C4  5108      ACALL 0x1208           ;M 
11C6  900138    MOV DPTR,# #0x0138     ;M dptr win: MAC/reg-low (0x0138)
11C9  5108      ACALL 0x1208           ;M 
11CB  fd        MOV R5,A               ;M 
11CC  7f50      MOV R7,# #0x50         ;M 
11CE  11a0      ACALL 0x10A0           ;M 
11D0  e4        CLR A                  ;M 
11D1  fd        MOV R5,A               ;M 
11D2  7f51      MOV R7,# #0x51         ;M 
11D4  11a0      ACALL 0x10A0           ;M 
11D6  e4        CLR A                  ;M 
11D7  fd        MOV R5,A               ;M 
11D8  7f52      MOV R7,# #0x52         ;M 
11DA  11a0      ACALL 0x10A0           ;M 
11DC  e4        CLR A                  ;M 
11DD  fd        MOV R5,A               ;M 
11DE  7f53      MOV R7,# #0x53         ;M 
11E0  01a0      AJMP 0x10A0            ;M 

sub_11E2:  ; M func, size~35
11E2  900134    MOV DPTR,# #0x0134     ;M dptr win: MAC/reg-low (0x0134)
11E5  74ff      MOV A,# #0xFF          ;M 
11E7  5108      ACALL 0x1208           ;M 
11E9  90013c    MOV DPTR,# #0x013C     ;M dptr win: MAC/reg-low (0x013C)
11EC  5108      ACALL 0x1208           ;M 
11EE  fd        MOV R5,A               ;M 
11EF  7f54      MOV R7,# #0x54         ;M 
11F1  11a0      ACALL 0x10A0           ;M 
11F3  7dff      MOV R5,# #0xFF         ;M 
11F5  7f55      MOV R7,# #0x55         ;M 
11F7  11a0      ACALL 0x10A0           ;M 
11F9  7dff      MOV R5,# #0xFF         ;M 
11FB  7f56      MOV R7,# #0x56         ;M 
11FD  11a0      ACALL 0x10A0           ;M 
11FF  7dff      MOV R5,# #0xFF         ;M 
1201  7f57      MOV R7,# #0x57         ;M 
1203  01a0      AJMP 0x10A0            ;M 

sub_1205:  ; M func, size~11
1205  f0        MOVX @DPTR,A           ;M 
1206  e4        CLR A                  ;M 
1207  a3        INC DPTR               ;M 
1208  f0        MOVX @DPTR,A           ;M 
1209  a3        INC DPTR               ;M 
120A  f0        MOVX @DPTR,A           ;M 
120B  a3        INC DPTR               ;M 
120C  f0        MOVX @DPTR,A           ;M 
120D  a3        INC DPTR               ;M 
120E  f0        MOVX @DPTR,A           ;M 
120F  22        RET                    ;M 

sub_1210:  ; M func, size~112
1210  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
1213  124908    LCALL 0x4908           ;M 
1216  d1c5      ACALL 0x16C5           ;M 
1218  12b26a    LCALL 0xB26A           ;M 
121B  754301    MOV dir,# 0x43, #0x01  ;M 
121E  7b01      MOV R3,# #0x01         ;M 
1220  7a9f      MOV R2,# #0x9F         ;M 
1222  7915      MOV R1,# #0x15         ;M 
1224  123585    LCALL 0x3585           ;M 
1227  909f15    MOV DPTR,# #0x9F15     ;M dptr win: win-9x (0x9F15)
122A  e0        MOVX A,@DPTR           ;M 
122B  30e051    JNB ACC.0, 0x127F      ;M 
122E  900040    MOV DPTR,# #0x0040     ;M dptr win: MAC/reg-low (0x0040)
1231  e0        MOVX A,@DPTR           ;M 
1232  54bf      ANL A,# #0xBF          ;M 
1234  44a0      ORL A,# #0xA0          ;M 
1236  fd        MOV R5,A               ;M 
1237  7f40      MOV R7,# #0x40         ;M 
1239  11a0      ACALL 0x10A0           ;M 
123B  900041    MOV DPTR,# #0x0041     ;M dptr win: MAC/reg-low (0x0041)
123E  e0        MOVX A,@DPTR           ;M 
123F  4404      ORL A,# #0x04          ;M 
1241  fd        MOV R5,A               ;M 
1242  7f41      MOV R7,# #0x41         ;M 
1244  11a0      ACALL 0x10A0           ;M 
1246  90006a    MOV DPTR,# #0x006A     ;M dptr win: MAC/reg-low (0x006A)
1249  e0        MOVX A,@DPTR           ;M 
124A  54fb      ANL A,# #0xFB          ;M 
124C  fd        MOV R5,A               ;M 
124D  7f6a      MOV R7,# #0x6A         ;M 
124F  11a0      ACALL 0x10A0           ;M 
1251  90076e    MOV DPTR,# #0x076E     ;M dptr win: RAM/table (0x076E)
1254  7455      MOV A,# #0x55          ;M 
1256  f0        MOVX @DPTR,A           ;M 
1257  a3        INC DPTR               ;M 
1258  7412      MOV A,# #0x12          ;M 
125A  f0        MOVX @DPTR,A           ;M 
125B  900778    MOV DPTR,# #0x0778     ;M dptr win: RAM/table (0x0778)
125E  e0        MOVX A,@DPTR           ;M 
125F  54f2      ANL A,# #0xF2          ;M 
1261  4402      ORL A,# #0x02          ;M 
1263  f0        MOVX @DPTR,A           ;M 
1264  9006cc    MOV DPTR,# #0x06CC     ;M dptr win: RAM/table (0x06CC)
1267  e0        MOVX A,@DPTR           ;M 
1268  4403      ORL A,# #0x03          ;M 
126A  f0        MOVX @DPTR,A           ;M 
126B  900765    MOV DPTR,# #0x0765     ;M dptr win: RAM/table (0x0765)
126E  e0        MOVX A,@DPTR           ;M 
126F  54f5      ANL A,# #0xF5          ;M 
1271  f0        MOVX @DPTR,A           ;M 
1272  900523    MOV DPTR,# #0x0523     ;M dptr win: RAM/table (0x0523)
1275  e0        MOVX A,@DPTR           ;M 
1276  547f      ANL A,# #0x7F          ;M 
1278  f0        MOVX @DPTR,A           ;M 
1279  e4        CLR A                  ;M 
127A  fd        MOV R5,A               ;M 
127B  7f66      MOV R7,# #0x66         ;M 
127D  11a0      ACALL 0x10A0           ;M 
127F  22        RET                    ;M 

sub_1280:  ; M func, size~19
1280  90fd68    MOV DPTR,# #0xFD68     ;M dptr win: win-Bx+ (0xFD68)
1283  e0        MOVX A,@DPTR           ;M 
1284  ff        MOV R7,A               ;M 
1285  90fd60    MOV DPTR,# #0xFD60     ;M dptr win: win-Bx+ (0xFD60)
1288  e0        MOVX A,@DPTR           ;M 
1289  90a0ad    MOV DPTR,# #0xA0AD     ;M dptr win: win-Ax (0xA0AD)
128C  f0        MOVX @DPTR,A           ;M 
128D  ef        MOV A,R7               ;M 
128E  20e002    JB ACC.0, 0x1293       ;M 
1291  61c2      AJMP 0x13C2            ;M 

sub_1293:  ; M func, size~304
1293  90a1cf    MOV DPTR,# #0xA1CF     ;M dptr win: win-Ax (0xA1CF)
1296  e0        MOVX A,@DPTR           ;M 
1297  7018      JNZ 0x12B1             ;M 
1299  7f2e      MOV R7,# #0x2E         ;M 
129B  110f      ACALL 0x100F           ;M 
129D  909ef3    MOV DPTR,# #0x9EF3     ;M dptr win: win-9x (0x9EF3)
12A0  ef        MOV A,R7               ;M 
12A1  f0        MOVX @DPTR,A           ;M 
12A2  7f2d      MOV R7,# #0x2D         ;M 
12A4  110f      ACALL 0x100F           ;M 
12A6  909ef4    MOV DPTR,# #0x9EF4     ;M dptr win: win-9x (0x9EF4)
12A9  ef        MOV A,R7               ;M 
12AA  f0        MOVX @DPTR,A           ;M 
12AB  90a1cf    MOV DPTR,# #0xA1CF     ;M dptr win: win-Ax (0xA1CF)
12AE  7401      MOV A,# #0x01          ;M 
12B0  f0        MOVX @DPTR,A           ;M 
12B1  90a0ad    MOV DPTR,# #0xA0AD     ;M dptr win: win-Ax (0xA0AD)
12B4  e0        MOVX A,@DPTR           ;M 
12B5  6415      XRL A,# #0x15          ;M 
12B7  7057      JNZ 0x1310             ;M 
12B9  90fd62    MOV DPTR,# #0xFD62     ;M dptr win: win-Bx+ (0xFD62)
12BC  e0        MOVX A,@DPTR           ;M 
12BD  ff        MOV R7,A               ;M 
12BE  30e613    JNB ACC.6, 0x12D4      ;M 
12C1  f4        CPL A                  ;M 
12C2  543f      ANL A,# #0x3F          ;M 
12C4  04        INC A                  ;M 
12C5  fe        MOV R6,A               ;M 
12C6  12bdae    LCALL 0xBDAE           ;M 
12C9  c3        CLR C                  ;M 
12CA  9e        SUBB A,R6              ;M 
12CB  12bdf3    LCALL 0xBDF3           ;M 
12CE  4014      JC 0x12E4              ;M 
12D0  e4        CLR A                  ;M 
12D1  f0        MOVX @DPTR,A           ;M 
12D2  8010      SJMP 0x12E4            ;M 
12D4  12bdae    LCALL 0xBDAE           ;M 
12D7  fe        MOV R6,A               ;M 
12D8  ef        MOV A,R7               ;M 
12D9  543f      ANL A,# #0x3F          ;M 
12DB  2e        ADD A,R6               ;M 
12DC  12bdf3    LCALL 0xBDF3           ;M 
12DF  4003      JC 0x12E4              ;M 
12E1  743f      MOV A,# #0x3F          ;M 
12E3  f0        MOVX @DPTR,A           ;M 
12E4  90a0ac    MOV DPTR,# #0xA0AC     ;M dptr win: win-Ax (0xA0AC)
12E7  e0        MOVX A,@DPTR           ;M 
12E8  ff        MOV R7,A               ;M 
12E9  5430      ANL A,# #0x30          ;M 
12EB  c4        SWAP A                 ;M 
12EC  540f      ANL A,# #0x0F          ;M 
12EE  fe        MOV R6,A               ;M 
12EF  ef        MOV A,R7               ;M 
12F0  25e0      ADD A,dir ACC          ;M 
12F2  25e0      ADD A,dir ACC          ;M 
12F4  4e        ORL A,R6               ;M 
12F5  f568      MOV dir,A 0x68         ;M 
12F7  fd        MOV R5,A               ;M 
12F8  7f2e      MOV R7,# #0x2E         ;M 
12FA  11a0      ACALL 0x10A0           ;M 
12FC  90a0ac    MOV DPTR,# #0xA0AC     ;M dptr win: win-Ax (0xA0AC)
12FF  e0        MOVX A,@DPTR           ;M 
1300  c4        SWAP A                 ;M 
1301  54f0      ANL A,# #0xF0          ;M 
1303  ff        MOV R7,A               ;M 
1304  909ef4    MOV DPTR,# #0x9EF4     ;M dptr win: win-9x (0x9EF4)
1307  e0        MOVX A,@DPTR           ;M 
1308  540f      ANL A,# #0x0F          ;M 
130A  4f        ORL A,R7               ;M 
130B  fd        MOV R5,A               ;M 
130C  7f2d      MOV R7,# #0x2D         ;M 
130E  11a0      ACALL 0x10A0           ;M 
1310  90a0ad    MOV DPTR,# #0xA0AD     ;M dptr win: win-Ax (0xA0AD)
1313  e0        MOVX A,@DPTR           ;M 
1314  b42304    CJNE A,# #0x23, 0x131B ;M 
1317  7f01      MOV R7,# #0x01         ;M 
1319  b1d4      ACALL 0x15D4           ;M 
131B  90a0ad    MOV DPTR,# #0xA0AD     ;M dptr win: win-Ax (0xA0AD)
131E  e0        MOVX A,@DPTR           ;M 
131F  b42704    CJNE A,# #0x27, 0x1326 ;M 
1322  7f02      MOV R7,# #0x02         ;M 
1324  b1d4      ACALL 0x15D4           ;M 
1326  90a0ad    MOV DPTR,# #0xA0AD     ;M dptr win: win-Ax (0xA0AD)
1329  e0        MOVX A,@DPTR           ;M 
132A  b43007    CJNE A,# #0x30, 0x1334 ;M 
132D  e4        CLR A                  ;M 
132E  fb        MOV R3,A               ;M 
132F  fd        MOV R5,A               ;M 
1330  7f01      MOV R7,# #0x01         ;M 
1332  f139      ACALL 0x1739           ;M 
1334  90a0ad    MOV DPTR,# #0xA0AD     ;M dptr win: win-Ax (0xA0AD)
1337  e0        MOVX A,@DPTR           ;M 
1338  6434      XRL A,# #0x34          ;M 
133A  703d      JNZ 0x1379             ;M 
133C  90fd62    MOV DPTR,# #0xFD62     ;M dptr win: win-Bx+ (0xFD62)
133F  e0        MOVX A,@DPTR           ;M 
1340  30e029    JNB ACC.0, 0x136C      ;M 
1343  909edb    MOV DPTR,# #0x9EDB     ;M dptr win: win-9x (0x9EDB)
1346  e0        MOVX A,@DPTR           ;M 
1347  c3        CLR C                  ;M 
1348  13        RRC A                  ;M 
1349  20e02d    JB ACC.0, 0x1379       ;M 
134C  756801    MOV dir,# 0x68, #0x01  ;M 
134F  7b00      MOV R3,# #0x00         ;M 
1351  7a00      MOV R2,# #0x00         ;M 
1353  7968      MOV R1,# #0x68         ;M 
1355  7d01      MOV R5,# #0x01         ;M 
1357  7f34      MOV R7,# #0x34         ;M 
1359  b1eb      ACALL 0x15EB           ;M 
135B  7f03      MOV R7,# #0x03         ;M 
135D  12a7ba    LCALL 0xA7BA           ;M 
1360  90049d    MOV DPTR,# #0x049D     ;M dptr win: RAM/table (0x049D)
1363  e4        CLR A                  ;M 
1364  f0        MOVX @DPTR,A           ;M 
1365  e0        MOVX A,@DPTR           ;M 
1366  4401      ORL A,# #0x01          ;M 
1368  9140      ACALL 0x1440           ;M 
136A  800d      SJMP 0x1379            ;M 
136C  12a84f    LCALL 0xA84F           ;M 
136F  90049d    MOV DPTR,# #0x049D     ;M dptr win: RAM/table (0x049D)
1372  e0        MOVX A,@DPTR           ;M 
1373  54fe      ANL A,# #0xFE          ;M 
1375  f0        MOVX @DPTR,A           ;M 
1376  12bdeb    LCALL 0xBDEB           ;M 
1379  90a0ad    MOV DPTR,# #0xA0AD     ;M dptr win: win-Ax (0xA0AD)
137C  e0        MOVX A,@DPTR           ;M 
137D  6439      XRL A,# #0x39          ;M 
137F  703a      JNZ 0x13BB             ;M 
1381  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
1384  e0        MOVX A,@DPTR           ;M 
1385  30e033    JNB ACC.0, 0x13BB      ;M 
1388  12b5c8    LCALL 0xB5C8           ;M 
138B  30e02d    JNB ACC.0, 0x13BB      ;M 
138E  909edb    MOV DPTR,# #0x9EDB     ;M dptr win: win-9x (0x9EDB)
1391  e0        MOVX A,@DPTR           ;M 
1392  c4        SWAP A                 ;M 
1393  540f      ANL A,# #0x0F          ;M 
1395  30e023    JNB ACC.0, 0x13BB      ;M 
1398  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
139B  e0        MOVX A,@DPTR           ;M 
139C  24fd      ADD A,# #0xFD          ;M 
139E  6004      JZ 0x13A4              ;M 
13A0  2403      ADD A,# #0x03          ;M 
13A2  7017      JNZ 0x13BB             ;M 
13A4  12bcd2    LCALL 0xBCD2           ;M 
13A7  7405      MOV A,# #0x05          ;M 
13A9  f0        MOVX @DPTR,A           ;M 
13AA  e4        CLR A                  ;M 
13AB  fb        MOV R3,A               ;M 
13AC  fd        MOV R5,A               ;M 
13AD  7f60      MOV R7,# #0x60         ;M 
13AF  7e01      MOV R6,# #0x01         ;M 
13B1  1280ad    LCALL 0x80AD           ;M 
13B4  909edb    MOV DPTR,# #0x9EDB     ;M dptr win: win-9x (0x9EDB)
13B7  e0        MOVX A,@DPTR           ;M 
13B8  4420      ORL A,# #0x20          ;M 
13BA  f0        MOVX @DPTR,A           ;M 
13BB  90fd68    MOV DPTR,# #0xFD68     ;M dptr win: win-Bx+ (0xFD68)
13BE  e0        MOVX A,@DPTR           ;M 
13BF  4401      ORL A,# #0x01          ;M 
13C1  f0        MOVX @DPTR,A           ;M 
13C2  22        RET                    ;M 

sub_13C3:  ; M func, size~36
13C3  e4        CLR A                  ;M 
13C4  f50d      MOV dir,A 0x0D         ;M 
13C6  f50f      MOV dir,A 0x0F         ;M 
13C8  f50e      MOV dir,A 0x0E         ;M 
13CA  f50f      MOV dir,A 0x0F         ;M 
13CC  751080    MOV dir,# 0x10, #0x80  ;M 
13CF  ad0d      MOV R5,dir 0x0D        ;M 
13D1  7f50      MOV R7,# #0x50         ;M 
13D3  11a0      ACALL 0x10A0           ;M 
13D5  ad0e      MOV R5,dir 0x0E        ;M 
13D7  7f51      MOV R7,# #0x51         ;M 
13D9  11a0      ACALL 0x10A0           ;M 
13DB  ad0f      MOV R5,dir 0x0F        ;M 
13DD  7f52      MOV R7,# #0x52         ;M 
13DF  11a0      ACALL 0x10A0           ;M 
13E1  ad10      MOV R5,dir 0x10        ;M 
13E3  7f53      MOV R7,# #0x53         ;M 
13E5  01a0      AJMP 0x10A0            ;M 

sub_13E7:  ; M func, size~87
13E7  31c0      ACALL 0x11C0           ;M 
13E9  31e2      ACALL 0x11E2           ;M 
13EB  12b3ad    LCALL 0xB3AD           ;M 
13EE  12b3cc    LCALL 0xB3CC           ;M 
13F1  80d0      SJMP 0x13C3            ;M 
13F3  120689    LCALL 0x0689           ;M 
13F6  5401      ANL A,# #0x01          ;M 
13F8  12b30c    LCALL 0xB30C           ;M 
13FB  54fd      ANL A,# #0xFD          ;M 
13FD  4f        ORL A,R7               ;M 
13FE  9140      ACALL 0x1440           ;M 
1400  909edb    MOV DPTR,# #0x9EDB     ;M dptr win: win-9x (0x9EDB)
1403  e0        MOVX A,@DPTR           ;M 
1404  c3        CLR C                  ;M 
1405  13        RRC A                  ;M 
1406  30e035    JNB ACC.0, 0x143E      ;M 
1409  7fa3      MOV R7,# #0xA3         ;M 
140B  110f      ACALL 0x100F           ;M 
140D  ef        MOV A,R7               ;M 
140E  54f8      ANL A,# #0xF8          ;M 
1410  4405      ORL A,# #0x05          ;M 
1412  fd        MOV R5,A               ;M 
1413  7fa3      MOV R7,# #0xA3         ;M 
1415  11a0      ACALL 0x10A0           ;M 
1417  7fa0      MOV R7,# #0xA0         ;M 
1419  110f      ACALL 0x100F           ;M 
141B  ef        MOV A,R7               ;M 
141C  540f      ANL A,# #0x0F          ;M 
141E  6404      XRL A,# #0x04          ;M 
1420  7019      JNZ 0x143B             ;M 
1422  909efe    MOV DPTR,# #0x9EFE     ;M dptr win: win-9x (0x9EFE)
1425  e0        MOVX A,@DPTR           ;M 
1426  30e002    JNB ACC.0, 0x142B      ;M 
1429  8013      SJMP 0x143E            ;M 
142B  90fd62    MOV DPTR,# #0xFD62     ;M dptr win: win-Bx+ (0xFD62)
142E  e0        MOVX A,@DPTR           ;M 
142F  b4ad07    CJNE A,# #0xAD, 0x1439 ;M 
1432  a3        INC DPTR               ;M 
1433  e0        MOVX A,@DPTR           ;M 
1434  b43502    CJNE A,# #0x35, 0x1439 ;M 
1437  8005      SJMP 0x143E            ;M 
1439  8000      SJMP 0x143B            ;M 
143B  02bdeb    LJMP 0xBDEB            ;M 

sub_143E:  ; M func, size~11
143E  8001      SJMP 0x1441            ;M 
1440  f0        MOVX @DPTR,A           ;M 
1441  9001e7    MOV DPTR,# #0x01E7     ;M dptr win: MAC/reg-low (0x01E7)
1444  e0        MOVX A,@DPTR           ;M 
1445  54fe      ANL A,# #0xFE          ;M 
1447  f0        MOVX @DPTR,A           ;M 
1448  22        RET                    ;M 

sub_1449:  ; M func, size~80
1449  d3        SETB C                 ;M 
144A  10af01    JBC IE.7, 0x144E       ;M 
144D  c3        CLR C                  ;M 
144E  c0d0      PUSH dir PSW           ;M 
1450  90a1d4    MOV DPTR,# #0xA1D4     ;M dptr win: win-Ax (0xA1D4)
1453  ef        MOV A,R7               ;M 
1454  f0        MOVX @DPTR,A           ;M 
1455  124fdf    LCALL 0x4FDF           ;M 
1458  30e639    JNB ACC.6, 0x1494      ;M 
145B  7f8d      MOV R7,# #0x8D         ;M 
145D  110f      ACALL 0x100F           ;M 
145F  ef        MOV A,R7               ;M 
1460  6401      XRL A,# #0x01          ;M 
1462  7030      JNZ 0x1494             ;M 
1464  90a1d5    MOV DPTR,# #0xA1D5     ;M dptr win: win-Ax (0xA1D5)
1467  f0        MOVX @DPTR,A           ;M 
1468  90a1d5    MOV DPTR,# #0xA1D5     ;M dptr win: win-Ax (0xA1D5)
146B  e0        MOVX A,@DPTR           ;M 
146C  fd        MOV R5,A               ;M 
146D  90a1d4    MOV DPTR,# #0xA1D4     ;M dptr win: win-Ax (0xA1D4)
1470  124fbf    LCALL 0x4FBF           ;M 
1473  e582      MOV A,dir DPL          ;M 
1475  2d        ADD A,R5               ;M 
1476  124eda    LCALL 0x4EDA           ;M 
1479  e0        MOVX A,@DPTR           ;M 
147A  fb        MOV R3,A               ;M 
147B  e4        CLR A                  ;M 
147C  ff        MOV R7,A               ;M 
147D  124b03    LCALL 0x4B03           ;M 
1480  90a1d5    MOV DPTR,# #0xA1D5     ;M dptr win: win-Ax (0xA1D5)
1483  e0        MOVX A,@DPTR           ;M 
1484  04        INC A                  ;M 
1485  f0        MOVX @DPTR,A           ;M 
1486  e0        MOVX A,@DPTR           ;M 
1487  c3        CLR C                  ;M 
1488  9410      SUBB A,# #0x10         ;M 
148A  40dc      JC 0x1468              ;M 
148C  124fdf    LCALL 0x4FDF           ;M 
148F  30e002    JNB ACC.0, 0x1494      ;M 
1492  119c      ACALL 0x109C           ;M 
1494  d0d0      POP dir PSW            ;M 
1496  92af      MOV bit,C IE.7         ;M 
1498  22        RET                    ;M 

sub_1499:  ; M func, size~97
1499  d3        SETB C                 ;M 
149A  10af01    JBC IE.7, 0x149E       ;M 
149D  c3        CLR C                  ;M 
149E  c0d0      PUSH dir PSW           ;M 
14A0  7857      MOV R0,# #0x57         ;M 
14A2  7ca1      MOV R4,# #0xA1         ;M 
14A4  7d01      MOV R5,# #0x01         ;M 
14A6  7bff      MOV R3,# #0xFF         ;M 
14A8  7a41      MOV R2,# #0x41         ;M 
14AA  79f3      MOV R1,# #0xF3         ;M 
14AC  12bde4    LCALL 0xBDE4           ;M 
14AF  900101    MOV DPTR,# #0x0101     ;M dptr win: MAC/reg-low (0x0101)
14B2  e0        MOVX A,@DPTR           ;M 
14B3  4402      ORL A,# #0x02          ;M 
14B5  f0        MOVX @DPTR,A           ;M 
14B6  900100    MOV DPTR,# #0x0100     ;M dptr win: MAC/reg-low (0x0100)
14B9  74ff      MOV A,# #0xFF          ;M 
14BB  f0        MOVX @DPTR,A           ;M 
14BC  9006b7    MOV DPTR,# #0x06B7     ;M dptr win: RAM/table (0x06B7)
14BF  7409      MOV A,# #0x09          ;M 
14C1  f0        MOVX @DPTR,A           ;M 
14C2  9006b4    MOV DPTR,# #0x06B4     ;M dptr win: RAM/table (0x06B4)
14C5  7486      MOV A,# #0x86          ;M 
14C7  f0        MOVX @DPTR,A           ;M 
14C8  90004f    MOV DPTR,# #0x004F     ;M dptr win: MAC/reg-low (0x004F)
14CB  e0        MOVX A,@DPTR           ;M 
14CC  54f6      ANL A,# #0xF6          ;M 
14CE  f0        MOVX @DPTR,A           ;M 
14CF  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
14D2  e0        MOVX A,@DPTR           ;M 
14D3  30e016    JNB ACC.0, 0x14EC      ;M 
14D6  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
14D9  e0        MOVX A,@DPTR           ;M 
14DA  c4        SWAP A                 ;M 
14DB  5401      ANL A,# #0x01          ;M 
14DD  90a157    MOV DPTR,# #0xA157     ;M dptr win: win-Ax (0xA157)
14E0  f0        MOVX @DPTR,A           ;M 
14E1  a3        INC DPTR               ;M 
14E2  7401      MOV A,# #0x01          ;M 
14E4  f0        MOVX @DPTR,A           ;M 
14E5  fb        MOV R3,A               ;M 
14E6  7aa1      MOV R2,# #0xA1         ;M 
14E8  7957      MOV R1,# #0x57         ;M 
14EA  b1e7      ACALL 0x15E7           ;M 
14EC  11c8      ACALL 0x10C8           ;M 
14EE  4401      ORL A,# #0x01          ;M 
14F0  fd        MOV R5,A               ;M 
14F1  7f02      MOV R7,# #0x02         ;M 
14F3  11a0      ACALL 0x10A0           ;M 
14F5  d0d0      POP dir PSW            ;M 
14F7  92af      MOV bit,C IE.7         ;M 
14F9  22        RET                    ;M 

sub_14FA:  ; M func, size~218
14FA  90a113    MOV DPTR,# #0xA113     ;M dptr win: win-Ax (0xA113)
14FD  7409      MOV A,# #0x09          ;M 
14FF  f0        MOVX @DPTR,A           ;M 
1500  90a121    MOV DPTR,# #0xA121     ;M dptr win: win-Ax (0xA121)
1503  7407      MOV A,# #0x07          ;M 
1505  f0        MOVX @DPTR,A           ;M 
1506  90a115    MOV DPTR,# #0xA115     ;M dptr win: win-Ax (0xA115)
1509  ef        MOV A,R7               ;M 
150A  f0        MOVX @DPTR,A           ;M 
150B  703c      JNZ 0x1549             ;M 
150D  909ecf    MOV DPTR,# #0x9ECF     ;M dptr win: win-9x (0x9ECF)
1510  e0        MOVX A,@DPTR           ;M 
1511  601a      JZ 0x152D              ;M 
1513  a3        INC DPTR               ;M 
1514  e0        MOVX A,@DPTR           ;M 
1515  6002      JZ 0x1519              ;M 
1517  800c      SJMP 0x1525            ;M 
1519  900770    MOV DPTR,# #0x0770     ;M dptr win: RAM/table (0x0770)
151C  e0        MOVX A,@DPTR           ;M 
151D  7006      JNZ 0x1525             ;M 
151F  900774    MOV DPTR,# #0x0774     ;M dptr win: RAM/table (0x0774)
1522  e0        MOVX A,@DPTR           ;M 
1523  6008      JZ 0x152D              ;M 
1525  90a116    MOV DPTR,# #0xA116     ;M dptr win: win-Ax (0xA116)
1528  7401      MOV A,# #0x01          ;M 
152A  f0        MOVX @DPTR,A           ;M 
152B  8005      SJMP 0x1532            ;M 
152D  e4        CLR A                  ;M 
152E  90a116    MOV DPTR,# #0xA116     ;M dptr win: win-Ax (0xA116)
1531  f0        MOVX @DPTR,A           ;M 
1532  90a122    MOV DPTR,# #0xA122     ;M dptr win: win-Ax (0xA122)
1535  7402      MOV A,# #0x02          ;M 
1537  f0        MOVX @DPTR,A           ;M 
1538  90a122    MOV DPTR,# #0xA122     ;M dptr win: win-Ax (0xA122)
153B  e0        MOVX A,@DPTR           ;M 
153C  ff        MOV R7,A               ;M 
153D  c3        CLR C                  ;M 
153E  9407      SUBB A,# #0x07         ;M 
1540  502d      JNC 0x156F             ;M 
1542  f19d      ACALL 0x179D           ;M 
1544  e4        CLR A                  ;M 
1545  f195      ACALL 0x1795           ;M 
1547  80ef      SJMP 0x1538            ;M 
1549  90a122    MOV DPTR,# #0xA122     ;M dptr win: win-Ax (0xA122)
154C  7401      MOV A,# #0x01          ;M 
154E  f0        MOVX @DPTR,A           ;M 
154F  90a122    MOV DPTR,# #0xA122     ;M dptr win: win-Ax (0xA122)
1552  e0        MOVX A,@DPTR           ;M 
1553  ff        MOV R7,A               ;M 
1554  2461      ADD A,# #0x61          ;M 
1556  d1bd      ACALL 0x16BD           ;M 
1558  e0        MOVX A,@DPTR           ;M 
1559  fe        MOV R6,A               ;M 
155A  f19d      ACALL 0x179D           ;M 
155C  ee        MOV A,R6               ;M 
155D  f195      ACALL 0x1795           ;M 
155F  e0        MOVX A,@DPTR           ;M 
1560  b407ec    CJNE A,# #0x07, 0x154F ;M 
1563  90a116    MOV DPTR,# #0xA116     ;M dptr win: win-Ax (0xA116)
1566  e0        MOVX A,@DPTR           ;M 
1567  5401      ANL A,# #0x01          ;M 
1569  909ecf    MOV DPTR,# #0x9ECF     ;M dptr win: win-9x (0x9ECF)
156C  f0        MOVX @DPTR,A           ;M 
156D  a3        INC DPTR               ;M 
156E  f0        MOVX @DPTR,A           ;M 
156F  7b01      MOV R3,# #0x01         ;M 
1571  7aa1      MOV R2,# #0xA1         ;M 
1573  7913      MOV R1,# #0x13         ;M 
1575  d3        SETB C                 ;M 
1576  10af01    JBC IE.7, 0x157A       ;M 
1579  c3        CLR C                  ;M 
157A  c0d0      PUSH dir PSW           ;M 
157C  909e32    MOV DPTR,# #0x9E32     ;M dptr win: win-9x (0x9E32)
157F  e0        MOVX A,@DPTR           ;M 
1580  ff        MOV R7,A               ;M 
1581  7006      JNZ 0x1589             ;M 
1583  a3        INC DPTR               ;M 
1584  e0        MOVX A,@DPTR           ;M 
1585  6409      XRL A,# #0x09          ;M 
1587  600a      JZ 0x1593              ;M 
1589  ef        MOV A,R7               ;M 
158A  14        DEC A                  ;M 
158B  ff        MOV R7,A               ;M 
158C  909e33    MOV DPTR,# #0x9E33     ;M dptr win: win-9x (0x9E33)
158F  e0        MOVX A,@DPTR           ;M 
1590  b50704    CJNE A,dir 0x07, 0x1597 ;M 
1593  7f01      MOV R7,# #0x01         ;M 
1595  8002      SJMP 0x1599            ;M 
1597  7f00      MOV R7,# #0x00         ;M 
1599  ef        MOV A,R7               ;M 
159A  6009      JZ 0x15A5              ;M 
159C  9001c1    MOV DPTR,# #0x01C1     ;M dptr win: MAC/reg-low (0x01C1)
159F  e0        MOVX A,@DPTR           ;M 
15A0  4402      ORL A,# #0x02          ;M 
15A2  f0        MOVX @DPTR,A           ;M 
15A3  802a      SJMP 0x15CF            ;M 
15A5  c001      PUSH dir 0x01          ;M 
15A7  909e33    MOV DPTR,# #0x9E33     ;M dptr win: win-9x (0x9E33)
15AA  e0        MOVX A,@DPTR           ;M 
15AB  129f94    LCALL 0x9F94           ;M 
15AE  a801      MOV R0,dir 0x01        ;M 
15B0  fc        MOV R4,A               ;M 
15B1  7d01      MOV R5,# #0x01         ;M 
15B3  d001      POP dir 0x01           ;M 
15B5  7e00      MOV R6,# #0x00         ;M 
15B7  7f0f      MOV R7,# #0x0F         ;M 
15B9  120663    LCALL 0x0663           ;M 
15BC  909e33    MOV DPTR,# #0x9E33     ;M dptr win: win-9x (0x9E33)
15BF  12b398    LCALL 0xB398           ;M 
15C2  b40a02    CJNE A,# #0x0A, 0x15C7 ;M 
15C5  7f01      MOV R7,# #0x01         ;M 
15C7  ef        MOV A,R7               ;M 
15C8  6005      JZ 0x15CF              ;M 
15CA  e4        CLR A                  ;M 
15CB  909e33    MOV DPTR,# #0x9E33     ;M dptr win: win-9x (0x9E33)
15CE  f0        MOVX @DPTR,A           ;M 
15CF  d0d0      POP dir PSW            ;M 
15D1  92af      MOV bit,C IE.7         ;M 
15D3  22        RET                    ;M 

sub_15D4:  ; M func, size~19
15D4  91fa      ACALL 0x14FA           ;M 
15D6  7f04      MOV R7,# #0x04         ;M 
15D8  8f6d      MOV dir,R7 0x6D        ;M 
15DA  7f02      MOV R7,# #0x02         ;M 
15DC  124797    LCALL 0x4797           ;M 
15DF  909d01    MOV DPTR,# #0x9D01     ;M dptr win: win-9x (0x9D01)
15E2  e0        MOVX A,@DPTR           ;M 
15E3  456d      ORL A,dir 0x6D         ;M 
15E5  f0        MOVX @DPTR,A           ;M 
15E6  22        RET                    ;M 

sub_15E7:  ; M func, size~127
15E7  7d02      MOV R5,# #0x02         ;M 
15E9  7f1b      MOV R7,# #0x1B         ;M 
15EB  d3        SETB C                 ;M 
15EC  10af01    JBC IE.7, 0x15F0       ;M 
15EF  c3        CLR C                  ;M 
15F0  c0d0      PUSH dir PSW           ;M 
15F2  90a180    MOV DPTR,# #0xA180     ;M dptr win: win-Ax (0xA180)
15F5  ef        MOV A,R7               ;M 
15F6  f0        MOVX @DPTR,A           ;M 
15F7  a3        INC DPTR               ;M 
15F8  124908    LCALL 0x4908           ;M 
15FB  ae05      MOV R6,dir 0x05        ;M 
15FD  909eda    MOV DPTR,# #0x9EDA     ;M dptr win: win-9x (0x9EDA)
1600  e0        MOVX A,@DPTR           ;M 
1601  705c      JNZ 0x165F             ;M 
1603  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
1606  e0        MOVX A,@DPTR           ;M 
1607  fd        MOV R5,A               ;M 
1608  13        RRC A                  ;M 
1609  13        RRC A                  ;M 
160A  13        RRC A                  ;M 
160B  541f      ANL A,# #0x1F          ;M 
160D  fc        MOV R4,A               ;M 
160E  ed        MOV A,R5               ;M 
160F  c3        CLR C                  ;M 
1610  13        RRC A                  ;M 
1611  fd        MOV R5,A               ;M 
1612  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
1615  e0        MOVX A,@DPTR           ;M 
1616  c4        SWAP A                 ;M 
1617  13        RRC A                  ;M 
1618  5407      ANL A,# #0x07          ;M 
161A  f9        MOV R1,A               ;M 
161B  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
161E  124fd7    LCALL 0x4FD7           ;M 
1621  909edf    MOV DPTR,# #0x9EDF     ;M dptr win: win-9x (0x9EDF)
1624  e0        MOVX A,@DPTR           ;M 
1625  c3        CLR C                  ;M 
1626  13        RRC A                  ;M 
1627  ec        MOV A,R4               ;M 
1628  20e011    JB ACC.0, 0x163C       ;M 
162B  ed        MOV A,R5               ;M 
162C  20e00d    JB ACC.0, 0x163C       ;M 
162F  e9        MOV A,R1               ;M 
1630  20e009    JB ACC.0, 0x163C       ;M 
1633  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
1636  124fd7    LCALL 0x4FD7           ;M 
1639  30e004    JNB ACC.0, 0x1640      ;M 
163C  7f02      MOV R7,# #0x02         ;M 
163E  8021      SJMP 0x1661            ;M 
1640  90fd58    MOV DPTR,# #0xFD58     ;M dptr win: win-Bx+ (0xFD58)
1643  e0        MOVX A,@DPTR           ;M 
1644  20e004    JB ACC.0, 0x164B       ;M 
1647  d166      ACALL 0x1666           ;M 
1649  8010      SJMP 0x165B            ;M 
164B  900101    MOV DPTR,# #0x0101     ;M dptr win: MAC/reg-low (0x0101)
164E  e0        MOVX A,@DPTR           ;M 
164F  54ef      ANL A,# #0xEF          ;M 
1651  f0        MOVX @DPTR,A           ;M 
1652  d166      ACALL 0x1666           ;M 
1654  900101    MOV DPTR,# #0x0101     ;M dptr win: MAC/reg-low (0x0101)
1657  e0        MOVX A,@DPTR           ;M 
1658  4410      ORL A,# #0x10          ;M 
165A  f0        MOVX @DPTR,A           ;M 
165B  7f01      MOV R7,# #0x01         ;M 
165D  8002      SJMP 0x1661            ;M 
165F  7f04      MOV R7,# #0x04         ;M 
1661  d0d0      POP dir PSW            ;M 
1663  92af      MOV bit,C IE.7         ;M 
1665  22        RET                    ;M 

sub_1666:  ; M func, size~84
1666  90a180    MOV DPTR,# #0xA180     ;M dptr win: win-Ax (0xA180)
1669  e0        MOVX A,@DPTR           ;M 
166A  ff        MOV R7,A               ;M 
166B  ad06      MOV R5,dir 0x06        ;M 
166D  a3        INC DPTR               ;M 
166E  1248ff    LCALL 0x48FF           ;M 
1671  90a1b3    MOV DPTR,# #0xA1B3     ;M dptr win: win-Ax (0xA1B3)
1674  124908    LCALL 0x4908           ;M 
1677  e4        CLR A                  ;M 
1678  fe        MOV R6,A               ;M 
1679  90fd50    MOV DPTR,# #0xFD50     ;M dptr win: win-Bx+ (0xFD50)
167C  ef        MOV A,R7               ;M 
167D  f0        MOVX @DPTR,A           ;M 
167E  6430      XRL A,# #0x30          ;M 
1680  601f      JZ 0x16A1              ;M 
1682  a3        INC DPTR               ;M 
1683  ed        MOV A,R5               ;M 
1684  f0        MOVX @DPTR,A           ;M 
1685  ee        MOV A,R6               ;M 
1686  c3        CLR C                  ;M 
1687  9d        SUBB A,R5              ;M 
1688  500a      JNC 0x1694             ;M 
168A  f1a8      ACALL 0x17A8           ;M 
168C  ff        MOV R7,A               ;M 
168D  d1ba      ACALL 0x16BA           ;M 
168F  ef        MOV A,R7               ;M 
1690  f0        MOVX @DPTR,A           ;M 
1691  0e        INC R6                 ;M 
1692  80f1      SJMP 0x1685            ;M 
1694  ee        MOV A,R6               ;M 
1695  c3        CLR C                  ;M 
1696  9406      SUBB A,# #0x06         ;M 
1698  5019      JNC 0x16B3             ;M 
169A  d1ba      ACALL 0x16BA           ;M 
169C  e4        CLR A                  ;M 
169D  f0        MOVX @DPTR,A           ;M 
169E  0e        INC R6                 ;M 
169F  80f3      SJMP 0x1694            ;M 
16A1  ee        MOV A,R6               ;M 
16A2  c3        CLR C                  ;M 
16A3  9407      SUBB A,# #0x07         ;M 
16A5  500c      JNC 0x16B3             ;M 
16A7  f1a8      ACALL 0x17A8           ;M 
16A9  ff        MOV R7,A               ;M 
16AA  7451      MOV A,# #0x51          ;M 
16AC  d1bc      ACALL 0x16BC           ;M 
16AE  ef        MOV A,R7               ;M 
16AF  f0        MOVX @DPTR,A           ;M 
16B0  0e        INC R6                 ;M 
16B1  80ee      SJMP 0x16A1            ;M 
16B3  90fd58    MOV DPTR,# #0xFD58     ;M dptr win: win-Bx+ (0xFD58)
16B6  7401      MOV A,# #0x01          ;M 
16B8  f0        MOVX @DPTR,A           ;M 
16B9  22        RET                    ;M 

sub_16BA:  ; M func, size~15
16BA  7452      MOV A,# #0x52          ;M 
16BC  2e        ADD A,R6               ;M 
16BD  f582      MOV dir,A DPL          ;M 
16BF  e4        CLR A                  ;M 
16C0  34fd      ADDC A,# #0xFD         ;M 
16C2  f583      MOV dir,A DPH          ;M 
16C4  22        RET                    ;M 
16C5  .db 90 A0 5C 02

sub_16C9:  ; M func, size~74
16C9  48        ORL A,R0               ;M 
16CA  ff        MOV R7,A               ;M 
16CB  128fc8    LCALL 0x8FC8           ;M 
16CE  ff        MOV R7,A               ;M 
16CF  f133      ACALL 0x1733           ;M 
16D1  fe        MOV R6,A               ;M 
16D2  5403      ANL A,# #0x03          ;M 
16D4  fd        MOV R5,A               ;M 
16D5  ee        MOV A,R6               ;M 
16D6  13        RRC A                  ;M 
16D7  13        RRC A                  ;M 
16D8  5407      ANL A,# #0x07          ;M 
16DA  fb        MOV R3,A               ;M 
16DB  c003      PUSH dir 0x03          ;M 
16DD  d1c5      ACALL 0x16C5           ;M 
16DF  124fb9    LCALL 0x4FB9           ;M 
16E2  127fd6    LCALL 0x7FD6           ;M 
16E5  d003      POP dir 0x03           ;M 
16E7  127eef    LCALL 0x7EEF           ;M 
16EA  d1c5      ACALL 0x16C5           ;M 
16EC  f133      ACALL 0x1733           ;M 
16EE  125da0    LCALL 0x5DA0           ;M 
16F1  90a05f    MOV DPTR,# #0xA05F     ;M dptr win: win-Ax (0xA05F)
16F4  7410      MOV A,# #0x10          ;M 
16F6  f0        MOVX @DPTR,A           ;M 
16F7  90a06d    MOV DPTR,# #0xA06D     ;M dptr win: win-Ax (0xA06D)
16FA  7407      MOV A,# #0x07          ;M 
16FC  f0        MOVX @DPTR,A           ;M 
16FD  d1c5      ACALL 0x16C5           ;M 
16FF  120689    LCALL 0x0689           ;M 
1702  90a061    MOV DPTR,# #0xA061     ;M dptr win: win-Ax (0xA061)
1705  f0        MOVX @DPTR,A           ;M 
1706  7b01      MOV R3,# #0x01         ;M 
1708  7aa0      MOV R2,# #0xA0         ;M 
170A  795f      MOV R1,# #0x5F         ;M 
170C  b175      ACALL 0x1575           ;M 
170E  7f04      MOV R7,# #0x04         ;M 
1710  028ffc    LJMP 0x8FFC            ;M 

sub_1713:  ; M func, size~28
1713  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
1716  124908    LCALL 0x4908           ;M 
1719  d1c5      ACALL 0x16C5           ;M 
171B  120689    LCALL 0x0689           ;M 
171E  909f13    MOV DPTR,# #0x9F13     ;M dptr win: win-9x (0x9F13)
1721  f132      ACALL 0x1732           ;M 
1723  909f14    MOV DPTR,# #0x9F14     ;M dptr win: win-9x (0x9F14)
1726  f0        MOVX @DPTR,A           ;M 
1727  d1c5      ACALL 0x16C5           ;M 
1729  7d02      MOV R5,# #0x02         ;M 
172B  7f38      MOV R7,# #0x38         ;M 
172D  a1eb      AJMP 0x15EB            ;M 

sub_172F:  ; M func, size~16
172F  90a06b    MOV DPTR,# #0xA06B     ;M dptr win: win-Ax (0xA06B)
1732  f0        MOVX @DPTR,A           ;M 
1733  900001    MOV DPTR,# #0x0001     ;M dptr win: MAC/reg-low (0x0001)
1736  0206a2    LJMP 0x06A2            ;M 
1739  .db F1 3F 7F 04 A1 D8

sub_173F:  ; M func, size~86
173F  90a123    MOV DPTR,# #0xA123     ;M dptr win: win-Ax (0xA123)
1742  740b      MOV A,# #0x0B          ;M 
1744  f0        MOVX @DPTR,A           ;M 
1745  90a131    MOV DPTR,# #0xA131     ;M dptr win: win-Ax (0xA131)
1748  7407      MOV A,# #0x07          ;M 
174A  f0        MOVX @DPTR,A           ;M 
174B  90a125    MOV DPTR,# #0xA125     ;M dptr win: win-Ax (0xA125)
174E  ef        MOV A,R7               ;M 
174F  f0        MOVX @DPTR,A           ;M 
1750  6032      JZ 0x1784              ;M 
1752  90fd63    MOV DPTR,# #0xFD63     ;M dptr win: win-Bx+ (0xFD63)
1755  e0        MOVX A,@DPTR           ;M 
1756  90a126    MOV DPTR,# #0xA126     ;M dptr win: win-Ax (0xA126)
1759  f0        MOVX @DPTR,A           ;M 
175A  90fd61    MOV DPTR,# #0xFD61     ;M dptr win: win-Bx+ (0xFD61)
175D  e0        MOVX A,@DPTR           ;M 
175E  90a127    MOV DPTR,# #0xA127     ;M dptr win: win-Ax (0xA127)
1761  f0        MOVX @DPTR,A           ;M 
1762  90fd64    MOV DPTR,# #0xFD64     ;M dptr win: win-Bx+ (0xFD64)
1765  e0        MOVX A,@DPTR           ;M 
1766  90a128    MOV DPTR,# #0xA128     ;M dptr win: win-Ax (0xA128)
1769  f0        MOVX @DPTR,A           ;M 
176A  90fd65    MOV DPTR,# #0xFD65     ;M dptr win: win-Bx+ (0xFD65)
176D  e0        MOVX A,@DPTR           ;M 
176E  90a129    MOV DPTR,# #0xA129     ;M dptr win: win-Ax (0xA129)
1771  f0        MOVX @DPTR,A           ;M 
1772  90fd66    MOV DPTR,# #0xFD66     ;M dptr win: win-Bx+ (0xFD66)
1775  e0        MOVX A,@DPTR           ;M 
1776  90a12a    MOV DPTR,# #0xA12A     ;M dptr win: win-Ax (0xA12A)
1779  f0        MOVX @DPTR,A           ;M 
177A  90fd67    MOV DPTR,# #0xFD67     ;M dptr win: win-Bx+ (0xFD67)
177D  e0        MOVX A,@DPTR           ;M 
177E  90a12b    MOV DPTR,# #0xA12B     ;M dptr win: win-Ax (0xA12B)
1781  f0        MOVX @DPTR,A           ;M 
1782  8009      SJMP 0x178D            ;M 
1784  90a126    MOV DPTR,# #0xA126     ;M dptr win: win-Ax (0xA126)
1787  ed        MOV A,R5               ;M 
1788  f0        MOVX @DPTR,A           ;M 
1789  a3        INC DPTR               ;M 
178A  eb        MOV A,R3               ;M 
178B  5105      ACALL 0x1205           ;M 
178D  7b01      MOV R3,# #0x01         ;M 
178F  7aa1      MOV R2,# #0xA1         ;M 
1791  7923      MOV R1,# #0x23         ;M 
1793  a175      AJMP 0x1575            ;M 

sub_1795:  ; M func, size~8
1795  f0        MOVX @DPTR,A           ;M 
1796  90a122    MOV DPTR,# #0xA122     ;M dptr win: win-Ax (0xA122)
1799  e0        MOVX A,@DPTR           ;M 
179A  04        INC A                  ;M 
179B  f0        MOVX @DPTR,A           ;M 
179C  22        RET                    ;M 

sub_179D:  ; M func, size~11
179D  7415      MOV A,# #0x15          ;M 
179F  2f        ADD A,R7               ;M 
17A0  f582      MOV dir,A DPL          ;M 
17A2  e4        CLR A                  ;M 
17A3  34a1      ADDC A,# #0xA1         ;M 
17A5  f583      MOV dir,A DPH          ;M 
17A7  22        RET                    ;M 

sub_17A8:  ; M func, size~14
17A8  90a1b3    MOV DPTR,# #0xA1B3     ;M dptr win: win-Ax (0xA1B3)
17AB  1248ff    LCALL 0x48FF           ;M 
17AE  8e82      MOV dir,R6 DPL         ;M 
17B0  758300    MOV dir,# DPH, #0x00   ;M 
17B3  0206a2    LJMP 0x06A2            ;M 

sub_17B6:  ; M func, size~64
17B6  12b726    LCALL 0xB726           ;M 
17B9  7f08      MOV R7,# #0x08         ;M 
17BB  110f      ACALL 0x100F           ;M 
17BD  ef        MOV A,R7               ;M 
17BE  54ef      ANL A,# #0xEF          ;M 
17C0  fd        MOV R5,A               ;M 
17C1  7f08      MOV R7,# #0x08         ;M 
17C3  11a0      ACALL 0x10A0           ;M 
17C5  e4        CLR A                  ;M 
17C6  ff        MOV R7,A               ;M 
17C7  90a1bf    MOV DPTR,# #0xA1BF     ;M dptr win: win-Ax (0xA1BF)
17CA  129dbc    LCALL 0x9DBC           ;M 
17CD  900109    MOV DPTR,# #0x0109     ;M dptr win: MAC/reg-low (0x0109)
17D0  e0        MOVX A,@DPTR           ;M 
17D1  7f00      MOV R7,# #0x00         ;M 
17D3  30e702    JNB ACC.7, 0x17D8      ;M 
17D6  7f01      MOV R7,# #0x01         ;M 
17D8  90a1bf    MOV DPTR,# #0xA1BF     ;M dptr win: win-Ax (0xA1BF)
17DB  e0        MOVX A,@DPTR           ;M 
17DC  6f        XRL A,R7               ;M 
17DD  6036      JZ 0x1815              ;M 
17DF  c3        CLR C                  ;M 
17E0  90a1c1    MOV DPTR,# #0xA1C1     ;M dptr win: win-Ax (0xA1C1)
17E3  e0        MOVX A,@DPTR           ;M 
17E4  9488      SUBB A,# #0x88         ;M 
17E6  90a1c0    MOV DPTR,# #0xA1C0     ;M dptr win: win-Ax (0xA1C0)
17E9  e0        MOVX A,@DPTR           ;M 
17EA  9413      SUBB A,# #0x13         ;M 
17EC  4008      JC 0x17F6              ;M 
17EE  9001c0    MOV DPTR,# #0x01C0     ;M dptr win: MAC/reg-low (0x01C0)
17F1  e0        MOVX A,@DPTR           ;M 
17F2  4410      ORL A,# #0x10          ;M 
17F4  f0        MOVX @DPTR,A           ;M 
17F5  22        RET                    ;M 

sub_17F6:  ; M func, size~37
17F6  90a1c0    MOV DPTR,# #0xA1C0     ;M dptr win: win-Ax (0xA1C0)
17F9  125816    LCALL 0x5816           ;M 
17FC  12b453    LCALL 0xB453           ;M 
17FF  d3        SETB C                 ;M 
1800  90a1c1    MOV DPTR,# #0xA1C1     ;M dptr win: win-Ax (0xA1C1)
1803  e0        MOVX A,@DPTR           ;M 
1804  9432      SUBB A,# #0x32         ;M 
1806  90a1c0    MOV DPTR,# #0xA1C0     ;M dptr win: win-Ax (0xA1C0)
1809  e0        MOVX A,@DPTR           ;M 
180A  9400      SUBB A,# #0x00         ;M 
180C  40bf      JC 0x17CD              ;M 
180E  9001c6    MOV DPTR,# #0x01C6     ;M dptr win: MAC/reg-low (0x01C6)
1811  e0        MOVX A,@DPTR           ;M 
1812  30e0b8    JNB ACC.0, 0x17CD      ;M 
1815  22        RET                    ;M 
1816  .db E4 75 F0 01 02

sub_181B:  ; M func, size~59
181B  08        INC R0                 ;M 
181C  d6        XCHD A,@R0             ;M 
181D  7dff      MOV R5,# #0xFF         ;M 
181F  e4        CLR A                  ;M 
1820  ff        MOV R7,A               ;M 
1821  11a7      ACALL 0x18A7           ;M 
1823  e4        CLR A                  ;M 
1824  90a1c2    MOV DPTR,# #0xA1C2     ;M dptr win: win-Ax (0xA1C2)
1827  12a734    LCALL 0xA734           ;M 
182A  90a1c4    MOV DPTR,# #0xA1C4     ;M dptr win: win-Ax (0xA1C4)
182D  f0        MOVX @DPTR,A           ;M 
182E  7b47      MOV R3,# #0x47         ;M 
1830  7dff      MOV R5,# #0xFF         ;M 
1832  e4        CLR A                  ;M 
1833  ff        MOV R7,A               ;M 
1834  11a7      ACALL 0x18A7           ;M 
1836  9005f8    MOV DPTR,# #0x05F8     ;M dptr win: RAM/table (0x05F8)
1839  e0        MOVX A,@DPTR           ;M 
183A  701a      JNZ 0x1856             ;M 
183C  a3        INC DPTR               ;M 
183D  e0        MOVX A,@DPTR           ;M 
183E  7016      JNZ 0x1856             ;M 
1840  a3        INC DPTR               ;M 
1841  e0        MOVX A,@DPTR           ;M 
1842  7012      JNZ 0x1856             ;M 
1844  a3        INC DPTR               ;M 
1845  e0        MOVX A,@DPTR           ;M 
1846  700e      JNZ 0x1856             ;M 
1848  90a1c4    MOV DPTR,# #0xA1C4     ;M dptr win: win-Ax (0xA1C4)
184B  e0        MOVX A,@DPTR           ;M 
184C  fd        MOV R5,A               ;M 
184D  7b48      MOV R3,# #0x48         ;M 
184F  e4        CLR A                  ;M 
1850  ff        MOV R7,A               ;M 
1851  11a7      ACALL 0x18A7           ;M 
1853  7f01      MOV R7,# #0x01         ;M 
1855  22        RET                    ;M 

sub_1856:  ; M func, size~55
1856  12669f    LCALL 0x669F           ;M 
1859  30e01a    JNB ACC.0, 0x1876      ;M 
185C  d3        SETB C                 ;M 
185D  90a1c3    MOV DPTR,# #0xA1C3     ;M dptr win: win-Ax (0xA1C3)
1860  e0        MOVX A,@DPTR           ;M 
1861  9403      SUBB A,# #0x03         ;M 
1863  90a1c2    MOV DPTR,# #0xA1C2     ;M dptr win: win-Ax (0xA1C2)
1866  e0        MOVX A,@DPTR           ;M 
1867  9400      SUBB A,# #0x00         ;M 
1869  4007      JC 0x1872              ;M 
186B  12bcd9    LCALL 0xBCD9           ;M 
186E  7b5a      MOV R3,# #0x5A         ;M 
1870  8018      SJMP 0x188A            ;M 
1872  7f01      MOV R7,# #0x01         ;M 
1874  8019      SJMP 0x188F            ;M 
1876  d3        SETB C                 ;M 
1877  90a1c3    MOV DPTR,# #0xA1C3     ;M dptr win: win-Ax (0xA1C3)
187A  e0        MOVX A,@DPTR           ;M 
187B  94e8      SUBB A,# #0xE8         ;M 
187D  90a1c2    MOV DPTR,# #0xA1C2     ;M dptr win: win-Ax (0xA1C2)
1880  e0        MOVX A,@DPTR           ;M 
1881  9403      SUBB A,# #0x03         ;M 
1883  4008      JC 0x188D              ;M 
1885  12bcd9    LCALL 0xBCD9           ;M 
1888  7b5b      MOV R3,# #0x5B         ;M 
188A  027bf8    LJMP 0x7BF8            ;M 

sub_188D:  ; M func, size~70
188D  7f32      MOV R7,# #0x32         ;M 
188F  7e00      MOV R6,# #0x00         ;M 
1891  123e87    LCALL 0x3E87           ;M 
1894  90a1c2    MOV DPTR,# #0xA1C2     ;M dptr win: win-Ax (0xA1C2)
1897  1116      ACALL 0x1816           ;M 
1899  809b      SJMP 0x1836            ;M 
189B  e4        CLR A                  ;M 
189C  fd        MOV R5,A               ;M 
189D  7f0c      MOV R7,# #0x0C         ;M 
189F  12607e    LCALL 0x607E           ;M 
18A2  e4        CLR A                  ;M 
18A3  fb        MOV R3,A               ;M 
18A4  fd        MOV R5,A               ;M 
18A5  7fff      MOV R7,# #0xFF         ;M 
18A7  d3        SETB C                 ;M 
18A8  10af01    JBC IE.7, 0x18AC       ;M 
18AB  c3        CLR C                  ;M 
18AC  c0d0      PUSH dir PSW           ;M 
18AE  eb        MOV A,R3               ;M 
18AF  b45704    CJNE A,# #0x57, 0x18B6 ;M 
18B2  f1ae      ACALL 0x1FAE           ;M 
18B4  800f      SJMP 0x18C5            ;M 
18B6  ef        MOV A,R7               ;M 
18B7  7007      JNZ 0x18C0             ;M 
18B9  909fae    MOV DPTR,# #0x9FAE     ;M dptr win: win-9x (0x9FAE)
18BC  e0        MOVX A,@DPTR           ;M 
18BD  4d        ORL A,R5               ;M 
18BE  8005      SJMP 0x18C5            ;M 
18C0  12b12a    LCALL 0xB12A           ;M 
18C3  f1ae      ACALL 0x1FAE           ;M 
18C5  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
18C8  f0        MOVX @DPTR,A           ;M 
18C9  909d05    MOV DPTR,# #0x9D05     ;M dptr win: win-9x (0x9D05)
18CC  eb        MOV A,R3               ;M 
18CD  f0        MOVX @DPTR,A           ;M 
18CE  d0d0      POP dir PSW            ;M 
18D0  92af      MOV bit,C IE.7         ;M 
18D2  22        RET                    ;M 

sub_18D3:  ; M func, size~9
18D3  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
18D6  e0        MOVX A,@DPTR           ;M 
18D7  20e002    JB ACC.0, 0x18DC       ;M 
18DA  61d7      AJMP 0x1BD7            ;M 

sub_18DC:  ; M func, size~15
18DC  909f98    MOV DPTR,# #0x9F98     ;M dptr win: win-9x (0x9F98)
18DF  e0        MOVX A,@DPTR           ;M 
18E0  20e002    JB ACC.0, 0x18E5       ;M 
18E3  412f      AJMP 0x1A2F            ;M 
18E5  .db 12 BC FD 50 02 41

sub_18EB:  ; M func, size~333
18EB  2f        ADD A,R7               ;M 
18EC  909f9f    MOV DPTR,# #0x9F9F     ;M dptr win: win-9x (0x9F9F)
18EF  e0        MOVX A,@DPTR           ;M 
18F0  30e023    JNB ACC.0, 0x1916      ;M 
18F3  54fe      ANL A,# #0xFE          ;M 
18F5  f0        MOVX @DPTR,A           ;M 
18F6  909fa1    MOV DPTR,# #0x9FA1     ;M dptr win: win-9x (0x9FA1)
18F9  e0        MOVX A,@DPTR           ;M 
18FA  909f95    MOV DPTR,# #0x9F95     ;M dptr win: win-9x (0x9F95)
18FD  f0        MOVX @DPTR,A           ;M 
18FE  909fa4    MOV DPTR,# #0x9FA4     ;M dptr win: win-9x (0x9FA4)
1901  e0        MOVX A,@DPTR           ;M 
1902  909f96    MOV DPTR,# #0x9F96     ;M dptr win: win-9x (0x9F96)
1905  f0        MOVX @DPTR,A           ;M 
1906  909fa2    MOV DPTR,# #0x9FA2     ;M dptr win: win-9x (0x9FA2)
1909  e0        MOVX A,@DPTR           ;M 
190A  909f1c    MOV DPTR,# #0x9F1C     ;M dptr win: win-9x (0x9F1C)
190D  f0        MOVX @DPTR,A           ;M 
190E  909fa3    MOV DPTR,# #0x9FA3     ;M dptr win: win-9x (0x9FA3)
1911  e0        MOVX A,@DPTR           ;M 
1912  909f37    MOV DPTR,# #0x9F37     ;M dptr win: win-9x (0x9F37)
1915  f0        MOVX @DPTR,A           ;M 
1916  900558    MOV DPTR,# #0x0558     ;M dptr win: RAM/table (0x0558)
1919  e0        MOVX A,@DPTR           ;M 
191A  90a08f    MOV DPTR,# #0xA08F     ;M dptr win: win-Ax (0xA08F)
191D  f0        MOVX @DPTR,A           ;M 
191E  f1c6      ACALL 0x1FC6           ;M 
1920  5407      ANL A,# #0x07          ;M 
1922  ff        MOV R7,A               ;M 
1923  6402      XRL A,# #0x02          ;M 
1925  6003      JZ 0x192A              ;M 
1927  ef        MOV A,R7               ;M 
1928  701e      JNZ 0x1948             ;M 
192A  909f98    MOV DPTR,# #0x9F98     ;M dptr win: win-9x (0x9F98)
192D  e0        MOVX A,@DPTR           ;M 
192E  1265f4    LCALL 0x65F4           ;M 
1931  20e014    JB ACC.0, 0x1948       ;M 
1934  ef        MOV A,R7               ;M 
1935  4440      ORL A,# #0x40          ;M 
1937  f1f2      ACALL 0x1FF2           ;M 
1939  90a08f    MOV DPTR,# #0xA08F     ;M dptr win: win-Ax (0xA08F)
193C  e0        MOVX A,@DPTR           ;M 
193D  ff        MOV R7,A               ;M 
193E  909f95    MOV DPTR,# #0x9F95     ;M dptr win: win-9x (0x9F95)
1941  e0        MOVX A,@DPTR           ;M 
1942  2f        ADD A,R7               ;M 
1943  24fd      ADD A,# #0xFD          ;M 
1945  1280a2    LCALL 0x80A2           ;M 
1948  71d9      ACALL 0x1BD9           ;M 
194A  1248bd    LCALL 0x48BD           ;M 
194D  c004      PUSH dir 0x04          ;M 
194F  c005      PUSH dir 0x05          ;M 
1951  c006      PUSH dir 0x06          ;M 
1953  c007      PUSH dir 0x07          ;M 
1955  900562    MOV DPTR,# #0x0562     ;M dptr win: RAM/table (0x0562)
1958  71f2      ACALL 0x1BF2           ;M 
195A  7810      MOV R0,# #0x10         ;M 
195C  12085a    LCALL 0x085A           ;M 
195F  d003      POP dir 0x03           ;M 
1961  d002      POP dir 0x02           ;M 
1963  d001      POP dir 0x01           ;M 
1965  d000      POP dir 0x00           ;M 
1967  1248bd    LCALL 0x48BD           ;M 
196A  c004      PUSH dir 0x04          ;M 
196C  c005      PUSH dir 0x05          ;M 
196E  c006      PUSH dir 0x06          ;M 
1970  c007      PUSH dir 0x07          ;M 
1972  a3        INC DPTR               ;M 
1973  71f2      ACALL 0x1BF2           ;M 
1975  7818      MOV R0,# #0x18         ;M 
1977  12085a    LCALL 0x085A           ;M 
197A  d003      POP dir 0x03           ;M 
197C  d002      POP dir 0x02           ;M 
197E  d001      POP dir 0x01           ;M 
1980  d000      POP dir 0x00           ;M 
1982  1248bd    LCALL 0x48BD           ;M 
1985  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
1988  12086d    LCALL 0x086D           ;M 
198B  900565    MOV DPTR,# #0x0565     ;M dptr win: RAM/table (0x0565)
198E  71f2      ACALL 0x1BF2           ;M 
1990  f16e      ACALL 0x1F6E           ;M 
1992  900564    MOV DPTR,# #0x0564     ;M dptr win: RAM/table (0x0564)
1995  71f2      ACALL 0x1BF2           ;M 
1997  1248bd    LCALL 0x48BD           ;M 
199A  c004      PUSH dir 0x04          ;M 
199C  c005      PUSH dir 0x05          ;M 
199E  c006      PUSH dir 0x06          ;M 
19A0  c007      PUSH dir 0x07          ;M 
19A2  900566    MOV DPTR,# #0x0566     ;M dptr win: RAM/table (0x0566)
19A5  71f2      ACALL 0x1BF2           ;M 
19A7  7810      MOV R0,# #0x10         ;M 
19A9  12085a    LCALL 0x085A           ;M 
19AC  d003      POP dir 0x03           ;M 
19AE  d002      POP dir 0x02           ;M 
19B0  d001      POP dir 0x01           ;M 
19B2  d000      POP dir 0x00           ;M 
19B4  1248bd    LCALL 0x48BD           ;M 
19B7  c004      PUSH dir 0x04          ;M 
19B9  c005      PUSH dir 0x05          ;M 
19BB  c006      PUSH dir 0x06          ;M 
19BD  c007      PUSH dir 0x07          ;M 
19BF  a3        INC DPTR               ;M 
19C0  71f2      ACALL 0x1BF2           ;M 
19C2  7818      MOV R0,# #0x18         ;M 
19C4  12085a    LCALL 0x085A           ;M 
19C7  d003      POP dir 0x03           ;M 
19C9  d002      POP dir 0x02           ;M 
19CB  d001      POP dir 0x01           ;M 
19CD  d000      POP dir 0x00           ;M 
19CF  1248bd    LCALL 0x48BD           ;M 
19D2  f189      ACALL 0x1F89           ;M 
19D4  909f95    MOV DPTR,# #0x9F95     ;M dptr win: win-9x (0x9F95)
19D7  e0        MOVX A,@DPTR           ;M 
19D8  fb        MOV R3,A               ;M 
19D9  e4        CLR A                  ;M 
19DA  fa        MOV R2,A               ;M 
19DB  f9        MOV R1,A               ;M 
19DC  f8        MOV R0,A               ;M 
19DD  90a08f    MOV DPTR,# #0xA08F     ;M dptr win: win-Ax (0xA08F)
19E0  71f2      ACALL 0x1BF2           ;M 
19E2  124846    LCALL 0x4846           ;M 
19E5  e4        CLR A                  ;M 
19E6  fb        MOV R3,A               ;M 
19E7  7a04      MOV R2,# #0x04         ;M 
19E9  124861    LCALL 0x4861           ;M 
19EC  f195      ACALL 0x1F95           ;M 
19EE  124846    LCALL 0x4846           ;M 
19F1  90a08b    MOV DPTR,# #0xA08B     ;M dptr win: win-Ax (0xA08B)
19F4  b190      ACALL 0x1D90           ;M 
19F6  90a08b    MOV DPTR,# #0xA08B     ;M dptr win: win-Ax (0xA08B)
19F9  12bddd    LCALL 0xBDDD           ;M 
19FC  5004      JNC 0x1A02             ;M 
19FE  71fb      ACALL 0x1BFB           ;M 
1A00  f17c      ACALL 0x1F7C           ;M 
1A02  71fb      ACALL 0x1BFB           ;M 
1A04  12bd4c    LCALL 0xBD4C           ;M 
1A07  71f9      ACALL 0x1BF9           ;M 
1A09  12bd55    LCALL 0xBD55           ;M 
1A0C  71f9      ACALL 0x1BF9           ;M 
1A0E  12bd5e    LCALL 0xBD5E           ;M 
1A11  71f9      ACALL 0x1BF9           ;M 
1A13  900588    MOV DPTR,# #0x0588     ;M dptr win: RAM/table (0x0588)
1A16  f15e      ACALL 0x1F5E           ;M 
1A18  12bd67    LCALL 0xBD67           ;M 
1A1B  f15e      ACALL 0x1F5E           ;M 
1A1D  12bd70    LCALL 0xBD70           ;M 
1A20  f15e      ACALL 0x1F5E           ;M 
1A22  12bd79    LCALL 0xBD79           ;M 
1A25  f15e      ACALL 0x1F5E           ;M 
1A27  12b751    LCALL 0xB751           ;M 
1A2A  e4        CLR A                  ;M 
1A2B  909f99    MOV DPTR,# #0x9F99     ;M dptr win: win-9x (0x9F99)
1A2E  f0        MOVX @DPTR,A           ;M 
1A2F  909f94    MOV DPTR,# #0x9F94     ;M dptr win: win-9x (0x9F94)
1A32  e0        MOVX A,@DPTR           ;M 
1A33  20e002    JB ACC.0, 0x1A38       ;M 
1A36  61d7      AJMP 0x1BD7            ;M 

sub_1A38:  ; M func, size~14
1A38  909f98    MOV DPTR,# #0x9F98     ;M dptr win: win-9x (0x9F98)
1A3B  e0        MOVX A,@DPTR           ;M 
1A3C  ff        MOV R7,A               ;M 
1A3D  c3        CLR C                  ;M 
1A3E  13        RRC A                  ;M 
1A3F  fe        MOV R6,A               ;M 
1A40  541f      ANL A,# #0x1F          ;M 
1A42  7002      JNZ 0x1A46             ;M 
1A44  61d7      AJMP 0x1BD7            ;M 

sub_1A46:  ; M func, size~22
1A46  ef        MOV A,R7               ;M 
1A47  54c1      ANL A,# #0xC1          ;M 
1A49  ff        MOV R7,A               ;M 
1A4A  ee        MOV A,R6               ;M 
1A4B  14        DEC A                  ;M 
1A4C  541f      ANL A,# #0x1F          ;M 
1A4E  fe        MOV R6,A               ;M 
1A4F  25e0      ADD A,dir ACC          ;M 
1A51  4f        ORL A,R7               ;M 
1A52  f0        MOVX @DPTR,A           ;M 
1A53  e0        MOVX A,@DPTR           ;M 
1A54  c3        CLR C                  ;M 
1A55  13        RRC A                  ;M 
1A56  541f      ANL A,# #0x1F          ;M 
1A58  6002      JZ 0x1A5C              ;M 
1A5A  61d7      AJMP 0x1BD7            ;M 

sub_1A5C:  ; M func, size~380
1A5C  909fa0    MOV DPTR,# #0x9FA0     ;M dptr win: win-9x (0x9FA0)
1A5F  e0        MOVX A,@DPTR           ;M 
1A60  30e017    JNB ACC.0, 0x1A7A      ;M 
1A63  54fe      ANL A,# #0xFE          ;M 
1A65  f0        MOVX @DPTR,A           ;M 
1A66  909f9f    MOV DPTR,# #0x9F9F     ;M dptr win: win-9x (0x9F9F)
1A69  e0        MOVX A,@DPTR           ;M 
1A6A  4401      ORL A,# #0x01          ;M 
1A6C  f0        MOVX @DPTR,A           ;M 
1A6D  a3        INC DPTR               ;M 
1A6E  e0        MOVX A,@DPTR           ;M 
1A6F  54fe      ANL A,# #0xFE          ;M 
1A71  ff        MOV R7,A               ;M 
1A72  909f94    MOV DPTR,# #0x9F94     ;M dptr win: win-9x (0x9F94)
1A75  e0        MOVX A,@DPTR           ;M 
1A76  5401      ANL A,# #0x01          ;M 
1A78  4f        ORL A,R7               ;M 
1A79  f0        MOVX @DPTR,A           ;M 
1A7A  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
1A7D  e0        MOVX A,@DPTR           ;M 
1A7E  4440      ORL A,# #0x40          ;M 
1A80  fd        MOV R5,A               ;M 
1A81  7b58      MOV R3,# #0x58         ;M 
1A83  7f40      MOV R7,# #0x40         ;M 
1A85  11a7      ACALL 0x18A7           ;M 
1A87  900550    MOV DPTR,# #0x0550     ;M dptr win: RAM/table (0x0550)
1A8A  e0        MOVX A,@DPTR           ;M 
1A8B  54f7      ANL A,# #0xF7          ;M 
1A8D  f0        MOVX @DPTR,A           ;M 
1A8E  900569    MOV DPTR,# #0x0569     ;M dptr win: RAM/table (0x0569)
1A91  71f2      ACALL 0x1BF2           ;M 
1A93  f16e      ACALL 0x1F6E           ;M 
1A95  900568    MOV DPTR,# #0x0568     ;M dptr win: RAM/table (0x0568)
1A98  71f2      ACALL 0x1BF2           ;M 
1A9A  1248bd    LCALL 0x48BD           ;M 
1A9D  c004      PUSH dir 0x04          ;M 
1A9F  c005      PUSH dir 0x05          ;M 
1AA1  c006      PUSH dir 0x06          ;M 
1AA3  c007      PUSH dir 0x07          ;M 
1AA5  90056a    MOV DPTR,# #0x056A     ;M dptr win: RAM/table (0x056A)
1AA8  71f2      ACALL 0x1BF2           ;M 
1AAA  7810      MOV R0,# #0x10         ;M 
1AAC  12085a    LCALL 0x085A           ;M 
1AAF  d003      POP dir 0x03           ;M 
1AB1  d002      POP dir 0x02           ;M 
1AB3  d001      POP dir 0x01           ;M 
1AB5  d000      POP dir 0x00           ;M 
1AB7  1248bd    LCALL 0x48BD           ;M 
1ABA  c004      PUSH dir 0x04          ;M 
1ABC  c005      PUSH dir 0x05          ;M 
1ABE  c006      PUSH dir 0x06          ;M 
1AC0  c007      PUSH dir 0x07          ;M 
1AC2  a3        INC DPTR               ;M 
1AC3  71f2      ACALL 0x1BF2           ;M 
1AC5  7818      MOV R0,# #0x18         ;M 
1AC7  12085a    LCALL 0x085A           ;M 
1ACA  d003      POP dir 0x03           ;M 
1ACC  d002      POP dir 0x02           ;M 
1ACE  d001      POP dir 0x01           ;M 
1AD0  d000      POP dir 0x00           ;M 
1AD2  1248bd    LCALL 0x48BD           ;M 
1AD5  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
1AD8  b190      ACALL 0x1D90           ;M 
1ADA  90a08b    MOV DPTR,# #0xA08B     ;M dptr win: win-Ax (0xA08B)
1ADD  12086d    LCALL 0x086D           ;M 
1AE0  90056d    MOV DPTR,# #0x056D     ;M dptr win: RAM/table (0x056D)
1AE3  71f2      ACALL 0x1BF2           ;M 
1AE5  f16e      ACALL 0x1F6E           ;M 
1AE7  90056c    MOV DPTR,# #0x056C     ;M dptr win: RAM/table (0x056C)
1AEA  71f2      ACALL 0x1BF2           ;M 
1AEC  1248bd    LCALL 0x48BD           ;M 
1AEF  c004      PUSH dir 0x04          ;M 
1AF1  c005      PUSH dir 0x05          ;M 
1AF3  c006      PUSH dir 0x06          ;M 
1AF5  c007      PUSH dir 0x07          ;M 
1AF7  90056e    MOV DPTR,# #0x056E     ;M dptr win: RAM/table (0x056E)
1AFA  71f2      ACALL 0x1BF2           ;M 
1AFC  7810      MOV R0,# #0x10         ;M 
1AFE  12085a    LCALL 0x085A           ;M 
1B01  d003      POP dir 0x03           ;M 
1B03  d002      POP dir 0x02           ;M 
1B05  d001      POP dir 0x01           ;M 
1B07  d000      POP dir 0x00           ;M 
1B09  1248bd    LCALL 0x48BD           ;M 
1B0C  c004      PUSH dir 0x04          ;M 
1B0E  c005      PUSH dir 0x05          ;M 
1B10  c006      PUSH dir 0x06          ;M 
1B12  c007      PUSH dir 0x07          ;M 
1B14  a3        INC DPTR               ;M 
1B15  71f2      ACALL 0x1BF2           ;M 
1B17  7818      MOV R0,# #0x18         ;M 
1B19  12085a    LCALL 0x085A           ;M 
1B1C  d003      POP dir 0x03           ;M 
1B1E  d002      POP dir 0x02           ;M 
1B20  d001      POP dir 0x01           ;M 
1B22  d000      POP dir 0x00           ;M 
1B24  1248bd    LCALL 0x48BD           ;M 
1B27  f189      ACALL 0x1F89           ;M 
1B29  f195      ACALL 0x1F95           ;M 
1B2B  c000      PUSH dir 0x00          ;M 
1B2D  c001      PUSH dir 0x01          ;M 
1B2F  c002      PUSH dir 0x02          ;M 
1B31  c003      PUSH dir 0x03          ;M 
1B33  909f94    MOV DPTR,# #0x9F94     ;M dptr win: win-9x (0x9F94)
1B36  e0        MOVX A,@DPTR           ;M 
1B37  c3        CLR C                  ;M 
1B38  13        RRC A                  ;M 
1B39  547f      ANL A,# #0x7F          ;M 
1B3B  ff        MOV R7,A               ;M 
1B3C  e4        CLR A                  ;M 
1B3D  fc        MOV R4,A               ;M 
1B3E  fd        MOV R5,A               ;M 
1B3F  fe        MOV R6,A               ;M 
1B40  12bd8b    LCALL 0xBD8B           ;M 
1B43  d003      POP dir 0x03           ;M 
1B45  d002      POP dir 0x02           ;M 
1B47  d001      POP dir 0x01           ;M 
1B49  d000      POP dir 0x00           ;M 
1B4B  124846    LCALL 0x4846           ;M 
1B4E  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
1B51  12086d    LCALL 0x086D           ;M 
1B54  f160      ACALL 0x1F60           ;M 
1B56  f195      ACALL 0x1F95           ;M 
1B58  c3        CLR C                  ;M 
1B59  1248ca    LCALL 0x48CA           ;M 
1B5C  5004      JNC 0x1B62             ;M 
1B5E  71fb      ACALL 0x1BFB           ;M 
1B60  f17c      ACALL 0x1F7C           ;M 
1B62  71fb      ACALL 0x1BFB           ;M 
1B64  7818      MOV R0,# #0x18         ;M 
1B66  120847    LCALL 0x0847           ;M 
1B69  900567    MOV DPTR,# #0x0567     ;M dptr win: RAM/table (0x0567)
1B6C  71f9      ACALL 0x1BF9           ;M 
1B6E  7810      MOV R0,# #0x10         ;M 
1B70  120847    LCALL 0x0847           ;M 
1B73  900566    MOV DPTR,# #0x0566     ;M dptr win: RAM/table (0x0566)
1B76  71f9      ACALL 0x1BF9           ;M 
1B78  7808      MOV R0,# #0x08         ;M 
1B7A  120847    LCALL 0x0847           ;M 
1B7D  900565    MOV DPTR,# #0x0565     ;M dptr win: RAM/table (0x0565)
1B80  71f9      ACALL 0x1BF9           ;M 
1B82  900564    MOV DPTR,# #0x0564     ;M dptr win: RAM/table (0x0564)
1B85  ef        MOV A,R7               ;M 
1B86  f0        MOVX @DPTR,A           ;M 
1B87  b193      ACALL 0x1D93           ;M 
1B89  7818      MOV R0,# #0x18         ;M 
1B8B  120847    LCALL 0x0847           ;M 
1B8E  900563    MOV DPTR,# #0x0563     ;M dptr win: RAM/table (0x0563)
1B91  ef        MOV A,R7               ;M 
1B92  f0        MOVX @DPTR,A           ;M 
1B93  b193      ACALL 0x1D93           ;M 
1B95  7810      MOV R0,# #0x10         ;M 
1B97  120847    LCALL 0x0847           ;M 
1B9A  900562    MOV DPTR,# #0x0562     ;M dptr win: RAM/table (0x0562)
1B9D  ef        MOV A,R7               ;M 
1B9E  f0        MOVX @DPTR,A           ;M 
1B9F  b193      ACALL 0x1D93           ;M 
1BA1  7808      MOV R0,# #0x08         ;M 
1BA3  120847    LCALL 0x0847           ;M 
1BA6  900561    MOV DPTR,# #0x0561     ;M dptr win: RAM/table (0x0561)
1BA9  ef        MOV A,R7               ;M 
1BAA  f0        MOVX @DPTR,A           ;M 
1BAB  b193      ACALL 0x1D93           ;M 
1BAD  900560    MOV DPTR,# #0x0560     ;M dptr win: RAM/table (0x0560)
1BB0  ef        MOV A,R7               ;M 
1BB1  f0        MOVX @DPTR,A           ;M 
1BB2  900550    MOV DPTR,# #0x0550     ;M dptr win: RAM/table (0x0550)
1BB5  e0        MOVX A,@DPTR           ;M 
1BB6  4408      ORL A,# #0x08          ;M 
1BB8  f0        MOVX @DPTR,A           ;M 
1BB9  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
1BBC  e0        MOVX A,@DPTR           ;M 
1BBD  54bf      ANL A,# #0xBF          ;M 
1BBF  fd        MOV R5,A               ;M 
1BC0  7b59      MOV R3,# #0x59         ;M 
1BC2  7f40      MOV R7,# #0x40         ;M 
1BC4  11a7      ACALL 0x18A7           ;M 
1BC6  7f08      MOV R7,# #0x08         ;M 
1BC8  128e33    LCALL 0x8E33           ;M 
1BCB  909f98    MOV DPTR,# #0x9F98     ;M dptr win: win-9x (0x9F98)
1BCE  e0        MOVX A,@DPTR           ;M 
1BCF  54c1      ANL A,# #0xC1          ;M 
1BD1  4428      ORL A,# #0x28          ;M 
1BD3  f0        MOVX @DPTR,A           ;M 
1BD4  4401      ORL A,# #0x01          ;M 
1BD6  f0        MOVX @DPTR,A           ;M 
1BD7  22        RET                    ;M 

sub_1BD8:  ; M func, size~33
1BD8  f0        MOVX @DPTR,A           ;M 
1BD9  900561    MOV DPTR,# #0x0561     ;M dptr win: RAM/table (0x0561)
1BDC  e0        MOVX A,@DPTR           ;M 
1BDD  ff        MOV R7,A               ;M 
1BDE  e4        CLR A                  ;M 
1BDF  fc        MOV R4,A               ;M 
1BE0  fd        MOV R5,A               ;M 
1BE1  fe        MOV R6,A               ;M 
1BE2  7808      MOV R0,# #0x08         ;M 
1BE4  12085a    LCALL 0x085A           ;M 
1BE7  a804      MOV R0,dir 0x04        ;M 
1BE9  a905      MOV R1,dir 0x05        ;M 
1BEB  aa06      MOV R2,dir 0x06        ;M 
1BED  ab07      MOV R3,dir 0x07        ;M 
1BEF  900560    MOV DPTR,# #0x0560     ;M dptr win: RAM/table (0x0560)
1BF2  e0        MOVX A,@DPTR           ;M 
1BF3  ff        MOV R7,A               ;M 
1BF4  e4        CLR A                  ;M 
1BF5  fc        MOV R4,A               ;M 
1BF6  fd        MOV R5,A               ;M 
1BF7  fe        MOV R6,A               ;M 
1BF8  22        RET                    ;M 

sub_1BF9:  ; M func, size~8
1BF9  ef        MOV A,R7               ;M 
1BFA  f0        MOVX @DPTR,A           ;M 
1BFB  90a087    MOV DPTR,# #0xA087     ;M dptr win: win-Ax (0xA087)
1BFE  0248db    LJMP 0x48DB            ;M 

sub_1C01:  ; M func, size~9
1C01  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
1C04  e0        MOVX A,@DPTR           ;M 
1C05  20e002    JB ACC.0, 0x1C0A       ;M 
1C08  a18f      AJMP 0x1D8F            ;M 

sub_1C0A:  ; M func, size~125
1C0A  909f99    MOV DPTR,# #0x9F99     ;M dptr win: win-9x (0x9F99)
1C0D  e0        MOVX A,@DPTR           ;M 
1C0E  04        INC A                  ;M 
1C0F  127b38    LCALL 0x7B38           ;M 
1C12  04        INC A                  ;M 
1C13  ff        MOV R7,A               ;M 
1C14  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
1C17  f0        MOVX @DPTR,A           ;M 
1C18  909f18    MOV DPTR,# #0x9F18     ;M dptr win: win-9x (0x9F18)
1C1B  e0        MOVX A,@DPTR           ;M 
1C1C  b50705    CJNE A,dir 0x07, 0x1C24 ;M 
1C1F  e4        CLR A                  ;M 
1C20  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
1C23  f0        MOVX @DPTR,A           ;M 
1C24  909f97    MOV DPTR,# #0x9F97     ;M dptr win: win-9x (0x9F97)
1C27  e0        MOVX A,@DPTR           ;M 
1C28  ff        MOV R7,A               ;M 
1C29  6016      JZ 0x1C41              ;M 
1C2B  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
1C2E  f1bc      ACALL 0x1FBC           ;M 
1C30  e0        MOVX A,@DPTR           ;M 
1C31  c3        CLR C                  ;M 
1C32  9f        SUBB A,R7              ;M 
1C33  90a17a    MOV DPTR,# #0xA17A     ;M dptr win: win-Ax (0xA17A)
1C36  f1f2      ACALL 0x1FF2           ;M 
1C38  fb        MOV R3,A               ;M 
1C39  fd        MOV R5,A               ;M 
1C3A  7f50      MOV R7,# #0x50         ;M 
1C3C  7e01      MOV R6,# #0x01         ;M 
1C3E  1280ad    LCALL 0x80AD           ;M 
1C41  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
1C44  e0        MOVX A,@DPTR           ;M 
1C45  ff        MOV R7,A               ;M 
1C46  f1ce      ACALL 0x1FCE           ;M 
1C48  5407      ANL A,# #0x07          ;M 
1C4A  fe        MOV R6,A               ;M 
1C4B  6402      XRL A,# #0x02          ;M 
1C4D  6003      JZ 0x1C52              ;M 
1C4F  ee        MOV A,R6               ;M 
1C50  7011      JNZ 0x1C63             ;M 
1C52  75f01b    MOV dir,# B, #0x1B     ;M 
1C55  ef        MOV A,R7               ;M 
1C56  f1c0      ACALL 0x1FC0           ;M 
1C58  e0        MOVX A,@DPTR           ;M 
1C59  24fc      ADD A,# #0xFC          ;M 
1C5B  ff        MOV R7,A               ;M 
1C5C  12bcd2    LCALL 0xBCD2           ;M 
1C5F  ef        MOV A,R7               ;M 
1C60  1280a5    LCALL 0x80A5           ;M 
1C63  f1c6      ACALL 0x1FC6           ;M 
1C65  5407      ANL A,# #0x07          ;M 
1C67  ff        MOV R7,A               ;M 
1C68  14        DEC A                  ;M 
1C69  600f      JZ 0x1C7A              ;M 
1C6B  14        DEC A                  ;M 
1C6C  6007      JZ 0x1C75              ;M 
1C6E  14        DEC A                  ;M 
1C6F  6009      JZ 0x1C7A              ;M 
1C71  2403      ADD A,# #0x03          ;M 
1C73  700b      JNZ 0x1C80             ;M 
1C75  12b79a    LCALL 0xB79A           ;M 
1C78  8003      SJMP 0x1C7D            ;M 
1C7A  127f8a    LCALL 0x7F8A           ;M 
1C7D  1278eb    LCALL 0x78EB           ;M 
1C80  12bcfd    LCALL 0xBCFD           ;M 
1C83  4002      JC 0x1C87              ;M 
1C85  a18f      AJMP 0x1D8F            ;M 

sub_1C87:  ; M func, size~266
1C87  71d9      ACALL 0x1BD9           ;M 
1C89  1248bd    LCALL 0x48BD           ;M 
1C8C  c004      PUSH dir 0x04          ;M 
1C8E  c005      PUSH dir 0x05          ;M 
1C90  c006      PUSH dir 0x06          ;M 
1C92  c007      PUSH dir 0x07          ;M 
1C94  900562    MOV DPTR,# #0x0562     ;M dptr win: RAM/table (0x0562)
1C97  71f2      ACALL 0x1BF2           ;M 
1C99  7810      MOV R0,# #0x10         ;M 
1C9B  12085a    LCALL 0x085A           ;M 
1C9E  d003      POP dir 0x03           ;M 
1CA0  d002      POP dir 0x02           ;M 
1CA2  d001      POP dir 0x01           ;M 
1CA4  d000      POP dir 0x00           ;M 
1CA6  1248bd    LCALL 0x48BD           ;M 
1CA9  c004      PUSH dir 0x04          ;M 
1CAB  c005      PUSH dir 0x05          ;M 
1CAD  c006      PUSH dir 0x06          ;M 
1CAF  c007      PUSH dir 0x07          ;M 
1CB1  a3        INC DPTR               ;M 
1CB2  71f2      ACALL 0x1BF2           ;M 
1CB4  7818      MOV R0,# #0x18         ;M 
1CB6  12085a    LCALL 0x085A           ;M 
1CB9  d003      POP dir 0x03           ;M 
1CBB  d002      POP dir 0x02           ;M 
1CBD  d001      POP dir 0x01           ;M 
1CBF  d000      POP dir 0x00           ;M 
1CC1  1248bd    LCALL 0x48BD           ;M 
1CC4  90a094    MOV DPTR,# #0xA094     ;M dptr win: win-Ax (0xA094)
1CC7  12086d    LCALL 0x086D           ;M 
1CCA  900565    MOV DPTR,# #0x0565     ;M dptr win: RAM/table (0x0565)
1CCD  71f2      ACALL 0x1BF2           ;M 
1CCF  f16e      ACALL 0x1F6E           ;M 
1CD1  900564    MOV DPTR,# #0x0564     ;M dptr win: RAM/table (0x0564)
1CD4  71f2      ACALL 0x1BF2           ;M 
1CD6  1248bd    LCALL 0x48BD           ;M 
1CD9  c004      PUSH dir 0x04          ;M 
1CDB  c005      PUSH dir 0x05          ;M 
1CDD  c006      PUSH dir 0x06          ;M 
1CDF  c007      PUSH dir 0x07          ;M 
1CE1  900566    MOV DPTR,# #0x0566     ;M dptr win: RAM/table (0x0566)
1CE4  71f2      ACALL 0x1BF2           ;M 
1CE6  7810      MOV R0,# #0x10         ;M 
1CE8  12085a    LCALL 0x085A           ;M 
1CEB  d003      POP dir 0x03           ;M 
1CED  d002      POP dir 0x02           ;M 
1CEF  d001      POP dir 0x01           ;M 
1CF1  d000      POP dir 0x00           ;M 
1CF3  1248bd    LCALL 0x48BD           ;M 
1CF6  c004      PUSH dir 0x04          ;M 
1CF8  c005      PUSH dir 0x05          ;M 
1CFA  c006      PUSH dir 0x06          ;M 
1CFC  c007      PUSH dir 0x07          ;M 
1CFE  a3        INC DPTR               ;M 
1CFF  71f2      ACALL 0x1BF2           ;M 
1D01  7818      MOV R0,# #0x18         ;M 
1D03  12085a    LCALL 0x085A           ;M 
1D06  d003      POP dir 0x03           ;M 
1D08  d002      POP dir 0x02           ;M 
1D0A  d001      POP dir 0x01           ;M 
1D0C  d000      POP dir 0x00           ;M 
1D0E  1248bd    LCALL 0x48BD           ;M 
1D11  90a098    MOV DPTR,# #0xA098     ;M dptr win: win-Ax (0xA098)
1D14  12086d    LCALL 0x086D           ;M 
1D17  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
1D1A  f1bc      ACALL 0x1FBC           ;M 
1D1C  71f2      ACALL 0x1BF2           ;M 
1D1E  12bd8b    LCALL 0xBD8B           ;M 
1D21  90a094    MOV DPTR,# #0xA094     ;M dptr win: win-Ax (0xA094)
1D24  1248e7    LCALL 0x48E7           ;M 
1D27  124846    LCALL 0x4846           ;M 
1D2A  90a09c    MOV DPTR,# #0xA09C     ;M dptr win: win-Ax (0xA09C)
1D2D  12086d    LCALL 0x086D           ;M 
1D30  90a094    MOV DPTR,# #0xA094     ;M dptr win: win-Ax (0xA094)
1D33  1248db    LCALL 0x48DB           ;M 
1D36  90a09c    MOV DPTR,# #0xA09C     ;M dptr win: win-Ax (0xA09C)
1D39  12bddd    LCALL 0xBDDD           ;M 
1D3C  5011      JNC 0x1D4F             ;M 
1D3E  f168      ACALL 0x1F68           ;M 
1D40  129f67    LCALL 0x9F67           ;M 
1D43  e4        CLR A                  ;M 
1D44  3d        ADDC A,R5              ;M 
1D45  fd        MOV R5,A               ;M 
1D46  e4        CLR A                  ;M 
1D47  3c        ADDC A,R4              ;M 
1D48  fc        MOV R4,A               ;M 
1D49  90a098    MOV DPTR,# #0xA098     ;M dptr win: win-Ax (0xA098)
1D4C  12086d    LCALL 0x086D           ;M 
1D4F  f168      ACALL 0x1F68           ;M 
1D51  12bd4c    LCALL 0xBD4C           ;M 
1D54  f166      ACALL 0x1F66           ;M 
1D56  12bd55    LCALL 0xBD55           ;M 
1D59  f166      ACALL 0x1F66           ;M 
1D5B  12bd5e    LCALL 0xBD5E           ;M 
1D5E  f166      ACALL 0x1F66           ;M 
1D60  900588    MOV DPTR,# #0x0588     ;M dptr win: RAM/table (0x0588)
1D63  ef        MOV A,R7               ;M 
1D64  f0        MOVX @DPTR,A           ;M 
1D65  90a09c    MOV DPTR,# #0xA09C     ;M dptr win: win-Ax (0xA09C)
1D68  1248db    LCALL 0x48DB           ;M 
1D6B  12bd67    LCALL 0xBD67           ;M 
1D6E  ef        MOV A,R7               ;M 
1D6F  f0        MOVX @DPTR,A           ;M 
1D70  90a09c    MOV DPTR,# #0xA09C     ;M dptr win: win-Ax (0xA09C)
1D73  1248db    LCALL 0x48DB           ;M 
1D76  12bd70    LCALL 0xBD70           ;M 
1D79  ef        MOV A,R7               ;M 
1D7A  f0        MOVX @DPTR,A           ;M 
1D7B  90a09c    MOV DPTR,# #0xA09C     ;M dptr win: win-Ax (0xA09C)
1D7E  1248db    LCALL 0x48DB           ;M 
1D81  12bd79    LCALL 0xBD79           ;M 
1D84  ef        MOV A,R7               ;M 
1D85  f0        MOVX @DPTR,A           ;M 
1D86  90a09c    MOV DPTR,# #0xA09C     ;M dptr win: win-Ax (0xA09C)
1D89  1248db    LCALL 0x48DB           ;M 
1D8C  12b751    LCALL 0xB751           ;M 
1D8F  22        RET                    ;M 
1D90  .db 12

sub_1D91:  ; M func, size~8
1D91  08        INC R0                 ;M 
1D92  6d        XRL A,R5               ;M 
1D93  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
1D96  0248db    LJMP 0x48DB            ;M 

sub_1D99:  ; M func, size~38
1D99  909f1b    MOV DPTR,# #0x9F1B     ;M dptr win: win-9x (0x9F1B)
1D9C  1248f3    LCALL 0x48F3           ;M 
1D9F  e0        MOVX A,@DPTR           ;M 
1DA0  fe        MOV R6,A               ;M 
1DA1  5403      ANL A,# #0x03          ;M 
1DA3  ff        MOV R7,A               ;M 
1DA4  ee        MOV A,R6               ;M 
1DA5  13        RRC A                  ;M 
1DA6  13        RRC A                  ;M 
1DA7  5407      ANL A,# #0x07          ;M 
1DA9  fd        MOV R5,A               ;M 
1DAA  d3        SETB C                 ;M 
1DAB  10af01    JBC IE.7, 0x1DAF       ;M 
1DAE  c3        CLR C                  ;M 
1DAF  c0d0      PUSH dir PSW           ;M 
1DB1  90a1d6    MOV DPTR,# #0xA1D6     ;M dptr win: win-Ax (0xA1D6)
1DB4  ed        MOV A,R5               ;M 
1DB5  f0        MOVX @DPTR,A           ;M 
1DB6  e4        CLR A                  ;M 
1DB7  a3        INC DPTR               ;M 
1DB8  f0        MOVX @DPTR,A           ;M 
1DB9  ef        MOV A,R7               ;M 
1DBA  14        DEC A                  ;M 
1DBB  6002      JZ 0x1DBF              ;M 
1DBD  c18e      AJMP 0x1E8E            ;M 

sub_1DBF:  ; M func, size~51
1DBF  900603    MOV DPTR,# #0x0603     ;M dptr win: RAM/table (0x0603)
1DC2  e0        MOVX A,@DPTR           ;M 
1DC3  54fb      ANL A,# #0xFB          ;M 
1DC5  f0        MOVX @DPTR,A           ;M 
1DC6  90a1d6    MOV DPTR,# #0xA1D6     ;M dptr win: win-Ax (0xA1D6)
1DC9  e0        MOVX A,@DPTR           ;M 
1DCA  fb        MOV R3,A               ;M 
1DCB  c4        SWAP A                 ;M 
1DCC  33        RLC A                  ;M 
1DCD  54e0      ANL A,# #0xE0          ;M 
1DCF  fe        MOV R6,A               ;M 
1DD0  900442    MOV DPTR,# #0x0442     ;M dptr win: RAM/table (0x0442)
1DD3  e0        MOVX A,@DPTR           ;M 
1DD4  549f      ANL A,# #0x9F          ;M 
1DD6  4e        ORL A,R6               ;M 
1DD7  fe        MOV R6,A               ;M 
1DD8  f0        MOVX @DPTR,A           ;M 
1DD9  e4        CLR A                  ;M 
1DDA  fd        MOV R5,A               ;M 
1DDB  12b763    LCALL 0xB763           ;M 
1DDE  90a1d7    MOV DPTR,# #0xA1D7     ;M dptr win: win-Ax (0xA1D7)
1DE1  ef        MOV A,R7               ;M 
1DE2  f0        MOVX @DPTR,A           ;M 
1DE3  900483    MOV DPTR,# #0x0483     ;M dptr win: RAM/table (0x0483)
1DE6  f0        MOVX @DPTR,A           ;M 
1DE7  90a0f2    MOV DPTR,# #0xA0F2     ;M dptr win: win-Ax (0xA0F2)
1DEA  120879    LCALL 0x0879           ;M 
1DED  00        NOP                    ;M 
1DEE  00        NOP                    ;M 
1DEF  00        NOP                    ;M 
1DF0  0190      AJMP 0x1890            ;M 

sub_1DF2:  ; M func, size~10
1DF2  a0f6      ORL C,/bit B.6         ;M 
1DF4  120879    LCALL 0x0879           ;M 
1DF7  00        NOP                    ;M 
1DF8  00        NOP                    ;M 
1DF9  00        NOP                    ;M 
1DFA  01d1      AJMP 0x18D1            ;M 

sub_1DFC:  ; M func, size~9
1DFC  f4        CPL A                  ;M 
1DFD  120879    LCALL 0x0879           ;M 
1E00  00        NOP                    ;M 
1E01  00        NOP                    ;M 
1E02  00        NOP                    ;M 
1E03  0190      AJMP 0x1890            ;M 

sub_1E05:  ; M func, size~10
1E05  a0f6      ORL C,/bit B.6         ;M 
1E07  120879    LCALL 0x0879           ;M 
1E0A  00        NOP                    ;M 
1E0B  00        NOP                    ;M 
1E0C  00        NOP                    ;M 
1E0D  017f      AJMP 0x187F            ;M 

sub_1E0F:  ; M func, size~145
1E0F  00        NOP                    ;M 
1E10  7e09      MOV R6,# #0x09         ;M 
1E12  d1f8      ACALL 0x1EF8           ;M 
1E14  120879    LCALL 0x0879           ;M 
1E17  00        NOP                    ;M 
1E18  00        NOP                    ;M 
1E19  00        NOP                    ;M 
1E1A  1090a1    JBC P1.0, 0x1DBE       ;M 
1E1D  d6        XCHD A,@R0             ;M 
1E1E  71f2      ACALL 0x1BF2           ;M 
1E20  ef        MOV A,R7               ;M 
1E21  5403      ANL A,# #0x03          ;M 
1E23  ff        MOV R7,A               ;M 
1E24  e4        CLR A                  ;M 
1E25  7801      MOV R0,# #0x01         ;M 
1E27  120847    LCALL 0x0847           ;M 
1E2A  7804      MOV R0,# #0x04         ;M 
1E2C  f19b      ACALL 0x1F9B           ;M 
1E2E  7f00      MOV R7,# #0x00         ;M 
1E30  7e0a      MOV R6,# #0x0A         ;M 
1E32  d1f8      ACALL 0x1EF8           ;M 
1E34  120879    LCALL 0x0879           ;M 
1E37  00        NOP                    ;M 
1E38  00        NOP                    ;M 
1E39  0c        INC R4                 ;M 
1E3A  00        NOP                    ;M 
1E3B  90a1d6    MOV DPTR,# #0xA1D6     ;M dptr win: win-Ax (0xA1D6)
1E3E  71f2      ACALL 0x1BF2           ;M 
1E40  ef        MOV A,R7               ;M 
1E41  5403      ANL A,# #0x03          ;M 
1E43  ff        MOV R7,A               ;M 
1E44  e4        CLR A                  ;M 
1E45  780a      MOV R0,# #0x0A         ;M 
1E47  f19b      ACALL 0x1F9B           ;M 
1E49  7f00      MOV R7,# #0x00         ;M 
1E4B  7e0d      MOV R6,# #0x0D         ;M 
1E4D  d1f8      ACALL 0x1EF8           ;M 
1E4F  120879    LCALL 0x0879           ;M 
1E52  0c        INC R4                 ;M 
1E53  00        NOP                    ;M 
1E54  00        NOP                    ;M 
1E55  00        NOP                    ;M 
1E56  90a1d7    MOV DPTR,# #0xA1D7     ;M dptr win: win-Ax (0xA1D7)
1E59  71f2      ACALL 0x1BF2           ;M 
1E5B  ef        MOV A,R7               ;M 
1E5C  5403      ANL A,# #0x03          ;M 
1E5E  ff        MOV R7,A               ;M 
1E5F  e4        CLR A                  ;M 
1E60  781a      MOV R0,# #0x1A         ;M 
1E62  f19b      ACALL 0x1F9B           ;M 
1E64  7f18      MOV R7,# #0x18         ;M 
1E66  d1f6      ACALL 0x1EF6           ;M 
1E68  120879    LCALL 0x0879           ;M 
1E6B  00        NOP                    ;M 
1E6C  00        NOP                    ;M 
1E6D  0c        INC R4                 ;M 
1E6E  00        NOP                    ;M 
1E6F  90a0f6    MOV DPTR,# #0xA0F6     ;M dptr win: win-Ax (0xA0F6)
1E72  120879    LCALL 0x0879           ;M 
1E75  00        NOP                    ;M 
1E76  00        NOP                    ;M 
1E77  00        NOP                    ;M 
1E78  00        NOP                    ;M 
1E79  f1a4      ACALL 0x1FA4           ;M 
1E7B  120879    LCALL 0x0879           ;M 
1E7E  00        NOP                    ;M 
1E7F  00        NOP                    ;M 
1E80  0c        INC R4                 ;M 
1E81  00        NOP                    ;M 
1E82  90a0d1    MOV DPTR,# #0xA0D1     ;M dptr win: win-Ax (0xA0D1)
1E85  120879    LCALL 0x0879           ;M 
1E88  00        NOP                    ;M 
1E89  00        NOP                    ;M 
1E8A  04        INC A                  ;M 
1E8B  00        NOP                    ;M 
1E8C  8058      SJMP 0x1EE6            ;M 
1E8E  900603    MOV DPTR,# #0x0603     ;M dptr win: RAM/table (0x0603)
1E91  e0        MOVX A,@DPTR           ;M 
1E92  4404      ORL A,# #0x04          ;M 
1E94  f0        MOVX @DPTR,A           ;M 
1E95  90a0f2    MOV DPTR,# #0xA0F2     ;M dptr win: win-Ax (0xA0F2)
1E98  120879    LCALL 0x0879           ;M 
1E9B  00        NOP                    ;M 
1E9C  00        NOP                    ;M 
1E9D  00        NOP                    ;M 
1E9E  0190      AJMP 0x1890            ;M 

sub_1EA0:  ; M func, size~19
1EA0  a0f6      ORL C,/bit B.6         ;M 
1EA2  120879    LCALL 0x0879           ;M 
1EA5  00        NOP                    ;M 
1EA6  00        NOP                    ;M 
1EA7  00        NOP                    ;M 
1EA8  00        NOP                    ;M 
1EA9  d1f4      ACALL 0x1EF4           ;M 
1EAB  120879    LCALL 0x0879           ;M 
1EAE  00        NOP                    ;M 
1EAF  00        NOP                    ;M 
1EB0  00        NOP                    ;M 
1EB1  0190      AJMP 0x1890            ;M 

sub_1EB3:  ; M func, size~65
1EB3  a0f6      ORL C,/bit B.6         ;M 
1EB5  120879    LCALL 0x0879           ;M 
1EB8  00        NOP                    ;M 
1EB9  00        NOP                    ;M 
1EBA  00        NOP                    ;M 
1EBB  00        NOP                    ;M 
1EBC  7f00      MOV R7,# #0x00         ;M 
1EBE  7e09      MOV R6,# #0x09         ;M 
1EC0  d1f8      ACALL 0x1EF8           ;M 
1EC2  120879    LCALL 0x0879           ;M 
1EC5  00        NOP                    ;M 
1EC6  00        NOP                    ;M 
1EC7  0c        INC R4                 ;M 
1EC8  00        NOP                    ;M 
1EC9  90a0f6    MOV DPTR,# #0xA0F6     ;M dptr win: win-Ax (0xA0F6)
1ECC  120879    LCALL 0x0879           ;M 
1ECF  00        NOP                    ;M 
1ED0  00        NOP                    ;M 
1ED1  0c        INC R4                 ;M 
1ED2  00        NOP                    ;M 
1ED3  f1a4      ACALL 0x1FA4           ;M 
1ED5  120879    LCALL 0x0879           ;M 
1ED8  00        NOP                    ;M 
1ED9  00        NOP                    ;M 
1EDA  0c        INC R4                 ;M 
1EDB  00        NOP                    ;M 
1EDC  90a0d1    MOV DPTR,# #0xA0D1     ;M dptr win: win-Ax (0xA0D1)
1EDF  120879    LCALL 0x0879           ;M 
1EE2  00        NOP                    ;M 
1EE3  00        NOP                    ;M 
1EE4  0c        INC R4                 ;M 
1EE5  00        NOP                    ;M 
1EE6  7d18      MOV R5,# #0x18         ;M 
1EE8  7c00      MOV R4,# #0x00         ;M 
1EEA  e4        CLR A                  ;M 
1EEB  ff        MOV R7,A               ;M 
1EEC  127fde    LCALL 0x7FDE           ;M 
1EEF  d0d0      POP dir PSW            ;M 
1EF1  92af      MOV bit,C IE.7         ;M 
1EF3  22        RET                    ;M 

sub_1EF4:  ; M func, size~10
1EF4  7f00      MOV R7,# #0x00         ;M 
1EF6  7e08      MOV R6,# #0x08         ;M 
1EF8  d1fe      ACALL 0x1EFE           ;M 
1EFA  90a0f2    MOV DPTR,# #0xA0F2     ;M dptr win: win-Ax (0xA0F2)
1EFD  22        RET                    ;M 

sub_1EFE:  ; M func, size~96
1EFE  d3        SETB C                 ;M 
1EFF  10af01    JBC IE.7, 0x1F03       ;M 
1F02  c3        CLR C                  ;M 
1F03  c0d0      PUSH dir PSW           ;M 
1F05  90a0f0    MOV DPTR,# #0xA0F0     ;M dptr win: win-Ax (0xA0F0)
1F08  ee        MOV A,R6               ;M 
1F09  f0        MOVX @DPTR,A           ;M 
1F0A  a3        INC DPTR               ;M 
1F0B  ef        MOV A,R7               ;M 
1F0C  f0        MOVX @DPTR,A           ;M 
1F0D  1237ad    LCALL 0x37AD           ;M 
1F10  90a0fa    MOV DPTR,# #0xA0FA     ;M dptr win: win-Ax (0xA0FA)
1F13  12086d    LCALL 0x086D           ;M 
1F16  90a0f2    MOV DPTR,# #0xA0F2     ;M dptr win: win-Ax (0xA0F2)
1F19  1248db    LCALL 0x48DB           ;M 
1F1C  12083a    LCALL 0x083A           ;M 
1F1F  90a0fa    MOV DPTR,# #0xA0FA     ;M dptr win: win-Ax (0xA0FA)
1F22  f18f      ACALL 0x1F8F           ;M 
1F24  c004      PUSH dir 0x04          ;M 
1F26  c005      PUSH dir 0x05          ;M 
1F28  c006      PUSH dir 0x06          ;M 
1F2A  c007      PUSH dir 0x07          ;M 
1F2C  90a0f2    MOV DPTR,# #0xA0F2     ;M dptr win: win-Ax (0xA0F2)
1F2F  1248db    LCALL 0x48DB           ;M 
1F32  90a0f6    MOV DPTR,# #0xA0F6     ;M dptr win: win-Ax (0xA0F6)
1F35  f18f      ACALL 0x1F8F           ;M 
1F37  d003      POP dir 0x03           ;M 
1F39  d002      POP dir 0x02           ;M 
1F3B  d001      POP dir 0x01           ;M 
1F3D  d000      POP dir 0x00           ;M 
1F3F  1248bd    LCALL 0x48BD           ;M 
1F42  90a0fe    MOV DPTR,# #0xA0FE     ;M dptr win: win-Ax (0xA0FE)
1F45  12086d    LCALL 0x086D           ;M 
1F48  90a0fe    MOV DPTR,# #0xA0FE     ;M dptr win: win-Ax (0xA0FE)
1F4B  12851b    LCALL 0x851B           ;M 
1F4E  90a0f0    MOV DPTR,# #0xA0F0     ;M dptr win: win-Ax (0xA0F0)
1F51  e0        MOVX A,@DPTR           ;M 
1F52  fe        MOV R6,A               ;M 
1F53  a3        INC DPTR               ;M 
1F54  e0        MOVX A,@DPTR           ;M 
1F55  ff        MOV R7,A               ;M 
1F56  1238a4    LCALL 0x38A4           ;M 
1F59  d0d0      POP dir PSW            ;M 
1F5B  92af      MOV bit,C IE.7         ;M 
1F5D  22        RET                    ;M 

sub_1F5E:  ; M func, size~8
1F5E  ef        MOV A,R7               ;M 
1F5F  f0        MOVX @DPTR,A           ;M 
1F60  90a08b    MOV DPTR,# #0xA08B     ;M dptr win: win-Ax (0xA08B)
1F63  0248db    LJMP 0x48DB            ;M 

sub_1F66:  ; M func, size~8
1F66  ef        MOV A,R7               ;M 
1F67  f0        MOVX @DPTR,A           ;M 
1F68  90a098    MOV DPTR,# #0xA098     ;M dptr win: win-Ax (0xA098)
1F6B  0248db    LJMP 0x48DB            ;M 

sub_1F6E:  ; M func, size~14
1F6E  7808      MOV R0,# #0x08         ;M 
1F70  12085a    LCALL 0x085A           ;M 
1F73  a804      MOV R0,dir 0x04        ;M 
1F75  a905      MOV R1,dir 0x05        ;M 
1F77  aa06      MOV R2,dir 0x06        ;M 
1F79  ab07      MOV R3,dir 0x07        ;M 
1F7B  22        RET                    ;M 

sub_1F7C:  ; M func, size~23
1F7C  ef        MOV A,R7               ;M 
1F7D  2401      ADD A,# #0x01          ;M 
1F7F  ff        MOV R7,A               ;M 
1F80  e4        CLR A                  ;M 
1F81  3e        ADDC A,R6              ;M 
1F82  fe        MOV R6,A               ;M 
1F83  e4        CLR A                  ;M 
1F84  3d        ADDC A,R5              ;M 
1F85  fd        MOV R5,A               ;M 
1F86  e4        CLR A                  ;M 
1F87  3c        ADDC A,R4              ;M 
1F88  fc        MOV R4,A               ;M 
1F89  90a087    MOV DPTR,# #0xA087     ;M dptr win: win-Ax (0xA087)
1F8C  02086d    LJMP 0x086D            ;M 
1F8F  .db 12 48 E7 02

sub_1F93:  ; M func, size~9
1F93  48        ORL A,R0               ;M 
1F94  b090      ANL C,/bit P1.0        ;M 
1F96  a083      ORL C,/bit P0.3        ;M 
1F98  0248e7    LJMP 0x48E7            ;M 
1F9B  .db 12

sub_1F9C:  ; M func, size~8
1F9C  08        INC R0                 ;M 
1F9D  5a        ANL A,R2               ;M 
1F9E  90a0f6    MOV DPTR,# #0xA0F6     ;M dptr win: win-Ax (0xA0F6)
1FA1  02086d    LJMP 0x086D            ;M 

sub_1FA4:  ; M func, size~10
1FA4  7f84      MOV R7,# #0x84         ;M 
1FA6  7e08      MOV R6,# #0x08         ;M 
1FA8  d1fe      ACALL 0x1EFE           ;M 
1FAA  90a0cd    MOV DPTR,# #0xA0CD     ;M dptr win: win-Ax (0xA0CD)
1FAD  22        RET                    ;M 

sub_1FAE:  ; M func, size~11
1FAE  909faf    MOV DPTR,# #0x9FAF     ;M dptr win: win-9x (0x9FAF)
1FB1  e0        MOVX A,@DPTR           ;M 
1FB2  ff        MOV R7,A               ;M 
1FB3  909fae    MOV DPTR,# #0x9FAE     ;M dptr win: win-9x (0x9FAE)
1FB6  e0        MOVX A,@DPTR           ;M 
1FB7  4f        ORL A,R7               ;M 
1FB8  22        RET                    ;M 

sub_1FB9:  ; M func, size~13
1FB9  90a0a2    MOV DPTR,# #0xA0A2     ;M dptr win: win-Ax (0xA0A2)
1FBC  e0        MOVX A,@DPTR           ;M 
1FBD  75f01b    MOV dir,# B, #0x1B     ;M 
1FC0  909f1c    MOV DPTR,# #0x9F1C     ;M dptr win: win-9x (0x9F1C)
1FC3  0248f3    LJMP 0x48F3            ;M 

sub_1FC6:  ; M func, size~19
1FC6  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
1FC9  e0        MOVX A,@DPTR           ;M 
1FCA  c3        CLR C                  ;M 
1FCB  13        RRC A                  ;M 
1FCC  5407      ANL A,# #0x07          ;M 
1FCE  75f01b    MOV dir,# B, #0x1B     ;M 
1FD1  909f1d    MOV DPTR,# #0x9F1D     ;M dptr win: win-9x (0x9F1D)
1FD4  1248f3    LCALL 0x48F3           ;M 
1FD7  e0        MOVX A,@DPTR           ;M 
1FD8  22        RET                    ;M 

sub_1FD9:  ; M func, size~9
1FD9  11a2      ACALL 0x18A2           ;M 
1FDB  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
1FDE  7401      MOV A,# #0x01          ;M 
1FE0  f0        MOVX @DPTR,A           ;M 
1FE1  22        RET                    ;M 

sub_1FE2:  ; M func, size~16
1FE2  11a2      ACALL 0x18A2           ;M 
1FE4  12ba01    LCALL 0xBA01           ;M 
1FE7  80f2      SJMP 0x1FDB            ;M 
1FE9  7b1f      MOV R3,# #0x1F         ;M 
1FEB  12ba31    LCALL 0xBA31           ;M 
1FEE  f0        MOVX @DPTR,A           ;M 
1FEF  22        RET                    ;M 
1FF0  .db 81 01

sub_1FF2:  ; M func, size~7
1FF2  f0        MOVX @DPTR,A           ;M 
1FF3  e4        CLR A                  ;M 
1FF4  90a179    MOV DPTR,# #0xA179     ;M dptr win: win-Ax (0xA179)
1FF7  f0        MOVX @DPTR,A           ;M 
1FF8  22        RET                    ;M 

sub_1FF9:  ; M func, size~32
1FF9  124ff6    LCALL 0x4FF6           ;M 
1FFC  909d07    MOV DPTR,# #0x9D07     ;M dptr win: win-9x (0x9D07)
1FFF  ef        MOV A,R7               ;M 
2000  f0        MOVX @DPTR,A           ;M 
2001  1253e7    LCALL 0x53E7           ;M 
2004  900164    MOV DPTR,# #0x0164     ;M dptr win: MAC/reg-low (0x0164)
2007  7401      MOV A,# #0x01          ;M 
2009  f0        MOVX @DPTR,A           ;M 
200A  900423    MOV DPTR,# #0x0423     ;M dptr win: RAM/table (0x0423)
200D  e0        MOVX A,@DPTR           ;M 
200E  4480      ORL A,# #0x80          ;M 
2010  f0        MOVX @DPTR,A           ;M 
2011  0237f8    LJMP 0x37F8            ;M 
2014  .db 75 E8 07 75 A8

sub_2019:  ; M func, size~88
2019  8522e4    MOV dir,dir 0xE4,0x22  ;M 
201C  90a057    MOV DPTR,# #0xA057     ;M dptr win: win-Ax (0xA057)
201F  f0        MOVX @DPTR,A           ;M 
2020  90a057    MOV DPTR,# #0xA057     ;M dptr win: win-Ax (0xA057)
2023  e0        MOVX A,@DPTR           ;M 
2024  6401      XRL A,# #0x01          ;M 
2026  f0        MOVX @DPTR,A           ;M 
2027  241b      ADD A,# #0x1B          ;M 
2029  9001c4    MOV DPTR,# #0x01C4     ;M dptr win: MAC/reg-low (0x01C4)
202C  f0        MOVX @DPTR,A           ;M 
202D  7460      MOV A,# #0x60          ;M 
202F  a3        INC DPTR               ;M 
2030  f0        MOVX @DPTR,A           ;M 
2031  123e7b    LCALL 0x3E7B           ;M 
2034  bf0103    CJNE R7,# #0x01, 0x203A ;M 
2037  1231f7    LCALL 0x31F7           ;M 
203A  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
203D  e0        MOVX A,@DPTR           ;M 
203E  600e      JZ 0x204E              ;M 
2040  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
2043  e0        MOVX A,@DPTR           ;M 
2044  ff        MOV R7,A               ;M 
2045  909e54    MOV DPTR,# #0x9E54     ;M dptr win: win-9x (0x9E54)
2048  e0        MOVX A,@DPTR           ;M 
2049  6f        XRL A,R7               ;M 
204A  6002      JZ 0x204E              ;M 
204C  1163      ACALL 0x2063           ;M 
204E  c2af      CLR bit IE.7           ;M 
2050  12b45a    LCALL 0xB45A           ;M 
2053  bf0103    CJNE R7,# #0x01, 0x2059 ;M 
2056  12ba58    LCALL 0xBA58           ;M 
2059  d2af      SETB bit IE.7          ;M 
205B  1249d9    LCALL 0x49D9           ;M 
205E  1245bd    LCALL 0x45BD           ;M 
2061  80bd      SJMP 0x2020            ;M 
2063  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
2066  e0        MOVX A,@DPTR           ;M 
2067  909e54    MOV DPTR,# #0x9E54     ;M dptr win: win-9x (0x9E54)
206A  30e004    JNB ACC.0, 0x2071      ;M 
206D  e0        MOVX A,@DPTR           ;M 
206E  ff        MOV R7,A               ;M 
206F  c184      AJMP 0x2684            ;M 

sub_2071:  ; M func, size~40
2071  e0        MOVX A,@DPTR           ;M 
2072  ff        MOV R7,A               ;M 
2073  7d01      MOV R5,# #0x01         ;M 
2075  8007      SJMP 0x207E            ;M 
2077  909e54    MOV DPTR,# #0x9E54     ;M dptr win: win-9x (0x9E54)
207A  e0        MOVX A,@DPTR           ;M 
207B  ff        MOV R7,A               ;M 
207C  e4        CLR A                  ;M 
207D  fd        MOV R5,A               ;M 
207E  d3        SETB C                 ;M 
207F  10af01    JBC IE.7, 0x2083       ;M 
2082  c3        CLR C                  ;M 
2083  c0d0      PUSH dir PSW           ;M 
2085  90a1e1    MOV DPTR,# #0xA1E1     ;M dptr win: win-Ax (0xA1E1)
2088  ed        MOV A,R5               ;M 
2089  f0        MOVX @DPTR,A           ;M 
208A  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
208D  e0        MOVX A,@DPTR           ;M 
208E  fe        MOV R6,A               ;M 
208F  c4        SWAP A                 ;M 
2090  13        RRC A                  ;M 
2091  13        RRC A                  ;M 
2092  5403      ANL A,# #0x03          ;M 
2094  30e002    JNB ACC.0, 0x2099      ;M 
2097  21c1      AJMP 0x21C1            ;M 

sub_2099:  ; M func, size~9
2099  ee        MOV A,R6               ;M 
209A  124fd8    LCALL 0x4FD8           ;M 
209D  30e002    JNB ACC.0, 0x20A2      ;M 
20A0  21c1      AJMP 0x21C1            ;M 

sub_20A2:  ; M func, size~14
20A2  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
20A5  e0        MOVX A,@DPTR           ;M 
20A6  fe        MOV R6,A               ;M 
20A7  6f        XRL A,R7               ;M 
20A8  7002      JNZ 0x20AC             ;M 
20AA  21c1      AJMP 0x21C1            ;M 
20AC  .db EF 70 02 21

sub_20B0:  ; M func, size~7
20B0  3d        ADDC A,R5              ;M 
20B1  24fe      ADD A,# #0xFE          ;M 
20B3  7002      JNZ 0x20B7             ;M 
20B5  2177      AJMP 0x2177            ;M 

sub_20B7:  ; M func, size~16
20B7  24fe      ADD A,# #0xFE          ;M 
20B9  604a      JZ 0x2105              ;M 
20BB  24fc      ADD A,# #0xFC          ;M 
20BD  7002      JNZ 0x20C1             ;M 
20BF  21b1      AJMP 0x21B1            ;M 
20C1  .db 24 FC 60 02 21 C1

sub_20C7:  ; M func, size~62
20C7  ee        MOV A,R6               ;M 
20C8  b40e02    CJNE A,# #0x0E, 0x20CD ;M 
20CB  5104      ACALL 0x2204           ;M 
20CD  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
20D0  e0        MOVX A,@DPTR           ;M 
20D1  7004      JNZ 0x20D7             ;M 
20D3  7f01      MOV R7,# #0x01         ;M 
20D5  514e      ACALL 0x224E           ;M 
20D7  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
20DA  e0        MOVX A,@DPTR           ;M 
20DB  b40602    CJNE A,# #0x06, 0x20E0 ;M 
20DE  5124      ACALL 0x2224           ;M 
20E0  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
20E3  e0        MOVX A,@DPTR           ;M 
20E4  b4040f    CJNE A,# #0x04, 0x20F6 ;M 
20E7  90a1e1    MOV DPTR,# #0xA1E1     ;M dptr win: win-Ax (0xA1E1)
20EA  e0        MOVX A,@DPTR           ;M 
20EB  ff        MOV R7,A               ;M 
20EC  6005      JZ 0x20F3              ;M 
20EE  12737b    LCALL 0x737B           ;M 
20F1  8003      SJMP 0x20F6            ;M 
20F3  128c3c    LCALL 0x8C3C           ;M 
20F6  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
20F9  e0        MOVX A,@DPTR           ;M 
20FA  6408      XRL A,# #0x08          ;M 
20FC  6002      JZ 0x2100              ;M 
20FE  21c1      AJMP 0x21C1            ;M 
2100  .db 12 BC 09 21 C1

sub_2105:  ; M func, size~43
2105  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
2108  e0        MOVX A,@DPTR           ;M 
2109  7004      JNZ 0x210F             ;M 
210B  7f01      MOV R7,# #0x01         ;M 
210D  514e      ACALL 0x224E           ;M 
210F  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
2112  e0        MOVX A,@DPTR           ;M 
2113  b40602    CJNE A,# #0x06, 0x2118 ;M 
2116  5124      ACALL 0x2224           ;M 
2118  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
211B  e0        MOVX A,@DPTR           ;M 
211C  b40e07    CJNE A,# #0x0E, 0x2126 ;M 
211F  31c6      ACALL 0x21C6           ;M 
2121  bf0102    CJNE R7,# #0x01, 0x2126 ;M 
2124  5104      ACALL 0x2204           ;M 
2126  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
2129  e0        MOVX A,@DPTR           ;M 
212A  640c      XRL A,# #0x0C          ;M 
212C  6002      JZ 0x2130              ;M 
212E  21c1      AJMP 0x21C1            ;M 

sub_2130:  ; M func, size~10
2130  31c6      ACALL 0x21C6           ;M 
2132  ef        MOV A,R7               ;M 
2133  6401      XRL A,# #0x01          ;M 
2135  6002      JZ 0x2139              ;M 
2137  21c1      AJMP 0x21C1            ;M 
2139  .db 51

sub_213A:  ; M func, size~140
213A  6321c1    XRL dir,# 0x21, #0xC1  ;M 
213D  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
2140  e0        MOVX A,@DPTR           ;M 
2141  b40e07    CJNE A,# #0x0E, 0x214B ;M 
2144  31c6      ACALL 0x21C6           ;M 
2146  bf0102    CJNE R7,# #0x01, 0x214B ;M 
2149  5104      ACALL 0x2204           ;M 
214B  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
214E  e0        MOVX A,@DPTR           ;M 
214F  b40602    CJNE A,# #0x06, 0x2154 ;M 
2152  5124      ACALL 0x2224           ;M 
2154  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
2157  e0        MOVX A,@DPTR           ;M 
2158  b40c07    CJNE A,# #0x0C, 0x2162 ;M 
215B  31c6      ACALL 0x21C6           ;M 
215D  bf0102    CJNE R7,# #0x01, 0x2162 ;M 
2160  5163      ACALL 0x2263           ;M 
2162  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
2165  e0        MOVX A,@DPTR           ;M 
2166  6404      XRL A,# #0x04          ;M 
2168  7057      JNZ 0x21C1             ;M 
216A  12bb24    LCALL 0xBB24           ;M 
216D  ef        MOV A,R7               ;M 
216E  6401      XRL A,# #0x01          ;M 
2170  704f      JNZ 0x21C1             ;M 
2172  12bb79    LCALL 0xBB79           ;M 
2175  804a      SJMP 0x21C1            ;M 
2177  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
217A  e0        MOVX A,@DPTR           ;M 
217B  b40e07    CJNE A,# #0x0E, 0x2185 ;M 
217E  31c6      ACALL 0x21C6           ;M 
2180  bf0102    CJNE R7,# #0x01, 0x2185 ;M 
2183  5104      ACALL 0x2204           ;M 
2185  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
2188  e0        MOVX A,@DPTR           ;M 
2189  b40602    CJNE A,# #0x06, 0x218E ;M 
218C  5124      ACALL 0x2224           ;M 
218E  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
2191  e0        MOVX A,@DPTR           ;M 
2192  b40c07    CJNE A,# #0x0C, 0x219C ;M 
2195  31c6      ACALL 0x21C6           ;M 
2197  bf0102    CJNE R7,# #0x01, 0x219C ;M 
219A  5163      ACALL 0x2263           ;M 
219C  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
219F  e0        MOVX A,@DPTR           ;M 
21A0  7004      JNZ 0x21A6             ;M 
21A2  7f01      MOV R7,# #0x01         ;M 
21A4  514e      ACALL 0x224E           ;M 
21A6  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
21A9  e0        MOVX A,@DPTR           ;M 
21AA  b40414    CJNE A,# #0x04, 0x21C1 ;M 
21AD  d15a      ACALL 0x265A           ;M 
21AF  8010      SJMP 0x21C1            ;M 
21B1  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
21B4  e0        MOVX A,@DPTR           ;M 
21B5  b40c09    CJNE A,# #0x0C, 0x21C1 ;M 
21B8  1275b0    LCALL 0x75B0           ;M 
21BB  30e003    JNB ACC.0, 0x21C1      ;M 
21BE  12bbf3    LCALL 0xBBF3           ;M 
21C1  d0d0      POP dir PSW            ;M 
21C3  92af      MOV bit,C IE.7         ;M 
21C5  22        RET                    ;M 

sub_21C6:  ; M func, size~62
21C6  d3        SETB C                 ;M 
21C7  10af01    JBC IE.7, 0x21CB       ;M 
21CA  c3        CLR C                  ;M 
21CB  c0d0      PUSH dir PSW           ;M 
21CD  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
21D0  e0        MOVX A,@DPTR           ;M 
21D1  30e00d    JNB ACC.0, 0x21E1      ;M 
21D4  909ebc    MOV DPTR,# #0x9EBC     ;M dptr win: win-9x (0x9EBC)
21D7  e0        MOVX A,@DPTR           ;M 
21D8  c4        SWAP A                 ;M 
21D9  13        RRC A                  ;M 
21DA  5407      ANL A,# #0x07          ;M 
21DC  30e008    JNB ACC.0, 0x21E7      ;M 
21DF  801c      SJMP 0x21FD            ;M 
21E1  12823a    LCALL 0x823A           ;M 
21E4  bf0116    CJNE R7,# #0x01, 0x21FD ;M 
21E7  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
21EA  1287a7    LCALL 0x87A7           ;M 
21ED  20e00d    JB ACC.0, 0x21FD       ;M 
21F0  909e54    MOV DPTR,# #0x9E54     ;M dptr win: win-9x (0x9E54)
21F3  e0        MOVX A,@DPTR           ;M 
21F4  d3        SETB C                 ;M 
21F5  9404      SUBB A,# #0x04         ;M 
21F7  5004      JNC 0x21FD             ;M 
21F9  7f01      MOV R7,# #0x01         ;M 
21FB  8002      SJMP 0x21FF            ;M 
21FD  7f00      MOV R7,# #0x00         ;M 
21FF  d0d0      POP dir PSW            ;M 
2201  92af      MOV bit,C IE.7         ;M 
2203  22        RET                    ;M 

sub_2204:  ; M func, size~32
2204  909e4e    MOV DPTR,# #0x9E4E     ;M dptr win: win-9x (0x9E4E)
2207  e0        MOVX A,@DPTR           ;M 
2208  c3        CLR C                  ;M 
2209  13        RRC A                  ;M 
220A  20e004    JB ACC.0, 0x2211       ;M 
220D  5192      ACALL 0x2292           ;M 
220F  800b      SJMP 0x221C            ;M 
2211  12bce6    LCALL 0xBCE6           ;M 
2214  7d04      MOV R5,# #0x04         ;M 
2216  d140      ACALL 0x2640           ;M 
2218  4480      ORL A,# #0x80          ;M 
221A  d152      ACALL 0x2652           ;M 
221C  e4        CLR A                  ;M 
221D  fb        MOV R3,A               ;M 
221E  fd        MOV R5,A               ;M 
221F  7fff      MOV R7,# #0xFF         ;M 
2221  0258a7    LJMP 0x58A7            ;M 

sub_2224:  ; M func, size~42
2224  909e4e    MOV DPTR,# #0x9E4E     ;M dptr win: win-9x (0x9E4E)
2227  e0        MOVX A,@DPTR           ;M 
2228  900604    MOV DPTR,# #0x0604     ;M dptr win: RAM/table (0x0604)
222B  20e007    JB ACC.0, 0x2235       ;M 
222E  e0        MOVX A,@DPTR           ;M 
222F  4440      ORL A,# #0x40          ;M 
2231  d130      ACALL 0x2630           ;M 
2233  8011      SJMP 0x2246            ;M 
2235  e0        MOVX A,@DPTR           ;M 
2236  547f      ANL A,# #0x7F          ;M 
2238  f0        MOVX @DPTR,A           ;M 
2239  7d0c      MOV R5,# #0x0C         ;M 
223B  d140      ACALL 0x2640           ;M 
223D  547f      ANL A,# #0x7F          ;M 
223F  f0        MOVX @DPTR,A           ;M 
2240  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
2243  740c      MOV A,# #0x0C          ;M 
2245  f0        MOVX @DPTR,A           ;M 
2246  e4        CLR A                  ;M 
2247  fb        MOV R3,A               ;M 
2248  fd        MOV R5,A               ;M 
2249  7fff      MOV R7,# #0xFF         ;M 
224B  0258a7    LJMP 0x58A7            ;M 

sub_224E:  ; M func, size~21
224E  90a1e0    MOV DPTR,# #0xA1E0     ;M dptr win: win-Ax (0xA1E0)
2251  ef        MOV A,R7               ;M 
2252  f0        MOVX @DPTR,A           ;M 
2253  125499    LCALL 0x5499           ;M 
2256  90a1e0    MOV DPTR,# #0xA1E0     ;M dptr win: win-Ax (0xA1E0)
2259  e0        MOVX A,@DPTR           ;M 
225A  6003      JZ 0x225F              ;M 
225C  1258a2    LCALL 0x58A2           ;M 
225F  d131      ACALL 0x2631           ;M 
2261  c153      AJMP 0x2653            ;M 

sub_2263:  ; M func, size~47
2263  1272ff    LCALL 0x72FF           ;M 
2266  6401      XRL A,# #0x01          ;M 
2268  7027      JNZ 0x2291             ;M 
226A  909e4e    MOV DPTR,# #0x9E4E     ;M dptr win: win-9x (0x9E4E)
226D  e0        MOVX A,@DPTR           ;M 
226E  54fd      ANL A,# #0xFD          ;M 
2270  f0        MOVX @DPTR,A           ;M 
2271  7b2c      MOV R3,# #0x2C         ;M 
2273  128eb6    LCALL 0x8EB6           ;M 
2276  12775b    LCALL 0x775B           ;M 
2279  d1a9      ACALL 0x26A9           ;M 
227B  bf0113    CJNE R7,# #0x01, 0x2291 ;M 
227E  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
2281  e0        MOVX A,@DPTR           ;M 
2282  4480      ORL A,# #0x80          ;M 
2284  f0        MOVX @DPTR,A           ;M 
2285  7d0e      MOV R5,# #0x0E         ;M 
2287  7f01      MOV R7,# #0x01         ;M 
2289  5196      ACALL 0x2296           ;M 
228B  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
228E  740e      MOV A,# #0x0E          ;M 
2290  f0        MOVX @DPTR,A           ;M 
2291  22        RET                    ;M 

sub_2292:  ; M func, size~112
2292  7d0c      MOV R5,# #0x0C         ;M 
2294  7f01      MOV R7,# #0x01         ;M 
2296  d3        SETB C                 ;M 
2297  10af01    JBC IE.7, 0x229B       ;M 
229A  c3        CLR C                  ;M 
229B  c0d0      PUSH dir PSW           ;M 
229D  90a1df    MOV DPTR,# #0xA1DF     ;M dptr win: win-Ax (0xA1DF)
22A0  ef        MOV A,R7               ;M 
22A1  f0        MOVX @DPTR,A           ;M 
22A2  14        DEC A                  ;M 
22A3  6015      JZ 0x22BA              ;M 
22A5  14        DEC A                  ;M 
22A6  6019      JZ 0x22C1              ;M 
22A8  2402      ADD A,# #0x02          ;M 
22AA  701a      JNZ 0x22C6             ;M 
22AC  ed        MOV A,R5               ;M 
22AD  5401      ANL A,# #0x01          ;M 
22AF  ff        MOV R7,A               ;M 
22B0  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
22B3  e0        MOVX A,@DPTR           ;M 
22B4  54fe      ANL A,# #0xFE          ;M 
22B6  4f        ORL A,R7               ;M 
22B7  f0        MOVX @DPTR,A           ;M 
22B8  800c      SJMP 0x22C6            ;M 
22BA  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
22BD  ed        MOV A,R5               ;M 
22BE  f0        MOVX @DPTR,A           ;M 
22BF  8005      SJMP 0x22C6            ;M 
22C1  909e54    MOV DPTR,# #0x9E54     ;M dptr win: win-9x (0x9E54)
22C4  ed        MOV A,R5               ;M 
22C5  f0        MOVX @DPTR,A           ;M 
22C6  124fdf    LCALL 0x4FDF           ;M 
22C9  30e431    JNB ACC.4, 0x22FD      ;M 
22CC  90a1df    MOV DPTR,# #0xA1DF     ;M dptr win: win-Ax (0xA1DF)
22CF  e0        MOVX A,@DPTR           ;M 
22D0  14        DEC A                  ;M 
22D1  6007      JZ 0x22DA              ;M 
22D3  14        DEC A                  ;M 
22D4  601d      JZ 0x22F3              ;M 
22D6  2402      ADD A,# #0x02          ;M 
22D8  7023      JNZ 0x22FD             ;M 
22DA  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
22DD  e0        MOVX A,@DPTR           ;M 
22DE  5401      ANL A,# #0x01          ;M 
22E0  c4        SWAP A                 ;M 
22E1  33        RLC A                  ;M 
22E2  33        RLC A                  ;M 
22E3  33        RLC A                  ;M 
22E4  5480      ANL A,# #0x80          ;M 
22E6  ff        MOV R7,A               ;M 
22E7  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
22EA  e0        MOVX A,@DPTR           ;M 
22EB  547f      ANL A,# #0x7F          ;M 
22ED  4f        ORL A,R7               ;M 
22EE  fd        MOV R5,A               ;M 
22EF  7f88      MOV R7,# #0x88         ;M 
22F1  8007      SJMP 0x22FA            ;M 
22F3  909e54    MOV DPTR,# #0x9E54     ;M dptr win: win-9x (0x9E54)
22F6  e0        MOVX A,@DPTR           ;M 
22F7  fd        MOV R5,A               ;M 
22F8  7f89      MOV R7,# #0x89         ;M 
22FA  1250a0    LCALL 0x50A0           ;M 
22FD  d0d0      POP dir PSW            ;M 
22FF  92af      MOV bit,C IE.7         ;M 
2301  22        RET                    ;M 

sub_2302:  ; M func, size~42
2302  d3        SETB C                 ;M 
2303  10af01    JBC IE.7, 0x2307       ;M 
2306  c3        CLR C                  ;M 
2307  c0d0      PUSH dir PSW           ;M 
2309  128b92    LCALL 0x8B92           ;M 
230C  900527    MOV DPTR,# #0x0527     ;M dptr win: RAM/table (0x0527)
230F  e0        MOVX A,@DPTR           ;M 
2310  f554      MOV dir,A 0x54         ;M 
2312  12b26a    LCALL 0xB26A           ;M 
2315  754301    MOV dir,# 0x43, #0x01  ;M 
2318  7b01      MOV R3,# #0x01         ;M 
231A  7a9e      MOV R2,# #0x9E         ;M 
231C  7948      MOV R1,# #0x48         ;M 
231E  123585    LCALL 0x3585           ;M 
2321  128a85    LCALL 0x8A85           ;M 
2324  ff        MOV R7,A               ;M 
2325  c3        CLR C                  ;M 
2326  13        RRC A                  ;M 
2327  20e002    JB ACC.0, 0x232C       ;M 
232A  61b6      AJMP 0x23B6            ;M 

sub_232C:  ; M func, size~121
232C  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
232F  e0        MOVX A,@DPTR           ;M 
2330  30e072    JNB ACC.0, 0x23A5      ;M 
2333  d129      ACALL 0x2629           ;M 
2335  755421    MOV dir,# 0x54, #0x21  ;M 
2338  d137      ACALL 0x2637           ;M 
233A  30e005    JNB ACC.0, 0x2342      ;M 
233D  12bcb9    LCALL 0xBCB9           ;M 
2340  800d      SJMP 0x234F            ;M 
2342  e4        CLR A                  ;M 
2343  909e49    MOV DPTR,# #0x9E49     ;M dptr win: win-9x (0x9E49)
2346  f0        MOVX @DPTR,A           ;M 
2347  a3        INC DPTR               ;M 
2348  f0        MOVX @DPTR,A           ;M 
2349  7d40      MOV R5,# #0x40         ;M 
234B  ff        MOV R7,A               ;M 
234C  127524    LCALL 0x7524           ;M 
234F  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
2352  d170      ACALL 0x2670           ;M 
2354  30e003    JNB ACC.0, 0x235A      ;M 
2357  435412    ORL dir,# 0x54, #0x12  ;M 
235A  ef        MOV A,R7               ;M 
235B  c4        SWAP A                 ;M 
235C  540f      ANL A,# #0x0F          ;M 
235E  30e003    JNB ACC.0, 0x2364      ;M 
2361  435414    ORL dir,# 0x54, #0x14  ;M 
2364  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
2367  e0        MOVX A,@DPTR           ;M 
2368  c4        SWAP A                 ;M 
2369  13        RRC A                  ;M 
236A  5407      ANL A,# #0x07          ;M 
236C  30e003    JNB ACC.0, 0x2372      ;M 
236F  435480    ORL dir,# 0x54, #0x80  ;M 
2372  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
2375  d1a2      ACALL 0x26A2           ;M 
2377  20e003    JB ACC.0, 0x237D       ;M 
237A  435440    ORL dir,# 0x54, #0x40  ;M 
237D  915e      ACALL 0x245E           ;M 
237F  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
2382  e0        MOVX A,@DPTR           ;M 
2383  7004      JNZ 0x2389             ;M 
2385  7f01      MOV R7,# #0x01         ;M 
2387  9165      ACALL 0x2465           ;M 
2389  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
238C  e0        MOVX A,@DPTR           ;M 
238D  b1f4      ACALL 0x25F4           ;M 
238F  30e004    JNB ACC.0, 0x2396      ;M 
2392  7f04      MOV R7,# #0x04         ;M 
2394  800b      SJMP 0x23A1            ;M 
2396  d178      ACALL 0x2678           ;M 
2398  ef        MOV A,R7               ;M 
2399  6004      JZ 0x239F              ;M 
239B  7f01      MOV R7,# #0x01         ;M 
239D  8002      SJMP 0x23A1            ;M 
239F  7f02      MOV R7,# #0x02         ;M 
23A1  9165      ACALL 0x2465           ;M 
23A3  8127      AJMP 0x2427            ;M 

sub_23A5:  ; M func, size~17
23A5  915b      ACALL 0x245B           ;M 
23A7  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
23AA  e0        MOVX A,@DPTR           ;M 
23AB  6404      XRL A,# #0x04          ;M 
23AD  6002      JZ 0x23B1              ;M 
23AF  8156      AJMP 0x2456            ;M 
23B1  .db FF 91 65 81 56

sub_23B6:  ; M func, size~165
23B6  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
23B9  e0        MOVX A,@DPTR           ;M 
23BA  30e072    JNB ACC.0, 0x242F      ;M 
23BD  d129      ACALL 0x2629           ;M 
23BF  435431    ORL dir,# 0x54, #0x31  ;M 
23C2  d137      ACALL 0x2637           ;M 
23C4  30e005    JNB ACC.0, 0x23CC      ;M 
23C7  12bcb9    LCALL 0xBCB9           ;M 
23CA  8007      SJMP 0x23D3            ;M 
23CC  7d40      MOV R5,# #0x40         ;M 
23CE  e4        CLR A                  ;M 
23CF  ff        MOV R7,A               ;M 
23D0  127524    LCALL 0x7524           ;M 
23D3  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
23D6  d170      ACALL 0x2670           ;M 
23D8  30e003    JNB ACC.0, 0x23DE      ;M 
23DB  435402    ORL dir,# 0x54, #0x02  ;M 
23DE  ef        MOV A,R7               ;M 
23DF  c4        SWAP A                 ;M 
23E0  540f      ANL A,# #0x0F          ;M 
23E2  30e003    JNB ACC.0, 0x23E8      ;M 
23E5  435404    ORL dir,# 0x54, #0x04  ;M 
23E8  915e      ACALL 0x245E           ;M 
23EA  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
23ED  e0        MOVX A,@DPTR           ;M 
23EE  b1f4      ACALL 0x25F4           ;M 
23F0  30e00b    JNB ACC.0, 0x23FE      ;M 
23F3  12826f    LCALL 0x826F           ;M 
23F6  602f      JZ 0x2427              ;M 
23F8  e4        CLR A                  ;M 
23F9  fd        MOV R5,A               ;M 
23FA  7f02      MOV R7,# #0x02         ;M 
23FC  801d      SJMP 0x241B            ;M 
23FE  12ba01    LCALL 0xBA01           ;M 
2401  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
2404  e0        MOVX A,@DPTR           ;M 
2405  b40217    CJNE A,# #0x02, 0x241F ;M 
2408  d149      ACALL 0x2649           ;M 
240A  d178      ACALL 0x2678           ;M 
240C  bf0109    CJNE R7,# #0x01, 0x2418 ;M 
240F  909e54    MOV DPTR,# #0x9E54     ;M dptr win: win-9x (0x9E54)
2412  e0        MOVX A,@DPTR           ;M 
2413  ff        MOV R7,A               ;M 
2414  7d01      MOV R5,# #0x01         ;M 
2416  8003      SJMP 0x241B            ;M 
2418  e4        CLR A                  ;M 
2419  fd        MOV R5,A               ;M 
241A  ff        MOV R7,A               ;M 
241B  117e      ACALL 0x207E           ;M 
241D  8008      SJMP 0x2427            ;M 
241F  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
2422  e0        MOVX A,@DPTR           ;M 
2423  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
2426  f0        MOVX @DPTR,A           ;M 
2427  900540    MOV DPTR,# #0x0540     ;M dptr win: RAM/table (0x0540)
242A  7422      MOV A,# #0x22          ;M 
242C  f0        MOVX @DPTR,A           ;M 
242D  8027      SJMP 0x2456            ;M 
242F  915b      ACALL 0x245B           ;M 
2431  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
2434  e0        MOVX A,@DPTR           ;M 
2435  b40206    CJNE A,# #0x02, 0x243E ;M 
2438  7d01      MOV R5,# #0x01         ;M 
243A  7f04      MOV R7,# #0x04         ;M 
243C  800b      SJMP 0x2449            ;M 
243E  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
2441  e0        MOVX A,@DPTR           ;M 
2442  b40806    CJNE A,# #0x08, 0x244B ;M 
2445  7d01      MOV R5,# #0x01         ;M 
2447  7f0c      MOV R7,# #0x0C         ;M 
2449  117e      ACALL 0x207E           ;M 
244B  1281fa    LCALL 0x81FA           ;M 
244E  909e54    MOV DPTR,# #0x9E54     ;M dptr win: win-9x (0x9E54)
2451  1171      ACALL 0x2071           ;M 
2453  12b99f    LCALL 0xB99F           ;M 
2456  d0d0      POP dir PSW            ;M 
2458  92af      MOV bit,C IE.7         ;M 
245A  22        RET                    ;M 

sub_245B:  ; M func, size~10
245B  755401    MOV dir,# 0x54, #0x01  ;M 
245E  900527    MOV DPTR,# #0x0527     ;M dptr win: RAM/table (0x0527)
2461  e554      MOV A,dir 0x54         ;M 
2463  f0        MOVX @DPTR,A           ;M 
2464  22        RET                    ;M 

sub_2465:  ; M func, size~20
2465  d3        SETB C                 ;M 
2466  10af01    JBC IE.7, 0x246A       ;M 
2469  c3        CLR C                  ;M 
246A  c0d0      PUSH dir PSW           ;M 
246C  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
246F  e0        MOVX A,@DPTR           ;M 
2470  f56f      MOV dir,A 0x6F         ;M 
2472  e56f      MOV A,dir 0x6F         ;M 
2474  6f        XRL A,R7               ;M 
2475  7002      JNZ 0x2479             ;M 
2477  a153      AJMP 0x2553            ;M 

sub_2479:  ; M func, size~16
2479  ef        MOV A,R7               ;M 
247A  14        DEC A                  ;M 
247B  603e      JZ 0x24BB              ;M 
247D  14        DEC A                  ;M 
247E  6061      JZ 0x24E1              ;M 
2480  14        DEC A                  ;M 
2481  7002      JNZ 0x2485             ;M 
2483  a108      AJMP 0x2508            ;M 
2485  .db 14 70 02 A1

sub_2489:  ; M func, size~7
2489  2f        ADD A,R7               ;M 
248A  2404      ADD A,# #0x04          ;M 
248C  6002      JZ 0x2490              ;M 
248E  a153      AJMP 0x2553            ;M 

sub_2490:  ; M func, size~10
2490  e56f      MOV A,dir 0x6F         ;M 
2492  b40405    CJNE A,# #0x04, 0x249A ;M 
2495  12b9cf    LCALL 0xB9CF           ;M 
2498  a153      AJMP 0x2553            ;M 

sub_249A:  ; M func, size~10
249A  e56f      MOV A,dir 0x6F         ;M 
249C  b40205    CJNE A,# #0x02, 0x24A4 ;M 
249F  12b9cb    LCALL 0xB9CB           ;M 
24A2  a153      AJMP 0x2553            ;M 

sub_24A4:  ; M func, size~10
24A4  e56f      MOV A,dir 0x6F         ;M 
24A6  b40305    CJNE A,# #0x03, 0x24AE ;M 
24A9  12b9d4    LCALL 0xB9D4           ;M 
24AC  a153      AJMP 0x2553            ;M 

sub_24AE:  ; M func, size~9
24AE  e56f      MOV A,dir 0x6F         ;M 
24B0  6401      XRL A,# #0x01          ;M 
24B2  6002      JZ 0x24B6              ;M 
24B4  a153      AJMP 0x2553            ;M 
24B6  .db 12

sub_24B7:  ; M func, size~14
24B7  b9bea1    CJNE R1,# #0xBE, 0x245B ;M 
24BA  53e56f    ANL dir,# 0xE5, #0x6F  ;M 
24BD  b40405    CJNE A,# #0x04, 0x24C5 ;M 
24C0  125fe2    LCALL 0x5FE2           ;M 
24C3  a153      AJMP 0x2553            ;M 

sub_24C5:  ; M func, size~10
24C5  e56f      MOV A,dir 0x6F         ;M 
24C7  b40205    CJNE A,# #0x02, 0x24CF ;M 
24CA  12b9d9    LCALL 0xB9D9           ;M 
24CD  a153      AJMP 0x2553            ;M 

sub_24CF:  ; M func, size~137
24CF  e56f      MOV A,dir 0x6F         ;M 
24D1  b40305    CJNE A,# #0x03, 0x24D9 ;M 
24D4  125fd9    LCALL 0x5FD9           ;M 
24D7  807a      SJMP 0x2553            ;M 
24D9  e56f      MOV A,dir 0x6F         ;M 
24DB  7076      JNZ 0x2553             ;M 
24DD  f1ed      ACALL 0x27ED           ;M 
24DF  8072      SJMP 0x2553            ;M 
24E1  e56f      MOV A,dir 0x6F         ;M 
24E3  b40405    CJNE A,# #0x04, 0x24EB ;M 
24E6  12b9f1    LCALL 0xB9F1           ;M 
24E9  8068      SJMP 0x2553            ;M 
24EB  e56f      MOV A,dir 0x6F         ;M 
24ED  b40105    CJNE A,# #0x01, 0x24F5 ;M 
24F0  12b9e2    LCALL 0xB9E2           ;M 
24F3  805e      SJMP 0x2553            ;M 
24F5  e56f      MOV A,dir 0x6F         ;M 
24F7  b40305    CJNE A,# #0x03, 0x24FF ;M 
24FA  12b9fa    LCALL 0xB9FA           ;M 
24FD  8054      SJMP 0x2553            ;M 
24FF  e56f      MOV A,dir 0x6F         ;M 
2501  7050      JNZ 0x2553             ;M 
2503  12b9fc    LCALL 0xB9FC           ;M 
2506  804b      SJMP 0x2553            ;M 
2508  e56f      MOV A,dir 0x6F         ;M 
250A  b40405    CJNE A,# #0x04, 0x2512 ;M 
250D  12ba09    LCALL 0xBA09           ;M 
2510  8041      SJMP 0x2553            ;M 
2512  e56f      MOV A,dir 0x6F         ;M 
2514  b40105    CJNE A,# #0x01, 0x251C ;M 
2517  12ba1c    LCALL 0xBA1C           ;M 
251A  8037      SJMP 0x2553            ;M 
251C  e56f      MOV A,dir 0x6F         ;M 
251E  b40205    CJNE A,# #0x02, 0x2526 ;M 
2521  12ba17    LCALL 0xBA17           ;M 
2524  802d      SJMP 0x2553            ;M 
2526  e56f      MOV A,dir 0x6F         ;M 
2528  7029      JNZ 0x2553             ;M 
252A  12ba23    LCALL 0xBA23           ;M 
252D  8024      SJMP 0x2553            ;M 
252F  e56f      MOV A,dir 0x6F         ;M 
2531  b40305    CJNE A,# #0x03, 0x2539 ;M 
2534  12ba45    LCALL 0xBA45           ;M 
2537  801a      SJMP 0x2553            ;M 
2539  e56f      MOV A,dir 0x6F         ;M 
253B  b40105    CJNE A,# #0x01, 0x2543 ;M 
253E  125fe9    LCALL 0x5FE9           ;M 
2541  8010      SJMP 0x2553            ;M 
2543  e56f      MOV A,dir 0x6F         ;M 
2545  b40205    CJNE A,# #0x02, 0x254D ;M 
2548  12ba28    LCALL 0xBA28           ;M 
254B  8006      SJMP 0x2553            ;M 
254D  e56f      MOV A,dir 0x6F         ;M 
254F  7002      JNZ 0x2553             ;M 
2551  f1f0      ACALL 0x27F0           ;M 
2553  d0d0      POP dir PSW            ;M 
2555  92af      MOV bit,C IE.7         ;M 
2557  22        RET                    ;M 

sub_2558:  ; M func, size~156
2558  7e00      MOV R6,# #0x00         ;M 
255A  7f62      MOV R7,# #0x62         ;M 
255C  7d00      MOV R5,# #0x00         ;M 
255E  7b01      MOV R3,# #0x01         ;M 
2560  7a9e      MOV R2,# #0x9E         ;M 
2562  794d      MOV R1,# #0x4D         ;M 
2564  1208aa    LCALL 0x08AA           ;M 
2567  909e51    MOV DPTR,# #0x9E51     ;M dptr win: win-9x (0x9E51)
256A  7402      MOV A,# #0x02          ;M 
256C  f0        MOVX @DPTR,A           ;M 
256D  909e58    MOV DPTR,# #0x9E58     ;M dptr win: win-9x (0x9E58)
2570  14        DEC A                  ;M 
2571  f0        MOVX @DPTR,A           ;M 
2572  a3        INC DPTR               ;M 
2573  f0        MOVX @DPTR,A           ;M 
2574  a3        INC DPTR               ;M 
2575  7410      MOV A,# #0x10          ;M 
2577  f0        MOVX @DPTR,A           ;M 
2578  909e5e    MOV DPTR,# #0x9E5E     ;M dptr win: win-9x (0x9E5E)
257B  e4        CLR A                  ;M 
257C  f0        MOVX @DPTR,A           ;M 
257D  a3        INC DPTR               ;M 
257E  7402      MOV A,# #0x02          ;M 
2580  12bc9d    LCALL 0xBC9D           ;M 
2583  12bb9d    LCALL 0xBB9D           ;M 
2586  e4        CLR A                  ;M 
2587  fd        MOV R5,A               ;M 
2588  ff        MOV R7,A               ;M 
2589  5196      ACALL 0x2296           ;M 
258B  7d0c      MOV R5,# #0x0C         ;M 
258D  7f02      MOV R7,# #0x02         ;M 
258F  5196      ACALL 0x2296           ;M 
2591  5192      ACALL 0x2292           ;M 
2593  909d07    MOV DPTR,# #0x9D07     ;M dptr win: win-9x (0x9D07)
2596  e0        MOVX A,@DPTR           ;M 
2597  ff        MOV R7,A               ;M 
2598  b40108    CJNE A,# #0x01, 0x25A3 ;M 
259B  909e5d    MOV DPTR,# #0x9E5D     ;M dptr win: win-9x (0x9E5D)
259E  74dd      MOV A,# #0xDD          ;M 
25A0  f0        MOVX @DPTR,A           ;M 
25A1  800f      SJMP 0x25B2            ;M 
25A3  ef        MOV A,R7               ;M 
25A4  909e5d    MOV DPTR,# #0x9E5D     ;M dptr win: win-9x (0x9E5D)
25A7  b40305    CJNE A,# #0x03, 0x25AF ;M 
25AA  74d5      MOV A,# #0xD5          ;M 
25AC  f0        MOVX @DPTR,A           ;M 
25AD  8003      SJMP 0x25B2            ;M 
25AF  7440      MOV A,# #0x40          ;M 
25B1  f0        MOVX @DPTR,A           ;M 
25B2  909eaf    MOV DPTR,# #0x9EAF     ;M dptr win: win-9x (0x9EAF)
25B5  7402      MOV A,# #0x02          ;M 
25B7  f0        MOVX @DPTR,A           ;M 
25B8  a3        INC DPTR               ;M 
25B9  740f      MOV A,# #0x0F          ;M 
25BB  f0        MOVX @DPTR,A           ;M 
25BC  a3        INC DPTR               ;M 
25BD  e0        MOVX A,@DPTR           ;M 
25BE  5401      ANL A,# #0x01          ;M 
25C0  4428      ORL A,# #0x28          ;M 
25C2  f0        MOVX @DPTR,A           ;M 
25C3  a3        INC DPTR               ;M 
25C4  7407      MOV A,# #0x07          ;M 
25C6  12bc9d    LCALL 0xBC9D           ;M 
25C9  7f01      MOV R7,# #0x01         ;M 
25CB  12bbb6    LCALL 0xBBB6           ;M 
25CE  128eff    LCALL 0x8EFF           ;M 
25D1  7e00      MOV R6,# #0x00         ;M 
25D3  ff        MOV R7,A               ;M 
25D4  7d00      MOV R5,# #0x00         ;M 
25D6  7b01      MOV R3,# #0x01         ;M 
25D8  7a9e      MOV R2,# #0x9E         ;M 
25DA  79b3      MOV R1,# #0xB3         ;M 
25DC  1208aa    LCALL 0x08AA           ;M 
25DF  128f06    LCALL 0x8F06           ;M 
25E2  12bdbf    LCALL 0xBDBF           ;M 
25E5  7b56      MOV R3,# #0x56         ;M 
25E7  e4        CLR A                  ;M 
25E8  fd        MOV R5,A               ;M 
25E9  7fff      MOV R7,# #0xFF         ;M 
25EB  1258a7    LCALL 0x58A7           ;M 
25EE  e4        CLR A                  ;M 
25EF  909eb5    MOV DPTR,# #0x9EB5     ;M dptr win: win-9x (0x9EB5)
25F2  f0        MOVX @DPTR,A           ;M 
25F3  22        RET                    ;M 

sub_25F4:  ; M func, size~7
25F4  ff        MOV R7,A               ;M 
25F5  c4        SWAP A                 ;M 
25F6  13        RRC A                  ;M 
25F7  13        RRC A                  ;M 
25F8  5403      ANL A,# #0x03          ;M 
25FA  22        RET                    ;M 

sub_25FB:  ; M func, size~44
25FB  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
25FE  e0        MOVX A,@DPTR           ;M 
25FF  b1f4      ACALL 0x25F4           ;M 
2601  30e024    JNB ACC.0, 0x2628      ;M 
2604  ef        MOV A,R7               ;M 
2605  54bf      ANL A,# #0xBF          ;M 
2607  12b6d8    LCALL 0xB6D8           ;M 
260A  30e006    JNB ACC.0, 0x2613      ;M 
260D  e0        MOVX A,@DPTR           ;M 
260E  4401      ORL A,# #0x01          ;M 
2610  f0        MOVX @DPTR,A           ;M 
2611  8004      SJMP 0x2617            ;M 
2613  e0        MOVX A,@DPTR           ;M 
2614  54fe      ANL A,# #0xFE          ;M 
2616  f0        MOVX @DPTR,A           ;M 
2617  909ebc    MOV DPTR,# #0x9EBC     ;M dptr win: win-9x (0x9EBC)
261A  12874b    LCALL 0x874B           ;M 
261D  30e006    JNB ACC.0, 0x2626      ;M 
2620  7d01      MOV R5,# #0x01         ;M 
2622  7f0c      MOV R7,# #0x0C         ;M 
2624  017e      AJMP 0x207E            ;M 
2626  .db 11

sub_2627:  ; M func, size~9
2627  63227d    XRL dir,# 0x22, #0x7D  ;M 
262A  03        RR A                   ;M 
262B  7f02      MOV R7,# #0x02         ;M 
262D  02b75a    LJMP 0xB75A            ;M 

sub_2630:  ; M func, size~7
2630  f0        MOVX @DPTR,A           ;M 
2631  7d04      MOV R5,# #0x04         ;M 
2633  7f01      MOV R7,# #0x01         ;M 
2635  4196      AJMP 0x2296            ;M 

sub_2637:  ; M func, size~9
2637  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
263A  e0        MOVX A,@DPTR           ;M 
263B  13        RRC A                  ;M 
263C  13        RRC A                  ;M 
263D  543f      ANL A,# #0x3F          ;M 
263F  22        RET                    ;M 

sub_2640:  ; M func, size~9
2640  7f01      MOV R7,# #0x01         ;M 
2642  5196      ACALL 0x2296           ;M 
2644  900527    MOV DPTR,# #0x0527     ;M dptr win: RAM/table (0x0527)
2647  e0        MOVX A,@DPTR           ;M 
2648  22        RET                    ;M 

sub_2649:  ; M func, size~17
2649  1258a2    LCALL 0x58A2           ;M 
264C  7d04      MOV R5,# #0x04         ;M 
264E  d140      ACALL 0x2640           ;M 
2650  4440      ORL A,# #0x40          ;M 
2652  f0        MOVX @DPTR,A           ;M 
2653  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
2656  7404      MOV A,# #0x04          ;M 
2658  f0        MOVX @DPTR,A           ;M 
2659  22        RET                    ;M 

sub_265A:  ; M func, size~19
265A  7b2e      MOV R3,# #0x2E         ;M 
265C  128eb6    LCALL 0x8EB6           ;M 
265F  7d02      MOV R5,# #0x02         ;M 
2661  d140      ACALL 0x2640           ;M 
2663  54bf      ANL A,# #0xBF          ;M 
2665  f0        MOVX @DPTR,A           ;M 
2666  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
2669  7402      MOV A,# #0x02          ;M 
266B  f0        MOVX @DPTR,A           ;M 
266C  22        RET                    ;M 

sub_266D:  ; M func, size~11
266D  909e4e    MOV DPTR,# #0x9E4E     ;M dptr win: win-9x (0x9E4E)
2670  e0        MOVX A,@DPTR           ;M 
2671  ff        MOV R7,A               ;M 
2672  13        RRC A                  ;M 
2673  13        RRC A                  ;M 
2674  13        RRC A                  ;M 
2675  541f      ANL A,# #0x1F          ;M 
2677  22        RET                    ;M 

sub_2678:  ; M func, size~12
2678  900543    MOV DPTR,# #0x0543     ;M dptr win: RAM/table (0x0543)
267B  e0        MOVX A,@DPTR           ;M 
267C  7f00      MOV R7,# #0x00         ;M 
267E  30e702    JNB ACC.7, 0x2683      ;M 
2681  7f01      MOV R7,# #0x01         ;M 
2683  22        RET                    ;M 

sub_2684:  ; M func, size~27
2684  ae07      MOV R6,dir 0x07        ;M 
2686  d178      ACALL 0x2678           ;M 
2688  bf0111    CJNE R7,# #0x01, 0x269C ;M 
268B  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
268E  d1a2      ACALL 0x26A2           ;M 
2690  20e009    JB ACC.0, 0x269C       ;M 
2693  af06      MOV R7,dir 0x06        ;M 
2695  7d01      MOV R5,# #0x01         ;M 
2697  117e      ACALL 0x207E           ;M 
2699  7f01      MOV R7,# #0x01         ;M 
269B  22        RET                    ;M 
269C  .db 7F 00 22

sub_269F:  ; M func, size~10
269F  909eba    MOV DPTR,# #0x9EBA     ;M dptr win: win-9x (0x9EBA)
26A2  e0        MOVX A,@DPTR           ;M 
26A3  c4        SWAP A                 ;M 
26A4  13        RRC A                  ;M 
26A5  13        RRC A                  ;M 
26A6  5403      ANL A,# #0x03          ;M 
26A8  22        RET                    ;M 

sub_26A9:  ; M func, size~143
26A9  7d08      MOV R5,# #0x08         ;M 
26AB  7f01      MOV R7,# #0x01         ;M 
26AD  d3        SETB C                 ;M 
26AE  10af01    JBC IE.7, 0x26B2       ;M 
26B1  c3        CLR C                  ;M 
26B2  c0d0      PUSH dir PSW           ;M 
26B4  90a17b    MOV DPTR,# #0xA17B     ;M dptr win: win-Ax (0xA17B)
26B7  ef        MOV A,R7               ;M 
26B8  f0        MOVX @DPTR,A           ;M 
26B9  a3        INC DPTR               ;M 
26BA  ed        MOV A,R5               ;M 
26BB  f0        MOVX @DPTR,A           ;M 
26BC  909d03    MOV DPTR,# #0x9D03     ;M dptr win: win-9x (0x9D03)
26BF  e0        MOVX A,@DPTR           ;M 
26C0  04        INC A                  ;M 
26C1  f0        MOVX @DPTR,A           ;M 
26C2  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
26C5  e0        MOVX A,@DPTR           ;M 
26C6  30e007    JNB ACC.0, 0x26D0      ;M 
26C9  900510    MOV DPTR,# #0x0510     ;M dptr win: RAM/table (0x0510)
26CC  e4        CLR A                  ;M 
26CD  f0        MOVX @DPTR,A           ;M 
26CE  a3        INC DPTR               ;M 
26CF  f0        MOVX @DPTR,A           ;M 
26D0  90041d    MOV DPTR,# #0x041D     ;M dptr win: RAM/table (0x041D)
26D3  e0        MOVX A,@DPTR           ;M 
26D4  6037      JZ 0x270D              ;M 
26D6  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
26D9  e0        MOVX A,@DPTR           ;M 
26DA  90a17f    MOV DPTR,# #0xA17F     ;M dptr win: win-Ax (0xA17F)
26DD  f0        MOVX @DPTR,A           ;M 
26DE  7b26      MOV R3,# #0x26         ;M 
26E0  12581d    LCALL 0x581D           ;M 
26E3  ef        MOV A,R7               ;M 
26E4  6401      XRL A,# #0x01          ;M 
26E6  7007      JNZ 0x26EF             ;M 
26E8  f138      ACALL 0x2738           ;M 
26EA  20e00f    JB ACC.0, 0x26FC       ;M 
26ED  800a      SJMP 0x26F9            ;M 
26EF  d19f      ACALL 0x269F           ;M 
26F1  30e008    JNB ACC.0, 0x26FC      ;M 
26F4  f138      ACALL 0x2738           ;M 
26F6  20e003    JB ACC.0, 0x26FC       ;M 
26F9  12a18a    LCALL 0xA18A           ;M 
26FC  90a17f    MOV DPTR,# #0xA17F     ;M dptr win: win-Ax (0xA17F)
26FF  e0        MOVX A,@DPTR           ;M 
2700  fd        MOV R5,A               ;M 
2701  7b27      MOV R3,# #0x27         ;M 
2703  e4        CLR A                  ;M 
2704  ff        MOV R7,A               ;M 
2705  1258a7    LCALL 0x58A7           ;M 
2708  128f0e    LCALL 0x8F0E           ;M 
270B  800b      SJMP 0x2718            ;M 
270D  128f0e    LCALL 0x8F0E           ;M 
2710  f138      ACALL 0x2738           ;M 
2712  20e003    JB ACC.0, 0x2718       ;M 
2715  12a18a    LCALL 0xA18A           ;M 
2718  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
271B  e0        MOVX A,@DPTR           ;M 
271C  30e00f    JNB ACC.0, 0x272E      ;M 
271F  d19f      ACALL 0x269F           ;M 
2721  30e00a    JNB ACC.0, 0x272E      ;M 
2724  12a724    LCALL 0xA724           ;M 
2727  7b28      MOV R3,# #0x28         ;M 
2729  7f90      MOV R7,# #0x90         ;M 
272B  1258a7    LCALL 0x58A7           ;M 
272E  1287d8    LCALL 0x87D8           ;M 
2731  7f01      MOV R7,# #0x01         ;M 
2733  d0d0      POP dir PSW            ;M 
2735  92af      MOV bit,C IE.7         ;M 
2737  22        RET                    ;M 

sub_2738:  ; M func, size~43
2738  909d45    MOV DPTR,# #0x9D45     ;M dptr win: win-9x (0x9D45)
273B  e0        MOVX A,@DPTR           ;M 
273C  ff        MOV R7,A               ;M 
273D  90a17c    MOV DPTR,# #0xA17C     ;M dptr win: win-Ax (0xA17C)
2740  e0        MOVX A,@DPTR           ;M 
2741  fb        MOV R3,A               ;M 
2742  90a19f    MOV DPTR,# #0xA19F     ;M dptr win: win-Ax (0xA19F)
2745  740a      MOV A,# #0x0A          ;M 
2747  f0        MOVX @DPTR,A           ;M 
2748  7d01      MOV R5,# #0x01         ;M 
274A  12a078    LCALL 0xA078           ;M 
274D  90a17d    MOV DPTR,# #0xA17D     ;M dptr win: win-Ax (0xA17D)
2750  ee        MOV A,R6               ;M 
2751  f0        MOVX @DPTR,A           ;M 
2752  fc        MOV R4,A               ;M 
2753  a3        INC DPTR               ;M 
2754  ef        MOV A,R7               ;M 
2755  f0        MOVX @DPTR,A           ;M 
2756  fd        MOV R5,A               ;M 
2757  90a17b    MOV DPTR,# #0xA17B     ;M dptr win: win-Ax (0xA17B)
275A  e0        MOVX A,@DPTR           ;M 
275B  ff        MOV R7,A               ;M 
275C  f196      ACALL 0x2796           ;M 
275E  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
2761  e0        MOVX A,@DPTR           ;M 
2762  22        RET                    ;M 

sub_2763:  ; M func, size~100
2763  90a167    MOV DPTR,# #0xA167     ;M dptr win: win-Ax (0xA167)
2766  a3        INC DPTR               ;M 
2767  e0        MOVX A,@DPTR           ;M 
2768  ff        MOV R7,A               ;M 
2769  90a19f    MOV DPTR,# #0xA19F     ;M dptr win: win-Ax (0xA19F)
276C  7403      MOV A,# #0x03          ;M 
276E  f0        MOVX @DPTR,A           ;M 
276F  7b06      MOV R3,# #0x06         ;M 
2771  7d01      MOV R5,# #0x01         ;M 
2773  12a078    LCALL 0xA078           ;M 
2776  90a16b    MOV DPTR,# #0xA16B     ;M dptr win: win-Ax (0xA16B)
2779  ee        MOV A,R6               ;M 
277A  f0        MOVX @DPTR,A           ;M 
277B  fc        MOV R4,A               ;M 
277C  a3        INC DPTR               ;M 
277D  ef        MOV A,R7               ;M 
277E  f0        MOVX @DPTR,A           ;M 
277F  fd        MOV R5,A               ;M 
2780  90a16a    MOV DPTR,# #0xA16A     ;M dptr win: win-Ax (0xA16A)
2783  e0        MOVX A,@DPTR           ;M 
2784  ff        MOV R7,A               ;M 
2785  7410      MOV A,# #0x10          ;M 
2787  2d        ADD A,R5               ;M 
2788  f582      MOV dir,A DPL          ;M 
278A  e4        CLR A                  ;M 
278B  34fc      ADDC A,# #0xFC         ;M 
278D  f583      MOV dir,A DPH          ;M 
278F  ef        MOV A,R7               ;M 
2790  f0        MOVX @DPTR,A           ;M 
2791  90a169    MOV DPTR,# #0xA169     ;M dptr win: win-Ax (0xA169)
2794  e0        MOVX A,@DPTR           ;M 
2795  ff        MOV R7,A               ;M 
2796  ef        MOV A,R7               ;M 
2797  c3        CLR C                  ;M 
2798  9402      SUBB A,# #0x02         ;M 
279A  5043      JNC 0x27DF             ;M 
279C  f1e1      ACALL 0x27E1           ;M 
279E  543f      ANL A,# #0x3F          ;M 
27A0  f0        MOVX @DPTR,A           ;M 
27A1  ef        MOV A,R7               ;M 
27A2  6031      JZ 0x27D5              ;M 
27A4  12a4d5    LCALL 0xA4D5           ;M 
27A7  4410      ORL A,# #0x10          ;M 
27A9  f1e0      ACALL 0x27E0           ;M 
27AB  4480      ORL A,# #0x80          ;M 
27AD  f0        MOVX @DPTR,A           ;M 
27AE  12a70c    LCALL 0xA70C           ;M 
27B1  5407      ANL A,# #0x07          ;M 
27B3  30e029    JNB ACC.0, 0x27DF      ;M 
27B6  12a744    LCALL 0xA744           ;M 
27B9  500c      JNC 0x27C7             ;M 
27BB  ef        MOV A,R7               ;M 
27BC  25e0      ADD A,dir ACC          ;M 
27BE  25e0      ADD A,dir ACC          ;M 
27C0  ff        MOV R7,A               ;M 
27C1  742b      MOV A,# #0x2B          ;M 
27C3  2d        ADD A,R5               ;M 
27C4  02a75f    LJMP 0xA75F            ;M 

sub_27C7:  ; M func, size~14
27C7  742b      MOV A,# #0x2B          ;M 
27C9  2d        ADD A,R5               ;M 
27CA  f582      MOV dir,A DPL          ;M 
27CC  e4        CLR A                  ;M 
27CD  34fc      ADDC A,# #0xFC         ;M 
27CF  f583      MOV dir,A DPH          ;M 
27D1  747f      MOV A,# #0x7F          ;M 
27D3  f0        MOVX @DPTR,A           ;M 
27D4  22        RET                    ;M 

sub_27D5:  ; M func, size~11
27D5  12a4d5    LCALL 0xA4D5           ;M 
27D8  54ef      ANL A,# #0xEF          ;M 
27DA  f1e0      ACALL 0x27E0           ;M 
27DC  4440      ORL A,# #0x40          ;M 
27DE  f0        MOVX @DPTR,A           ;M 
27DF  22        RET                    ;M 

sub_27E0:  ; M func, size~14
27E0  f0        MOVX @DPTR,A           ;M 
27E1  7409      MOV A,# #0x09          ;M 
27E3  2d        ADD A,R5               ;M 
27E4  f582      MOV dir,A DPL          ;M 
27E6  e4        CLR A                  ;M 
27E7  34fc      ADDC A,# #0xFC         ;M 
27E9  f583      MOV dir,A DPH          ;M 
27EB  e0        MOVX A,@DPTR           ;M 
27EC  22        RET                    ;M 
27ED  .db 02

sub_27EE:  ; M func, size~7
27EE  5f        ANL A,R7               ;M 
27EF  dbf1      DJNZ R3, 0x27E2        ;M 
27F1  ed        MOV A,R5               ;M 
27F2  025fe9    LJMP 0x5FE9            ;M 

sub_27F5:  ; M func, size~90
27F5  e4        CLR A                  ;M 
27F6  fb        MOV R3,A               ;M 
27F7  fa        MOV R2,A               ;M 
27F8  fd        MOV R5,A               ;M 
27F9  7f01      MOV R7,# #0x01         ;M 
27FB  1247be    LCALL 0x47BE           ;M 
27FE  ef        MOV A,R7               ;M 
27FF  60f4      JZ 0x27F5              ;M 
2801  909d01    MOV DPTR,# #0x9D01     ;M dptr win: win-9x (0x9D01)
2804  e0        MOVX A,@DPTR           ;M 
2805  ff        MOV R7,A               ;M 
2806  7004      JNZ 0x280C             ;M 
2808  a3        INC DPTR               ;M 
2809  e0        MOVX A,@DPTR           ;M 
280A  60e9      JZ 0x27F5              ;M 
280C  c2af      CLR bit IE.7           ;M 
280E  ef        MOV A,R7               ;M 
280F  30e00e    JNB ACC.0, 0x2820      ;M 
2812  909d01    MOV DPTR,# #0x9D01     ;M dptr win: win-9x (0x9D01)
2815  e0        MOVX A,@DPTR           ;M 
2816  54fe      ANL A,# #0xFE          ;M 
2818  f0        MOVX @DPTR,A           ;M 
2819  e4        CLR A                  ;M 
281A  ff        MOV R7,A               ;M 
281B  114f      ACALL 0x284F           ;M 
281D  1290ed    LCALL 0x90ED           ;M 
2820  1145      ACALL 0x2845           ;M 
2822  30e106    JNB ACC.1, 0x282B      ;M 
2825  54fd      ANL A,# #0xFD          ;M 
2827  f0        MOVX @DPTR,A           ;M 
2828  12b337    LCALL 0xB337           ;M 
282B  1145      ACALL 0x2845           ;M 
282D  30e206    JNB ACC.2, 0x2836      ;M 
2830  54fb      ANL A,# #0xFB          ;M 
2832  f0        MOVX @DPTR,A           ;M 
2833  129efa    LCALL 0x9EFA           ;M 
2836  1145      ACALL 0x2845           ;M 
2838  30e606    JNB ACC.6, 0x2841      ;M 
283B  54bf      ANL A,# #0xBF          ;M 
283D  f0        MOVX @DPTR,A           ;M 
283E  128fd1    LCALL 0x8FD1           ;M 
2841  d2af      SETB bit IE.7          ;M 
2843  80bc      SJMP 0x2801            ;M 
2845  d2af      SETB bit IE.7          ;M 
2847  c2af      CLR bit IE.7           ;M 
2849  909d01    MOV DPTR,# #0x9D01     ;M dptr win: win-9x (0x9D01)
284C  e0        MOVX A,@DPTR           ;M 
284D  ff        MOV R7,A               ;M 
284E  22        RET                    ;M 

sub_284F:  ; M func, size~105
284F  909fd1    MOV DPTR,# #0x9FD1     ;M dptr win: win-9x (0x9FD1)
2852  ef        MOV A,R7               ;M 
2853  f0        MOVX @DPTR,A           ;M 
2854  909e47    MOV DPTR,# #0x9E47     ;M dptr win: win-9x (0x9E47)
2857  e0        MOVX A,@DPTR           ;M 
2858  90a053    MOV DPTR,# #0xA053     ;M dptr win: win-Ax (0xA053)
285B  f0        MOVX @DPTR,A           ;M 
285C  e4        CLR A                  ;M 
285D  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
2860  f0        MOVX @DPTR,A           ;M 
2861  90a053    MOV DPTR,# #0xA053     ;M dptr win: win-Ax (0xA053)
2864  e0        MOVX A,@DPTR           ;M 
2865  fe        MOV R6,A               ;M 
2866  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
2869  e0        MOVX A,@DPTR           ;M 
286A  ff        MOV R7,A               ;M 
286B  c3        CLR C                  ;M 
286C  9e        SUBB A,R6              ;M 
286D  502d      JNC 0x289C             ;M 
286F  e0        MOVX A,@DPTR           ;M 
2870  fe        MOV R6,A               ;M 
2871  3150      ACALL 0x2950           ;M 
2873  e4        CLR A                  ;M 
2874  f0        MOVX @DPTR,A           ;M 
2875  75f010    MOV dir,# B, #0x10     ;M 
2878  ee        MOV A,R6               ;M 
2879  31c5      ACALL 0x29C5           ;M 
287B  e0        MOVX A,@DPTR           ;M 
287C  30e709    JNB ACC.7, 0x2888      ;M 
287F  7401      MOV A,# #0x01          ;M 
2881  2f        ADD A,R7               ;M 
2882  31cb      ACALL 0x29CB           ;M 
2884  e4        CLR A                  ;M 
2885  f0        MOVX @DPTR,A           ;M 
2886  800c      SJMP 0x2894            ;M 
2888  12b745    LCALL 0xB745           ;M 
288B  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
288E  e0        MOVX A,@DPTR           ;M 
288F  3150      ACALL 0x2950           ;M 
2891  7401      MOV A,# #0x01          ;M 
2893  f0        MOVX @DPTR,A           ;M 
2894  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
2897  e0        MOVX A,@DPTR           ;M 
2898  04        INC A                  ;M 
2899  f0        MOVX @DPTR,A           ;M 
289A  80c5      SJMP 0x2861            ;M 
289C  7f0c      MOV R7,# #0x0C         ;M 
289E  7e00      MOV R6,# #0x00         ;M 
28A0  123e87    LCALL 0x3E87           ;M 
28A3  e4        CLR A                  ;M 
28A4  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
28A7  f0        MOVX @DPTR,A           ;M 
28A8  90a053    MOV DPTR,# #0xA053     ;M dptr win: win-Ax (0xA053)
28AB  e0        MOVX A,@DPTR           ;M 
28AC  ff        MOV R7,A               ;M 
28AD  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
28B0  e0        MOVX A,@DPTR           ;M 
28B1  fe        MOV R6,A               ;M 
28B2  c3        CLR C                  ;M 
28B3  9f        SUBB A,R7              ;M 
28B4  4002      JC 0x28B8              ;M 
28B6  214f      AJMP 0x294F            ;M 

sub_28B8:  ; M func, size~10
28B8  74d3      MOV A,# #0xD3          ;M 
28BA  2e        ADD A,R6               ;M 
28BB  3152      ACALL 0x2952           ;M 
28BD  e0        MOVX A,@DPTR           ;M 
28BE  7002      JNZ 0x28C2             ;M 
28C0  2147      AJMP 0x2947            ;M 

sub_28C2:  ; M func, size~142
28C2  75f010    MOV dir,# B, #0x10     ;M 
28C5  ee        MOV A,R6               ;M 
28C6  908106    MOV DPTR,# #0x8106     ;M dptr win: win-8x (0x8106)
28C9  31d3      ACALL 0x29D3           ;M 
28CB  ee        MOV A,R6               ;M 
28CC  908107    MOV DPTR,# #0x8107     ;M dptr win: win-8x (0x8107)
28CF  31dc      ACALL 0x29DC           ;M 
28D1  fc        MOV R4,A               ;M 
28D2  12bc7d    LCALL 0xBC7D           ;M 
28D5  ee        MOV A,R6               ;M 
28D6  f0        MOVX @DPTR,A           ;M 
28D7  a3        INC DPTR               ;M 
28D8  ef        MOV A,R7               ;M 
28D9  f0        MOVX @DPTR,A           ;M 
28DA  75f010    MOV dir,# B, #0x10     ;M 
28DD  ec        MOV A,R4               ;M 
28DE  90810a    MOV DPTR,# #0x810A     ;M dptr win: win-8x (0x810A)
28E1  31d3      ACALL 0x29D3           ;M 
28E3  ec        MOV A,R4               ;M 
28E4  90810b    MOV DPTR,# #0x810B     ;M dptr win: win-8x (0x810B)
28E7  31dc      ACALL 0x29DC           ;M 
28E9  75f00a    MOV dir,# B, #0x0A     ;M 
28EC  908d01    MOV DPTR,# #0x8D01     ;M dptr win: win-8x (0x8D01)
28EF  1248f3    LCALL 0x48F3           ;M 
28F2  ee        MOV A,R6               ;M 
28F3  f0        MOVX @DPTR,A           ;M 
28F4  a3        INC DPTR               ;M 
28F5  ef        MOV A,R7               ;M 
28F6  f0        MOVX @DPTR,A           ;M 
28F7  7f01      MOV R7,# #0x01         ;M 
28F9  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
28FC  e0        MOVX A,@DPTR           ;M 
28FD  fe        MOV R6,A               ;M 
28FE  75f010    MOV dir,# B, #0x10     ;M 
2901  90810b    MOV DPTR,# #0x810B     ;M dptr win: win-8x (0x810B)
2904  1248f3    LCALL 0x48F3           ;M 
2907  e582      MOV A,dir DPL          ;M 
2909  2f        ADD A,R7               ;M 
290A  124eda    LCALL 0x4EDA           ;M 
290D  e0        MOVX A,@DPTR           ;M 
290E  fd        MOV R5,A               ;M 
290F  75f00a    MOV dir,# B, #0x0A     ;M 
2912  ee        MOV A,R6               ;M 
2913  31b4      ACALL 0x29B4           ;M 
2915  ed        MOV A,R5               ;M 
2916  f0        MOVX @DPTR,A           ;M 
2917  0f        INC R7                 ;M 
2918  ef        MOV A,R7               ;M 
2919  b405dd    CJNE A,# #0x05, 0x28F9 ;M 
291C  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
291F  e0        MOVX A,@DPTR           ;M 
2920  ff        MOV R7,A               ;M 
2921  75f010    MOV dir,# B, #0x10     ;M 
2924  908109    MOV DPTR,# #0x8109     ;M dptr win: win-8x (0x8109)
2927  1248f3    LCALL 0x48F3           ;M 
292A  e0        MOVX A,@DPTR           ;M 
292B  fe        MOV R6,A               ;M 
292C  31f7      ACALL 0x29F7           ;M 
292E  ee        MOV A,R6               ;M 
292F  f0        MOVX @DPTR,A           ;M 
2930  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
2933  e0        MOVX A,@DPTR           ;M 
2934  ff        MOV R7,A               ;M 
2935  909fd1    MOV DPTR,# #0x9FD1     ;M dptr win: win-9x (0x9FD1)
2938  e0        MOVX A,@DPTR           ;M 
2939  fd        MOV R5,A               ;M 
293A  315a      ACALL 0x295A           ;M 
293C  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
293F  e0        MOVX A,@DPTR           ;M 
2940  2401      ADD A,# #0x01          ;M 
2942  31cb      ACALL 0x29CB           ;M 
2944  7401      MOV A,# #0x01          ;M 
2946  f0        MOVX @DPTR,A           ;M 
2947  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
294A  e0        MOVX A,@DPTR           ;M 
294B  04        INC A                  ;M 
294C  f0        MOVX @DPTR,A           ;M 
294D  01a8      AJMP 0x28A8            ;M 
294F  .db 22

sub_2950:  ; M func, size~10
2950  24d3      ADD A,# #0xD3          ;M 
2952  f582      MOV dir,A DPL          ;M 
2954  e4        CLR A                  ;M 
2955  349f      ADDC A,# #0x9F         ;M 
2957  f583      MOV dir,A DPH          ;M 
2959  22        RET                    ;M 

sub_295A:  ; M func, size~90
295A  d3        SETB C                 ;M 
295B  10af01    JBC IE.7, 0x295F       ;M 
295E  c3        CLR C                  ;M 
295F  c0d0      PUSH dir PSW           ;M 
2961  ed        MOV A,R5               ;M 
2962  6037      JZ 0x299B              ;M 
2964  75f00a    MOV dir,# B, #0x0A     ;M 
2967  ef        MOV A,R7               ;M 
2968  908d01    MOV DPTR,# #0x8D01     ;M dptr win: win-8x (0x8D01)
296B  31be      ACALL 0x29BE           ;M 
296D  f0        MOVX @DPTR,A           ;M 
296E  75f00a    MOV dir,# B, #0x0A     ;M 
2971  ef        MOV A,R7               ;M 
2972  908d03    MOV DPTR,# #0x8D03     ;M dptr win: win-8x (0x8D03)
2975  31be      ACALL 0x29BE           ;M 
2977  f0        MOVX @DPTR,A           ;M 
2978  75f00a    MOV dir,# B, #0x0A     ;M 
297B  ef        MOV A,R7               ;M 
297C  908d05    MOV DPTR,# #0x8D05     ;M dptr win: win-8x (0x8D05)
297F  31be      ACALL 0x29BE           ;M 
2981  f0        MOVX @DPTR,A           ;M 
2982  75f00a    MOV dir,# B, #0x0A     ;M 
2985  ef        MOV A,R7               ;M 
2986  908d07    MOV DPTR,# #0x8D07     ;M dptr win: win-8x (0x8D07)
2989  31be      ACALL 0x29BE           ;M 
298B  f0        MOVX @DPTR,A           ;M 
298C  75f00a    MOV dir,# B, #0x0A     ;M 
298F  ef        MOV A,R7               ;M 
2990  908d09    MOV DPTR,# #0x8D09     ;M dptr win: win-8x (0x8D09)
2993  31be      ACALL 0x29BE           ;M 
2995  f0        MOVX @DPTR,A           ;M 
2996  ef        MOV A,R7               ;M 
2997  31e8      ACALL 0x29E8           ;M 
2999  e4        CLR A                  ;M 
299A  f0        MOVX @DPTR,A           ;M 
299B  75f010    MOV dir,# B, #0x10     ;M 
299E  ef        MOV A,R7               ;M 
299F  31c5      ACALL 0x29C5           ;M 
29A1  e0        MOVX A,@DPTR           ;M 
29A2  54bf      ANL A,# #0xBF          ;M 
29A4  4480      ORL A,# #0x80          ;M 
29A6  fe        MOV R6,A               ;M 
29A7  75f010    MOV dir,# B, #0x10     ;M 
29AA  ef        MOV A,R7               ;M 
29AB  31c5      ACALL 0x29C5           ;M 
29AD  ee        MOV A,R6               ;M 
29AE  f0        MOVX @DPTR,A           ;M 
29AF  d0d0      POP dir PSW            ;M 
29B1  92af      MOV bit,C IE.7         ;M 
29B3  22        RET                    ;M 

sub_29B4:  ; M func, size~21
29B4  908d01    MOV DPTR,# #0x8D01     ;M dptr win: win-8x (0x8D01)
29B7  1248f3    LCALL 0x48F3           ;M 
29BA  75f002    MOV dir,# B, #0x02     ;M 
29BD  ef        MOV A,R7               ;M 
29BE  1248f3    LCALL 0x48F3           ;M 
29C1  e4        CLR A                  ;M 
29C2  f0        MOVX @DPTR,A           ;M 
29C3  a3        INC DPTR               ;M 
29C4  22        RET                    ;M 
29C5  .db 90 81 03 02

sub_29C9:  ; M func, size~10
29C9  48        ORL A,R0               ;M 
29CA  f3        MOVX @R1,A             ;M 
29CB  f582      MOV dir,A DPL          ;M 
29CD  e4        CLR A                  ;M 
29CE  3493      ADDC A,# #0x93         ;M 
29D0  f583      MOV dir,A DPH          ;M 
29D2  22        RET                    ;M 

sub_29D3:  ; M func, size~9
29D3  1248f3    LCALL 0x48F3           ;M 
29D6  e0        MOVX A,@DPTR           ;M 
29D7  fd        MOV R5,A               ;M 
29D8  75f010    MOV dir,# B, #0x10     ;M 
29DB  22        RET                    ;M 

sub_29DC:  ; M func, size~12
29DC  1248f3    LCALL 0x48F3           ;M 
29DF  e0        MOVX A,@DPTR           ;M 
29E0  fe        MOV R6,A               ;M 
29E1  ed        MOV A,R5               ;M 
29E2  ff        MOV R7,A               ;M 
29E3  909fd2    MOV DPTR,# #0x9FD2     ;M dptr win: win-9x (0x9FD2)
29E6  e0        MOVX A,@DPTR           ;M 
29E7  22        RET                    ;M 

sub_29E8:  ; M func, size~26
29E8  25e0      ADD A,dir ACC          ;M 
29EA  2401      ADD A,# #0x01          ;M 
29EC  f582      MOV dir,A DPL          ;M 
29EE  e4        CLR A                  ;M 
29EF  3492      ADDC A,# #0x92         ;M 
29F1  f583      MOV dir,A DPH          ;M 
29F3  e4        CLR A                  ;M 
29F4  f0        MOVX @DPTR,A           ;M 
29F5  a3        INC DPTR               ;M 
29F6  f0        MOVX @DPTR,A           ;M 
29F7  7481      MOV A,# #0x81          ;M 
29F9  2f        ADD A,R7               ;M 
29FA  f582      MOV dir,A DPL          ;M 
29FC  e4        CLR A                  ;M 
29FD  349c      ADDC A,# #0x9C         ;M 
29FF  f583      MOV dir,A DPH          ;M 
2A01  22        RET                    ;M 

sub_2A02:  ; M func, size~220
2A02  d3        SETB C                 ;M 
2A03  10af01    JBC IE.7, 0x2A07       ;M 
2A06  c3        CLR C                  ;M 
2A07  c0d0      PUSH dir PSW           ;M 
2A09  90a16e    MOV DPTR,# #0xA16E     ;M dptr win: win-Ax (0xA16E)
2A0C  ef        MOV A,R7               ;M 
2A0D  f0        MOVX @DPTR,A           ;M 
2A0E  a3        INC DPTR               ;M 
2A0F  ed        MOV A,R5               ;M 
2A10  f0        MOVX @DPTR,A           ;M 
2A11  9124      ACALL 0x2C24           ;M 
2A13  e0        MOVX A,@DPTR           ;M 
2A14  90a174    MOV DPTR,# #0xA174     ;M dptr win: win-Ax (0xA174)
2A17  f0        MOVX @DPTR,A           ;M 
2A18  ed        MOV A,R5               ;M 
2A19  547f      ANL A,# #0x7F          ;M 
2A1B  90a172    MOV DPTR,# #0xA172     ;M dptr win: win-Ax (0xA172)
2A1E  f0        MOVX @DPTR,A           ;M 
2A1F  eb        MOV A,R3               ;M 
2A20  702c      JNZ 0x2A4E             ;M 
2A22  90a16e    MOV DPTR,# #0xA16E     ;M dptr win: win-Ax (0xA16E)
2A25  e0        MOVX A,@DPTR           ;M 
2A26  fd        MOV R5,A               ;M 
2A27  75f012    MOV dir,# B, #0x12     ;M 
2A2A  915a      ACALL 0x2C5A           ;M 
2A2C  e0        MOVX A,@DPTR           ;M 
2A2D  54f7      ANL A,# #0xF7          ;M 
2A2F  f0        MOVX @DPTR,A           ;M 
2A30  90a174    MOV DPTR,# #0xA174     ;M dptr win: win-Ax (0xA174)
2A33  e0        MOVX A,@DPTR           ;M 
2A34  547f      ANL A,# #0x7F          ;M 
2A36  f0        MOVX @DPTR,A           ;M 
2A37  af05      MOV R7,dir 0x05        ;M 
2A39  90a172    MOV DPTR,# #0xA172     ;M dptr win: win-Ax (0xA172)
2A3C  e0        MOVX A,@DPTR           ;M 
2A3D  fd        MOV R5,A               ;M 
2A3E  12b7dd    LCALL 0xB7DD           ;M 
2A41  f11a      ACALL 0x2F1A           ;M 
2A43  e4        CLR A                  ;M 
2A44  90a0e0    MOV DPTR,# #0xA0E0     ;M dptr win: win-Ax (0xA0E0)
2A47  f0        MOVX @DPTR,A           ;M 
2A48  fb        MOV R3,A               ;M 
2A49  12b813    LCALL 0xB813           ;M 
2A4C  8050      SJMP 0x2A9E            ;M 
2A4E  f11a      ACALL 0x2F1A           ;M 
2A50  90a0e0    MOV DPTR,# #0xA0E0     ;M dptr win: win-Ax (0xA0E0)
2A53  7405      MOV A,# #0x05          ;M 
2A55  f0        MOVX @DPTR,A           ;M 
2A56  e4        CLR A                  ;M 
2A57  fb        MOV R3,A               ;M 
2A58  12b813    LCALL 0xB813           ;M 
2A5B  90a173    MOV DPTR,# #0xA173     ;M dptr win: win-Ax (0xA173)
2A5E  12bc72    LCALL 0xBC72           ;M 
2A61  e0        MOVX A,@DPTR           ;M 
2A62  d3        SETB C                 ;M 
2A63  9402      SUBB A,# #0x02         ;M 
2A65  9004cf    MOV DPTR,# #0x04CF     ;M dptr win: RAM/table (0x04CF)
2A68  5005      JNC 0x2A6F             ;M 
2A6A  7402      MOV A,# #0x02          ;M 
2A6C  f0        MOVX @DPTR,A           ;M 
2A6D  8002      SJMP 0x2A71            ;M 
2A6F  e4        CLR A                  ;M 
2A70  f0        MOVX @DPTR,A           ;M 
2A71  90a16e    MOV DPTR,# #0xA16E     ;M dptr win: win-Ax (0xA16E)
2A74  e0        MOVX A,@DPTR           ;M 
2A75  ff        MOV R7,A               ;M 
2A76  75f012    MOV dir,# B, #0x12     ;M 
2A79  915a      ACALL 0x2C5A           ;M 
2A7B  e0        MOVX A,@DPTR           ;M 
2A7C  4408      ORL A,# #0x08          ;M 
2A7E  f0        MOVX @DPTR,A           ;M 
2A7F  90a172    MOV DPTR,# #0xA172     ;M dptr win: win-Ax (0xA172)
2A82  e0        MOVX A,@DPTR           ;M 
2A83  a3        INC DPTR               ;M 
2A84  f0        MOVX @DPTR,A           ;M 
2A85  e0        MOVX A,@DPTR           ;M 
2A86  904101    MOV DPTR,# #0x4101     ;M dptr win: RAM/table-hi (0x4101)
2A89  93        MOVC A,@A+DPTR         ;M 
2A8A  fe        MOV R6,A               ;M 
2A8B  9124      ACALL 0x2C24           ;M 
2A8D  e0        MOVX A,@DPTR           ;M 
2A8E  5407      ANL A,# #0x07          ;M 
2A90  ff        MOV R7,A               ;M 
2A91  ee        MOV A,R6               ;M 
2A92  33        RLC A                  ;M 
2A93  33        RLC A                  ;M 
2A94  33        RLC A                  ;M 
2A95  54f8      ANL A,# #0xF8          ;M 
2A97  4f        ORL A,R7               ;M 
2A98  4480      ORL A,# #0x80          ;M 
2A9A  90a174    MOV DPTR,# #0xA174     ;M dptr win: win-Ax (0xA174)
2A9D  f0        MOVX @DPTR,A           ;M 
2A9E  90a16f    MOV DPTR,# #0xA16F     ;M dptr win: win-Ax (0xA16F)
2AA1  f109      ACALL 0x2F09           ;M 
2AA3  124fc0    LCALL 0x4FC0           ;M 
2AA6  ef        MOV A,R7               ;M 
2AA7  f0        MOVX @DPTR,A           ;M 
2AA8  ee        MOV A,R6               ;M 
2AA9  7005      JNZ 0x2AB0             ;M 
2AAB  9001c8    MOV DPTR,# #0x01C8     ;M dptr win: MAC/reg-low (0x01C8)
2AAE  ef        MOV A,R7               ;M 
2AAF  f0        MOVX @DPTR,A           ;M 
2AB0  90a174    MOV DPTR,# #0xA174     ;M dptr win: win-Ax (0xA174)
2AB3  f109      ACALL 0x2F09           ;M 
2AB5  75f010    MOV dir,# B, #0x10     ;M 
2AB8  9128      ACALL 0x2C28           ;M 
2ABA  ef        MOV A,R7               ;M 
2ABB  f0        MOVX @DPTR,A           ;M 
2ABC  75f010    MOV dir,# B, #0x10     ;M 
2ABF  ee        MOV A,R6               ;M 
2AC0  d1ed      ACALL 0x2EED           ;M 
2AC2  e0        MOVX A,@DPTR           ;M 
2AC3  54fc      ANL A,# #0xFC          ;M 
2AC5  ff        MOV R7,A               ;M 
2AC6  90a171    MOV DPTR,# #0xA171     ;M dptr win: win-Ax (0xA171)
2AC9  e0        MOVX A,@DPTR           ;M 
2ACA  4f        ORL A,R7               ;M 
2ACB  fe        MOV R6,A               ;M 
2ACC  90a16e    MOV DPTR,# #0xA16E     ;M dptr win: win-Ax (0xA16E)
2ACF  e0        MOVX A,@DPTR           ;M 
2AD0  ff        MOV R7,A               ;M 
2AD1  d1ea      ACALL 0x2EEA           ;M 
2AD3  ee        MOV A,R6               ;M 
2AD4  f0        MOVX @DPTR,A           ;M 
2AD5  7d01      MOV R5,# #0x01         ;M 
2AD7  315a      ACALL 0x295A           ;M 
2AD9  d0d0      POP dir PSW            ;M 
2ADB  92af      MOV bit,C IE.7         ;M 
2ADD  22        RET                    ;M 

sub_2ADE:  ; M func, size~21
2ADE  e4        CLR A                  ;M 
2ADF  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2AE2  f0        MOVX @DPTR,A           ;M 
2AE3  909e47    MOV DPTR,# #0x9E47     ;M dptr win: win-9x (0x9E47)
2AE6  e0        MOVX A,@DPTR           ;M 
2AE7  fe        MOV R6,A               ;M 
2AE8  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2AEB  e0        MOVX A,@DPTR           ;M 
2AEC  ff        MOV R7,A               ;M 
2AED  c3        CLR C                  ;M 
2AEE  9e        SUBB A,R6              ;M 
2AEF  4002      JC 0x2AF3              ;M 
2AF1  810e      AJMP 0x2C0E            ;M 

sub_2AF3:  ; M func, size~8
2AF3  127322    LCALL 0x7322           ;M 
2AF6  ef        MOV A,R7               ;M 
2AF7  7002      JNZ 0x2AFB             ;M 
2AF9  8106      AJMP 0x2C06            ;M 

sub_2AFB:  ; M func, size~22
2AFB  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2AFE  e0        MOVX A,@DPTR           ;M 
2AFF  ff        MOV R7,A               ;M 
2B00  75f012    MOV dir,# B, #0x12     ;M 
2B03  915a      ACALL 0x2C5A           ;M 
2B05  e0        MOVX A,@DPTR           ;M 
2B06  fe        MOV R6,A               ;M 
2B07  13        RRC A                  ;M 
2B08  13        RRC A                  ;M 
2B09  13        RRC A                  ;M 
2B0A  541f      ANL A,# #0x1F          ;M 
2B0C  20e002    JB ACC.0, 0x2B11       ;M 
2B0F  8106      AJMP 0x2C06            ;M 

sub_2B11:  ; M func, size~39
2B11  9124      ACALL 0x2C24           ;M 
2B13  e0        MOVX A,@DPTR           ;M 
2B14  20e702    JB ACC.7, 0x2B19       ;M 
2B17  8016      SJMP 0x2B2F            ;M 
2B19  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2B1C  e0        MOVX A,@DPTR           ;M 
2B1D  f9        MOV R1,A               ;M 
2B1E  75f010    MOV dir,# B, #0x10     ;M 
2B21  908102    MOV DPTR,# #0x8102     ;M dptr win: win-8x (0x8102)
2B24  1248f3    LCALL 0x48F3           ;M 
2B27  e0        MOVX A,@DPTR           ;M 
2B28  90a084    MOV DPTR,# #0xA084     ;M dptr win: win-Ax (0xA084)
2B2B  f0        MOVX @DPTR,A           ;M 
2B2C  20e709    JB ACC.7, 0x2B38       ;M 
2B2F  9001c1    MOV DPTR,# #0x01C1     ;M dptr win: MAC/reg-low (0x01C1)
2B32  e0        MOVX A,@DPTR           ;M 
2B33  4420      ORL A,# #0x20          ;M 
2B35  f0        MOVX @DPTR,A           ;M 
2B36  8106      AJMP 0x2C06            ;M 

sub_2B38:  ; M func, size~150
2B38  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2B3B  e0        MOVX A,@DPTR           ;M 
2B3C  ff        MOV R7,A               ;M 
2B3D  75f012    MOV dir,# B, #0x12     ;M 
2B40  911c      ACALL 0x2C1C           ;M 
2B42  540f      ANL A,# #0x0F          ;M 
2B44  fd        MOV R5,A               ;M 
2B45  75f012    MOV dir,# B, #0x12     ;M 
2B48  ef        MOV A,R7               ;M 
2B49  129930    LCALL 0x9930           ;M 
2B4C  f113      ACALL 0x2F13           ;M 
2B4E  ed        MOV A,R5               ;M 
2B4F  f0        MOVX @DPTR,A           ;M 
2B50  e9        MOV A,R1               ;M 
2B51  f1ce      ACALL 0x2FCE           ;M 
2B53  90a084    MOV DPTR,# #0xA084     ;M dptr win: win-Ax (0xA084)
2B56  e0        MOVX A,@DPTR           ;M 
2B57  5440      ANL A,# #0x40          ;M 
2B59  129aa2    LCALL 0x9AA2           ;M 
2B5C  7b01      MOV R3,# #0x01         ;M 
2B5E  7a00      MOV R2,# #0x00         ;M 
2B60  7d02      MOV R5,# #0x02         ;M 
2B62  7f10      MOV R7,# #0x10         ;M 
2B64  12901d    LCALL 0x901D           ;M 
2B67  90a084    MOV DPTR,# #0xA084     ;M dptr win: win-Ax (0xA084)
2B6A  e0        MOVX A,@DPTR           ;M 
2B6B  30e623    JNB ACC.6, 0x2B91      ;M 
2B6E  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2B71  e0        MOVX A,@DPTR           ;M 
2B72  ff        MOV R7,A               ;M 
2B73  75f012    MOV dir,# B, #0x12     ;M 
2B76  911c      ACALL 0x2C1C           ;M 
2B78  54f0      ANL A,# #0xF0          ;M 
2B7A  f0        MOVX @DPTR,A           ;M 
2B7B  75f012    MOV dir,# B, #0x12     ;M 
2B7E  ef        MOV A,R7               ;M 
2B7F  911c      ACALL 0x2C1C           ;M 
2B81  540f      ANL A,# #0x0F          ;M 
2B83  f0        MOVX @DPTR,A           ;M 
2B84  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2B87  e0        MOVX A,@DPTR           ;M 
2B88  ff        MOV R7,A               ;M 
2B89  75f010    MOV dir,# B, #0x10     ;M 
2B8C  908100    MOV DPTR,# #0x8100     ;M dptr win: win-8x (0x8100)
2B8F  805e      SJMP 0x2BEF            ;M 
2B91  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2B94  e0        MOVX A,@DPTR           ;M 
2B95  fc        MOV R4,A               ;M 
2B96  75f012    MOV dir,# B, #0x12     ;M 
2B99  911c      ACALL 0x2C1C           ;M 
2B9B  540f      ANL A,# #0x0F          ;M 
2B9D  602f      JZ 0x2BCE              ;M 
2B9F  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2BA2  e0        MOVX A,@DPTR           ;M 
2BA3  fe        MOV R6,A               ;M 
2BA4  75f012    MOV dir,# B, #0x12     ;M 
2BA7  d1f8      ACALL 0x2EF8           ;M 
2BA9  e0        MOVX A,@DPTR           ;M 
2BAA  fd        MOV R5,A               ;M 
2BAB  75f012    MOV dir,# B, #0x12     ;M 
2BAE  ee        MOV A,R6               ;M 
2BAF  124b44    LCALL 0x4B44           ;M 
2BB2  f123      ACALL 0x2F23           ;M 
2BB4  af04      MOV R7,dir 0x04        ;M 
2BB6  7b01      MOV R3,# #0x01         ;M 
2BB8  5102      ACALL 0x2A02           ;M 
2BBA  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2BBD  e0        MOVX A,@DPTR           ;M 
2BBE  75f012    MOV dir,# B, #0x12     ;M 
2BC1  911c      ACALL 0x2C1C           ;M 
2BC3  ff        MOV R7,A               ;M 
2BC4  54f0      ANL A,# #0xF0          ;M 
2BC6  fe        MOV R6,A               ;M 
2BC7  ef        MOV A,R7               ;M 
2BC8  14        DEC A                  ;M 
2BC9  540f      ANL A,# #0x0F          ;M 
2BCB  4e        ORL A,R6               ;M 
2BCC  f0        MOVX @DPTR,A           ;M 
2BCD  22        RET                    ;M 

sub_2BCE:  ; M func, size~65
2BCE  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2BD1  e0        MOVX A,@DPTR           ;M 
2BD2  ff        MOV R7,A               ;M 
2BD3  75f012    MOV dir,# B, #0x12     ;M 
2BD6  915a      ACALL 0x2C5A           ;M 
2BD8  e0        MOVX A,@DPTR           ;M 
2BD9  c4        SWAP A                 ;M 
2BDA  5403      ANL A,# #0x03          ;M 
2BDC  fe        MOV R6,A               ;M 
2BDD  be0104    CJNE R6,# #0x01, 0x2BE4 ;M 
2BE0  9160      ACALL 0x2C60           ;M 
2BE2  8022      SJMP 0x2C06            ;M 
2BE4  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2BE7  e0        MOVX A,@DPTR           ;M 
2BE8  ff        MOV R7,A               ;M 
2BE9  75f012    MOV dir,# B, #0x12     ;M 
2BEC  90938e    MOV DPTR,# #0x938E     ;M dptr win: win-9x (0x938E)
2BEF  1248f3    LCALL 0x48F3           ;M 
2BF2  e0        MOVX A,@DPTR           ;M 
2BF3  fd        MOV R5,A               ;M 
2BF4  75f012    MOV dir,# B, #0x12     ;M 
2BF7  ef        MOV A,R7               ;M 
2BF8  124b44    LCALL 0x4B44           ;M 
2BFB  f124      ACALL 0x2F24           ;M 
2BFD  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2C00  e0        MOVX A,@DPTR           ;M 
2C01  ff        MOV R7,A               ;M 
2C02  e4        CLR A                  ;M 
2C03  fb        MOV R3,A               ;M 
2C04  5102      ACALL 0x2A02           ;M 
2C06  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
2C09  e0        MOVX A,@DPTR           ;M 
2C0A  04        INC A                  ;M 
2C0B  f0        MOVX @DPTR,A           ;M 
2C0C  41e3      AJMP 0x2AE3            ;M 
2C0E  .db 22

sub_2C0F:  ; M func, size~21
2C0F  f0        MOVX @DPTR,A           ;M 
2C10  ef        MOV A,R7               ;M 
2C11  4480      ORL A,# #0x80          ;M 
2C13  90a06e    MOV DPTR,# #0xA06E     ;M dptr win: win-Ax (0xA06E)
2C16  f0        MOVX @DPTR,A           ;M 
2C17  75f012    MOV dir,# B, #0x12     ;M 
2C1A  e55e      MOV A,dir 0x5E         ;M 
2C1C  909386    MOV DPTR,# #0x9386     ;M dptr win: win-9x (0x9386)
2C1F  1248f3    LCALL 0x48F3           ;M 
2C22  e0        MOVX A,@DPTR           ;M 
2C23  22        RET                    ;M 

sub_2C24:  ; M func, size~10
2C24  75f010    MOV dir,# B, #0x10     ;M 
2C27  ef        MOV A,R7               ;M 
2C28  908101    MOV DPTR,# #0x8101     ;M dptr win: win-8x (0x8101)
2C2B  0248f3    LJMP 0x48F3            ;M 

sub_2C2E:  ; M func, size~50
2C2E  f0        MOVX @DPTR,A           ;M 
2C2F  75f012    MOV dir,# B, #0x12     ;M 
2C32  e55e      MOV A,dir 0x5E         ;M 
2C34  909386    MOV DPTR,# #0x9386     ;M dptr win: win-9x (0x9386)
2C37  1248f3    LCALL 0x48F3           ;M 
2C3A  e0        MOVX A,@DPTR           ;M 
2C3B  54f0      ANL A,# #0xF0          ;M 
2C3D  f0        MOVX @DPTR,A           ;M 
2C3E  75f012    MOV dir,# B, #0x12     ;M 
2C41  e55e      MOV A,dir 0x5E         ;M 
2C43  90938e    MOV DPTR,# #0x938E     ;M dptr win: win-9x (0x938E)
2C46  1248f3    LCALL 0x48F3           ;M 
2C49  74ff      MOV A,# #0xFF          ;M 
2C4B  f0        MOVX @DPTR,A           ;M 
2C4C  ed        MOV A,R5               ;M 
2C4D  5403      ANL A,# #0x03          ;M 
2C4F  c4        SWAP A                 ;M 
2C50  33        RLC A                  ;M 
2C51  33        RLC A                  ;M 
2C52  54c0      ANL A,# #0xC0          ;M 
2C54  ff        MOV R7,A               ;M 
2C55  75f012    MOV dir,# B, #0x12     ;M 
2C58  e55e      MOV A,dir 0x5E         ;M 
2C5A  909384    MOV DPTR,# #0x9384     ;M dptr win: win-9x (0x9384)
2C5D  0248f3    LJMP 0x48F3            ;M 

sub_2C60:  ; M func, size~224
2C60  ad07      MOV R5,dir 0x07        ;M 
2C62  90a08a    MOV DPTR,# #0xA08A     ;M dptr win: win-Ax (0xA08A)
2C65  7404      MOV A,# #0x04          ;M 
2C67  f0        MOVX @DPTR,A           ;M 
2C68  75f012    MOV dir,# B, #0x12     ;M 
2C6B  ef        MOV A,R7               ;M 
2C6C  129b2b    LCALL 0x9B2B           ;M 
2C6F  90a08b    MOV DPTR,# #0xA08B     ;M dptr win: win-Ax (0xA08B)
2C72  f0        MOVX @DPTR,A           ;M 
2C73  75f012    MOV dir,# B, #0x12     ;M 
2C76  ef        MOV A,R7               ;M 
2C77  911c      ACALL 0x2C1C           ;M 
2C79  c4        SWAP A                 ;M 
2C7A  540f      ANL A,# #0x0F          ;M 
2C7C  90a089    MOV DPTR,# #0xA089     ;M dptr win: win-Ax (0xA089)
2C7F  f0        MOVX @DPTR,A           ;M 
2C80  75f010    MOV dir,# B, #0x10     ;M 
2C83  ed        MOV A,R5               ;M 
2C84  d1ed      ACALL 0x2EED           ;M 
2C86  e0        MOVX A,@DPTR           ;M 
2C87  5403      ANL A,# #0x03          ;M 
2C89  90a087    MOV DPTR,# #0xA087     ;M dptr win: win-Ax (0xA087)
2C8C  f0        MOVX @DPTR,A           ;M 
2C8D  75f012    MOV dir,# B, #0x12     ;M 
2C90  ed        MOV A,R5               ;M 
2C91  f133      ACALL 0x2F33           ;M 
2C93  90a088    MOV DPTR,# #0xA088     ;M dptr win: win-Ax (0xA088)
2C96  f0        MOVX @DPTR,A           ;M 
2C97  75f012    MOV dir,# B, #0x12     ;M 
2C9A  ed        MOV A,R5               ;M 
2C9B  f103      ACALL 0x2F03           ;M 
2C9D  e0        MOVX A,@DPTR           ;M 
2C9E  547f      ANL A,# #0x7F          ;M 
2CA0  90a085    MOV DPTR,# #0xA085     ;M dptr win: win-Ax (0xA085)
2CA3  f0        MOVX @DPTR,A           ;M 
2CA4  a3        INC DPTR               ;M 
2CA5  f0        MOVX @DPTR,A           ;M 
2CA6  12bc72    LCALL 0xBC72           ;M 
2CA9  e0        MOVX A,@DPTR           ;M 
2CAA  ff        MOV R7,A               ;M 
2CAB  d3        SETB C                 ;M 
2CAC  9402      SUBB A,# #0x02         ;M 
2CAE  5008      JNC 0x2CB8             ;M 
2CB0  90a08a    MOV DPTR,# #0xA08A     ;M dptr win: win-Ax (0xA08A)
2CB3  7402      MOV A,# #0x02          ;M 
2CB5  f0        MOVX @DPTR,A           ;M 
2CB6  800c      SJMP 0x2CC4            ;M 
2CB8  ef        MOV A,R7               ;M 
2CB9  c3        CLR C                  ;M 
2CBA  940f      SUBB A,# #0x0F         ;M 
2CBC  4006      JC 0x2CC4              ;M 
2CBE  90a08a    MOV DPTR,# #0xA08A     ;M dptr win: win-Ax (0xA08A)
2CC1  7405      MOV A,# #0x05          ;M 
2CC3  f0        MOVX @DPTR,A           ;M 
2CC4  90a089    MOV DPTR,# #0xA089     ;M dptr win: win-Ax (0xA089)
2CC7  e0        MOVX A,@DPTR           ;M 
2CC8  04        INC A                  ;M 
2CC9  f0        MOVX @DPTR,A           ;M 
2CCA  a3        INC DPTR               ;M 
2CCB  e0        MOVX A,@DPTR           ;M 
2CCC  ff        MOV R7,A               ;M 
2CCD  90a089    MOV DPTR,# #0xA089     ;M dptr win: win-Ax (0xA089)
2CD0  e0        MOVX A,@DPTR           ;M 
2CD1  c3        CLR C                  ;M 
2CD2  9f        SUBB A,R7              ;M 
2CD3  4022      JC 0x2CF7              ;M 
2CD5  e4        CLR A                  ;M 
2CD6  f0        MOVX @DPTR,A           ;M 
2CD7  90a08b    MOV DPTR,# #0xA08B     ;M dptr win: win-Ax (0xA08B)
2CDA  e0        MOVX A,@DPTR           ;M 
2CDB  ff        MOV R7,A               ;M 
2CDC  75f012    MOV dir,# B, #0x12     ;M 
2CDF  ed        MOV A,R5               ;M 
2CE0  129b20    LCALL 0x9B20           ;M 
2CE3  ef        MOV A,R7               ;M 
2CE4  f0        MOVX @DPTR,A           ;M 
2CE5  90a086    MOV DPTR,# #0xA086     ;M dptr win: win-Ax (0xA086)
2CE8  e0        MOVX A,@DPTR           ;M 
2CE9  904139    MOV DPTR,# #0x4139     ;M dptr win: RAM/table-hi (0x4139)
2CEC  93        MOVC A,@A+DPTR         ;M 
2CED  ff        MOV R7,A               ;M 
2CEE  75f012    MOV dir,# B, #0x12     ;M 
2CF1  ed        MOV A,R5               ;M 
2CF2  12991f    LCALL 0x991F           ;M 
2CF5  ef        MOV A,R7               ;M 
2CF6  f0        MOVX @DPTR,A           ;M 
2CF7  90a089    MOV DPTR,# #0xA089     ;M dptr win: win-Ax (0xA089)
2CFA  e0        MOVX A,@DPTR           ;M 
2CFB  540f      ANL A,# #0x0F          ;M 
2CFD  c4        SWAP A                 ;M 
2CFE  54f0      ANL A,# #0xF0          ;M 
2D00  ff        MOV R7,A               ;M 
2D01  75f012    MOV dir,# B, #0x12     ;M 
2D04  ed        MOV A,R5               ;M 
2D05  911c      ACALL 0x2C1C           ;M 
2D07  540f      ANL A,# #0x0F          ;M 
2D09  4f        ORL A,R7               ;M 
2D0A  f0        MOVX @DPTR,A           ;M 
2D0B  75f012    MOV dir,# B, #0x12     ;M 
2D0E  ed        MOV A,R5               ;M 
2D0F  915a      ACALL 0x2C5A           ;M 
2D11  e0        MOVX A,@DPTR           ;M 
2D12  54c0      ANL A,# #0xC0          ;M 
2D14  c4        SWAP A                 ;M 
2D15  540f      ANL A,# #0x0F          ;M 
2D17  ff        MOV R7,A               ;M 
2D18  75f012    MOV dir,# B, #0x12     ;M 
2D1B  ed        MOV A,R5               ;M 
2D1C  124b44    LCALL 0x4B44           ;M 
2D1F  54f3      ANL A,# #0xF3          ;M 
2D21  4f        ORL A,R7               ;M 
2D22  f0        MOVX @DPTR,A           ;M 
2D23  75f012    MOV dir,# B, #0x12     ;M 
2D26  ed        MOV A,R5               ;M 
2D27  f103      ACALL 0x2F03           ;M 
2D29  e0        MOVX A,@DPTR           ;M 
2D2A  fe        MOV R6,A               ;M 
2D2B  75f012    MOV dir,# B, #0x12     ;M 
2D2E  ed        MOV A,R5               ;M 
2D2F  915a      ACALL 0x2C5A           ;M 
2D31  1266a2    LCALL 0x66A2           ;M 
2D34  90a171    MOV DPTR,# #0xA171     ;M dptr win: win-Ax (0xA171)
2D37  f0        MOVX @DPTR,A           ;M 
2D38  af05      MOV R7,dir 0x05        ;M 
2D3A  ad06      MOV R5,dir 0x06        ;M 
2D3C  e4        CLR A                  ;M 
2D3D  fb        MOV R3,A               ;M 
2D3E  4102      AJMP 0x2A02            ;M 

sub_2D40:  ; M func, size~123
2D40  8f5e      MOV dir,R7 0x5E        ;M 
2D42  8d5f      MOV dir,R5 0x5F        ;M 
2D44  8b60      MOV dir,R3 0x60        ;M 
2D46  75f010    MOV dir,# B, #0x10     ;M 
2D49  ef        MOV A,R7               ;M 
2D4A  d1ed      ACALL 0x2EED           ;M 
2D4C  e0        MOVX A,@DPTR           ;M 
2D4D  5403      ANL A,# #0x03          ;M 
2D4F  90a070    MOV DPTR,# #0xA070     ;M dptr win: win-Ax (0xA070)
2D52  129db2    LCALL 0x9DB2           ;M 
2D55  124fc3    LCALL 0x4FC3           ;M 
2D58  129f8a    LCALL 0x9F8A           ;M 
2D5B  fe        MOV R6,A               ;M 
2D5C  90a073    MOV DPTR,# #0xA073     ;M dptr win: win-Ax (0xA073)
2D5F  f0        MOVX @DPTR,A           ;M 
2D60  fb        MOV R3,A               ;M 
2D61  ef        MOV A,R7               ;M 
2D62  5480      ANL A,# #0x80          ;M 
2D64  90a075    MOV DPTR,# #0xA075     ;M dptr win: win-Ax (0xA075)
2D67  f12d      ACALL 0x2F2D           ;M 
2D69  90a077    MOV DPTR,# #0xA077     ;M dptr win: win-Ax (0xA077)
2D6C  129daa    LCALL 0x9DAA           ;M 
2D6F  f1d8      ACALL 0x2FD8           ;M 
2D71  e0        MOVX A,@DPTR           ;M 
2D72  90a076    MOV DPTR,# #0xA076     ;M dptr win: win-Ax (0xA076)
2D75  f0        MOVX @DPTR,A           ;M 
2D76  75f012    MOV dir,# B, #0x12     ;M 
2D79  e55e      MOV A,dir 0x5E         ;M 
2D7B  124b44    LCALL 0x4B44           ;M 
2D7E  5403      ANL A,# #0x03          ;M 
2D80  90a071    MOV DPTR,# #0xA071     ;M dptr win: win-Ax (0xA071)
2D83  f0        MOVX @DPTR,A           ;M 
2D84  9155      ACALL 0x2C55           ;M 
2D86  e0        MOVX A,@DPTR           ;M 
2D87  ff        MOV R7,A               ;M 
2D88  5403      ANL A,# #0x03          ;M 
2D8A  90a078    MOV DPTR,# #0xA078     ;M dptr win: win-Ax (0xA078)
2D8D  f0        MOVX @DPTR,A           ;M 
2D8E  9155      ACALL 0x2C55           ;M 
2D90  ef        MOV A,R7               ;M 
2D91  54cf      ANL A,# #0xCF          ;M 
2D93  4420      ORL A,# #0x20          ;M 
2D95  912e      ACALL 0x2C2E           ;M 
2D97  e0        MOVX A,@DPTR           ;M 
2D98  543f      ANL A,# #0x3F          ;M 
2D9A  4f        ORL A,R7               ;M 
2D9B  f0        MOVX @DPTR,A           ;M 
2D9C  eb        MOV A,R3               ;M 
2D9D  d3        SETB C                 ;M 
2D9E  9c        SUBB A,R4              ;M 
2D9F  400e      JC 0x2DAF              ;M 
2DA1  90a077    MOV DPTR,# #0xA077     ;M dptr win: win-Ax (0xA077)
2DA4  e0        MOVX A,@DPTR           ;M 
2DA5  90a073    MOV DPTR,# #0xA073     ;M dptr win: win-Ax (0xA073)
2DA8  f0        MOVX @DPTR,A           ;M 
2DA9  90a06d    MOV DPTR,# #0xA06D     ;M dptr win: win-Ax (0xA06D)
2DAC  f0        MOVX @DPTR,A           ;M 
2DAD  800c      SJMP 0x2DBB            ;M 
2DAF  90a073    MOV DPTR,# #0xA073     ;M dptr win: win-Ax (0xA073)
2DB2  e0        MOVX A,@DPTR           ;M 
2DB3  ff        MOV R7,A               ;M 
2DB4  129d53    LCALL 0x9D53           ;M 
2DB7  6002      JZ 0x2DBB              ;M 
2DB9  c157      AJMP 0x2E57            ;M 

sub_2DBB:  ; M func, size~26
2DBB  90a074    MOV DPTR,# #0xA074     ;M dptr win: win-Ax (0xA074)
2DBE  e55f      MOV A,dir 0x5F         ;M 
2DC0  f0        MOVX @DPTR,A           ;M 
2DC1  e4        CLR A                  ;M 
2DC2  90a072    MOV DPTR,# #0xA072     ;M dptr win: win-Ax (0xA072)
2DC5  f0        MOVX @DPTR,A           ;M 
2DC6  90a074    MOV DPTR,# #0xA074     ;M dptr win: win-Ax (0xA074)
2DC9  e0        MOVX A,@DPTR           ;M 
2DCA  ff        MOV R7,A               ;M 
2DCB  90a072    MOV DPTR,# #0xA072     ;M dptr win: win-Ax (0xA072)
2DCE  e0        MOVX A,@DPTR           ;M 
2DCF  c3        CLR C                  ;M 
2DD0  9f        SUBB A,R7              ;M 
2DD1  4002      JC 0x2DD5              ;M 
2DD3  c1b4      AJMP 0x2EB4            ;M 

sub_2DD5:  ; M func, size~48
2DD5  90a075    MOV DPTR,# #0xA075     ;M dptr win: win-Ax (0xA075)
2DD8  e0        MOVX A,@DPTR           ;M 
2DD9  602a      JZ 0x2E05              ;M 
2DDB  90a073    MOV DPTR,# #0xA073     ;M dptr win: win-Ax (0xA073)
2DDE  e0        MOVX A,@DPTR           ;M 
2DDF  f9        MOV R1,A               ;M 
2DE0  90a06e    MOV DPTR,# #0xA06E     ;M dptr win: win-Ax (0xA06E)
2DE3  f0        MOVX @DPTR,A           ;M 
2DE4  d1f3      ACALL 0x2EF3           ;M 
2DE6  e0        MOVX A,@DPTR           ;M 
2DE7  ff        MOV R7,A               ;M 
2DE8  9117      ACALL 0x2C17           ;M 
2DEA  540f      ANL A,# #0x0F          ;M 
2DEC  12bd2e    LCALL 0xBD2E           ;M 
2DEF  f113      ACALL 0x2F13           ;M 
2DF1  ef        MOV A,R7               ;M 
2DF2  f0        MOVX @DPTR,A           ;M 
2DF3  e9        MOV A,R1               ;M 
2DF4  f1ce      ACALL 0x2FCE           ;M 
2DF6  e4        CLR A                  ;M 
2DF7  90a0b9    MOV DPTR,# #0xA0B9     ;M dptr win: win-Ax (0xA0B9)
2DFA  f0        MOVX @DPTR,A           ;M 
2DFB  a3        INC DPTR               ;M 
2DFC  f0        MOVX @DPTR,A           ;M 
2DFD  7b05      MOV R3,# #0x05         ;M 
2DFF  fa        MOV R2,A               ;M 
2E00  129d93    LCALL 0x9D93           ;M 
2E03  c1a6      AJMP 0x2EA6            ;M 

sub_2E05:  ; M func, size~12
2E05  90a076    MOV DPTR,# #0xA076     ;M dptr win: win-Ax (0xA076)
2E08  129da2    LCALL 0x9DA2           ;M 
2E0B  d3        SETB C                 ;M 
2E0C  9f        SUBB A,R7              ;M 
2E0D  5002      JNC 0x2E11             ;M 
2E0F  c197      AJMP 0x2E97            ;M 

sub_2E11:  ; M func, size~75
2E11  90a078    MOV DPTR,# #0xA078     ;M dptr win: win-Ax (0xA078)
2E14  e0        MOVX A,@DPTR           ;M 
2E15  6401      XRL A,# #0x01          ;M 
2E17  6010      JZ 0x2E29              ;M 
2E19  ed        MOV A,R5               ;M 
2E1A  d3        SETB C                 ;M 
2E1B  940c      SUBB A,# #0x0C         ;M 
2E1D  400a      JC 0x2E29              ;M 
2E1F  7b02      MOV R3,# #0x02         ;M 
2E21  af5e      MOV R7,dir 0x5E        ;M 
2E23  129c35    LCALL 0x9C35           ;M 
2E26  ef        MOV A,R7               ;M 
2E27  7018      JNZ 0x2E41             ;M 
2E29  90a073    MOV DPTR,# #0xA073     ;M dptr win: win-Ax (0xA073)
2E2C  e0        MOVX A,@DPTR           ;M 
2E2D  ff        MOV R7,A               ;M 
2E2E  90a076    MOV DPTR,# #0xA076     ;M dptr win: win-Ax (0xA076)
2E31  e0        MOVX A,@DPTR           ;M 
2E32  fd        MOV R5,A               ;M 
2E33  90a07c    MOV DPTR,# #0xA07C     ;M dptr win: win-Ax (0xA07C)
2E36  e55f      MOV A,dir 0x5F         ;M 
2E38  f0        MOVX @DPTR,A           ;M 
2E39  ab5e      MOV R3,dir 0x5E        ;M 
2E3B  129b33    LCALL 0x9B33           ;M 
2E3E  755f01    MOV dir,# 0x5F, #0x01  ;M 
2E41  75f012    MOV dir,# B, #0x12     ;M 
2E44  e55e      MOV A,dir 0x5E         ;M 
2E46  f1ea      ACALL 0x2FEA           ;M 
2E48  e0        MOVX A,@DPTR           ;M 
2E49  90a06e    MOV DPTR,# #0xA06E     ;M dptr win: win-Ax (0xA06E)
2E4C  f0        MOVX @DPTR,A           ;M 
2E4D  547f      ANL A,# #0x7F          ;M 
2E4F  ff        MOV R7,A               ;M 
2E50  a3        INC DPTR               ;M 
2E51  f0        MOVX @DPTR,A           ;M 
2E52  129d53    LCALL 0x9D53           ;M 
2E55  6005      JZ 0x2E5C              ;M 
2E57  90a076    MOV DPTR,# #0xA076     ;M dptr win: win-Ax (0xA076)
2E5A  c1df      AJMP 0x2EDF            ;M 

sub_2E5C:  ; M func, size~88
2E5C  90a078    MOV DPTR,# #0xA078     ;M dptr win: win-Ax (0xA078)
2E5F  e0        MOVX A,@DPTR           ;M 
2E60  6401      XRL A,# #0x01          ;M 
2E62  7042      JNZ 0x2EA6             ;M 
2E64  90a06f    MOV DPTR,# #0xA06F     ;M dptr win: win-Ax (0xA06F)
2E67  e0        MOVX A,@DPTR           ;M 
2E68  c3        CLR C                  ;M 
2E69  940d      SUBB A,# #0x0D         ;M 
2E6B  4039      JC 0x2EA6              ;M 
2E6D  75f012    MOV dir,# B, #0x12     ;M 
2E70  e55e      MOV A,dir 0x5E         ;M 
2E72  124fb0    LCALL 0x4FB0           ;M 
2E75  c4        SWAP A                 ;M 
2E76  13        RRC A                  ;M 
2E77  5407      ANL A,# #0x07          ;M 
2E79  30e02a    JNB ACC.0, 0x2EA6      ;M 
2E7C  e560      MOV A,dir 0x60         ;M 
2E7E  6026      JZ 0x2EA6              ;M 
2E80  90a075    MOV DPTR,# #0xA075     ;M dptr win: win-Ax (0xA075)
2E83  e0        MOVX A,@DPTR           ;M 
2E84  7020      JNZ 0x2EA6             ;M 
2E86  90a06e    MOV DPTR,# #0xA06E     ;M dptr win: win-Ax (0xA06E)
2E89  e0        MOVX A,@DPTR           ;M 
2E8A  ff        MOV R7,A               ;M 
2E8B  d1f3      ACALL 0x2EF3           ;M 
2E8D  ef        MOV A,R7               ;M 
2E8E  910f      ACALL 0x2C0F           ;M 
2E90  54f0      ANL A,# #0xF0          ;M 
2E92  4403      ORL A,# #0x03          ;M 
2E94  f0        MOVX @DPTR,A           ;M 
2E95  800f      SJMP 0x2EA6            ;M 
2E97  90a076    MOV DPTR,# #0xA076     ;M dptr win: win-Ax (0xA076)
2E9A  e0        MOVX A,@DPTR           ;M 
2E9B  ff        MOV R7,A               ;M 
2E9C  90a06e    MOV DPTR,# #0xA06E     ;M dptr win: win-Ax (0xA06E)
2E9F  f0        MOVX @DPTR,A           ;M 
2EA0  d1fe      ACALL 0x2EFE           ;M 
2EA2  ef        MOV A,R7               ;M 
2EA3  f0        MOVX @DPTR,A           ;M 
2EA4  800e      SJMP 0x2EB4            ;M 
2EA6  155f      DEC 0x5F               ;M 
2EA8  e55f      MOV A,dir 0x5F         ;M 
2EAA  6008      JZ 0x2EB4              ;M 
2EAC  90a072    MOV DPTR,# #0xA072     ;M dptr win: win-Ax (0xA072)
2EAF  e0        MOVX A,@DPTR           ;M 
2EB0  04        INC A                  ;M 
2EB1  f0        MOVX @DPTR,A           ;M 
2EB2  a1c6      AJMP 0x2DC6            ;M 

sub_2EB4:  ; M func, size~55
2EB4  75f012    MOV dir,# B, #0x12     ;M 
2EB7  e55e      MOV A,dir 0x5E         ;M 
2EB9  129930    LCALL 0x9930           ;M 
2EBC  129a91    LCALL 0x9A91           ;M 
2EBF  e55e      MOV A,dir 0x5E         ;M 
2EC1  f0        MOVX @DPTR,A           ;M 
2EC2  90a06e    MOV DPTR,# #0xA06E     ;M dptr win: win-Ax (0xA06E)
2EC5  e0        MOVX A,@DPTR           ;M 
2EC6  ff        MOV R7,A               ;M 
2EC7  f113      ACALL 0x2F13           ;M 
2EC9  ef        MOV A,R7               ;M 
2ECA  f0        MOVX @DPTR,A           ;M 
2ECB  90a070    MOV DPTR,# #0xA070     ;M dptr win: win-Ax (0xA070)
2ECE  129aa1    LCALL 0x9AA1           ;M 
2ED1  7b01      MOV R3,# #0x01         ;M 
2ED3  7a00      MOV R2,# #0x00         ;M 
2ED5  7d05      MOV R5,# #0x05         ;M 
2ED7  7f08      MOV R7,# #0x08         ;M 
2ED9  12901d    LCALL 0x901D           ;M 
2EDC  90a06e    MOV DPTR,# #0xA06E     ;M dptr win: win-Ax (0xA06E)
2EDF  e0        MOVX A,@DPTR           ;M 
2EE0  fd        MOV R5,A               ;M 
2EE1  90a070    MOV DPTR,# #0xA070     ;M dptr win: win-Ax (0xA070)
2EE4  f1de      ACALL 0x2FDE           ;M 
2EE6  af5e      MOV R7,dir 0x5E        ;M 
2EE8  4102      AJMP 0x2A02            ;M 
2EEA  .db 75

sub_2EEB:  ; M func, size~19
2EEB  f0        MOVX @DPTR,A           ;M 
2EEC  109081    JBC P1.0, 0x2E70       ;M 
2EEF  0502      INC 0x02               ;M 
2EF1  48        ORL A,R0               ;M 
2EF2  f3        MOVX @R1,A             ;M 
2EF3  75f012    MOV dir,# B, #0x12     ;M 
2EF6  e55e      MOV A,dir 0x5E         ;M 
2EF8  90938e    MOV DPTR,# #0x938E     ;M dptr win: win-9x (0x938E)
2EFB  0248f3    LJMP 0x48F3            ;M 

sub_2EFE:  ; M func, size~11
2EFE  75f012    MOV dir,# B, #0x12     ;M 
2F01  e55e      MOV A,dir 0x5E         ;M 
2F03  909387    MOV DPTR,# #0x9387     ;M dptr win: win-9x (0x9387)
2F06  0248f3    LJMP 0x48F3            ;M 

sub_2F09:  ; M func, size~8
2F09  e0        MOVX A,@DPTR           ;M 
2F0A  ff        MOV R7,A               ;M 
2F0B  90a16e    MOV DPTR,# #0xA16E     ;M dptr win: win-Ax (0xA16E)
2F0E  e0        MOVX A,@DPTR           ;M 
2F0F  fe        MOV R6,A               ;M 
2F10  22        RET                    ;M 

sub_2F11:  ; M func, size~9
2F11  e0        MOVX A,@DPTR           ;M 
2F12  fd        MOV R5,A               ;M 
2F13  90a0b5    MOV DPTR,# #0xA0B5     ;M dptr win: win-Ax (0xA0B5)
2F16  e4        CLR A                  ;M 
2F17  f0        MOVX @DPTR,A           ;M 
2F18  a3        INC DPTR               ;M 
2F19  22        RET                    ;M 

sub_2F1A:  ; M func, size~9
2F1A  90a16e    MOV DPTR,# #0xA16E     ;M dptr win: win-Ax (0xA16E)
2F1D  e0        MOVX A,@DPTR           ;M 
2F1E  ff        MOV R7,A               ;M 
2F1F  a3        INC DPTR               ;M 
2F20  e0        MOVX A,@DPTR           ;M 
2F21  fd        MOV R5,A               ;M 
2F22  22        RET                    ;M 

sub_2F23:  ; M func, size~10
2F23  fe        MOV R6,A               ;M 
2F24  13        RRC A                  ;M 
2F25  13        RRC A                  ;M 
2F26  5403      ANL A,# #0x03          ;M 
2F28  90a171    MOV DPTR,# #0xA171     ;M dptr win: win-Ax (0xA171)
2F2B  f0        MOVX @DPTR,A           ;M 
2F2C  22        RET                    ;M 

sub_2F2D:  ; M func, size~14
2F2D  f0        MOVX @DPTR,A           ;M 
2F2E  75f012    MOV dir,# B, #0x12     ;M 
2F31  e55e      MOV A,dir 0x5E         ;M 
2F33  909381    MOV DPTR,# #0x9381     ;M dptr win: win-9x (0x9381)
2F36  1248f3    LCALL 0x48F3           ;M 
2F39  e0        MOVX A,@DPTR           ;M 
2F3A  22        RET                    ;M 

sub_2F3B:  ; M func, size~122
2F3B  8f51      MOV dir,R7 0x51        ;M 
2F3D  75f012    MOV dir,# B, #0x12     ;M 
2F40  ef        MOV A,R7               ;M 
2F41  f1d8      ACALL 0x2FD8           ;M 
2F43  e0        MOVX A,@DPTR           ;M 
2F44  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
2F47  f0        MOVX @DPTR,A           ;M 
2F48  75f012    MOV dir,# B, #0x12     ;M 
2F4B  ef        MOV A,R7               ;M 
2F4C  124b44    LCALL 0x4B44           ;M 
2F4F  13        RRC A                  ;M 
2F50  13        RRC A                  ;M 
2F51  5403      ANL A,# #0x03          ;M 
2F53  90a05d    MOV DPTR,# #0xA05D     ;M dptr win: win-Ax (0xA05D)
2F56  f0        MOVX @DPTR,A           ;M 
2F57  ed        MOV A,R5               ;M 
2F58  d3        SETB C                 ;M 
2F59  942d      SUBB A,# #0x2D         ;M 
2F5B  400d      JC 0x2F6A              ;M 
2F5D  75f012    MOV dir,# B, #0x12     ;M 
2F60  e551      MOV A,dir 0x51         ;M 
2F62  f133      ACALL 0x2F33           ;M 
2F64  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
2F67  f0        MOVX @DPTR,A           ;M 
2F68  800c      SJMP 0x2F76            ;M 
2F6A  ed        MOV A,R5               ;M 
2F6B  d3        SETB C                 ;M 
2F6C  940f      SUBB A,# #0x0F         ;M 
2F6E  4006      JC 0x2F76              ;M 
2F70  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
2F73  740f      MOV A,# #0x0F          ;M 
2F75  f0        MOVX @DPTR,A           ;M 
2F76  75f012    MOV dir,# B, #0x12     ;M 
2F79  e551      MOV A,dir 0x51         ;M 
2F7B  f133      ACALL 0x2F33           ;M 
2F7D  fd        MOV R5,A               ;M 
2F7E  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
2F81  e0        MOVX A,@DPTR           ;M 
2F82  547f      ANL A,# #0x7F          ;M 
2F84  14        DEC A                  ;M 
2F85  ff        MOV R7,A               ;M 
2F86  ab51      MOV R3,dir 0x51        ;M 
2F88  128f87    LCALL 0x8F87           ;M 
2F8B  75f012    MOV dir,# B, #0x12     ;M 
2F8E  e551      MOV A,dir 0x51         ;M 
2F90  f1ea      ACALL 0x2FEA           ;M 
2F92  e0        MOVX A,@DPTR           ;M 
2F93  ff        MOV R7,A               ;M 
2F94  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
2F97  f0        MOVX @DPTR,A           ;M 
2F98  f1cf      ACALL 0x2FCF           ;M 
2F9A  a3        INC DPTR               ;M 
2F9B  e4        CLR A                  ;M 
2F9C  f0        MOVX @DPTR,A           ;M 
2F9D  a3        INC DPTR               ;M 
2F9E  e551      MOV A,dir 0x51         ;M 
2FA0  125205    LCALL 0x5205           ;M 
2FA3  7b05      MOV R3,# #0x05         ;M 
2FA5  fa        MOV R2,A               ;M 
2FA6  129d8c    LCALL 0x9D8C           ;M 
2FA9  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
2FAC  e0        MOVX A,@DPTR           ;M 
2FAD  fd        MOV R5,A               ;M 
2FAE  a3        INC DPTR               ;M 
2FAF  f1de      ACALL 0x2FDE           ;M 
2FB1  af51      MOV R7,dir 0x51        ;M 
2FB3  4102      AJMP 0x2A02            ;M 

sub_2FB5:  ; M func, size~36
2FB5  75f012    MOV dir,# B, #0x12     ;M 
2FB8  e55e      MOV A,dir 0x5E         ;M 
2FBA  90938e    MOV DPTR,# #0x938E     ;M dptr win: win-9x (0x938E)
2FBD  1248f3    LCALL 0x48F3           ;M 
2FC0  e0        MOVX A,@DPTR           ;M 
2FC1  ff        MOV R7,A               ;M 
2FC2  90a0b5    MOV DPTR,# #0xA0B5     ;M dptr win: win-Ax (0xA0B5)
2FC5  e4        CLR A                  ;M 
2FC6  f0        MOVX @DPTR,A           ;M 
2FC7  a3        INC DPTR               ;M 
2FC8  ef        MOV A,R7               ;M 
2FC9  f0        MOVX @DPTR,A           ;M 
2FCA  90a06e    MOV DPTR,# #0xA06E     ;M dptr win: win-Ax (0xA06E)
2FCD  e0        MOVX A,@DPTR           ;M 
2FCE  ff        MOV R7,A               ;M 
2FCF  90a0b3    MOV DPTR,# #0xA0B3     ;M dptr win: win-Ax (0xA0B3)
2FD2  e4        CLR A                  ;M 
2FD3  f0        MOVX @DPTR,A           ;M 
2FD4  a3        INC DPTR               ;M 
2FD5  ef        MOV A,R7               ;M 
2FD6  f0        MOVX @DPTR,A           ;M 
2FD7  22        RET                    ;M 
2FD8  .db 90

sub_2FD9:  ; M func, size~13
2FD9  93        MOVC A,@A+DPTR         ;M 
2FDA  8202      ANL C,bit 0x00.2       ;M 
2FDC  48        ORL A,R0               ;M 
2FDD  f3        MOVX @R1,A             ;M 
2FDE  e0        MOVX A,@DPTR           ;M 
2FDF  90a171    MOV DPTR,# #0xA171     ;M dptr win: win-Ax (0xA171)
2FE2  f0        MOVX @DPTR,A           ;M 
2FE3  e4        CLR A                  ;M 
2FE4  fb        MOV R3,A               ;M 
2FE5  22        RET                    ;M 

sub_2FE6:  ; M func, size~11
2FE6  e0        MOVX A,@DPTR           ;M 
2FE7  75f012    MOV dir,# B, #0x12     ;M 
2FEA  90938d    MOV DPTR,# #0x938D     ;M dptr win: win-9x (0x938D)
2FED  0248f3    LJMP 0x48F3            ;M 
2FF0  .db 32

sub_2FF1:  ; M func, size~59
2FF1  c0e0      PUSH dir ACC           ;M 
2FF3  c0f0      PUSH dir B             ;M 
2FF5  c083      PUSH dir DPH           ;M 
2FF7  c082      PUSH dir DPL           ;M 
2FF9  c0d0      PUSH dir PSW           ;M 
2FFB  75d000    MOV dir,# PSW, #0x00   ;M 
2FFE  c000      PUSH dir 0x00          ;M 
3000  c001      PUSH dir 0x01          ;M 
3002  c002      PUSH dir 0x02          ;M 
3004  c003      PUSH dir 0x03          ;M 
3006  c004      PUSH dir 0x04          ;M 
3008  c005      PUSH dir 0x05          ;M 
300A  c006      PUSH dir 0x06          ;M 
300C  c007      PUSH dir 0x07          ;M 
300E  1250ce    LCALL 0x50CE           ;M 
3011  d007      POP dir 0x07           ;M 
3013  d006      POP dir 0x06           ;M 
3015  d005      POP dir 0x05           ;M 
3017  d004      POP dir 0x04           ;M 
3019  d003      POP dir 0x03           ;M 
301B  d002      POP dir 0x02           ;M 
301D  d001      POP dir 0x01           ;M 
301F  d000      POP dir 0x00           ;M 
3021  d0d0      POP dir PSW            ;M 
3023  d082      POP dir DPL            ;M 
3025  d083      POP dir DPH            ;M 
3027  d0f0      POP dir B              ;M 
3029  d0e0      POP dir ACC            ;M 
302B  32        RETI                   ;M 

sub_302C:  ; M func, size~171
302C  c0e0      PUSH dir ACC           ;M 
302E  c0f0      PUSH dir B             ;M 
3030  c083      PUSH dir DPH           ;M 
3032  c082      PUSH dir DPL           ;M 
3034  c0d0      PUSH dir PSW           ;M 
3036  75d000    MOV dir,# PSW, #0x00   ;M 
3039  c000      PUSH dir 0x00          ;M 
303B  c001      PUSH dir 0x01          ;M 
303D  c002      PUSH dir 0x02          ;M 
303F  c003      PUSH dir 0x03          ;M 
3041  c004      PUSH dir 0x04          ;M 
3043  c005      PUSH dir 0x05          ;M 
3045  c006      PUSH dir 0x06          ;M 
3047  c007      PUSH dir 0x07          ;M 
3049  12b4b7    LCALL 0xB4B7           ;M 
304C  e519      MOV A,dir 0x19         ;M 
304E  30e102    JNB ACC.1, 0x3053      ;M 
3051  3138      ACALL 0x3138           ;M 
3053  e519      MOV A,dir 0x19         ;M 
3055  30e402    JNB ACC.4, 0x305A      ;M 
3058  31ba      ACALL 0x31BA           ;M 
305A  e519      MOV A,dir 0x19         ;M 
305C  30e503    JNB ACC.5, 0x3062      ;M 
305F  12b51d    LCALL 0xB51D           ;M 
3062  e519      MOV A,dir 0x19         ;M 
3064  30e603    JNB ACC.6, 0x306A      ;M 
3067  12b559    LCALL 0xB559           ;M 
306A  e51b      MOV A,dir 0x1B         ;M 
306C  30e003    JNB ACC.0, 0x3072      ;M 
306F  12aca1    LCALL 0xACA1           ;M 
3072  e51b      MOV A,dir 0x1B         ;M 
3074  30e103    JNB ACC.1, 0x307A      ;M 
3077  12a89e    LCALL 0xA89E           ;M 
307A  e51b      MOV A,dir 0x1B         ;M 
307C  30e203    JNB ACC.2, 0x3082      ;M 
307F  12b566    LCALL 0xB566           ;M 
3082  e51b      MOV A,dir 0x1B         ;M 
3084  30e302    JNB ACC.3, 0x3089      ;M 
3087  51ec      ACALL 0x32EC           ;M 
3089  e51b      MOV A,dir 0x1B         ;M 
308B  30e402    JNB ACC.4, 0x3090      ;M 
308E  7105      ACALL 0x3305           ;M 
3090  e51b      MOV A,dir 0x1B         ;M 
3092  30e502    JNB ACC.5, 0x3097      ;M 
3095  7162      ACALL 0x3362           ;M 
3097  e51b      MOV A,dir 0x1B         ;M 
3099  30e602    JNB ACC.6, 0x309E      ;M 
309C  714a      ACALL 0x334A           ;M 
309E  e51c      MOV A,dir 0x1C         ;M 
30A0  30e103    JNB ACC.1, 0x30A6      ;M 
30A3  128202    LCALL 0x8202           ;M 
30A6  e51c      MOV A,dir 0x1C         ;M 
30A8  30e403    JNB ACC.4, 0x30AE      ;M 
30AB  12b589    LCALL 0xB589           ;M 
30AE  e51c      MOV A,dir 0x1C         ;M 
30B0  30e502    JNB ACC.5, 0x30B5      ;M 
30B3  f1e1      ACALL 0x37E1           ;M 
30B5  e51c      MOV A,dir 0x1C         ;M 
30B7  30e602    JNB ACC.6, 0x30BC      ;M 
30BA  11d7      ACALL 0x30D7           ;M 
30BC  d007      POP dir 0x07           ;M 
30BE  d006      POP dir 0x06           ;M 
30C0  d005      POP dir 0x05           ;M 
30C2  d004      POP dir 0x04           ;M 
30C4  d003      POP dir 0x03           ;M 
30C6  d002      POP dir 0x02           ;M 
30C8  d001      POP dir 0x01           ;M 
30CA  d000      POP dir 0x00           ;M 
30CC  d0d0      POP dir PSW            ;M 
30CE  d082      POP dir DPL            ;M 
30D0  d083      POP dir DPH            ;M 
30D2  d0f0      POP dir B              ;M 
30D4  d0e0      POP dir ACC            ;M 
30D6  32        RETI                   ;M 

sub_30D7:  ; M func, size~97
30D7  90071f    MOV DPTR,# #0x071F     ;M dptr win: RAM/table (0x071F)
30DA  e0        MOVX A,@DPTR           ;M 
30DB  547f      ANL A,# #0x7F          ;M 
30DD  f0        MOVX @DPTR,A           ;M 
30DE  90071c    MOV DPTR,# #0x071C     ;M dptr win: RAM/table (0x071C)
30E1  e0        MOVX A,@DPTR           ;M 
30E2  5401      ANL A,# #0x01          ;M 
30E4  ff        MOV R7,A               ;M 
30E5  602f      JZ 0x3116              ;M 
30E7  909fac    MOV DPTR,# #0x9FAC     ;M dptr win: win-9x (0x9FAC)
30EA  e0        MOVX A,@DPTR           ;M 
30EB  6029      JZ 0x3116              ;M 
30ED  909fa9    MOV DPTR,# #0x9FA9     ;M dptr win: win-9x (0x9FA9)
30F0  e0        MOVX A,@DPTR           ;M 
30F1  5403      ANL A,# #0x03          ;M 
30F3  14        DEC A                  ;M 
30F4  6010      JZ 0x3106              ;M 
30F6  14        DEC A                  ;M 
30F7  6016      JZ 0x310F              ;M 
30F9  2402      ADD A,# #0x02          ;M 
30FB  7019      JNZ 0x3116             ;M 
30FD  90042d    MOV DPTR,# #0x042D     ;M dptr win: RAM/table (0x042D)
3100  e0        MOVX A,@DPTR           ;M 
3101  4402      ORL A,# #0x02          ;M 
3103  f0        MOVX @DPTR,A           ;M 
3104  8010      SJMP 0x3116            ;M 
3106  90042d    MOV DPTR,# #0x042D     ;M dptr win: RAM/table (0x042D)
3109  e0        MOVX A,@DPTR           ;M 
310A  4406      ORL A,# #0x06          ;M 
310C  f0        MOVX @DPTR,A           ;M 
310D  8007      SJMP 0x3116            ;M 
310F  90042d    MOV DPTR,# #0x042D     ;M dptr win: RAM/table (0x042D)
3112  e0        MOVX A,@DPTR           ;M 
3113  440e      ORL A,# #0x0E          ;M 
3115  f0        MOVX @DPTR,A           ;M 
3116  e4        CLR A                  ;M 
3117  909fac    MOV DPTR,# #0x9FAC     ;M dptr win: win-9x (0x9FAC)
311A  f0        MOVX @DPTR,A           ;M 
311B  90a085    MOV DPTR,# #0xA085     ;M dptr win: win-Ax (0xA085)
311E  ef        MOV A,R7               ;M 
311F  f0        MOVX @DPTR,A           ;M 
3120  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
3123  7402      MOV A,# #0x02          ;M 
3125  f0        MOVX @DPTR,A           ;M 
3126  90a091    MOV DPTR,# #0xA091     ;M dptr win: win-Ax (0xA091)
3129  14        DEC A                  ;M 
312A  f0        MOVX @DPTR,A           ;M 
312B  fb        MOV R3,A               ;M 
312C  7aa0      MOV R2,# #0xA0         ;M 
312E  7983      MOV R1,# #0x83         ;M 
3130  125575    LCALL 0x5575           ;M 
3133  7f04      MOV R7,# #0x04         ;M 
3135  028ffc    LJMP 0x8FFC            ;M 

sub_3138:  ; M func, size~135
3138  e4        CLR A                  ;M 
3139  ff        MOV R7,A               ;M 
313A  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
313D  ef        MOV A,R7               ;M 
313E  f0        MOVX @DPTR,A           ;M 
313F  90047e    MOV DPTR,# #0x047E     ;M dptr win: RAM/table (0x047E)
3142  e0        MOVX A,@DPTR           ;M 
3143  f564      MOV dir,A 0x64         ;M 
3145  a3        INC DPTR               ;M 
3146  e0        MOVX A,@DPTR           ;M 
3147  f565      MOV dir,A 0x65         ;M 
3149  6564      XRL A,dir 0x64         ;M 
314B  606c      JZ 0x31B9              ;M 
314D  90a084    MOV DPTR,# #0xA084     ;M dptr win: win-Ax (0xA084)
3150  7403      MOV A,# #0x03          ;M 
3152  f0        MOVX @DPTR,A           ;M 
3153  90a092    MOV DPTR,# #0xA092     ;M dptr win: win-Ax (0xA092)
3156  7408      MOV A,# #0x08          ;M 
3158  f0        MOVX @DPTR,A           ;M 
3159  e565      MOV A,dir 0x65         ;M 
315B  04        INC A                  ;M 
315C  540f      ANL A,# #0x0F          ;M 
315E  f566      MOV dir,A 0x66         ;M 
3160  e4        CLR A                  ;M 
3161  f563      MOV dir,A 0x63         ;M 
3163  e566      MOV A,dir 0x66         ;M 
3165  75f008    MOV dir,# B, #0x08     ;M 
3168  a4        MUL AB                 ;M 
3169  2400      ADD A,# #0x00          ;M 
316B  f582      MOV dir,A DPL          ;M 
316D  e4        CLR A                  ;M 
316E  3480      ADDC A,# #0x80         ;M 
3170  f583      MOV dir,A DPH          ;M 
3172  e582      MOV A,dir DPL          ;M 
3174  2563      ADD A,dir 0x63         ;M 
3176  124eda    LCALL 0x4EDA           ;M 
3179  e0        MOVX A,@DPTR           ;M 
317A  ff        MOV R7,A               ;M 
317B  7486      MOV A,# #0x86          ;M 
317D  2563      ADD A,dir 0x63         ;M 
317F  f582      MOV dir,A DPL          ;M 
3181  e4        CLR A                  ;M 
3182  34a0      ADDC A,# #0xA0         ;M 
3184  f583      MOV dir,A DPH          ;M 
3186  ef        MOV A,R7               ;M 
3187  f0        MOVX @DPTR,A           ;M 
3188  0563      INC 0x63               ;M 
318A  e563      MOV A,dir 0x63         ;M 
318C  b408d4    CJNE A,# #0x08, 0x3163 ;M 
318F  7b01      MOV R3,# #0x01         ;M 
3191  7aa0      MOV R2,# #0xA0         ;M 
3193  7984      MOV R1,# #0x84         ;M 
3195  125575    LCALL 0x5575           ;M 
3198  e565      MOV A,dir 0x65         ;M 
319A  04        INC A                  ;M 
319B  540f      ANL A,# #0x0F          ;M 
319D  f565      MOV dir,A 0x65         ;M 
319F  b40f03    CJNE A,# #0x0F, 0x31A5 ;M 
31A2  e4        CLR A                  ;M 
31A3  f565      MOV dir,A 0x65         ;M 
31A5  90047f    MOV DPTR,# #0x047F     ;M dptr win: RAM/table (0x047F)
31A8  e565      MOV A,dir 0x65         ;M 
31AA  f0        MOVX @DPTR,A           ;M 
31AB  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
31AE  e0        MOVX A,@DPTR           ;M 
31AF  7f04      MOV R7,# #0x04         ;M 
31B1  7003      JNZ 0x31B6             ;M 
31B3  0255d8    LJMP 0x55D8            ;M 
31B6  .db 12 8F FC 22 31 C1 7F 02 02

sub_31BF:  ; M func, size~21
31BF  55d8      ANL A,dir 0xD8         ;M 
31C1  9001cc    MOV DPTR,# #0x01CC     ;M dptr win: MAC/reg-low (0x01CC)
31C4  e0        MOVX A,@DPTR           ;M 
31C5  540f      ANL A,# #0x0F          ;M 
31C7  90a1d2    MOV DPTR,# #0xA1D2     ;M dptr win: win-Ax (0xA1D2)
31CA  f0        MOVX @DPTR,A           ;M 
31CB  90a1d2    MOV DPTR,# #0xA1D2     ;M dptr win: win-Ax (0xA1D2)
31CE  e0        MOVX A,@DPTR           ;M 
31CF  fd        MOV R5,A               ;M 
31D0  7002      JNZ 0x31D4             ;M 
31D2  41d0      AJMP 0x32D0            ;M 

sub_31D4:  ; M func, size~40
31D4  909d9a    MOV DPTR,# #0x9D9A     ;M dptr win: win-9x (0x9D9A)
31D7  e0        MOVX A,@DPTR           ;M 
31D8  ff        MOV R7,A               ;M 
31D9  7006      JNZ 0x31E1             ;M 
31DB  a3        INC DPTR               ;M 
31DC  e0        MOVX A,@DPTR           ;M 
31DD  6409      XRL A,# #0x09          ;M 
31DF  600a      JZ 0x31EB              ;M 
31E1  ef        MOV A,R7               ;M 
31E2  14        DEC A                  ;M 
31E3  ff        MOV R7,A               ;M 
31E4  909d9b    MOV DPTR,# #0x9D9B     ;M dptr win: win-9x (0x9D9B)
31E7  e0        MOVX A,@DPTR           ;M 
31E8  b50704    CJNE A,dir 0x07, 0x31EF ;M 
31EB  7f01      MOV R7,# #0x01         ;M 
31ED  8002      SJMP 0x31F1            ;M 
31EF  7f00      MOV R7,# #0x00         ;M 
31F1  ef        MOV A,R7               ;M 
31F2  6008      JZ 0x31FC              ;M 
31F4  9001c1    MOV DPTR,# #0x01C1     ;M dptr win: MAC/reg-low (0x01C1)
31F7  e0        MOVX A,@DPTR           ;M 
31F8  4401      ORL A,# #0x01          ;M 
31FA  f0        MOVX @DPTR,A           ;M 
31FB  22        RET                    ;M 

sub_31FC:  ; M func, size~22
31FC  90a1ba    MOV DPTR,# #0xA1BA     ;M dptr win: win-Ax (0xA1BA)
31FF  e0        MOVX A,@DPTR           ;M 
3200  f1e4      ACALL 0x37E4           ;M 
3202  8005      SJMP 0x3209            ;M 
3204  c3        CLR C                  ;M 
3205  33        RLC A                  ;M 
3206  ce        XCH A,R6               ;M 
3207  33        RLC A                  ;M 
3208  ce        XCH A,R6               ;M 
3209  d8f9      DJNZ R0, 0x3204        ;M 
320B  ff        MOV R7,A               ;M 
320C  ef        MOV A,R7               ;M 
320D  5d        ANL A,R5               ;M 
320E  7002      JNZ 0x3212             ;M 
3210  41b3      AJMP 0x32B3            ;M 

sub_3212:  ; M func, size~154
3212  e4        CLR A                  ;M 
3213  90a1d3    MOV DPTR,# #0xA1D3     ;M dptr win: win-Ax (0xA1D3)
3216  f0        MOVX @DPTR,A           ;M 
3217  90a1d3    MOV DPTR,# #0xA1D3     ;M dptr win: win-Ax (0xA1D3)
321A  e0        MOVX A,@DPTR           ;M 
321B  f9        MOV R1,A               ;M 
321C  c3        CLR C                  ;M 
321D  9404      SUBB A,# #0x04         ;M 
321F  5042      JNC 0x3263             ;M 
3221  51d2      ACALL 0x32D2           ;M 
3223  a4        MUL AB                 ;M 
3224  ff        MOV R7,A               ;M 
3225  e9        MOV A,R1               ;M 
3226  fd        MOV R5,A               ;M 
3227  7c00      MOV R4,# #0x00         ;M 
3229  2f        ADD A,R7               ;M 
322A  ff        MOV R7,A               ;M 
322B  ec        MOV A,R4               ;M 
322C  35f0      ADDC A,dir B           ;M 
322E  fe        MOV R6,A               ;M 
322F  74d0      MOV A,# #0xD0          ;M 
3231  51da      ACALL 0x32DA           ;M 
3233  909d4a    MOV DPTR,# #0x9D4A     ;M dptr win: win-9x (0x9D4A)
3236  1248f3    LCALL 0x48F3           ;M 
3239  e582      MOV A,dir DPL          ;M 
323B  29        ADD A,R1               ;M 
323C  124eda    LCALL 0x4EDA           ;M 
323F  ef        MOV A,R7               ;M 
3240  51d1      ACALL 0x32D1           ;M 
3242  a4        MUL AB                 ;M 
3243  2d        ADD A,R5               ;M 
3244  ff        MOV R7,A               ;M 
3245  ec        MOV A,R4               ;M 
3246  35f0      ADDC A,dir B           ;M 
3248  fe        MOV R6,A               ;M 
3249  74f0      MOV A,# #0xF0          ;M 
324B  51da      ACALL 0x32DA           ;M 
324D  909d4e    MOV DPTR,# #0x9D4E     ;M dptr win: win-9x (0x9D4E)
3250  1248f3    LCALL 0x48F3           ;M 
3253  e582      MOV A,dir DPL          ;M 
3255  29        ADD A,R1               ;M 
3256  124eda    LCALL 0x4EDA           ;M 
3259  ef        MOV A,R7               ;M 
325A  f0        MOVX @DPTR,A           ;M 
325B  90a1d3    MOV DPTR,# #0xA1D3     ;M dptr win: win-Ax (0xA1D3)
325E  e0        MOVX A,@DPTR           ;M 
325F  04        INC A                  ;M 
3260  f0        MOVX @DPTR,A           ;M 
3261  80b4      SJMP 0x3217            ;M 
3263  90a1d2    MOV DPTR,# #0xA1D2     ;M dptr win: win-Ax (0xA1D2)
3266  e0        MOVX A,@DPTR           ;M 
3267  ff        MOV R7,A               ;M 
3268  90a1ba    MOV DPTR,# #0xA1BA     ;M dptr win: win-Ax (0xA1BA)
326B  e0        MOVX A,@DPTR           ;M 
326C  fe        MOV R6,A               ;M 
326D  7401      MOV A,# #0x01          ;M 
326F  a806      MOV R0,dir 0x06        ;M 
3271  08        INC R0                 ;M 
3272  8002      SJMP 0x3276            ;M 
3274  c3        CLR C                  ;M 
3275  33        RLC A                  ;M 
3276  d8fc      DJNZ R0, 0x3274        ;M 
3278  f4        CPL A                  ;M 
3279  5f        ANL A,R7               ;M 
327A  90a1d2    MOV DPTR,# #0xA1D2     ;M dptr win: win-Ax (0xA1D2)
327D  f0        MOVX @DPTR,A           ;M 
327E  90a1ba    MOV DPTR,# #0xA1BA     ;M dptr win: win-Ax (0xA1BA)
3281  e0        MOVX A,@DPTR           ;M 
3282  ff        MOV R7,A               ;M 
3283  7401      MOV A,# #0x01          ;M 
3285  a807      MOV R0,dir 0x07        ;M 
3287  08        INC R0                 ;M 
3288  8002      SJMP 0x328C            ;M 
328A  c3        CLR C                  ;M 
328B  33        RLC A                  ;M 
328C  d8fc      DJNZ R0, 0x328A        ;M 
328E  9001cc    MOV DPTR,# #0x01CC     ;M dptr win: MAC/reg-low (0x01CC)
3291  f0        MOVX @DPTR,A           ;M 
3292  90a1ba    MOV DPTR,# #0xA1BA     ;M dptr win: win-Ax (0xA1BA)
3295  e0        MOVX A,@DPTR           ;M 
3296  04        INC A                  ;M 
3297  f0        MOVX @DPTR,A           ;M 
3298  e0        MOVX A,@DPTR           ;M 
3299  5403      ANL A,# #0x03          ;M 
329B  f0        MOVX @DPTR,A           ;M 
329C  909d9b    MOV DPTR,# #0x9D9B     ;M dptr win: win-9x (0x9D9B)
329F  12b398    LCALL 0xB398           ;M 
32A2  b40a02    CJNE A,# #0x0A, 0x32A7 ;M 
32A5  7f01      MOV R7,# #0x01         ;M 
32A7  ef        MOV A,R7               ;M 
32A8  7002      JNZ 0x32AC             ;M 
32AA  21cb      AJMP 0x31CB            ;M 

sub_32AC:  ; M func, size~7
32AC  e4        CLR A                  ;M 
32AD  909d9b    MOV DPTR,# #0x9D9B     ;M dptr win: win-9x (0x9D9B)
32B0  f0        MOVX @DPTR,A           ;M 
32B1  21cb      AJMP 0x31CB            ;M 

sub_32B3:  ; M func, size~30
32B3  9001c0    MOV DPTR,# #0x01C0     ;M dptr win: MAC/reg-low (0x01C0)
32B6  e0        MOVX A,@DPTR           ;M 
32B7  4402      ORL A,# #0x02          ;M 
32B9  f0        MOVX @DPTR,A           ;M 
32BA  90a1ba    MOV DPTR,# #0xA1BA     ;M dptr win: win-Ax (0xA1BA)
32BD  e0        MOVX A,@DPTR           ;M 
32BE  4480      ORL A,# #0x80          ;M 
32C0  90008a    MOV DPTR,# #0x008A     ;M dptr win: MAC/reg-low (0x008A)
32C3  51d1      ACALL 0x32D1           ;M 
32C5  9001d0    MOV DPTR,# #0x01D0     ;M dptr win: MAC/reg-low (0x01D0)
32C8  1248f3    LCALL 0x48F3           ;M 
32CB  e0        MOVX A,@DPTR           ;M 
32CC  9001c3    MOV DPTR,# #0x01C3     ;M dptr win: MAC/reg-low (0x01C3)
32CF  f0        MOVX @DPTR,A           ;M 
32D0  22        RET                    ;M 

sub_32D1:  ; M func, size~9
32D1  f0        MOVX @DPTR,A           ;M 
32D2  90a1ba    MOV DPTR,# #0xA1BA     ;M dptr win: win-Ax (0xA1BA)
32D5  e0        MOVX A,@DPTR           ;M 
32D6  75f004    MOV dir,# B, #0x04     ;M 
32D9  22        RET                    ;M 

sub_32DA:  ; M func, size~18
32DA  2f        ADD A,R7               ;M 
32DB  f582      MOV dir,A DPL          ;M 
32DD  7401      MOV A,# #0x01          ;M 
32DF  3e        ADDC A,R6              ;M 
32E0  f583      MOV dir,A DPH          ;M 
32E2  e0        MOVX A,@DPTR           ;M 
32E3  ff        MOV R7,A               ;M 
32E4  909d9b    MOV DPTR,# #0x9D9B     ;M dptr win: win-9x (0x9D9B)
32E7  e0        MOVX A,@DPTR           ;M 
32E8  75f008    MOV dir,# B, #0x08     ;M 
32EB  22        RET                    ;M 

sub_32EC:  ; M func, size~18
32EC  51ff      ACALL 0x32FF           ;M 
32EE  6401      XRL A,# #0x01          ;M 
32F0  700b      JNZ 0x32FD             ;M 
32F2  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
32F5  e0        MOVX A,@DPTR           ;M 
32F6  6005      JZ 0x32FD              ;M 
32F8  9123      ACALL 0x3423           ;M 
32FA  128098    LCALL 0x8098           ;M 
32FD  22        RET                    ;M 

sub_32FE:  ; M func, size~7
32FE  f0        MOVX @DPTR,A           ;M 
32FF  e4        CLR A                  ;M 
3300  ff        MOV R7,A               ;M 
3301  7122      ACALL 0x3322           ;M 
3303  ef        MOV A,R7               ;M 
3304  22        RET                    ;M 

sub_3305:  ; M func, size~29
3305  51ff      ACALL 0x32FF           ;M 
3307  6401      XRL A,# #0x01          ;M 
3309  7016      JNZ 0x3321             ;M 
330B  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
330E  e0        MOVX A,@DPTR           ;M 
330F  6010      JZ 0x3321              ;M 
3311  9123      ACALL 0x3423           ;M 
3313  f0        MOVX @DPTR,A           ;M 
3314  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
3317  e0        MOVX A,@DPTR           ;M 
3318  b1ba      ACALL 0x35BA           ;M 
331A  5407      ANL A,# #0x07          ;M 
331C  7003      JNZ 0x3321             ;M 
331E  126063    LCALL 0x6063           ;M 
3321  22        RET                    ;M 

sub_3322:  ; M func, size~40
3322  128ebd    LCALL 0x8EBD           ;M 
3325  fe        MOV R6,A               ;M 
3326  ef        MOV A,R7               ;M 
3327  5407      ANL A,# #0x07          ;M 
3329  ff        MOV R7,A               ;M 
332A  12898d    LCALL 0x898D           ;M 
332D  e0        MOVX A,@DPTR           ;M 
332E  fd        MOV R5,A               ;M 
332F  7c00      MOV R4,# #0x00         ;M 
3331  f1e5      ACALL 0x37E5           ;M 
3333  8005      SJMP 0x333A            ;M 
3335  c3        CLR C                  ;M 
3336  33        RLC A                  ;M 
3337  ce        XCH A,R6               ;M 
3338  33        RLC A                  ;M 
3339  ce        XCH A,R6               ;M 
333A  d8f9      DJNZ R0, 0x3335        ;M 
333C  ff        MOV R7,A               ;M 
333D  ee        MOV A,R6               ;M 
333E  5c        ANL A,R4               ;M 
333F  fe        MOV R6,A               ;M 
3340  ef        MOV A,R7               ;M 
3341  5d        ANL A,R5               ;M 
3342  4e        ORL A,R6               ;M 
3343  7f00      MOV R7,# #0x00         ;M 
3345  6002      JZ 0x3349              ;M 
3347  7f01      MOV R7,# #0x01         ;M 
3349  22        RET                    ;M 

sub_334A:  ; M func, size~24
334A  e4        CLR A                  ;M 
334B  ff        MOV R7,A               ;M 
334C  7122      ACALL 0x3322           ;M 
334E  bf0110    CJNE R7,# #0x01, 0x3361 ;M 
3351  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
3354  e0        MOVX A,@DPTR           ;M 
3355  600a      JZ 0x3361              ;M 
3357  12a597    LCALL 0xA597           ;M 
335A  5407      ANL A,# #0x07          ;M 
335C  7003      JNZ 0x3361             ;M 
335E  126063    LCALL 0x6063           ;M 
3361  22        RET                    ;M 

sub_3362:  ; M func, size~23
3362  e4        CLR A                  ;M 
3363  ff        MOV R7,A               ;M 
3364  7122      ACALL 0x3322           ;M 
3366  bf0111    CJNE R7,# #0x01, 0x337A ;M 
3369  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
336C  e0        MOVX A,@DPTR           ;M 
336D  600b      JZ 0x337A              ;M 
336F  f16a      ACALL 0x376A           ;M 
3371  6402      XRL A,# #0x02          ;M 
3373  6003      JZ 0x3378              ;M 
3375  0287ae    LJMP 0x87AE            ;M 
3378  .db F1

sub_3379:  ; M func, size~60
3379  7122      ACALL 0x3322           ;M 
337B  ef        MOV A,R7               ;M 
337C  6036      JZ 0x33B4              ;M 
337E  51ff      ACALL 0x32FF           ;M 
3380  6401      XRL A,# #0x01          ;M 
3382  7030      JNZ 0x33B4             ;M 
3384  909e4e    MOV DPTR,# #0x9E4E     ;M dptr win: win-9x (0x9E4E)
3387  e0        MOVX A,@DPTR           ;M 
3388  54fe      ANL A,# #0xFE          ;M 
338A  f0        MOVX @DPTR,A           ;M 
338B  7b2b      MOV R3,# #0x2B         ;M 
338D  7d0f      MOV R5,# #0x0F         ;M 
338F  7fff      MOV R7,# #0xFF         ;M 
3391  1258a7    LCALL 0x58A7           ;M 
3394  900604    MOV DPTR,# #0x0604     ;M dptr win: RAM/table (0x0604)
3397  e0        MOVX A,@DPTR           ;M 
3398  54bf      ANL A,# #0xBF          ;M 
339A  f0        MOVX @DPTR,A           ;M 
339B  f1ca      ACALL 0x37CA           ;M 
339D  bf0114    CJNE R7,# #0x01, 0x33B4 ;M 
33A0  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
33A3  e0        MOVX A,@DPTR           ;M 
33A4  4440      ORL A,# #0x40          ;M 
33A6  f0        MOVX @DPTR,A           ;M 
33A7  7d06      MOV R5,# #0x06         ;M 
33A9  7f01      MOV R7,# #0x01         ;M 
33AB  126296    LCALL 0x6296           ;M 
33AE  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
33B1  7406      MOV A,# #0x06          ;M 
33B3  f0        MOVX @DPTR,A           ;M 
33B4  22        RET                    ;M 

sub_33B5:  ; M func, size~54
33B5  ef        MOV A,R7               ;M 
33B6  7033      JNZ 0x33EB             ;M 
33B8  7d78      MOV R5,# #0x78         ;M 
33BA  7f02      MOV R7,# #0x02         ;M 
33BC  b124      ACALL 0x3524           ;M 
33BE  7d02      MOV R5,# #0x02         ;M 
33C0  7f03      MOV R7,# #0x03         ;M 
33C2  b124      ACALL 0x3524           ;M 
33C4  7dc8      MOV R5,# #0xC8         ;M 
33C6  7f02      MOV R7,# #0x02         ;M 
33C8  f1a6      ACALL 0x37A6           ;M 
33CA  9123      ACALL 0x3423           ;M 
33CC  51fe      ACALL 0x32FE           ;M 
33CE  700e      JNZ 0x33DE             ;M 
33D0  125499    LCALL 0x5499           ;M 
33D3  128c3c    LCALL 0x8C3C           ;M 
33D6  128f70    LCALL 0x8F70           ;M 
33D9  547f      ANL A,# #0x7F          ;M 
33DB  f0        MOVX @DPTR,A           ;M 
33DC  8007      SJMP 0x33E5            ;M 
33DE  7d01      MOV R5,# #0x01         ;M 
33E0  7f0c      MOV R7,# #0x0C         ;M 
33E2  12607e    LCALL 0x607E           ;M 
33E5  128f68    LCALL 0x8F68           ;M 
33E8  02bdbf    LJMP 0xBDBF            ;M 

sub_33EB:  ; M func, size~56
33EB  900136    MOV DPTR,# #0x0136     ;M dptr win: MAC/reg-low (0x0136)
33EE  7478      MOV A,# #0x78          ;M 
33F0  f0        MOVX @DPTR,A           ;M 
33F1  a3        INC DPTR               ;M 
33F2  7402      MOV A,# #0x02          ;M 
33F4  f0        MOVX @DPTR,A           ;M 
33F5  7d78      MOV R5,# #0x78         ;M 
33F7  ff        MOV R7,A               ;M 
33F8  b10c      ACALL 0x350C           ;M 
33FA  7d02      MOV R5,# #0x02         ;M 
33FC  7f03      MOV R7,# #0x03         ;M 
33FE  b10c      ACALL 0x350C           ;M 
3400  90060a    MOV DPTR,# #0x060A     ;M dptr win: RAM/table (0x060A)
3403  e0        MOVX A,@DPTR           ;M 
3404  4407      ORL A,# #0x07          ;M 
3406  12ac03    LCALL 0xAC03           ;M 
3409  e4        CLR A                  ;M 
340A  ff        MOV R7,A               ;M 
340B  7122      ACALL 0x3322           ;M 
340D  bf0110    CJNE R7,# #0x01, 0x3420 ;M 
3410  b185      ACALL 0x3585           ;M 
3412  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
3415  e0        MOVX A,@DPTR           ;M 
3416  20e209    JB ACC.2, 0x3422       ;M 
3419  7d01      MOV R5,# #0x01         ;M 
341B  7f04      MOV R7,# #0x04         ;M 
341D  02607e    LJMP 0x607E            ;M 
3420  .db B1 18 22

sub_3423:  ; M func, size~11
3423  900157    MOV DPTR,# #0x0157     ;M dptr win: MAC/reg-low (0x0157)
3426  e4        CLR A                  ;M 
3427  f0        MOVX @DPTR,A           ;M 
3428  90013c    MOV DPTR,# #0x013C     ;M dptr win: MAC/reg-low (0x013C)
342B  7402      MOV A,# #0x02          ;M 
342D  22        RET                    ;M 

sub_342E:  ; M func, size~36
342E  900562    MOV DPTR,# #0x0562     ;M dptr win: RAM/table (0x0562)
3431  e0        MOVX A,@DPTR           ;M 
3432  fe        MOV R6,A               ;M 
3433  900561    MOV DPTR,# #0x0561     ;M dptr win: RAM/table (0x0561)
3436  e0        MOVX A,@DPTR           ;M 
3437  fd        MOV R5,A               ;M 
3438  ed        MOV A,R5               ;M 
3439  7802      MOV R0,# #0x02         ;M 
343B  ce        XCH A,R6               ;M 
343C  c3        CLR C                  ;M 
343D  13        RRC A                  ;M 
343E  ce        XCH A,R6               ;M 
343F  13        RRC A                  ;M 
3440  d8f9      DJNZ R0, 0x343B        ;M 
3442  ff        MOV R7,A               ;M 
3443  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
3446  ee        MOV A,R6               ;M 
3447  f0        MOVX @DPTR,A           ;M 
3448  a3        INC DPTR               ;M 
3449  ef        MOV A,R7               ;M 
344A  51fe      ACALL 0x32FE           ;M 
344C  6401      XRL A,# #0x01          ;M 
344E  6002      JZ 0x3452              ;M 
3450  a100      AJMP 0x3500            ;M 

sub_3452:  ; M func, size~92
3452  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
3455  e0        MOVX A,@DPTR           ;M 
3456  7002      JNZ 0x345A             ;M 
3458  a100      AJMP 0x3500            ;M 
345A  .db 12 BD 93 64 01 70 22 90 06 AB E0 90 9E 59 F0 90
346A  .db 06 AA E0 90 9E 58 F0 A3 E0 FF 70 08 90 9E 58 E0
347A  .db FE FF 80 00 90 9E 59 EF F0 12 AA 6C E4 90 9E 5B
348A  .db 12 AC 03 91 23 B1 BC 54 EF F0 90 9E 48 E0 30 E0
349A  .db 05 12 A5 25 80 03 12 A5 9F 12 66 6D 30 E0 55 EF
34AA  .db C4 13 13 54 03 20 E0 21 F1 D1 6F 70 47 90 9E 4E
34BA  .db E0 44

sub_34BC:  ; H func, size~80
34BC  40f0      JC 0x34AE              ;H 
34BE  12afce    LCALL 0xAFCE           ;H 
34C1  12bd09    LCALL 0xBD09           ;H 
34C4  12b75a    LCALL 0xB75A           ;H 
34C7  f1c4      ACALL 0x37C4           ;H 
34C9  b120      ACALL 0x3520           ;H 
34CB  909e59    MOV DPTR,# #0x9E59     ;H dptr win: win-9x (0x9E59)
34CE  e0        MOVX A,@DPTR           ;H 
34CF  14        DEC A                  ;H 
34D0  f0        MOVX @DPTR,A           ;H 
34D1  802b      SJMP 0x34FE            ;H 
34D3  909e50    MOV DPTR,# #0x9E50     ;H dptr win: win-9x (0x9E50)
34D6  e0        MOVX A,@DPTR           ;H 
34D7  c4        SWAP A                 ;H 
34D8  540f      ANL A,# #0x0F          ;H 
34DA  6401      XRL A,# #0x01          ;H 
34DC  7020      JNZ 0x34FE             ;H 
34DE  f1d1      ACALL 0x37D1           ;H 
34E0  fe        MOV R6,A               ;H 
34E1  6f        XRL A,R7               ;H 
34E2  601a      JZ 0x34FE              ;H 
34E4  900573    MOV DPTR,# #0x0573     ;H dptr win: RAM/table (0x0573)
34E7  e0        MOVX A,@DPTR           ;H 
34E8  ff        MOV R7,A               ;H 
34E9  ee        MOV A,R6               ;H 
34EA  6f        XRL A,R7               ;H 
34EB  6011      JZ 0x34FE              ;H 
34ED  b1b0      ACALL 0x35B0           ;H 
34EF  30e00c    JNB ACC.0, 0x34FE      ;H 
34F2  ef        MOV A,R7               ;H 
34F3  54bf      ANL A,# #0xBF          ;H 
34F5  12bd09    LCALL 0xBD09           ;H 
34F8  f1a6      ACALL 0x37A6           ;H 
34FA  f1b9      ACALL 0x37B9           ;H 
34FC  b10c      ACALL 0x350C           ;H 
34FE  b118      ACALL 0x3518           ;H 
3500  909e48    MOV DPTR,# #0x9E48     ;H dptr win: win-9x (0x9E48)
3503  e0        MOVX A,@DPTR           ;H 
3504  c3        CLR C                  ;H 
3505  13        RRC A                  ;H 
3506  20e002    JB ACC.0, 0x350B       ;H 
3509  b118      ACALL 0x3518           ;H 
350B  22        RET                    ;H 

sub_350C:  ; H func, size~12
350C  7415      MOV A,# #0x15          ;H 
350E  2f        ADD A,R7               ;H 
350F  f8        MOV R0,A               ;H 
3510  e6        MOV A,@R0              ;H 
3511  4d        ORL A,R5               ;H 
3512  fe        MOV R6,A               ;H 
3513  f6        MOV @R0,A              ;H 
3514  7430      MOV A,# #0x30          ;H 
3516  e1ae      AJMP 0x37AE            ;H 

sub_3518:  ; H func, size~8
3518  909e4e    MOV DPTR,# #0x9E4E     ;H dptr win: win-9x (0x9E4E)
351B  e0        MOVX A,@DPTR           ;H 
351C  4404      ORL A,# #0x04          ;H 
351E  f0        MOVX @DPTR,A           ;H 
351F  22        RET                    ;H 

sub_3520:  ; H func, size~4
3520  7d02      MOV R5,# #0x02         ;H 
3522  7f02      MOV R7,# #0x02         ;H 

sub_3524:  ; H func, size~10
3524  7415      MOV A,# #0x15          ;H 
3526  f1d9      ACALL 0x37D9           ;H 
3528  fe        MOV R6,A               ;H 
3529  f6        MOV @R0,A              ;H 
352A  7430      MOV A,# #0x30          ;H 
352C  e1ae      AJMP 0x37AE            ;H 

sub_352E:  ; M func, size~85
352E  12666d    LCALL 0x666D           ;M 
3531  30e00b    JNB ACC.0, 0x353F      ;M 
3534  ef        MOV A,R7               ;M 
3535  c4        SWAP A                 ;M 
3536  13        RRC A                  ;M 
3537  13        RRC A                  ;M 
3538  5403      ANL A,# #0x03          ;M 
353A  30e002    JNB ACC.0, 0x353F      ;M 
353D  b120      ACALL 0x3520           ;M 
353F  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
3542  b1b3      ACALL 0x35B3           ;M 
3544  30e009    JNB ACC.0, 0x3550      ;M 
3547  ef        MOV A,R7               ;M 
3548  b1ba      ACALL 0x35BA           ;M 
354A  5407      ANL A,# #0x07          ;M 
354C  7036      JNZ 0x3584             ;M 
354E  8031      SJMP 0x3581            ;M 
3550  12bc59    LCALL 0xBC59           ;M 
3553  402c      JC 0x3581              ;M 
3555  51ff      ACALL 0x32FF           ;M 
3557  6401      XRL A,# #0x01          ;M 
3559  7029      JNZ 0x3584             ;M 
355B  12812d    LCALL 0x812D           ;M 
355E  f16a      ACALL 0x376A           ;M 
3560  7002      JNZ 0x3564             ;M 
3562  8021      SJMP 0x3585            ;M 
3564  909e5c    MOV DPTR,# #0x9E5C     ;M dptr win: win-9x (0x9E5C)
3567  e0        MOVX A,@DPTR           ;M 
3568  04        INC A                  ;M 
3569  f0        MOVX @DPTR,A           ;M 
356A  e0        MOVX A,@DPTR           ;M 
356B  d3        SETB C                 ;M 
356C  9402      SUBB A,# #0x02         ;M 
356E  4009      JC 0x3579              ;M 
3570  b185      ACALL 0x3585           ;M 
3572  e4        CLR A                  ;M 
3573  909e5c    MOV DPTR,# #0x9E5C     ;M dptr win: win-9x (0x9E5C)
3576  f0        MOVX @DPTR,A           ;M 
3577  8002      SJMP 0x357B            ;M 
3579  f171      ACALL 0x3771           ;M 
357B  e4        CLR A                  ;M 
357C  909e5b    MOV DPTR,# #0x9E5B     ;M dptr win: win-9x (0x9E5B)
357F  f0        MOVX @DPTR,A           ;M 
3580  22        RET                    ;M 
3581  .db 12 60

sub_3583:  ; M func, size~10
3583  632290    XRL dir,# 0x22, #0x90  ;M 
3586  9e        SUBB A,R6              ;M 
3587  4e        ORL A,R6               ;M 
3588  e0        MOVX A,@DPTR           ;M 
3589  54fb      ANL A,# #0xFB          ;M 
358B  f0        MOVX @DPTR,A           ;M 
358C  22        RET                    ;M 

sub_358D:  ; M func, size~35
358D  900157    MOV DPTR,# #0x0157     ;M dptr win: MAC/reg-low (0x0157)
3590  e0        MOVX A,@DPTR           ;M 
3591  601c      JZ 0x35AF              ;M 
3593  9126      ACALL 0x3426           ;M 
3595  f0        MOVX @DPTR,A           ;M 
3596  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
3599  b1b3      ACALL 0x35B3           ;M 
359B  30e003    JNB ACC.0, 0x35A1      ;M 
359E  ef        MOV A,R7               ;M 
359F  8019      SJMP 0x35BA            ;M 
35A1  12bc59    LCALL 0xBC59           ;M 
35A4  4009      JC 0x35AF              ;M 
35A6  e4        CLR A                  ;M 
35A7  ff        MOV R7,A               ;M 
35A8  7122      ACALL 0x3322           ;M 
35AA  bf0102    CJNE R7,# #0x01, 0x35AF ;M 
35AD  b185      ACALL 0x3585           ;M 
35AF  22        RET                    ;M 

sub_35B0:  ; H func, size~10
35B0  909e4e    MOV DPTR,# #0x9E4E     ;H dptr win: win-9x (0x9E4E)
35B3  e0        MOVX A,@DPTR           ;H 
35B4  ff        MOV R7,A               ;H 
35B5  13        RRC A                  ;H 
35B6  13        RRC A                  ;H 
35B7  543f      ANL A,# #0x3F          ;H 
35B9  22        RET                    ;H 

sub_35BA:  ; M func, size~11
35BA  54fb      ANL A,# #0xFB          ;M 
35BC  f0        MOVX @DPTR,A           ;M 
35BD  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
35C0  e0        MOVX A,@DPTR           ;M 
35C1  54fd      ANL A,# #0xFD          ;M 
35C3  f0        MOVX @DPTR,A           ;M 
35C4  22        RET                    ;M 

sub_35C5:  ; M func, size~96
35C5  e4        CLR A                  ;M 
35C6  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
35C9  f0        MOVX @DPTR,A           ;M 
35CA  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
35CD  e0        MOVX A,@DPTR           ;M 
35CE  30e05d    JNB ACC.0, 0x362E      ;M 
35D1  c3        CLR C                  ;M 
35D2  13        RRC A                  ;M 
35D3  5407      ANL A,# #0x07          ;M 
35D5  ff        MOV R7,A               ;M 
35D6  d137      ACALL 0x3637           ;M 
35D8  e0        MOVX A,@DPTR           ;M 
35D9  fe        MOV R6,A               ;M 
35DA  30e051    JNB ACC.0, 0x362E      ;M 
35DD  75f01b    MOV dir,# B, #0x1B     ;M 
35E0  ef        MOV A,R7               ;M 
35E1  d13a      ACALL 0x363A           ;M 
35E3  ee        MOV A,R6               ;M 
35E4  54fe      ANL A,# #0xFE          ;M 
35E6  f0        MOVX @DPTR,A           ;M 
35E7  75f01b    MOV dir,# B, #0x1B     ;M 
35EA  ef        MOV A,R7               ;M 
35EB  d13a      ACALL 0x363A           ;M 
35ED  b1b3      ACALL 0x35B3           ;M 
35EF  30e00d    JNB ACC.0, 0x35FF      ;M 
35F2  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
35F5  e0        MOVX A,@DPTR           ;M 
35F6  fe        MOV R6,A               ;M 
35F7  d133      ACALL 0x3633           ;M 
35F9  ef        MOV A,R7               ;M 
35FA  54fb      ANL A,# #0xFB          ;M 
35FC  12ad8d    LCALL 0xAD8D           ;M 
35FF  9004e0    MOV DPTR,# #0x04E0     ;M dptr win: RAM/table (0x04E0)
3602  e0        MOVX A,@DPTR           ;M 
3603  30e11f    JNB ACC.1, 0x3625      ;M 
3606  127f8a    LCALL 0x7F8A           ;M 
3609  d12f      ACALL 0x362F           ;M 
360B  e0        MOVX A,@DPTR           ;M 
360C  4402      ORL A,# #0x02          ;M 
360E  f0        MOVX @DPTR,A           ;M 
360F  e4        CLR A                  ;M 
3610  909f9d    MOV DPTR,# #0x9F9D     ;M dptr win: win-9x (0x9F9D)
3613  127b38    LCALL 0x7B38           ;M 
3616  fd        MOV R5,A               ;M 
3617  7f02      MOV R7,# #0x02         ;M 
3619  127c00    LCALL 0x7C00           ;M 
361C  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
361F  e0        MOVX A,@DPTR           ;M 
3620  600c      JZ 0x362E              ;M 
3622  0278eb    LJMP 0x78EB            ;M 

sub_3625:  ; M func, size~10
3625  d12f      ACALL 0x362F           ;M 
3627  e0        MOVX A,@DPTR           ;M 
3628  54fd      ANL A,# #0xFD          ;M 
362A  f0        MOVX @DPTR,A           ;M 
362B  1258a2    LCALL 0x58A2           ;M 
362E  22        RET                    ;M 

sub_362F:  ; M func, size~24
362F  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
3632  e0        MOVX A,@DPTR           ;M 
3633  c3        CLR C                  ;M 
3634  13        RRC A                  ;M 
3635  5407      ANL A,# #0x07          ;M 
3637  75f01b    MOV dir,# B, #0x1B     ;M 
363A  909f21    MOV DPTR,# #0x9F21     ;M dptr win: win-9x (0x9F21)
363D  0248f3    LJMP 0x48F3            ;M 
3640  .db 12 66 9F 20 E0 02 E1

sub_3647:  ; M func, size~11
3647  28        ADD A,R0               ;M 
3648  909ebe    MOV DPTR,# #0x9EBE     ;M dptr win: win-9x (0x9EBE)
364B  e0        MOVX A,@DPTR           ;M 
364C  6406      XRL A,# #0x06          ;M 
364E  6002      JZ 0x3652              ;M 
3650  c1ef      AJMP 0x36EF            ;M 

sub_3652:  ; M func, size~39
3652  f129      ACALL 0x3729           ;M 
3654  5008      JNC 0x365E             ;M 
3656  909ecc    MOV DPTR,# #0x9ECC     ;M dptr win: win-9x (0x9ECC)
3659  e0        MOVX A,@DPTR           ;M 
365A  9403      SUBB A,# #0x03         ;M 
365C  401b      JC 0x3679              ;M 
365E  128740    LCALL 0x8740           ;M 
3661  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
3664  30e005    JNB ACC.0, 0x366C      ;M 
3667  7405      MOV A,# #0x05          ;M 
3669  f0        MOVX @DPTR,A           ;M 
366A  8003      SJMP 0x366F            ;M 
366C  7402      MOV A,# #0x02          ;M 
366E  f0        MOVX @DPTR,A           ;M 
366F  e4        CLR A                  ;M 
3670  909ebe    MOV DPTR,# #0x9EBE     ;M dptr win: win-9x (0x9EBE)
3673  f0        MOVX @DPTR,A           ;M 
3674  909ecc    MOV DPTR,# #0x9ECC     ;M dptr win: win-9x (0x9ECC)
3677  f0        MOVX @DPTR,A           ;M 
3678  22        RET                    ;M 

sub_3679:  ; M func, size~22
3679  909ebd    MOV DPTR,# #0x9EBD     ;M dptr win: win-9x (0x9EBD)
367C  b1b3      ACALL 0x35B3           ;M 
367E  30e01b    JNB ACC.0, 0x369C      ;M 
3681  ef        MOV A,R7               ;M 
3682  54fb      ANL A,# #0xFB          ;M 
3684  f0        MOVX @DPTR,A           ;M 
3685  e4        CLR A                  ;M 
3686  a3        INC DPTR               ;M 
3687  12873f    LCALL 0x873F           ;M 
368A  30e002    JNB ACC.0, 0x368F      ;M 
368D  e119      AJMP 0x3719            ;M 

sub_368F:  ; M func, size~14
368F  f129      ACALL 0x3729           ;M 
3691  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
3694  4002      JC 0x3698              ;M 
3696  e11c      AJMP 0x371C            ;M 
3698  .db 74 02 F0 22 F1

sub_369D:  ; H func, size~82
369D  5b        ANL A,R3               ;H 
369E  128166    LCALL 0x8166           ;H 
36A1  f129      ACALL 0x3729           ;H 
36A3  5008      JNC 0x36AD             ;H 
36A5  909ecc    MOV DPTR,# #0x9ECC     ;H dptr win: win-9x (0x9ECC)
36A8  e0        MOVX A,@DPTR           ;H 
36A9  9403      SUBB A,# #0x03         ;H 
36AB  407b      JC 0x3728              ;H 
36AD  909d45    MOV DPTR,# #0x9D45     ;H dptr win: win-9x (0x9D45)
36B0  e0        MOVX A,@DPTR           ;H 
36B1  ff        MOV R7,A               ;H 
36B2  90a19f    MOV DPTR,# #0xA19F     ;H dptr win: win-Ax (0xA19F)
36B5  740a      MOV A,# #0x0A          ;H 
36B7  f0        MOVX @DPTR,A           ;H 
36B8  7b01      MOV R3,# #0x01         ;H 
36BA  7d01      MOV R5,# #0x01         ;H 
36BC  12a078    LCALL 0xA078           ;H 
36BF  ad07      MOV R5,dir 0x07        ;H 
36C1  ac06      MOV R4,dir 0x06        ;H 
36C3  e4        CLR A                  ;H 
36C4  ff        MOV R7,A               ;H 
36C5  126796    LCALL 0x6796           ;H 
36C8  128f78    LCALL 0x8F78           ;H 
36CB  a3        INC DPTR               ;H 
36CC  e0        MOVX A,@DPTR           ;H 
36CD  54fd      ANL A,# #0xFD          ;H 
36CF  f0        MOVX @DPTR,A           ;H 
36D0  909ebd    MOV DPTR,# #0x9EBD     ;H dptr win: win-9x (0x9EBD)
36D3  e0        MOVX A,@DPTR           ;H 
36D4  54fd      ANL A,# #0xFD          ;H 
36D6  f0        MOVX @DPTR,A           ;H 
36D7  54fb      ANL A,# #0xFB          ;H 
36D9  126630    LCALL 0x6630           ;H 
36DC  7f03      MOV R7,# #0x03         ;H 
36DE  12876e    LCALL 0x876E           ;H 
36E1  900522    MOV DPTR,# #0x0522     ;H dptr win: RAM/table (0x0522)
36E4  e0        MOVX A,@DPTR           ;H 
36E5  4410      ORL A,# #0x10          ;H 
36E7  fd        MOV R5,A               ;H 
36E8  7b03      MOV R3,# #0x03         ;H 
36EA  7f10      MOV R7,# #0x10         ;H 
36EC  0258a7    LJMP 0x58A7            ;H 

sub_36EF:  ; M func, size~27
36EF  909ebe    MOV DPTR,# #0x9EBE     ;M dptr win: win-9x (0x9EBE)
36F2  e0        MOVX A,@DPTR           ;M 
36F3  6407      XRL A,# #0x07          ;M 
36F5  7031      JNZ 0x3728             ;M 
36F7  909ecc    MOV DPTR,# #0x9ECC     ;M dptr win: win-9x (0x9ECC)
36FA  e0        MOVX A,@DPTR           ;M 
36FB  b4040c    CJNE A,# #0x04, 0x370A ;M 
36FE  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
3701  7405      MOV A,# #0x05          ;M 
3703  f0        MOVX @DPTR,A           ;M 
3704  e4        CLR A                  ;M 
3705  909ebe    MOV DPTR,# #0x9EBE     ;M dptr win: win-9x (0x9EBE)
3708  f0        MOVX @DPTR,A           ;M 
3709  22        RET                    ;M 

sub_370A:  ; M func, size~30
370A  909ebd    MOV DPTR,# #0x9EBD     ;M dptr win: win-9x (0x9EBD)
370D  b1b3      ACALL 0x35B3           ;M 
370F  30e00e    JNB ACC.0, 0x3720      ;M 
3712  ef        MOV A,R7               ;M 
3713  54fb      ANL A,# #0xFB          ;M 
3715  f0        MOVX @DPTR,A           ;M 
3716  e4        CLR A                  ;M 
3717  a3        INC DPTR               ;M 
3718  f0        MOVX @DPTR,A           ;M 
3719  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
371C  7405      MOV A,# #0x05          ;M 
371E  f0        MOVX @DPTR,A           ;M 
371F  22        RET                    ;M 
3720  .db F1 5B 12 66 A9 12 81 66

sub_3728:  ; H func, size~1
3728  22        RET                    ;H 

sub_3729:  ; H func, size~50
3729  909ecc    MOV DPTR,# #0x9ECC     ;H dptr win: win-9x (0x9ECC)
372C  e0        MOVX A,@DPTR           ;H 
372D  ff        MOV R7,A               ;H 
372E  909ecb    MOV DPTR,# #0x9ECB     ;H dptr win: win-9x (0x9ECB)
3731  e0        MOVX A,@DPTR           ;H 
3732  2f        ADD A,R7               ;H 
3733  ff        MOV R7,A               ;H 
3734  e4        CLR A                  ;H 
3735  33        RLC A                  ;H 
3736  fe        MOV R6,A               ;H 
3737  7c00      MOV R4,# #0x00         ;H 
3739  7d03      MOV R5,# #0x03         ;H 
373B  120703    LCALL 0x0703           ;H 
373E  909eb7    MOV DPTR,# #0x9EB7     ;H dptr win: win-9x (0x9EB7)
3741  e0        MOVX A,@DPTR           ;H 
3742  fd        MOV R5,A               ;H 
3743  2f        ADD A,R7               ;H 
3744  ff        MOV R7,A               ;H 
3745  ec        MOV A,R4               ;H 
3746  3e        ADDC A,R6              ;H 
3747  fe        MOV R6,A               ;H 
3748  ed        MOV A,R5               ;H 
3749  240a      ADD A,# #0x0A          ;H 
374B  fd        MOV R5,A               ;H 
374C  ec        MOV A,R4               ;H 
374D  33        RLC A                  ;H 
374E  fc        MOV R4,A               ;H 
374F  c3        CLR C                  ;H 
3750  ef        MOV A,R7               ;H 
3751  9d        SUBB A,R5              ;H 
3752  ec        MOV A,R4               ;H 
3753  6480      XRL A,# #0x80          ;H 
3755  f8        MOV R0,A               ;H 
3756  ee        MOV A,R6               ;H 
3757  6480      XRL A,# #0x80          ;H 
3759  98        SUBB A,R0              ;H 
375A  22        RET                    ;H 

sub_375B:  ; M func, size~8
375B  909ebd    MOV DPTR,# #0x9EBD     ;M dptr win: win-9x (0x9EBD)
375E  e0        MOVX A,@DPTR           ;M 
375F  4402      ORL A,# #0x02          ;M 
3761  f0        MOVX @DPTR,A           ;M 
3762  22        RET                    ;M 

sub_3763:  ; M func, size~14
3763  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
3766  e0        MOVX A,@DPTR           ;M 
3767  4401      ORL A,# #0x01          ;M 
3769  f0        MOVX @DPTR,A           ;M 
376A  909e50    MOV DPTR,# #0x9E50     ;M dptr win: win-9x (0x9E50)
376D  e0        MOVX A,@DPTR           ;M 
376E  540f      ANL A,# #0x0F          ;M 
3770  22        RET                    ;M 

sub_3771:  ; M func, size~17
3771  12817c    LCALL 0x817C           ;M 
3774  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
3777  e0        MOVX A,@DPTR           ;M 
3778  640c      XRL A,# #0x0C          ;M 
377A  6005      JZ 0x3781              ;M 
377C  12589b    LCALL 0x589B           ;M 
377F  f1ca      ACALL 0x37CA           ;M 
3781  22        RET                    ;M 

sub_3782:  ; M func, size~36
3782  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
3785  e0        MOVX A,@DPTR           ;M 
3786  54fb      ANL A,# #0xFB          ;M 
3788  f0        MOVX @DPTR,A           ;M 
3789  e4        CLR A                  ;M 
378A  909e5b    MOV DPTR,# #0x9E5B     ;M dptr win: win-9x (0x9E5B)
378D  f0        MOVX @DPTR,A           ;M 
378E  a3        INC DPTR               ;M 
378F  f0        MOVX @DPTR,A           ;M 
3790  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
3793  f0        MOVX @DPTR,A           ;M 
3794  909e4e    MOV DPTR,# #0x9E4E     ;M dptr win: win-9x (0x9E4E)
3797  e0        MOVX A,@DPTR           ;M 
3798  54f7      ANL A,# #0xF7          ;M 
379A  f0        MOVX @DPTR,A           ;M 
379B  54bf      ANL A,# #0xBF          ;M 
379D  f0        MOVX @DPTR,A           ;M 
379E  f1b9      ACALL 0x37B9           ;M 
37A0  b10c      ACALL 0x350C           ;M 
37A2  7d10      MOV R5,# #0x10         ;M 
37A4  7f03      MOV R7,# #0x03         ;M 

sub_37A6:  ; H func, size~7
37A6  741d      MOV A,# #0x1D          ;H 
37A8  f1d9      ACALL 0x37D9           ;H 
37AA  fe        MOV R6,A               ;H 
37AB  f6        MOV @R0,A              ;H 
37AC  7438      MOV A,# #0x38          ;H 

sub_37AE:  ; H func, size~11
37AE  2f        ADD A,R7               ;H 
37AF  f582      MOV dir,A DPL          ;H 
37B1  e4        CLR A                  ;H 
37B2  3401      ADDC A,# #0x01         ;H 
37B4  f583      MOV dir,A DPH          ;H 
37B6  ee        MOV A,R6               ;H 
37B7  f0        MOVX @DPTR,A           ;H 
37B8  22        RET                    ;H 

sub_37B9:  ; H func, size~11
37B9  7d01      MOV R5,# #0x01         ;H 
37BB  7f02      MOV R7,# #0x02         ;H 
37BD  b10c      ACALL 0x350C           ;H 
37BF  7d02      MOV R5,# #0x02         ;H 
37C1  7f02      MOV R7,# #0x02         ;H 
37C3  22        RET                    ;H 

sub_37C4:  ; H func, size~6
37C4  7d01      MOV R5,# #0x01         ;H 
37C6  7f02      MOV R7,# #0x02         ;H 
37C8  a124      AJMP 0x3524            ;H 

sub_37CA:  ; M func, size~7
37CA  7d08      MOV R5,# #0x08         ;M 
37CC  e4        CLR A                  ;M 
37CD  ff        MOV R7,A               ;M 
37CE  0266ad    LJMP 0x66AD            ;M 

sub_37D1:  ; H func, size~8
37D1  909e58    MOV DPTR,# #0x9E58     ;H dptr win: win-9x (0x9E58)
37D4  e0        MOVX A,@DPTR           ;H 
37D5  ff        MOV R7,A               ;H 
37D6  a3        INC DPTR               ;H 
37D7  e0        MOVX A,@DPTR           ;H 
37D8  22        RET                    ;H 

sub_37D9:  ; H func, size~9
37D9  2f        ADD A,R7               ;H 
37DA  f8        MOV R0,A               ;H 
37DB  e6        MOV A,@R0              ;H 
37DC  fe        MOV R6,A               ;H 
37DD  ed        MOV A,R5               ;H 
37DE  f4        CPL A                  ;H 
37DF  5e        ANL A,R6               ;H 
37E0  22        RET                    ;H 
37E1  .db 02

sub_37E2:  ; M func, size~11
37E2  6a        XRL A,R2               ;M 
37E3  deff      DJNZ R6, 0x37E4        ;M 
37E5  7401      MOV A,# #0x01          ;M 
37E7  7e00      MOV R6,# #0x00         ;M 
37E9  a807      MOV R0,dir 0x07        ;M 
37EB  08        INC R0                 ;M 
37EC  22        RET                    ;M 

sub_37ED:  ; M func, size~183
37ED  c0e0      PUSH dir ACC           ;M 
37EF  c0f0      PUSH dir B             ;M 
37F1  c083      PUSH dir DPH           ;M 
37F3  c082      PUSH dir DPL           ;M 
37F5  c0d0      PUSH dir PSW           ;M 
37F7  75d000    MOV dir,# PSW, #0x00   ;M 
37FA  c000      PUSH dir 0x00          ;M 
37FC  c001      PUSH dir 0x01          ;M 
37FE  c002      PUSH dir 0x02          ;M 
3800  c003      PUSH dir 0x03          ;M 
3802  c004      PUSH dir 0x04          ;M 
3804  c005      PUSH dir 0x05          ;M 
3806  c006      PUSH dir 0x06          ;M 
3808  c007      PUSH dir 0x07          ;M 
380A  12b4ed    LCALL 0xB4ED           ;M 
380D  e521      MOV A,dir 0x21         ;M 
380F  30e003    JNB ACC.0, 0x3815      ;M 
3812  12b58e    LCALL 0xB58E           ;M 
3815  e521      MOV A,dir 0x21         ;M 
3817  30e102    JNB ACC.1, 0x381C      ;M 
381A  11e2      ACALL 0x38E2           ;M 
381C  e521      MOV A,dir 0x21         ;M 
381E  30e203    JNB ACC.2, 0x3824      ;M 
3821  1281af    LCALL 0x81AF           ;M 
3824  e521      MOV A,dir 0x21         ;M 
3826  30e302    JNB ACC.3, 0x382B      ;M 
3829  11a7      ACALL 0x38A7           ;M 
382B  e521      MOV A,dir 0x21         ;M 
382D  30e403    JNB ACC.4, 0x3833      ;M 
3830  12b5a1    LCALL 0xB5A1           ;M 
3833  e521      MOV A,dir 0x21         ;M 
3835  30e503    JNB ACC.5, 0x383B      ;M 
3838  125ff0    LCALL 0x5FF0           ;M 
383B  e522      MOV A,dir 0x22         ;M 
383D  30e003    JNB ACC.0, 0x3843      ;M 
3840  12aa26    LCALL 0xAA26           ;M 
3843  e522      MOV A,dir 0x22         ;M 
3845  30e303    JNB ACC.3, 0x384B      ;M 
3848  12ad95    LCALL 0xAD95           ;M 
384B  e523      MOV A,dir 0x23         ;M 
384D  30e103    JNB ACC.1, 0x3853      ;M 
3850  12b633    LCALL 0xB633           ;M 
3853  e523      MOV A,dir 0x23         ;M 
3855  30e003    JNB ACC.0, 0x385B      ;M 
3858  12b5d1    LCALL 0xB5D1           ;M 
385B  e523      MOV A,dir 0x23         ;M 
385D  30e402    JNB ACC.4, 0x3862      ;M 
3860  f1dd      ACALL 0x3FDD           ;M 
3862  e524      MOV A,dir 0x24         ;M 
3864  30e105    JNB ACC.1, 0x386C      ;M 
3867  7f04      MOV R7,# #0x04         ;M 
3869  1255d8    LCALL 0x55D8           ;M 
386C  e524      MOV A,dir 0x24         ;M 
386E  30e403    JNB ACC.4, 0x3874      ;M 
3871  12ad48    LCALL 0xAD48           ;M 
3874  e524      MOV A,dir 0x24         ;M 
3876  30e503    JNB ACC.5, 0x387C      ;M 
3879  1265fb    LCALL 0x65FB           ;M 
387C  e524      MOV A,dir 0x24         ;M 
387E  30e603    JNB ACC.6, 0x3884      ;M 
3881  12b67b    LCALL 0xB67B           ;M 
3884  e524      MOV A,dir 0x24         ;M 
3886  30e703    JNB ACC.7, 0x388C      ;M 
3889  12a769    LCALL 0xA769           ;M 
388C  d007      POP dir 0x07           ;M 
388E  d006      POP dir 0x06           ;M 
3890  d005      POP dir 0x05           ;M 
3892  d004      POP dir 0x04           ;M 
3894  d003      POP dir 0x03           ;M 
3896  d002      POP dir 0x02           ;M 
3898  d001      POP dir 0x01           ;M 
389A  d000      POP dir 0x00           ;M 
389C  d0d0      POP dir PSW            ;M 
389E  d082      POP dir DPL            ;M 
38A0  d083      POP dir DPH            ;M 
38A2  d0f0      POP dir B              ;M 

sub_38A4:  ; H func, size~3
38A4  d0e0      POP dir ACC            ;H 
38A6  32        RETI                   ;H 

sub_38A7:  ; M func, size~50
38A7  909fa9    MOV DPTR,# #0x9FA9     ;M dptr win: win-9x (0x9FA9)
38AA  1275b3    LCALL 0x75B3           ;M 
38AD  30e031    JNB ACC.0, 0x38E1      ;M 
38B0  12a313    LCALL 0xA313           ;M 
38B3  d3        SETB C                 ;M 
38B4  909fa7    MOV DPTR,# #0x9FA7     ;M dptr win: win-9x (0x9FA7)
38B7  e0        MOVX A,@DPTR           ;M 
38B8  9400      SUBB A,# #0x00         ;M 
38BA  909fa6    MOV DPTR,# #0x9FA6     ;M dptr win: win-9x (0x9FA6)
38BD  e0        MOVX A,@DPTR           ;M 
38BE  9400      SUBB A,# #0x00         ;M 
38C0  4017      JC 0x38D9              ;M 
38C2  e0        MOVX A,@DPTR           ;M 
38C3  fc        MOV R4,A               ;M 
38C4  a3        INC DPTR               ;M 
38C5  e0        MOVX A,@DPTR           ;M 
38C6  fd        MOV R5,A               ;M 
38C7  ec        MOV A,R4               ;M 
38C8  90a179    MOV DPTR,# #0xA179     ;M dptr win: win-Ax (0xA179)
38CB  f0        MOVX @DPTR,A           ;M 
38CC  a3        INC DPTR               ;M 
38CD  ed        MOV A,R5               ;M 
38CE  f0        MOVX @DPTR,A           ;M 
38CF  e4        CLR A                  ;M 
38D0  fb        MOV R3,A               ;M 
38D1  fd        MOV R5,A               ;M 
38D2  7f5c      MOV R7,# #0x5C         ;M 
38D4  7e01      MOV R6,# #0x01         ;M 
38D6  0280ad    LJMP 0x80AD            ;M 

sub_38D9:  ; M func, size~9
38D9  90015f    MOV DPTR,# #0x015F     ;M dptr win: MAC/reg-low (0x015F)
38DC  e4        CLR A                  ;M 
38DD  f0        MOVX @DPTR,A           ;M 
38DE  128942    LCALL 0x8942           ;M 
38E1  22        RET                    ;M 

sub_38E2:  ; M func, size~24
38E2  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
38E5  e0        MOVX A,@DPTR           ;M 
38E6  6003      JZ 0x38EB              ;M 
38E8  12752e    LCALL 0x752E           ;M 
38EB  e4        CLR A                  ;M 
38EC  90a0a3    MOV DPTR,# #0xA0A3     ;M dptr win: win-Ax (0xA0A3)
38EF  f0        MOVX @DPTR,A           ;M 
38F0  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
38F3  e0        MOVX A,@DPTR           ;M 
38F4  ff        MOV R7,A               ;M 
38F5  20e002    JB ACC.0, 0x38FA       ;M 
38F8  4146      AJMP 0x3A46            ;M 

sub_38FA:  ; M func, size~18
38FA  125fca    LCALL 0x5FCA           ;M 
38FD  5407      ANL A,# #0x07          ;M 
38FF  90a0a0    MOV DPTR,# #0xA0A0     ;M dptr win: win-Ax (0xA0A0)
3902  f0        MOVX @DPTR,A           ;M 
3903  6007      JZ 0x390C              ;M 
3905  e0        MOVX A,@DPTR           ;M 
3906  6402      XRL A,# #0x02          ;M 
3908  6002      JZ 0x390C              ;M 
390A  21f2      AJMP 0x39F2            ;M 

sub_390C:  ; M func, size~40
390C  909f19    MOV DPTR,# #0x9F19     ;M dptr win: win-9x (0x9F19)
390F  e0        MOVX A,@DPTR           ;M 
3910  702b      JNZ 0x393D             ;M 
3912  f198      ACALL 0x3F98           ;M 
3914  7b4e      MOV R3,# #0x4E         ;M 
3916  f191      ACALL 0x3F91           ;M 
3918  5147      ACALL 0x3A47           ;M 
391A  ff        MOV R7,A               ;M 
391B  7e00      MOV R6,# #0x00         ;M 
391D  7b04      MOV R3,# #0x04         ;M 
391F  7d01      MOV R5,# #0x01         ;M 
3921  7142      ACALL 0x3B42           ;M 
3923  bf010e    CJNE R7,# #0x01, 0x3934 ;M 
3926  12762f    LCALL 0x762F           ;M 
3929  e0        MOVX A,@DPTR           ;M 
392A  4401      ORL A,# #0x01          ;M 
392C  f0        MOVX @DPTR,A           ;M 
392D  909f19    MOV DPTR,# #0x9F19     ;M dptr win: win-9x (0x9F19)
3930  7401      MOV A,# #0x01          ;M 
3932  f0        MOVX @DPTR,A           ;M 
3933  22        RET                    ;M 

sub_3934:  ; M func, size~9
3934  90a0a1    MOV DPTR,# #0xA0A1     ;M dptr win: win-Ax (0xA0A1)
3937  e0        MOVX A,@DPTR           ;M 
3938  fd        MOV R5,A               ;M 
3939  7b4f      MOV R3,# #0x4F         ;M 
393B  21c7      AJMP 0x39C7            ;M 

sub_393D:  ; M func, size~10
393D  909f19    MOV DPTR,# #0x9F19     ;M dptr win: win-9x (0x9F19)
3940  e0        MOVX A,@DPTR           ;M 
3941  6401      XRL A,# #0x01          ;M 
3943  6002      JZ 0x3947              ;M 
3945  21e3      AJMP 0x39E3            ;M 

sub_3947:  ; M func, size~15
3947  7139      ACALL 0x3B39           ;M 
3949  ff        MOV R7,A               ;M 
394A  125fce    LCALL 0x5FCE           ;M 
394D  fe        MOV R6,A               ;M 
394E  c4        SWAP A                 ;M 
394F  540f      ANL A,# #0x0F          ;M 
3951  30e002    JNB ACC.0, 0x3956      ;M 
3954  21e1      AJMP 0x39E1            ;M 

sub_3956:  ; M func, size~106
3956  75f01b    MOV dir,# B, #0x1B     ;M 
3959  ef        MOV A,R7               ;M 
395A  12763a    LCALL 0x763A           ;M 
395D  e0        MOVX A,@DPTR           ;M 
395E  ff        MOV R7,A               ;M 
395F  30e008    JNB ACC.0, 0x396A      ;M 
3962  90a0a3    MOV DPTR,# #0xA0A3     ;M dptr win: win-Ax (0xA0A3)
3965  7401      MOV A,# #0x01          ;M 
3967  f0        MOVX @DPTR,A           ;M 
3968  8012      SJMP 0x397C            ;M 
396A  ef        MOV A,R7               ;M 
396B  c3        CLR C                  ;M 
396C  13        RRC A                  ;M 
396D  20e00c    JB ACC.0, 0x397C       ;M 
3970  90a0a3    MOV DPTR,# #0xA0A3     ;M dptr win: win-Ax (0xA0A3)
3973  7401      MOV A,# #0x01          ;M 
3975  f0        MOVX @DPTR,A           ;M 
3976  f198      ACALL 0x3F98           ;M 
3978  7b50      MOV R3,# #0x50         ;M 
397A  f191      ACALL 0x3F91           ;M 
397C  90a0a3    MOV DPTR,# #0xA0A3     ;M dptr win: win-Ax (0xA0A3)
397F  e0        MOVX A,@DPTR           ;M 
3980  6061      JZ 0x39E3              ;M 
3982  909f9e    MOV DPTR,# #0x9F9E     ;M dptr win: win-9x (0x9F9E)
3985  e0        MOVX A,@DPTR           ;M 
3986  ff        MOV R7,A               ;M 
3987  909f9d    MOV DPTR,# #0x9F9D     ;M dptr win: win-9x (0x9F9D)
398A  e0        MOVX A,@DPTR           ;M 
398B  6f        XRL A,R7               ;M 
398C  603e      JZ 0x39CC              ;M 
398E  e0        MOVX A,@DPTR           ;M 
398F  04        INC A                  ;M 
3990  f0        MOVX @DPTR,A           ;M 
3991  e0        MOVX A,@DPTR           ;M 
3992  d3        SETB C                 ;M 
3993  9401      SUBB A,# #0x01         ;M 
3995  4008      JC 0x399F              ;M 
3997  90a0a4    MOV DPTR,# #0xA0A4     ;M dptr win: win-Ax (0xA0A4)
399A  7404      MOV A,# #0x04          ;M 
399C  f0        MOVX @DPTR,A           ;M 
399D  8005      SJMP 0x39A4            ;M 
399F  e4        CLR A                  ;M 
39A0  90a0a4    MOV DPTR,# #0xA0A4     ;M dptr win: win-Ax (0xA0A4)
39A3  f0        MOVX @DPTR,A           ;M 
39A4  5147      ACALL 0x3A47           ;M 
39A6  ff        MOV R7,A               ;M 
39A7  7e00      MOV R6,# #0x00         ;M 
39A9  90a0a4    MOV DPTR,# #0xA0A4     ;M dptr win: win-Ax (0xA0A4)
39AC  e0        MOVX A,@DPTR           ;M 
39AD  fb        MOV R3,A               ;M 
39AE  7d01      MOV R5,# #0x01         ;M 
39B0  7142      ACALL 0x3B42           ;M 
39B2  bf010b    CJNE R7,# #0x01, 0x39C0 ;M 
39B5  12bcd2    LCALL 0xBCD2           ;M 
39B8  7403      MOV A,# #0x03          ;M 
39BA  12bd9c    LCALL 0xBD9C           ;M 
39BD  0280ad    LJMP 0x80AD            ;M 

sub_39C0:  ; M func, size~12
39C0  90a0a1    MOV DPTR,# #0xA0A1     ;M dptr win: win-Ax (0xA0A1)
39C3  e0        MOVX A,@DPTR           ;M 
39C4  fd        MOV R5,A               ;M 
39C5  7b51      MOV R3,# #0x51         ;M 
39C7  e4        CLR A                  ;M 
39C8  ff        MOV R7,A               ;M 
39C9  0258a7    LJMP 0x58A7            ;M 

sub_39CC:  ; M func, size~123
39CC  e4        CLR A                  ;M 
39CD  909f9d    MOV DPTR,# #0x9F9D     ;M dptr win: win-9x (0x9F9D)
39D0  f0        MOVX @DPTR,A           ;M 
39D1  f18a      ACALL 0x3F8A           ;M 
39D3  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
39D6  e0        MOVX A,@DPTR           ;M 
39D7  ff        MOV R7,A               ;M 
39D8  127633    LCALL 0x7633           ;M 
39DB  e0        MOVX A,@DPTR           ;M 
39DC  54fb      ANL A,# #0xFB          ;M 
39DE  f0        MOVX @DPTR,A           ;M 
39DF  8002      SJMP 0x39E3            ;M 
39E1  f18a      ACALL 0x3F8A           ;M 
39E3  909f19    MOV DPTR,# #0x9F19     ;M dptr win: win-9x (0x9F19)
39E6  e0        MOVX A,@DPTR           ;M 
39E7  6405      XRL A,# #0x05          ;M 
39E9  705b      JNZ 0x3A46             ;M 
39EB  515a      ACALL 0x3A5A           ;M 
39ED  ef        MOV A,R7               ;M 
39EE  7056      JNZ 0x3A46             ;M 
39F0  804f      SJMP 0x3A41            ;M 
39F2  90a0a0    MOV DPTR,# #0xA0A0     ;M dptr win: win-Ax (0xA0A0)
39F5  e0        MOVX A,@DPTR           ;M 
39F6  ff        MOV R7,A               ;M 
39F7  6403      XRL A,# #0x03          ;M 
39F9  6005      JZ 0x3A00              ;M 
39FB  ef        MOV A,R7               ;M 
39FC  6401      XRL A,# #0x01          ;M 
39FE  7046      JNZ 0x3A46             ;M 
3A00  909f19    MOV DPTR,# #0x9F19     ;M dptr win: win-9x (0x9F19)
3A03  e0        MOVX A,@DPTR           ;M 
3A04  6405      XRL A,# #0x05          ;M 
3A06  703e      JNZ 0x3A46             ;M 
3A08  90a0a0    MOV DPTR,# #0xA0A0     ;M dptr win: win-Ax (0xA0A0)
3A0B  e0        MOVX A,@DPTR           ;M 
3A0C  6401      XRL A,# #0x01          ;M 
3A0E  7025      JNZ 0x3A35             ;M 
3A10  125fb9    LCALL 0x5FB9           ;M 
3A13  e0        MOVX A,@DPTR           ;M 
3A14  d3        SETB C                 ;M 
3A15  941f      SUBB A,# #0x1F         ;M 
3A17  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
3A1A  e0        MOVX A,@DPTR           ;M 
3A1B  4009      JC 0x3A26              ;M 
3A1D  514c      ACALL 0x3A4C           ;M 
3A1F  ff        MOV R7,A               ;M 
3A20  7d00      MOV R5,# #0x00         ;M 
3A22  7c7c      MOV R4,# #0x7C         ;M 
3A24  800c      SJMP 0x3A32            ;M 
3A26  514b      ACALL 0x3A4B           ;M 
3A28  fb        MOV R3,A               ;M 
3A29  125fb9    LCALL 0x5FB9           ;M 
3A2C  e0        MOVX A,@DPTR           ;M 
3A2D  12a72c    LCALL 0xA72C           ;M 
3A30  af03      MOV R7,dir 0x03        ;M 
3A32  12a26f    LCALL 0xA26F           ;M 
3A35  7139      ACALL 0x3B39           ;M 
3A37  fd        MOV R5,A               ;M 
3A38  7f02      MOV R7,# #0x02         ;M 
3A3A  9100      ACALL 0x3C00           ;M 
3A3C  515a      ACALL 0x3A5A           ;M 
3A3E  ef        MOV A,R7               ;M 
3A3F  7005      JNZ 0x3A46             ;M 
3A41  7f06      MOV R7,# #0x06         ;M 
3A43  128e33    LCALL 0x8E33           ;M 
3A46  22        RET                    ;M 

sub_3A47:  ; M func, size~19
3A47  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
3A4A  e0        MOVX A,@DPTR           ;M 
3A4B  c3        CLR C                  ;M 
3A4C  13        RRC A                  ;M 
3A4D  5407      ANL A,# #0x07          ;M 
3A4F  75f01b    MOV dir,# B, #0x1B     ;M 
3A52  909f23    MOV DPTR,# #0x9F23     ;M dptr win: win-9x (0x9F23)
3A55  1248f3    LCALL 0x48F3           ;M 
3A58  e0        MOVX A,@DPTR           ;M 
3A59  22        RET                    ;M 

sub_3A5A:  ; M func, size~8
3A5A  125823    LCALL 0x5823           ;M 
3A5D  ef        MOV A,R7               ;M 
3A5E  7002      JNZ 0x3A62             ;M 
3A60  ff        MOV R7,A               ;M 
3A61  22        RET                    ;M 

sub_3A62:  ; M func, size~201
3A62  7139      ACALL 0x3B39           ;M 
3A64  909f6b    MOV DPTR,# #0x9F6B     ;M dptr win: win-9x (0x9F6B)
3A67  f0        MOVX @DPTR,A           ;M 
3A68  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
3A6B  e0        MOVX A,@DPTR           ;M 
3A6C  ff        MOV R7,A               ;M 
3A6D  c3        CLR C                  ;M 
3A6E  13        RRC A                  ;M 
3A6F  fe        MOV R6,A               ;M 
3A70  ef        MOV A,R7               ;M 
3A71  54f1      ANL A,# #0xF1          ;M 
3A73  ff        MOV R7,A               ;M 
3A74  ee        MOV A,R6               ;M 
3A75  04        INC A                  ;M 
3A76  5407      ANL A,# #0x07          ;M 
3A78  25e0      ADD A,dir ACC          ;M 
3A7A  4f        ORL A,R7               ;M 
3A7B  f0        MOVX @DPTR,A           ;M 
3A7C  a3        INC DPTR               ;M 
3A7D  e0        MOVX A,@DPTR           ;M 
3A7E  ff        MOV R7,A               ;M 
3A7F  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
3A82  e0        MOVX A,@DPTR           ;M 
3A83  fe        MOV R6,A               ;M 
3A84  c3        CLR C                  ;M 
3A85  13        RRC A                  ;M 
3A86  5407      ANL A,# #0x07          ;M 
3A88  b50704    CJNE A,dir 0x07, 0x3A8F ;M 
3A8B  ee        MOV A,R6               ;M 
3A8C  54f1      ANL A,# #0xF1          ;M 
3A8E  f0        MOVX @DPTR,A           ;M 
3A8F  7139      ACALL 0x3B39           ;M 
3A91  f567      MOV dir,A 0x67         ;M 
3A93  e4        CLR A                  ;M 
3A94  909f19    MOV DPTR,# #0x9F19     ;M dptr win: win-9x (0x9F19)
3A97  f0        MOVX @DPTR,A           ;M 
3A98  75f01b    MOV dir,# B, #0x1B     ;M 
3A9B  e567      MOV A,dir 0x67         ;M 
3A9D  909f1e    MOV DPTR,# #0x9F1E     ;M dptr win: win-9x (0x9F1E)
3AA0  1248f3    LCALL 0x48F3           ;M 
3AA3  e0        MOVX A,@DPTR           ;M 
3AA4  30e026    JNB ACC.0, 0x3ACD      ;M 
3AA7  712c      ACALL 0x3B2C           ;M 
3AA9  e0        MOVX A,@DPTR           ;M 
3AAA  246e      ADD A,# #0x6E          ;M 
3AAC  f582      MOV dir,A DPL          ;M 
3AAE  e4        CLR A                  ;M 
3AAF  349f      ADDC A,# #0x9F         ;M 
3AB1  f583      MOV dir,A DPH          ;M 
3AB3  e0        MOVX A,@DPTR           ;M 
3AB4  ff        MOV R7,A               ;M 
3AB5  718e      ACALL 0x3B8E           ;M 
3AB7  ef        MOV A,R7               ;M 
3AB8  712b      ACALL 0x3B2B           ;M 
3ABA  e0        MOVX A,@DPTR           ;M 
3ABB  04        INC A                  ;M 
3ABC  712b      ACALL 0x3B2B           ;M 
3ABE  e0        MOVX A,@DPTR           ;M 
3ABF  ff        MOV R7,A               ;M 
3AC0  909f6d    MOV DPTR,# #0x9F6D     ;M dptr win: win-9x (0x9F6D)
3AC3  e0        MOVX A,@DPTR           ;M 
3AC4  fe        MOV R6,A               ;M 
3AC5  ef        MOV A,R7               ;M 
3AC6  b50604    CJNE A,dir 0x06, 0x3ACD ;M 
3AC9  712c      ACALL 0x3B2C           ;M 
3ACB  e4        CLR A                  ;M 
3ACC  f0        MOVX @DPTR,A           ;M 
3ACD  718e      ACALL 0x3B8E           ;M 
3ACF  e0        MOVX A,@DPTR           ;M 
3AD0  fc        MOV R4,A               ;M 
3AD1  909f6b    MOV DPTR,# #0x9F6B     ;M dptr win: win-9x (0x9F6B)
3AD4  e0        MOVX A,@DPTR           ;M 
3AD5  75f01b    MOV dir,# B, #0x1B     ;M 
3AD8  7193      ACALL 0x3B93           ;M 
3ADA  e0        MOVX A,@DPTR           ;M 
3ADB  6c        XRL A,R4               ;M 
3ADC  6013      JZ 0x3AF1              ;M 
3ADE  75f01b    MOV dir,# B, #0x1B     ;M 
3AE1  e567      MOV A,dir 0x67         ;M 
3AE3  f1bf      ACALL 0x3FBF           ;M 
3AE5  af04      MOV R7,dir 0x04        ;M 
3AE7  d1ef      ACALL 0x3EEF           ;M 
3AE9  75f01b    MOV dir,# B, #0x1B     ;M 
3AEC  e567      MOV A,dir 0x67         ;M 
3AEE  125d99    LCALL 0x5D99           ;M 
3AF1  75f01b    MOV dir,# B, #0x1B     ;M 
3AF4  e567      MOV A,dir 0x67         ;M 
3AF6  125fd1    LCALL 0x5FD1           ;M 
3AF9  5407      ANL A,# #0x07          ;M 
3AFB  ff        MOV R7,A               ;M 
3AFC  6003      JZ 0x3B01              ;M 
3AFE  bf0210    CJNE R7,# #0x02, 0x3B11 ;M 
3B01  75f01b    MOV dir,# B, #0x1B     ;M 
3B04  e567      MOV A,dir 0x67         ;M 
3B06  5152      ACALL 0x3A52           ;M 
3B08  ff        MOV R7,A               ;M 
3B09  7e00      MOV R6,# #0x00         ;M 
3B0B  7b04      MOV R3,# #0x04         ;M 
3B0D  e4        CLR A                  ;M 
3B0E  fd        MOV R5,A               ;M 
3B0F  7142      ACALL 0x3B42           ;M 
3B11  ad67      MOV R5,dir 0x67        ;M 
3B13  7f01      MOV R7,# #0x01         ;M 
3B15  9100      ACALL 0x3C00           ;M 
3B17  909f6c    MOV DPTR,# #0x9F6C     ;M dptr win: win-9x (0x9F6C)
3B1A  e0        MOVX A,@DPTR           ;M 
3B1B  c3        CLR C                  ;M 
3B1C  13        RRC A                  ;M 
3B1D  5403      ANL A,# #0x03          ;M 
3B1F  ff        MOV R7,A               ;M 
3B20  bf0205    CJNE R7,# #0x02, 0x3B28 ;M 
3B23  e4        CLR A                  ;M 
3B24  ff        MOV R7,A               ;M 
3B25  128e33    LCALL 0x8E33           ;M 
3B28  7f01      MOV R7,# #0x01         ;M 
3B2A  22        RET                    ;M 

sub_3B2B:  ; M func, size~13
3B2B  f0        MOVX @DPTR,A           ;M 
3B2C  7491      MOV A,# #0x91          ;M 
3B2E  2567      ADD A,dir 0x67         ;M 
3B30  f582      MOV dir,A DPL          ;M 
3B32  e4        CLR A                  ;M 
3B33  349f      ADDC A,# #0x9F         ;M 
3B35  f583      MOV dir,A DPH          ;M 
3B37  22        RET                    ;M 

sub_3B38:  ; M func, size~10
3B38  f0        MOVX @DPTR,A           ;M 
3B39  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
3B3C  e0        MOVX A,@DPTR           ;M 
3B3D  c3        CLR C                  ;M 
3B3E  13        RRC A                  ;M 
3B3F  5407      ANL A,# #0x07          ;M 
3B41  22        RET                    ;M 

sub_3B42:  ; M func, size~76
3B42  d3        SETB C                 ;M 
3B43  10af01    JBC IE.7, 0x3B47       ;M 
3B46  c3        CLR C                  ;M 
3B47  c0d0      PUSH dir PSW           ;M 
3B49  90a167    MOV DPTR,# #0xA167     ;M dptr win: win-Ax (0xA167)
3B4C  ee        MOV A,R6               ;M 
3B4D  f0        MOVX @DPTR,A           ;M 
3B4E  a3        INC DPTR               ;M 
3B4F  12a4c2    LCALL 0xA4C2           ;M 
3B52  90041d    MOV DPTR,# #0x041D     ;M dptr win: RAM/table (0x041D)
3B55  e0        MOVX A,@DPTR           ;M 
3B56  6029      JZ 0x3B81              ;M 
3B58  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
3B5B  e0        MOVX A,@DPTR           ;M 
3B5C  90a16d    MOV DPTR,# #0xA16D     ;M dptr win: win-Ax (0xA16D)
3B5F  f0        MOVX @DPTR,A           ;M 
3B60  7b14      MOV R3,# #0x14         ;M 
3B62  12581d    LCALL 0x581D           ;M 
3B65  ef        MOV A,R7               ;M 
3B66  6401      XRL A,# #0x01          ;M 
3B68  7005      JNZ 0x3B6F             ;M 
3B6A  126763    LCALL 0x6763           ;M 
3B6D  8004      SJMP 0x3B73            ;M 
3B6F  7f00      MOV R7,# #0x00         ;M 
3B71  8016      SJMP 0x3B89            ;M 
3B73  90a16d    MOV DPTR,# #0xA16D     ;M dptr win: win-Ax (0xA16D)
3B76  e0        MOVX A,@DPTR           ;M 
3B77  fd        MOV R5,A               ;M 
3B78  7b15      MOV R3,# #0x15         ;M 
3B7A  e4        CLR A                  ;M 
3B7B  ff        MOV R7,A               ;M 
3B7C  1258a7    LCALL 0x58A7           ;M 
3B7F  8003      SJMP 0x3B84            ;M 
3B81  126763    LCALL 0x6763           ;M 
3B84  1287d8    LCALL 0x87D8           ;M 
3B87  7f01      MOV R7,# #0x01         ;M 
3B89  d0d0      POP dir PSW            ;M 
3B8B  92af      MOV bit,C IE.7         ;M 
3B8D  22        RET                    ;M 

sub_3B8E:  ; M func, size~11
3B8E  75f01b    MOV dir,# B, #0x1B     ;M 
3B91  e567      MOV A,dir 0x67         ;M 
3B93  909f1a    MOV DPTR,# #0x9F1A     ;M dptr win: win-9x (0x9F1A)
3B96  0248f3    LJMP 0x48F3            ;M 

sub_3B99:  ; M func, size~88
3B99  8f55      MOV dir,R7 0x55        ;M 
3B9B  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
3B9E  e0        MOVX A,@DPTR           ;M 
3B9F  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
3BA2  f0        MOVX @DPTR,A           ;M 
3BA3  7b17      MOV R3,# #0x17         ;M 
3BA5  12581d    LCALL 0x581D           ;M 
3BA8  ef        MOV A,R7               ;M 
3BA9  6401      XRL A,# #0x01          ;M 
3BAB  7044      JNZ 0x3BF1             ;M 
3BAD  75f01b    MOV dir,# B, #0x1B     ;M 
3BB0  e555      MOV A,dir 0x55         ;M 
3BB2  7193      ACALL 0x3B93           ;M 
3BB4  e0        MOVX A,@DPTR           ;M 
3BB5  fc        MOV R4,A               ;M 
3BB6  75f01b    MOV dir,# B, #0x1B     ;M 
3BB9  e555      MOV A,dir 0x55         ;M 
3BBB  f1bf      ACALL 0x3FBF           ;M 
3BBD  af04      MOV R7,dir 0x04        ;M 
3BBF  d1ef      ACALL 0x3EEF           ;M 
3BC1  75f01b    MOV dir,# B, #0x1B     ;M 
3BC4  e555      MOV A,dir 0x55         ;M 
3BC6  125d99    LCALL 0x5D99           ;M 
3BC9  75f01b    MOV dir,# B, #0x1B     ;M 
3BCC  e555      MOV A,dir 0x55         ;M 
3BCE  125fd1    LCALL 0x5FD1           ;M 
3BD1  5407      ANL A,# #0x07          ;M 
3BD3  ff        MOV R7,A               ;M 
3BD4  6003      JZ 0x3BD9              ;M 
3BD6  bf020f    CJNE R7,# #0x02, 0x3BE8 ;M 
3BD9  75f01b    MOV dir,# B, #0x1B     ;M 
3BDC  e555      MOV A,dir 0x55         ;M 
3BDE  5152      ACALL 0x3A52           ;M 
3BE0  ff        MOV R7,A               ;M 
3BE1  7e00      MOV R6,# #0x00         ;M 
3BE3  e4        CLR A                  ;M 
3BE4  fb        MOV R3,A               ;M 
3BE5  fd        MOV R5,A               ;M 
3BE6  7142      ACALL 0x3B42           ;M 
3BE8  ad55      MOV R5,dir 0x55        ;M 
3BEA  7f01      MOV R7,# #0x01         ;M 
3BEC  9100      ACALL 0x3C00           ;M 
3BEE  7f01      MOV R7,# #0x01         ;M 
3BF0  22        RET                    ;M 

sub_3BF1:  ; M func, size~15
3BF1  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
3BF4  e0        MOVX A,@DPTR           ;M 
3BF5  fd        MOV R5,A               ;M 
3BF6  7b49      MOV R3,# #0x49         ;M 
3BF8  e4        CLR A                  ;M 
3BF9  ff        MOV R7,A               ;M 
3BFA  1258a7    LCALL 0x58A7           ;M 
3BFD  7f00      MOV R7,# #0x00         ;M 
3BFF  22        RET                    ;M 

sub_3C00:  ; M func, size~139
3C00  d3        SETB C                 ;M 
3C01  10af01    JBC IE.7, 0x3C05       ;M 
3C04  c3        CLR C                  ;M 
3C05  c0d0      PUSH dir PSW           ;M 
3C07  90a1c9    MOV DPTR,# #0xA1C9     ;M dptr win: win-Ax (0xA1C9)
3C0A  ed        MOV A,R5               ;M 
3C0B  f0        MOVX @DPTR,A           ;M 
3C0C  90a1c8    MOV DPTR,# #0xA1C8     ;M dptr win: win-Ax (0xA1C8)
3C0F  ef        MOV A,R7               ;M 
3C10  f0        MOVX @DPTR,A           ;M 
3C11  6402      XRL A,# #0x02          ;M 
3C13  7031      JNZ 0x3C46             ;M 
3C15  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
3C18  e0        MOVX A,@DPTR           ;M 
3C19  90a1ca    MOV DPTR,# #0xA1CA     ;M dptr win: win-Ax (0xA1CA)
3C1C  f0        MOVX @DPTR,A           ;M 
3C1D  7b4a      MOV R3,# #0x4A         ;M 
3C1F  7d6f      MOV R5,# #0x6F         ;M 
3C21  12581f    LCALL 0x581F           ;M 
3C24  bf0114    CJNE R7,# #0x01, 0x3C3B ;M 
3C27  90a1a3    MOV DPTR,# #0xA1A3     ;M dptr win: win-Ax (0xA1A3)
3C2A  7403      MOV A,# #0x03          ;M 
3C2C  f0        MOVX @DPTR,A           ;M 
3C2D  7bff      MOV R3,# #0xFF         ;M 
3C2F  7dff      MOV R5,# #0xFF         ;M 
3C31  e4        CLR A                  ;M 
3C32  d1c2      ACALL 0x3EC2           ;M 
3C34  7404      MOV A,# #0x04          ;M 
3C36  f0        MOVX @DPTR,A           ;M 
3C37  7bff      MOV R3,# #0xFF         ;M 
3C39  8043      SJMP 0x3C7E            ;M 
3C3B  90a1ca    MOV DPTR,# #0xA1CA     ;M dptr win: win-Ax (0xA1CA)
3C3E  e0        MOVX A,@DPTR           ;M 
3C3F  fd        MOV R5,A               ;M 
3C40  7b46      MOV R3,# #0x46         ;M 
3C42  71f8      ACALL 0x3BF8           ;M 
3C44  8040      SJMP 0x3C86            ;M 
3C46  90a1c8    MOV DPTR,# #0xA1C8     ;M dptr win: win-Ax (0xA1C8)
3C49  e0        MOVX A,@DPTR           ;M 
3C4A  6401      XRL A,# #0x01          ;M 
3C4C  701f      JNZ 0x3C6D             ;M 
3C4E  1258a3    LCALL 0x58A3           ;M 
3C51  f170      ACALL 0x3F70           ;M 
3C53  909f1f    MOV DPTR,# #0x9F1F     ;M dptr win: win-9x (0x9F1F)
3C56  f180      ACALL 0x3F80           ;M 
3C58  7405      MOV A,# #0x05          ;M 
3C5A  f0        MOVX @DPTR,A           ;M 
3C5B  7dff      MOV R5,# #0xFF         ;M 
3C5D  e4        CLR A                  ;M 
3C5E  ff        MOV R7,A               ;M 
3C5F  918b      ACALL 0x3C8B           ;M 
3C61  f170      ACALL 0x3F70           ;M 
3C63  909f20    MOV DPTR,# #0x9F20     ;M dptr win: win-9x (0x9F20)
3C66  f180      ACALL 0x3F80           ;M 
3C68  7406      MOV A,# #0x06          ;M 
3C6A  f0        MOVX @DPTR,A           ;M 
3C6B  8011      SJMP 0x3C7E            ;M 
3C6D  90a1a3    MOV DPTR,# #0xA1A3     ;M dptr win: win-Ax (0xA1A3)
3C70  7407      MOV A,# #0x07          ;M 
3C72  f0        MOVX @DPTR,A           ;M 
3C73  e4        CLR A                  ;M 
3C74  fb        MOV R3,A               ;M 
3C75  7dff      MOV R5,# #0xFF         ;M 
3C77  d1c2      ACALL 0x3EC2           ;M 
3C79  7408      MOV A,# #0x08          ;M 
3C7B  f0        MOVX @DPTR,A           ;M 
3C7C  e4        CLR A                  ;M 
3C7D  fb        MOV R3,A               ;M 
3C7E  7dff      MOV R5,# #0xFF         ;M 
3C80  7f01      MOV R7,# #0x01         ;M 
3C82  918b      ACALL 0x3C8B           ;M 
3C84  7f01      MOV R7,# #0x01         ;M 
3C86  d0d0      POP dir PSW            ;M 
3C88  92af      MOV bit,C IE.7         ;M 
3C8A  22        RET                    ;M 

sub_3C8B:  ; M func, size~50
3C8B  d3        SETB C                 ;M 
3C8C  10af01    JBC IE.7, 0x3C90       ;M 
3C8F  c3        CLR C                  ;M 
3C90  c0d0      PUSH dir PSW           ;M 
3C92  90a1a0    MOV DPTR,# #0xA1A0     ;M dptr win: win-Ax (0xA1A0)
3C95  ef        MOV A,R7               ;M 
3C96  f0        MOVX @DPTR,A           ;M 
3C97  90a1a3    MOV DPTR,# #0xA1A3     ;M dptr win: win-Ax (0xA1A3)
3C9A  e0        MOVX A,@DPTR           ;M 
3C9B  ff        MOV R7,A               ;M 
3C9C  6401      XRL A,# #0x01          ;M 
3C9E  600c      JZ 0x3CAC              ;M 
3CA0  ef        MOV A,R7               ;M 
3CA1  6402      XRL A,# #0x02          ;M 
3CA3  6007      JZ 0x3CAC              ;M 
3CA5  90a1a0    MOV DPTR,# #0xA1A0     ;M dptr win: win-Ax (0xA1A0)
3CA8  e0        MOVX A,@DPTR           ;M 
3CA9  ff        MOV R7,A               ;M 
3CAA  d1a8      ACALL 0x3EA8           ;M 
3CAC  90a1a0    MOV DPTR,# #0xA1A0     ;M dptr win: win-Ax (0xA1A0)
3CAF  e0        MOVX A,@DPTR           ;M 
3CB0  ff        MOV R7,A               ;M 
3CB1  124911    LCALL 0x4911           ;M 
3CB4  7ce8      MOV R4,# #0xE8         ;M 
3CB6  00        NOP                    ;M 
3CB7  7ce8      MOV R4,# #0xE8         ;M 
3CB9  017c      AJMP 0x387C            ;M 
3CBB  .db E8 02

sub_3CBD:  ; M func, size~15
3CBD  7ce8      MOV R4,# #0xE8         ;M 
3CBF  03        RR A                   ;M 
3CC0  7d01      MOV R5,# #0x01         ;M 
3CC2  04        INC A                  ;M 
3CC3  7d01      MOV R5,# #0x01         ;M 
3CC5  057d      INC 0x7D               ;M 
3CC7  0106      AJMP 0x3806            ;M 
3CC9  .db 7D 01 07

sub_3CCC:  ; M func, size~92
3CCC  7d09      MOV R5,# #0x09         ;M 
3CCE  08        INC R0                 ;M 
3CCF  7d09      MOV R5,# #0x09         ;M 
3CD1  09        INC R1                 ;M 
3CD2  7d09      MOV R5,# #0x09         ;M 
3CD4  0a        INC R2                 ;M 
3CD5  7d09      MOV R5,# #0x09         ;M 
3CD7  0b        INC R3                 ;M 
3CD8  7d11      MOV R5,# #0x11         ;M 
3CDA  0c        INC R4                 ;M 
3CDB  7d11      MOV R5,# #0x11         ;M 
3CDD  0d        INC R5                 ;M 
3CDE  7d11      MOV R5,# #0x11         ;M 
3CE0  0e        INC R6                 ;M 
3CE1  7d11      MOV R5,# #0x11         ;M 
3CE3  0f        INC R7                 ;M 
3CE4  00        NOP                    ;M 
3CE5  00        NOP                    ;M 
3CE6  7d1b      MOV R5,# #0x1B         ;M 
3CE8  90a1a0    MOV DPTR,# #0xA1A0     ;M dptr win: win-Ax (0xA1A0)
3CEB  e0        MOVX A,@DPTR           ;M 
3CEC  fe        MOV R6,A               ;M 
3CED  d1e5      ACALL 0x3EE5           ;M 
3CEF  e0        MOVX A,@DPTR           ;M 
3CF0  fd        MOV R5,A               ;M 
3CF1  74c0      MOV A,# #0xC0          ;M 
3CF3  2e        ADD A,R6               ;M 
3CF4  b13b      ACALL 0x3D3B           ;M 
3CF6  e0        MOVX A,@DPTR           ;M 
3CF7  4d        ORL A,R5               ;M 
3CF8  fe        MOV R6,A               ;M 
3CF9  74d4      MOV A,# #0xD4          ;M 
3CFB  d19f      ACALL 0x3E9F           ;M 
3CFD  ee        MOV A,R6               ;M 
3CFE  f0        MOVX @DPTR,A           ;M 
3CFF  801a      SJMP 0x3D1B            ;M 
3D01  b128      ACALL 0x3D28           ;M 
3D03  d1ba      ACALL 0x3EBA           ;M 
3D05  2484      ADD A,# #0x84          ;M 
3D07  800e      SJMP 0x3D17            ;M 
3D09  b128      ACALL 0x3D28           ;M 
3D0B  d1ba      ACALL 0x3EBA           ;M 
3D0D  24c8      ADD A,# #0xC8          ;M 
3D0F  8006      SJMP 0x3D17            ;M 
3D11  b128      ACALL 0x3D28           ;M 
3D13  d1ba      ACALL 0x3EBA           ;M 
3D15  2478      ADD A,# #0x78          ;M 
3D17  d1a0      ACALL 0x3EA0           ;M 
3D19  ef        MOV A,R7               ;M 
3D1A  f0        MOVX @DPTR,A           ;M 
3D1B  90a1a3    MOV DPTR,# #0xA1A3     ;M dptr win: win-Ax (0xA1A3)
3D1E  e0        MOVX A,@DPTR           ;M 
3D1F  909fd0    MOV DPTR,# #0x9FD0     ;M dptr win: win-9x (0x9FD0)
3D22  f0        MOVX @DPTR,A           ;M 
3D23  d0d0      POP dir PSW            ;M 
3D25  92af      MOV bit,C IE.7         ;M 
3D27  22        RET                    ;M 

sub_3D28:  ; M func, size~27
3D28  90a1a0    MOV DPTR,# #0xA1A0     ;M dptr win: win-Ax (0xA1A0)
3D2B  e0        MOVX A,@DPTR           ;M 
3D2C  ff        MOV R7,A               ;M 
3D2D  24b0      ADD A,# #0xB0          ;M 
3D2F  f582      MOV dir,A DPL          ;M 
3D31  e4        CLR A                  ;M 
3D32  349f      ADDC A,# #0x9F         ;M 
3D34  f583      MOV dir,A DPH          ;M 
3D36  e0        MOVX A,@DPTR           ;M 
3D37  fe        MOV R6,A               ;M 
3D38  74c0      MOV A,# #0xC0          ;M 
3D3A  2f        ADD A,R7               ;M 
3D3B  f582      MOV dir,A DPL          ;M 
3D3D  e4        CLR A                  ;M 
3D3E  349f      ADDC A,# #0x9F         ;M 
3D40  f583      MOV dir,A DPH          ;M 
3D42  22        RET                    ;M 

sub_3D43:  ; M func, size~75
3D43  e4        CLR A                  ;M 
3D44  90a075    MOV DPTR,# #0xA075     ;M dptr win: win-Ax (0xA075)
3D47  f0        MOVX @DPTR,A           ;M 
3D48  a3        INC DPTR               ;M 
3D49  f0        MOVX @DPTR,A           ;M 
3D4A  120689    LCALL 0x0689           ;M 
3D4D  541f      ANL A,# #0x1F          ;M 
3D4F  12572f    LCALL 0x572F           ;M 
3D52  ff        MOV R7,A               ;M 
3D53  90a06d    MOV DPTR,# #0xA06D     ;M dptr win: win-Ax (0xA06D)
3D56  e4        CLR A                  ;M 
3D57  f0        MOVX @DPTR,A           ;M 
3D58  a3        INC DPTR               ;M 
3D59  ef        MOV A,R7               ;M 
3D5A  124fb8    LCALL 0x4FB8           ;M 
3D5D  ff        MOV R7,A               ;M 
3D5E  90a06f    MOV DPTR,# #0xA06F     ;M dptr win: win-Ax (0xA06F)
3D61  e4        CLR A                  ;M 
3D62  f0        MOVX @DPTR,A           ;M 
3D63  a3        INC DPTR               ;M 
3D64  ef        MOV A,R7               ;M 
3D65  f0        MOVX @DPTR,A           ;M 
3D66  1286f2    LCALL 0x86F2           ;M 
3D69  ff        MOV R7,A               ;M 
3D6A  90a071    MOV DPTR,# #0xA071     ;M dptr win: win-Ax (0xA071)
3D6D  e4        CLR A                  ;M 
3D6E  f0        MOVX @DPTR,A           ;M 
3D6F  a3        INC DPTR               ;M 
3D70  ef        MOV A,R7               ;M 
3D71  128c6f    LCALL 0x8C6F           ;M 
3D74  ff        MOV R7,A               ;M 
3D75  90a073    MOV DPTR,# #0xA073     ;M dptr win: win-Ax (0xA073)
3D78  e4        CLR A                  ;M 
3D79  f0        MOVX @DPTR,A           ;M 
3D7A  a3        INC DPTR               ;M 
3D7B  ef        MOV A,R7               ;M 
3D7C  f0        MOVX @DPTR,A           ;M 
3D7D  90a06b    MOV DPTR,# #0xA06B     ;M dptr win: win-Ax (0xA06B)
3D80  e0        MOVX A,@DPTR           ;M 
3D81  ff        MOV R7,A               ;M 
3D82  25e0      ADD A,dir ACC          ;M 
3D84  a3        INC DPTR               ;M 
3D85  f0        MOVX @DPTR,A           ;M 
3D86  ef        MOV A,R7               ;M 
3D87  c3        CLR C                  ;M 
3D88  9408      SUBB A,# #0x08         ;M 
3D8A  4002      JC 0x3D8E              ;M 
3D8C  c184      AJMP 0x3E84            ;M 

sub_3D8E:  ; M func, size~90
3D8E  90a071    MOV DPTR,# #0xA071     ;M dptr win: win-Ax (0xA071)
3D91  e0        MOVX A,@DPTR           ;M 
3D92  fc        MOV R4,A               ;M 
3D93  a3        INC DPTR               ;M 
3D94  e0        MOVX A,@DPTR           ;M 
3D95  fd        MOV R5,A               ;M 
3D96  4c        ORL A,R4               ;M 
3D97  603c      JZ 0x3DD5              ;M 
3D99  a3        INC DPTR               ;M 
3D9A  e0        MOVX A,@DPTR           ;M 
3D9B  7002      JNZ 0x3D9F             ;M 
3D9D  a3        INC DPTR               ;M 
3D9E  e0        MOVX A,@DPTR           ;M 
3D9F  6034      JZ 0x3DD5              ;M 
3DA1  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
3DA4  e0        MOVX A,@DPTR           ;M 
3DA5  ff        MOV R7,A               ;M 
3DA6  a3        INC DPTR               ;M 
3DA7  a3        INC DPTR               ;M 
3DA8  e0        MOVX A,@DPTR           ;M 
3DA9  fb        MOV R3,A               ;M 
3DAA  d1c9      ACALL 0x3EC9           ;M 
3DAC  f1ad      ACALL 0x3FAD           ;M 
3DAE  fb        MOV R3,A               ;M 
3DAF  d1c9      ACALL 0x3EC9           ;M 
3DB1  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
3DB4  e0        MOVX A,@DPTR           ;M 
3DB5  ff        MOV R7,A               ;M 
3DB6  90a071    MOV DPTR,# #0xA071     ;M dptr win: win-Ax (0xA071)
3DB9  a3        INC DPTR               ;M 
3DBA  e0        MOVX A,@DPTR           ;M 
3DBB  fd        MOV R5,A               ;M 
3DBC  90a06d    MOV DPTR,# #0xA06D     ;M dptr win: win-Ax (0xA06D)
3DBF  a3        INC DPTR               ;M 
3DC0  e0        MOVX A,@DPTR           ;M 
3DC1  fb        MOV R3,A               ;M 
3DC2  90a1a3    MOV DPTR,# #0xA1A3     ;M dptr win: win-Ax (0xA1A3)
3DC5  7401      MOV A,# #0x01          ;M 
3DC7  f0        MOVX @DPTR,A           ;M 
3DC8  918b      ACALL 0x3C8B           ;M 
3DCA  f1ad      ACALL 0x3FAD           ;M 
3DCC  fb        MOV R3,A               ;M 
3DCD  90a1a3    MOV DPTR,# #0xA1A3     ;M dptr win: win-Ax (0xA1A3)
3DD0  7402      MOV A,# #0x02          ;M 
3DD2  f0        MOVX @DPTR,A           ;M 
3DD3  918b      ACALL 0x3C8B           ;M 
3DD5  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
3DD8  e0        MOVX A,@DPTR           ;M 
3DD9  124911    LCALL 0x4911           ;M 
3DDC  7df8      MOV R5,# #0xF8         ;M 
3DDE  00        NOP                    ;M 
3DDF  7df8      MOV R5,# #0xF8         ;M 
3DE1  027e07    LJMP 0x7E07            ;M 
3DE4  .db 04 7E 07 06

sub_3DE8:  ; M func, size~183
3DE8  7e16      MOV R6,# #0x16         ;M 
3DEA  08        INC R0                 ;M 
3DEB  7e16      MOV R6,# #0x16         ;M 
3DED  0a        INC R2                 ;M 
3DEE  7e25      MOV R6,# #0x25         ;M 
3DF0  0c        INC R4                 ;M 
3DF1  7e25      MOV R6,# #0x25         ;M 
3DF3  0e        INC R6                 ;M 
3DF4  00        NOP                    ;M 
3DF5  00        NOP                    ;M 
3DF6  7e3f      MOV R6,# #0x3F         ;M 
3DF8  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
3DFB  e0        MOVX A,@DPTR           ;M 
3DFC  fd        MOV R5,A               ;M 
3DFD  24d5      ADD A,# #0xD5          ;M 
3DFF  d1a0      ACALL 0x3EA0           ;M 
3E01  e0        MOVX A,@DPTR           ;M 
3E02  fe        MOV R6,A               ;M 
3E03  74d4      MOV A,# #0xD4          ;M 
3E05  802b      SJMP 0x3E32            ;M 
3E07  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
3E0A  e0        MOVX A,@DPTR           ;M 
3E0B  fd        MOV R5,A               ;M 
3E0C  2485      ADD A,# #0x85          ;M 
3E0E  d1a0      ACALL 0x3EA0           ;M 
3E10  e0        MOVX A,@DPTR           ;M 
3E11  fe        MOV R6,A               ;M 
3E12  7484      MOV A,# #0x84          ;M 
3E14  801c      SJMP 0x3E32            ;M 
3E16  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
3E19  e0        MOVX A,@DPTR           ;M 
3E1A  fd        MOV R5,A               ;M 
3E1B  24c9      ADD A,# #0xC9          ;M 
3E1D  d1a0      ACALL 0x3EA0           ;M 
3E1F  e0        MOVX A,@DPTR           ;M 
3E20  fe        MOV R6,A               ;M 
3E21  74c8      MOV A,# #0xC8          ;M 
3E23  800d      SJMP 0x3E32            ;M 
3E25  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
3E28  e0        MOVX A,@DPTR           ;M 
3E29  fd        MOV R5,A               ;M 
3E2A  2479      ADD A,# #0x79          ;M 
3E2C  d1a0      ACALL 0x3EA0           ;M 
3E2E  e0        MOVX A,@DPTR           ;M 
3E2F  fe        MOV R6,A               ;M 
3E30  7478      MOV A,# #0x78          ;M 
3E32  2d        ADD A,R5               ;M 
3E33  d1a0      ACALL 0x3EA0           ;M 
3E35  129f78    LCALL 0x9F78           ;M 
3E38  90a075    MOV DPTR,# #0xA075     ;M dptr win: win-Ax (0xA075)
3E3B  f0        MOVX @DPTR,A           ;M 
3E3C  a3        INC DPTR               ;M 
3E3D  ef        MOV A,R7               ;M 
3E3E  f0        MOVX @DPTR,A           ;M 
3E3F  90a075    MOV DPTR,# #0xA075     ;M dptr win: win-Ax (0xA075)
3E42  e0        MOVX A,@DPTR           ;M 
3E43  fe        MOV R6,A               ;M 
3E44  a3        INC DPTR               ;M 
3E45  e0        MOVX A,@DPTR           ;M 
3E46  90a05f    MOV DPTR,# #0xA05F     ;M dptr win: win-Ax (0xA05F)
3E49  f0        MOVX @DPTR,A           ;M 
3E4A  ee        MOV A,R6               ;M 
3E4B  a3        INC DPTR               ;M 
3E4C  f0        MOVX @DPTR,A           ;M 
3E4D  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
3E50  e0        MOVX A,@DPTR           ;M 
3E51  ff        MOV R7,A               ;M 
3E52  d1e5      ACALL 0x3EE5           ;M 
3E54  e0        MOVX A,@DPTR           ;M 
3E55  90a061    MOV DPTR,# #0xA061     ;M dptr win: win-Ax (0xA061)
3E58  f0        MOVX @DPTR,A           ;M 
3E59  74b1      MOV A,# #0xB1          ;M 
3E5B  2f        ADD A,R7               ;M 
3E5C  f582      MOV dir,A DPL          ;M 
3E5E  e4        CLR A                  ;M 
3E5F  349f      ADDC A,# #0x9F         ;M 
3E61  f583      MOV dir,A DPH          ;M 
3E63  e0        MOVX A,@DPTR           ;M 
3E64  90a062    MOV DPTR,# #0xA062     ;M dptr win: win-Ax (0xA062)
3E67  f0        MOVX @DPTR,A           ;M 
3E68  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
3E6B  e0        MOVX A,@DPTR           ;M 
3E6C  24c0      ADD A,# #0xC0          ;M 
3E6E  b13b      ACALL 0x3D3B           ;M 
3E70  e0        MOVX A,@DPTR           ;M 
3E71  90a063    MOV DPTR,# #0xA063     ;M dptr win: win-Ax (0xA063)
3E74  f0        MOVX @DPTR,A           ;M 
3E75  74c1      MOV A,# #0xC1          ;M 
3E77  2f        ADD A,R7               ;M 
3E78  f582      MOV dir,A DPL          ;M 
3E7A  e4        CLR A                  ;M 
3E7B  349f      ADDC A,# #0x9F         ;M 
3E7D  f583      MOV dir,A DPH          ;M 
3E7F  e0        MOVX A,@DPTR           ;M 
3E80  90a064    MOV DPTR,# #0xA064     ;M dptr win: win-Ax (0xA064)
3E83  f0        MOVX @DPTR,A           ;M 
3E84  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
3E87  7421      MOV A,# #0x21          ;M 
3E89  f0        MOVX @DPTR,A           ;M 
3E8A  90a06a    MOV DPTR,# #0xA06A     ;M dptr win: win-Ax (0xA06A)
3E8D  7407      MOV A,# #0x07          ;M 
3E8F  f0        MOVX @DPTR,A           ;M 
3E90  a3        INC DPTR               ;M 
3E91  e0        MOVX A,@DPTR           ;M 
3E92  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
3E95  f168      ACALL 0x3F68           ;M 
3E97  125575    LCALL 0x5575           ;M 
3E9A  7f04      MOV R7,# #0x04         ;M 
3E9C  028ffc    LJMP 0x8FFC            ;M 

sub_3E9F:  ; M func, size~9
3E9F  2f        ADD A,R7               ;M 
3EA0  f582      MOV dir,A DPL          ;M 
3EA2  e4        CLR A                  ;M 
3EA3  3404      ADDC A,# #0x04         ;M 
3EA5  f583      MOV dir,A DPH          ;M 
3EA7  22        RET                    ;M 

sub_3EA8:  ; M func, size~9
3EA8  ed        MOV A,R5               ;M 
3EA9  b4ff05    CJNE A,# #0xFF, 0x3EB1 ;M 
3EAC  b138      ACALL 0x3D38           ;M 
3EAE  eb        MOV A,R3               ;M 
3EAF  f0        MOVX @DPTR,A           ;M 
3EB0  22        RET                    ;M 

sub_3EB1:  ; M func, size~9
3EB1  b138      ACALL 0x3D38           ;M 
3EB3  f1a1      ACALL 0x3FA1           ;M 
3EB5  b137      ACALL 0x3D37           ;M 
3EB7  ee        MOV A,R6               ;M 
3EB8  f0        MOVX @DPTR,A           ;M 
3EB9  22        RET                    ;M 

sub_3EBA:  ; M func, size~8
3EBA  e0        MOVX A,@DPTR           ;M 
3EBB  4e        ORL A,R6               ;M 
3EBC  ff        MOV R7,A               ;M 
3EBD  90a1a0    MOV DPTR,# #0xA1A0     ;M dptr win: win-Ax (0xA1A0)
3EC0  e0        MOVX A,@DPTR           ;M 
3EC1  22        RET                    ;M 

sub_3EC2:  ; M func, size~7
3EC2  ff        MOV R7,A               ;M 
3EC3  918b      ACALL 0x3C8B           ;M 
3EC5  90a1a3    MOV DPTR,# #0xA1A3     ;M dptr win: win-Ax (0xA1A3)
3EC8  22        RET                    ;M 

sub_3EC9:  ; M func, size~12
3EC9  ed        MOV A,R5               ;M 
3ECA  b4ff08    CJNE A,# #0xFF, 0x3ED5 ;M 
3ECD  74b0      MOV A,# #0xB0          ;M 
3ECF  2f        ADD A,R7               ;M 
3ED0  d1e7      ACALL 0x3EE7           ;M 
3ED2  eb        MOV A,R3               ;M 
3ED3  f0        MOVX @DPTR,A           ;M 
3ED4  22        RET                    ;M 

sub_3ED5:  ; M func, size~16
3ED5  74b0      MOV A,# #0xB0          ;M 
3ED7  2f        ADD A,R7               ;M 
3ED8  d1e7      ACALL 0x3EE7           ;M 
3EDA  f1a1      ACALL 0x3FA1           ;M 
3EDC  fe        MOV R6,A               ;M 
3EDD  74b0      MOV A,# #0xB0          ;M 
3EDF  2f        ADD A,R7               ;M 
3EE0  d1e7      ACALL 0x3EE7           ;M 
3EE2  ee        MOV A,R6               ;M 
3EE3  f0        MOVX @DPTR,A           ;M 
3EE4  22        RET                    ;M 

sub_3EE5:  ; M func, size~10
3EE5  24b0      ADD A,# #0xB0          ;M 
3EE7  f582      MOV dir,A DPL          ;M 
3EE9  e4        CLR A                  ;M 
3EEA  349f      ADDC A,# #0x9F         ;M 
3EEC  f583      MOV dir,A DPH          ;M 
3EEE  22        RET                    ;M 

sub_3EEF:  ; M func, size~106
3EEF  d3        SETB C                 ;M 
3EF0  10af01    JBC IE.7, 0x3EF4       ;M 
3EF3  c3        CLR C                  ;M 
3EF4  c0d0      PUSH dir PSW           ;M 
3EF6  90a1a4    MOV DPTR,# #0xA1A4     ;M dptr win: win-Ax (0xA1A4)
3EF9  ef        MOV A,R7               ;M 
3EFA  f0        MOVX @DPTR,A           ;M 
3EFB  ed        MOV A,R5               ;M 
3EFC  6401      XRL A,# #0x01          ;M 
3EFE  702e      JNZ 0x3F2E             ;M 
3F00  eb        MOV A,R3               ;M 
3F01  b40107    CJNE A,# #0x01, 0x3F0B ;M 
3F04  e0        MOVX A,@DPTR           ;M 
3F05  2402      ADD A,# #0x02          ;M 
3F07  f56e      MOV dir,A 0x6E         ;M 
3F09  8008      SJMP 0x3F13            ;M 
3F0B  90a1a4    MOV DPTR,# #0xA1A4     ;M dptr win: win-Ax (0xA1A4)
3F0E  e0        MOVX A,@DPTR           ;M 
3F0F  24fe      ADD A,# #0xFE          ;M 
3F11  f56e      MOV dir,A 0x6E         ;M 
3F13  90a0cd    MOV DPTR,# #0xA0CD     ;M dptr win: win-Ax (0xA0CD)
3F16  120879    LCALL 0x0879           ;M 
3F19  00        NOP                    ;M 
3F1A  00        NOP                    ;M 
3F1B  00        NOP                    ;M 
3F1C  ff        MOV R7,A               ;M 
3F1D  af6e      MOV R7,dir 0x6E        ;M 
3F1F  f159      ACALL 0x3F59           ;M 
3F21  f178      ACALL 0x3F78           ;M 
3F23  120879    LCALL 0x0879           ;M 
3F26  00        NOP                    ;M 
3F27  00        NOP                    ;M 
3F28  00        NOP                    ;M 
3F29  ff        MOV R7,A               ;M 
3F2A  af6e      MOV R7,dir 0x6E        ;M 
3F2C  8020      SJMP 0x3F4E            ;M 
3F2E  90a0cd    MOV DPTR,# #0xA0CD     ;M dptr win: win-Ax (0xA0CD)
3F31  120879    LCALL 0x0879           ;M 
3F34  00        NOP                    ;M 
3F35  00        NOP                    ;M 
3F36  00        NOP                    ;M 
3F37  ff        MOV R7,A               ;M 
3F38  90a1a4    MOV DPTR,# #0xA1A4     ;M dptr win: win-Ax (0xA1A4)
3F3B  125bf2    LCALL 0x5BF2           ;M 
3F3E  f15d      ACALL 0x3F5D           ;M 
3F40  f178      ACALL 0x3F78           ;M 
3F42  120879    LCALL 0x0879           ;M 
3F45  00        NOP                    ;M 
3F46  00        NOP                    ;M 
3F47  00        NOP                    ;M 
3F48  ff        MOV R7,A               ;M 
3F49  90a1a4    MOV DPTR,# #0xA1A4     ;M dptr win: win-Ax (0xA1A4)
3F4C  e0        MOVX A,@DPTR           ;M 
3F4D  ff        MOV R7,A               ;M 
3F4E  f159      ACALL 0x3F59           ;M 
3F50  7f01      MOV R7,# #0x01         ;M 
3F52  f1de      ACALL 0x3FDE           ;M 
3F54  d0d0      POP dir PSW            ;M 
3F56  92af      MOV bit,C IE.7         ;M 
3F58  22        RET                    ;M 

sub_3F59:  ; M func, size~15
3F59  e4        CLR A                  ;M 
3F5A  fc        MOV R4,A               ;M 
3F5B  fd        MOV R5,A               ;M 
3F5C  fe        MOV R6,A               ;M 
3F5D  90a0d1    MOV DPTR,# #0xA0D1     ;M dptr win: win-Ax (0xA0D1)
3F60  12086d    LCALL 0x086D           ;M 
3F63  7d18      MOV R5,# #0x18         ;M 
3F65  7c00      MOV R4,# #0x00         ;M 
3F67  22        RET                    ;M 

sub_3F68:  ; M func, size~8
3F68  f0        MOVX @DPTR,A           ;M 
3F69  7b01      MOV R3,# #0x01         ;M 
3F6B  7aa0      MOV R2,# #0xA0         ;M 
3F6D  795c      MOV R1,# #0x5C         ;M 
3F6F  22        RET                    ;M 

sub_3F70:  ; M func, size~8
3F70  90a1c9    MOV DPTR,# #0xA1C9     ;M dptr win: win-Ax (0xA1C9)
3F73  e0        MOVX A,@DPTR           ;M 
3F74  75f01b    MOV dir,# B, #0x1B     ;M 
3F77  22        RET                    ;M 

sub_3F78:  ; M func, size~8
3F78  e4        CLR A                  ;M 
3F79  ff        MOV R7,A               ;M 
3F7A  f1de      ACALL 0x3FDE           ;M 
3F7C  90a0cd    MOV DPTR,# #0xA0CD     ;M dptr win: win-Ax (0xA0CD)
3F7F  22        RET                    ;M 

sub_3F80:  ; M func, size~10
3F80  1248f3    LCALL 0x48F3           ;M 
3F83  e0        MOVX A,@DPTR           ;M 
3F84  f4        CPL A                  ;M 
3F85  fb        MOV R3,A               ;M 
3F86  90a1a3    MOV DPTR,# #0xA1A3     ;M dptr win: win-Ax (0xA1A3)
3F89  22        RET                    ;M 

sub_3F8A:  ; M func, size~7
3F8A  909f19    MOV DPTR,# #0x9F19     ;M dptr win: win-9x (0x9F19)
3F8D  7405      MOV A,# #0x05          ;M 
3F8F  f0        MOVX @DPTR,A           ;M 
3F90  22        RET                    ;M 

sub_3F91:  ; M func, size~7
3F91  7d6f      MOV R5,# #0x6F         ;M 
3F93  e4        CLR A                  ;M 
3F94  ff        MOV R7,A               ;M 
3F95  0258a7    LJMP 0x58A7            ;M 

sub_3F98:  ; M func, size~9
3F98  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
3F9B  e0        MOVX A,@DPTR           ;M 
3F9C  90a0a1    MOV DPTR,# #0xA0A1     ;M dptr win: win-Ax (0xA0A1)
3F9F  f0        MOVX @DPTR,A           ;M 
3FA0  22        RET                    ;M 

sub_3FA1:  ; M func, size~12
3FA1  e0        MOVX A,@DPTR           ;M 
3FA2  fe        MOV R6,A               ;M 
3FA3  ed        MOV A,R5               ;M 
3FA4  f4        CPL A                  ;M 
3FA5  fc        MOV R4,A               ;M 
3FA6  ee        MOV A,R6               ;M 
3FA7  5c        ANL A,R4               ;M 
3FA8  fe        MOV R6,A               ;M 
3FA9  eb        MOV A,R3               ;M 
3FAA  5d        ANL A,R5               ;M 
3FAB  4e        ORL A,R6               ;M 
3FAC  22        RET                    ;M 

sub_3FAD:  ; M func, size~18
3FAD  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
3FB0  e0        MOVX A,@DPTR           ;M 
3FB1  04        INC A                  ;M 
3FB2  ff        MOV R7,A               ;M 
3FB3  90a073    MOV DPTR,# #0xA073     ;M dptr win: win-Ax (0xA073)
3FB6  a3        INC DPTR               ;M 
3FB7  e0        MOVX A,@DPTR           ;M 
3FB8  fd        MOV R5,A               ;M 
3FB9  90a06f    MOV DPTR,# #0xA06F     ;M dptr win: win-Ax (0xA06F)
3FBC  a3        INC DPTR               ;M 
3FBD  e0        MOVX A,@DPTR           ;M 
3FBE  22        RET                    ;M 

sub_3FBF:  ; M func, size~31
3FBF  909f1b    MOV DPTR,# #0x9F1B     ;M dptr win: win-9x (0x9F1B)
3FC2  1248f3    LCALL 0x48F3           ;M 
3FC5  e0        MOVX A,@DPTR           ;M 
3FC6  fe        MOV R6,A               ;M 
3FC7  5403      ANL A,# #0x03          ;M 
3FC9  fd        MOV R5,A               ;M 
3FCA  ee        MOV A,R6               ;M 
3FCB  13        RRC A                  ;M 
3FCC  13        RRC A                  ;M 
3FCD  5407      ANL A,# #0x07          ;M 
3FCF  fb        MOV R3,A               ;M 
3FD0  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
3FD3  e0        MOVX A,@DPTR           ;M 
3FD4  fe        MOV R6,A               ;M 
3FD5  c4        SWAP A                 ;M 
3FD6  540f      ANL A,# #0x0F          ;M 
3FD8  90a1a7    MOV DPTR,# #0xA1A7     ;M dptr win: win-Ax (0xA1A7)
3FDB  f0        MOVX @DPTR,A           ;M 
3FDC  22        RET                    ;M 
3FDD  .db 22

sub_3FDE:  ; M func, size~120
3FDE  d3        SETB C                 ;M 
3FDF  10af01    JBC IE.7, 0x3FE3       ;M 
3FE2  c3        CLR C                  ;M 
3FE3  c0d0      PUSH dir PSW           ;M 
3FE5  90a0cb    MOV DPTR,# #0xA0CB     ;M dptr win: win-Ax (0xA0CB)
3FE8  ec        MOV A,R4               ;M 
3FE9  f0        MOVX @DPTR,A           ;M 
3FEA  a3        INC DPTR               ;M 
3FEB  ed        MOV A,R5               ;M 
3FEC  f0        MOVX @DPTR,A           ;M 
3FED  90a0ca    MOV DPTR,# #0xA0CA     ;M dptr win: win-Ax (0xA0CA)
3FF0  ef        MOV A,R7               ;M 
3FF1  f0        MOVX @DPTR,A           ;M 
3FF2  a3        INC DPTR               ;M 
3FF3  a3        INC DPTR               ;M 
3FF4  e0        MOVX A,@DPTR           ;M 
3FF5  fd        MOV R5,A               ;M 
3FF6  123e39    LCALL 0x3E39           ;M 
3FF9  90a0d5    MOV DPTR,# #0xA0D5     ;M dptr win: win-Ax (0xA0D5)
3FFC  12086d    LCALL 0x086D           ;M 
3FFF  90a0cd    MOV DPTR,# #0xA0CD     ;M dptr win: win-Ax (0xA0CD)
4002  1248db    LCALL 0x48DB           ;M 
4005  12083a    LCALL 0x083A           ;M 
4008  90a0d5    MOV DPTR,# #0xA0D5     ;M dptr win: win-Ax (0xA0D5)
400B  125f8f    LCALL 0x5F8F           ;M 
400E  c004      PUSH dir 0x04          ;M 
4010  c005      PUSH dir 0x05          ;M 
4012  c006      PUSH dir 0x06          ;M 
4014  c007      PUSH dir 0x07          ;M 
4016  90a0cd    MOV DPTR,# #0xA0CD     ;M dptr win: win-Ax (0xA0CD)
4019  1248db    LCALL 0x48DB           ;M 
401C  90a0d1    MOV DPTR,# #0xA0D1     ;M dptr win: win-Ax (0xA0D1)
401F  125f8f    LCALL 0x5F8F           ;M 
4022  d003      POP dir 0x03           ;M 
4024  d002      POP dir 0x02           ;M 
4026  d001      POP dir 0x01           ;M 
4028  d000      POP dir 0x00           ;M 
402A  1248bd    LCALL 0x48BD           ;M 
402D  90a0d9    MOV DPTR,# #0xA0D9     ;M dptr win: win-Ax (0xA0D9)
4030  12086d    LCALL 0x086D           ;M 
4033  90a0cb    MOV DPTR,# #0xA0CB     ;M dptr win: win-Ax (0xA0CB)
4036  a3        INC DPTR               ;M 
4037  e0        MOVX A,@DPTR           ;M 
4038  fd        MOV R5,A               ;M 
4039  c005      PUSH dir 0x05          ;M 
403B  90a0d9    MOV DPTR,# #0xA0D9     ;M dptr win: win-Ax (0xA0D9)
403E  1248db    LCALL 0x48DB           ;M 
4041  90aa96    MOV DPTR,# #0xAA96     ;M dptr win: win-Ax (0xAA96)
4044  12086d    LCALL 0x086D           ;M 
4047  90a0ca    MOV DPTR,# #0xA0CA     ;M dptr win: win-Ax (0xA0CA)
404A  e0        MOVX A,@DPTR           ;M 
404B  ff        MOV R7,A               ;M 
404C  d005      POP dir 0x05           ;M 
404E  123d39    LCALL 0x3D39           ;M 
4051  d0d0      POP dir PSW            ;M 
4053  92af      MOV bit,C IE.7         ;M 
4055  22        RET                    ;M 

sub_4056:  ; M func, size~63
4056  c0e0      PUSH dir ACC           ;M 
4058  c0f0      PUSH dir B             ;M 
405A  c083      PUSH dir DPH           ;M 
405C  c082      PUSH dir DPL           ;M 
405E  c0d0      PUSH dir PSW           ;M 
4060  75d000    MOV dir,# PSW, #0x00   ;M 
4063  c000      PUSH dir 0x00          ;M 
4065  c001      PUSH dir 0x01          ;M 
4067  c002      PUSH dir 0x02          ;M 
4069  c003      PUSH dir 0x03          ;M 
406B  c004      PUSH dir 0x04          ;M 
406D  c005      PUSH dir 0x05          ;M 
406F  c006      PUSH dir 0x06          ;M 
4071  c007      PUSH dir 0x07          ;M 
4073  125280    LCALL 0x5280           ;M 
4076  5391bf    ANL dir,# 0x91, #0xBF  ;M 
4079  d007      POP dir 0x07           ;M 
407B  d006      POP dir 0x06           ;M 
407D  d005      POP dir 0x05           ;M 
407F  d004      POP dir 0x04           ;M 
4081  d003      POP dir 0x03           ;M 
4083  d002      POP dir 0x02           ;M 
4085  d001      POP dir 0x01           ;M 
4087  d000      POP dir 0x00           ;M 
4089  d0d0      POP dir PSW            ;M 
408B  d082      POP dir DPL            ;M 
408D  d083      POP dir DPH            ;M 
408F  d0f0      POP dir B              ;M 
4091  d0e0      POP dir ACC            ;M 
4093  32        RETI                   ;M 
4094  .db 32

sub_4095:  ; M func, size~9
4095  e0        MOVX A,@DPTR           ;M 
4096  4402      ORL A,# #0x02          ;M 
4098  f0        MOVX @DPTR,A           ;M 
4099  e4        CLR A                  ;M 
409A  90a179    MOV DPTR,# #0xA179     ;M dptr win: win-Ax (0xA179)
409D  f0        MOVX @DPTR,A           ;M 

sub_409E:  ; H func, size~4
409E  909eb0    MOV DPTR,# #0x9EB0     ;H dptr win: win-9x (0x9EB0)
40A1  e0        MOVX A,@DPTR           ;H 

sub_40A2:  ; H func, size~11
40A2  90a17a    MOV DPTR,# #0xA17A     ;H dptr win: win-Ax (0xA17A)
40A5  f0        MOVX @DPTR,A           ;H 
40A6  e4        CLR A                  ;H 
40A7  fb        MOV R3,A               ;H 
40A8  fd        MOV R5,A               ;H 
40A9  7f54      MOV R7,# #0x54         ;H 
40AB  7e01      MOV R6,# #0x01         ;H 

sub_40AD:  ; H func, size~28
40AD  d3        SETB C                 ;H 
40AE  10af01    JBC IE.7, 0x40B2       ;H 
40B1  c3        CLR C                  ;H 
40B2  c0d0      PUSH dir PSW           ;H 
40B4  90a175    MOV DPTR,# #0xA175     ;H dptr win: win-Ax (0xA175)
40B7  ee        MOV A,R6               ;H 
40B8  f0        MOVX @DPTR,A           ;H 
40B9  a3        INC DPTR               ;H 
40BA  ef        MOV A,R7               ;H 
40BB  f0        MOVX @DPTR,A           ;H 
40BC  90a179    MOV DPTR,# #0xA179     ;H dptr win: win-Ax (0xA179)
40BF  e0        MOVX A,@DPTR           ;H 
40C0  f53b      MOV dir,A 0x3B         ;H 
40C2  a3        INC DPTR               ;H 
40C3  e0        MOVX A,@DPTR           ;H 
40C4  f53c      MOV dir,A 0x3C         ;H 
40C6  12369d    LCALL 0x369D           ;H 

sub_40C9:  ; H func, size~17
40C9  90a175    MOV DPTR,# #0xA175     ;H dptr win: win-Ax (0xA175)
40CC  129f81    LCALL 0x9F81           ;H 
40CF  a3        INC DPTR               ;H 
40D0  a3        INC DPTR               ;H 
40D1  a3        INC DPTR               ;H 
40D2  7405      MOV A,# #0x05          ;H 
40D4  f0        MOVX @DPTR,A           ;H 
40D5  d0d0      POP dir PSW            ;H 
40D7  92af      MOV bit,C IE.7         ;H 
40D9  22        RET                    ;H 

sub_40DA:  ; M func, size~11
40DA  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
40DD  e0        MOVX A,@DPTR           ;M 
40DE  4410      ORL A,# #0x10          ;M 
40E0  f0        MOVX @DPTR,A           ;M 
40E1  909e5b    MOV DPTR,# #0x9E5B     ;M dptr win: win-9x (0x9E5B)
40E4  e0        MOVX A,@DPTR           ;M 

sub_40E5:  ; H func, size~54
40E5  6004      JZ 0x40EB              ;H 
40E7  6401      XRL A,# #0x01          ;H 
40E9  7013      JNZ 0x40FE             ;H 
40EB  e4        CLR A                  ;H 
40EC  90a179    MOV DPTR,# #0xA179     ;H dptr win: win-Ax (0xA179)
40EF  f0        MOVX @DPTR,A           ;H 
40F0  909e5b    MOV DPTR,# #0x9E5B     ;H dptr win: win-9x (0x9E5B)
40F3  e0        MOVX A,@DPTR           ;H 
40F4  311b      ACALL 0x411B           ;H 
40F6  11a2      ACALL 0x40A2           ;H 
40F8  909e5b    MOV DPTR,# #0x9E5B     ;H dptr win: win-9x (0x9E5B)
40FB  e0        MOVX A,@DPTR           ;H 
40FC  800d      SJMP 0x410B            ;H 
40FE  e4        CLR A                  ;H 
40FF  90a179    MOV DPTR,# #0xA179     ;H dptr win: win-Ax (0xA179)
4102  f0        MOVX @DPTR,A           ;H 
4103  3122      ACALL 0x4122           ;H 
4105  311b      ACALL 0x411B           ;H 
4107  11a2      ACALL 0x40A2           ;H 
4109  3122      ACALL 0x4122           ;H 
410B  311b      ACALL 0x411B           ;H 
410D  909e6b    MOV DPTR,# #0x9E6B     ;H dptr win: win-9x (0x9E6B)
4110  f0        MOVX @DPTR,A           ;H 
4111  909e55    MOV DPTR,# #0x9E55     ;H dptr win: win-9x (0x9E55)
4114  e0        MOVX A,@DPTR           ;H 
4115  20e202    JB ACC.2, 0x411A       ;H 
4118  31f3      ACALL 0x41F3           ;H 
411A  22        RET                    ;H 
411B  .db FF 90

sub_411D:  ; H func, size~5
411D  9e        SUBB A,R6              ;H 
411E  5a        ANL A,R2               ;H 
411F  e0        MOVX A,@DPTR           ;H 
4120  2f        ADD A,R7               ;H 
4121  22        RET                    ;H 

sub_4122:  ; H func, size~11
4122  909e5b    MOV DPTR,# #0x9E5B     ;H dptr win: win-9x (0x9E5B)
4125  e0        MOVX A,@DPTR           ;H 
4126  75f003    MOV dir,# B, #0x03     ;H 
4129  a4        MUL AB                 ;H 
412A  24fe      ADD A,# #0xFE          ;H 
412C  22        RET                    ;H 

sub_412D:  ; M func, size~57
412D  12bc66    LCALL 0xBC66           ;M 
4130  4033      JC 0x4165              ;M 
4132  909e6c    MOV DPTR,# #0x9E6C     ;M dptr win: win-9x (0x9E6C)
4135  e0        MOVX A,@DPTR           ;M 
4136  04        INC A                  ;M 
4137  f0        MOVX @DPTR,A           ;M 
4138  909eae    MOV DPTR,# #0x9EAE     ;M dptr win: win-9x (0x9EAE)
413B  e0        MOVX A,@DPTR           ;M 
413C  ff        MOV R7,A               ;M 
413D  909e6c    MOV DPTR,# #0x9E6C     ;M dptr win: win-9x (0x9E6C)
4140  e0        MOVX A,@DPTR           ;M 
4141  d3        SETB C                 ;M 
4142  9f        SUBB A,R7              ;M 
4143  5020      JNC 0x4165             ;M 
4145  909e64    MOV DPTR,# #0x9E64     ;M dptr win: win-9x (0x9E64)
4148  e0        MOVX A,@DPTR           ;M 
4149  04        INC A                  ;M 
414A  f0        MOVX @DPTR,A           ;M 
414B  3122      ACALL 0x4122           ;M 
414D  311b      ACALL 0x411B           ;M 
414F  909e6b    MOV DPTR,# #0x9E6B     ;M dptr win: win-9x (0x9E6B)
4152  f0        MOVX @DPTR,A           ;M 
4153  fb        MOV R3,A               ;M 
4154  909e64    MOV DPTR,# #0x9E64     ;M dptr win: win-9x (0x9E64)
4157  e0        MOVX A,@DPTR           ;M 
4158  ff        MOV R7,A               ;M 
4159  a3        INC DPTR               ;M 
415A  e0        MOVX A,@DPTR           ;M 
415B  fd        MOV R5,A               ;M 
415C  90a1af    MOV DPTR,# #0xA1AF     ;M dptr win: win-Ax (0xA1AF)
415F  7404      MOV A,# #0x04          ;M 
4161  f0        MOVX @DPTR,A           ;M 
4162  12a94e    LCALL 0xA94E           ;M 
4165  22        RET                    ;M 

sub_4166:  ; M func, size~22
4166  909ecc    MOV DPTR,# #0x9ECC     ;M dptr win: win-9x (0x9ECC)
4169  e0        MOVX A,@DPTR           ;M 
416A  04        INC A                  ;M 
416B  f0        MOVX @DPTR,A           ;M 
416C  7f03      MOV R7,# #0x03         ;M 
416E  12bcd2    LCALL 0xBCD2           ;M 
4171  ef        MOV A,R7               ;M 
4172  f0        MOVX @DPTR,A           ;M 
4173  e4        CLR A                  ;M 
4174  fb        MOV R3,A               ;M 
4175  fd        MOV R5,A               ;M 
4176  7f6c      MOV R7,# #0x6C         ;M 
4178  7e01      MOV R6,# #0x01         ;M 
417A  01ad      AJMP 0x40AD            ;M 

sub_417C:  ; M func, size~51
417C  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
417F  f1a7      ACALL 0x47A7           ;M 
4181  30e005    JNB ACC.0, 0x4189      ;M 
4184  90015b    MOV DPTR,# #0x015B     ;M dptr win: MAC/reg-low (0x015B)
4187  e4        CLR A                  ;M 
4188  f0        MOVX @DPTR,A           ;M 
4189  900692    MOV DPTR,# #0x0692     ;M dptr win: RAM/table (0x0692)
418C  7402      MOV A,# #0x02          ;M 
418E  f0        MOVX @DPTR,A           ;M 
418F  90013c    MOV DPTR,# #0x013C     ;M dptr win: MAC/reg-low (0x013C)
4192  7404      MOV A,# #0x04          ;M 
4194  125ff2    LCALL 0x5FF2           ;M 
4197  909eb1    MOV DPTR,# #0x9EB1     ;M dptr win: win-9x (0x9EB1)
419A  e0        MOVX A,@DPTR           ;M 
419B  c3        CLR C                  ;M 
419C  13        RRC A                  ;M 
419D  547f      ANL A,# #0x7F          ;M 
419F  90a17a    MOV DPTR,# #0xA17A     ;M dptr win: win-Ax (0xA17A)
41A2  12bd9c    LCALL 0xBD9C           ;M 
41A5  11ad      ACALL 0x40AD           ;M 
41A7  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
41AA  e0        MOVX A,@DPTR           ;M 
41AB  4408      ORL A,# #0x08          ;M 
41AD  f0        MOVX @DPTR,A           ;M 
41AE  22        RET                    ;M 

sub_41AF:  ; M func, size~34
41AF  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
41B2  e0        MOVX A,@DPTR           ;M 
41B3  6011      JZ 0x41C6              ;M 
41B5  900692    MOV DPTR,# #0x0692     ;M dptr win: RAM/table (0x0692)
41B8  e0        MOVX A,@DPTR           ;M 
41B9  30e104    JNB ACC.1, 0x41C0      ;M 
41BC  317c      ACALL 0x417C           ;M 
41BE  8006      SJMP 0x41C6            ;M 
41C0  128f68    LCALL 0x8F68           ;M 
41C3  126063    LCALL 0x6063           ;M 
41C6  909f19    MOV DPTR,# #0x9F19     ;M dptr win: win-9x (0x9F19)
41C9  e0        MOVX A,@DPTR           ;M 
41CA  b40103    CJNE A,# #0x01, 0x41D0 ;M 
41CD  1278eb    LCALL 0x78EB           ;M 
41D0  22        RET                    ;M 

sub_41D1:  ; M func, size~34
41D1  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
41D4  e0        MOVX A,@DPTR           ;M 
41D5  20e01a    JB ACC.0, 0x41F2       ;M 
41D8  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
41DB  e0        MOVX A,@DPTR           ;M 
41DC  6401      XRL A,# #0x01          ;M 
41DE  7012      JNZ 0x41F2             ;M 
41E0  12776a    LCALL 0x776A           ;M 
41E3  6005      JZ 0x41EA              ;M 
41E5  12589b    LCALL 0x589B           ;M 
41E8  8092      SJMP 0x417C            ;M 
41EA  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
41ED  e0        MOVX A,@DPTR           ;M 
41EE  7002      JNZ 0x41F2             ;M 
41F0  31f3      ACALL 0x41F3           ;M 
41F2  22        RET                    ;M 

sub_41F3:  ; H func, size~7
41F3  7d01      MOV R5,# #0x01         ;H 
41F5  7f04      MOV R7,# #0x04         ;H 
41F7  02607e    LJMP 0x607E            ;H 

sub_41FA:  ; M func, size~8
41FA  513a      ACALL 0x423A           ;M 
41FC  ef        MOV A,R7               ;M 
41FD  7002      JNZ 0x4201             ;M 
41FF  31d1      ACALL 0x41D1           ;M 
4201  22        RET                    ;M 

sub_4202:  ; M func, size~31
4202  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
4205  e0        MOVX A,@DPTR           ;M 
4206  7007      JNZ 0x420F             ;M 
4208  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
420B  e0        MOVX A,@DPTR           ;M 
420C  30e011    JNB ACC.0, 0x4220      ;M 
420F  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
4212  e0        MOVX A,@DPTR           ;M 
4213  30e008    JNB ACC.0, 0x421E      ;M 
4216  126678    LCALL 0x6678           ;M 
4219  bf0104    CJNE R7,# #0x01, 0x4220 ;M 
421C  8003      SJMP 0x4221            ;M 
421E  31d1      ACALL 0x41D1           ;M 
4220  22        RET                    ;M 

sub_4221:  ; M func, size~25
4221  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
4224  e0        MOVX A,@DPTR           ;M 
4225  6402      XRL A,# #0x02          ;M 
4227  6010      JZ 0x4239              ;M 
4229  12776a    LCALL 0x776A           ;M 
422C  600b      JZ 0x4239              ;M 
422E  513a      ACALL 0x423A           ;M 
4230  ef        MOV A,R7               ;M 
4231  7006      JNZ 0x4239             ;M 
4233  fd        MOV R5,A               ;M 
4234  7f0c      MOV R7,# #0x0C         ;M 
4236  12607e    LCALL 0x607E           ;M 
4239  22        RET                    ;M 

sub_423A:  ; M func, size~10
423A  90041a    MOV DPTR,# #0x041A     ;M dptr win: RAM/table (0x041A)
423D  e0        MOVX A,@DPTR           ;M 
423E  f4        CPL A                  ;M 
423F  6003      JZ 0x4244              ;M 
4241  7f00      MOV R7,# #0x00         ;M 
4243  22        RET                    ;M 

sub_4244:  ; M func, size~15
4244  90041b    MOV DPTR,# #0x041B     ;M dptr win: RAM/table (0x041B)
4247  e0        MOVX A,@DPTR           ;M 
4248  5407      ANL A,# #0x07          ;M 
424A  6407      XRL A,# #0x07          ;M 
424C  7f01      MOV R7,# #0x01         ;M 
424E  6002      JZ 0x4252              ;M 
4250  7f00      MOV R7,# #0x00         ;M 
4252  22        RET                    ;M 

sub_4253:  ; M func, size~28
4253  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
4256  e0        MOVX A,@DPTR           ;M 
4257  1265f4    LCALL 0x65F4           ;M 
425A  30e00b    JNB ACC.0, 0x4268      ;M 
425D  516f      ACALL 0x426F           ;M 
425F  6007      JZ 0x4268              ;M 
4261  7d01      MOV R5,# #0x01         ;M 
4263  7f02      MOV R7,# #0x02         ;M 
4265  12607e    LCALL 0x607E           ;M 
4268  516f      ACALL 0x426F           ;M 
426A  6002      JZ 0x426E              ;M 
426C  5121      ACALL 0x4221           ;M 
426E  22        RET                    ;M 

sub_426F:  ; M func, size~7
426F  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
4272  e0        MOVX A,@DPTR           ;M 
4273  6402      XRL A,# #0x02          ;M 
4275  22        RET                    ;M 

sub_4276:  ; M func, size~44
4276  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
4279  e0        MOVX A,@DPTR           ;M 
427A  30e037    JNB ACC.0, 0x42B4      ;M 
427D  a3        INC DPTR               ;M 
427E  51b5      ACALL 0x42B5           ;M 
4280  7401      MOV A,# #0x01          ;M 
4282  f0        MOVX @DPTR,A           ;M 
4283  e4        CLR A                  ;M 
4284  909ebe    MOV DPTR,# #0x9EBE     ;M dptr win: win-9x (0x9EBE)
4287  f0        MOVX @DPTR,A           ;M 
4288  909ecb    MOV DPTR,# #0x9ECB     ;M dptr win: win-9x (0x9ECB)
428B  f0        MOVX @DPTR,A           ;M 
428C  a3        INC DPTR               ;M 
428D  f0        MOVX @DPTR,A           ;M 
428E  909ec8    MOV DPTR,# #0x9EC8     ;M dptr win: win-9x (0x9EC8)
4291  04        INC A                  ;M 
4292  f0        MOVX @DPTR,A           ;M 
4293  909eb5    MOV DPTR,# #0x9EB5     ;M dptr win: win-9x (0x9EB5)
4296  e0        MOVX A,@DPTR           ;M 
4297  6009      JZ 0x42A2              ;M 
4299  7b05      MOV R3,# #0x05         ;M 
429B  7d6f      MOV R5,# #0x6F         ;M 
429D  7fff      MOV R7,# #0xFF         ;M 
429F  0258a7    LJMP 0x58A7            ;M 

sub_42A2:  ; M func, size~19
42A2  1258a2    LCALL 0x58A2           ;M 
42A5  f148      ACALL 0x4748           ;M 
42A7  20e00a    JB ACC.0, 0x42B4       ;M 
42AA  ef        MOV A,R7               ;M 
42AB  13        RRC A                  ;M 
42AC  13        RRC A                  ;M 
42AD  543f      ANL A,# #0x3F          ;M 
42AF  30e002    JNB ACC.0, 0x42B4      ;M 
42B2  f1ae      ACALL 0x47AE           ;M 
42B4  22        RET                    ;M 

sub_42B5:  ; M func, size~8
42B5  e0        MOVX A,@DPTR           ;M 
42B6  ff        MOV R7,A               ;M 
42B7  316e      ACALL 0x416E           ;M 
42B9  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
42BC  22        RET                    ;M 

sub_42BD:  ; M func, size~337
42BD  d3        SETB C                 ;M 
42BE  10af01    JBC IE.7, 0x42C2       ;M 
42C1  c3        CLR C                  ;M 
42C2  c0d0      PUSH dir PSW           ;M 
42C4  90a1b0    MOV DPTR,# #0xA1B0     ;M dptr win: win-Ax (0xA1B0)
42C7  ef        MOV A,R7               ;M 
42C8  f0        MOVX @DPTR,A           ;M 
42C9  a3        INC DPTR               ;M 
42CA  7402      MOV A,# #0x02          ;M 
42CC  f0        MOVX @DPTR,A           ;M 
42CD  e4        CLR A                  ;M 
42CE  ff        MOV R7,A               ;M 
42CF  f1df      ACALL 0x47DF           ;M 
42D1  909eba    MOV DPTR,# #0x9EBA     ;M dptr win: win-9x (0x9EBA)
42D4  e0        MOVX A,@DPTR           ;M 
42D5  30e003    JNB ACC.0, 0x42DB      ;M 
42D8  0f        INC R7                 ;M 
42D9  8037      SJMP 0x4312            ;M 
42DB  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
42DE  1266a2    LCALL 0x66A2           ;M 
42E1  30e004    JNB ACC.0, 0x42E8      ;M 
42E4  7f0d      MOV R7,# #0x0D         ;M 
42E6  802a      SJMP 0x4312            ;M 
42E8  909eb9    MOV DPTR,# #0x9EB9     ;M dptr win: win-9x (0x9EB9)
42EB  e0        MOVX A,@DPTR           ;M 
42EC  ff        MOV R7,A               ;M 
42ED  c4        SWAP A                 ;M 
42EE  540f      ANL A,# #0x0F          ;M 
42F0  30e010    JNB ACC.0, 0x4303      ;M 
42F3  ef        MOV A,R7               ;M 
42F4  13        RRC A                  ;M 
42F5  13        RRC A                  ;M 
42F6  543f      ANL A,# #0x3F          ;M 
42F8  30e004    JNB ACC.0, 0x42FF      ;M 
42FB  7f09      MOV R7,# #0x09         ;M 
42FD  8013      SJMP 0x4312            ;M 
42FF  7f03      MOV R7,# #0x03         ;M 
4301  800f      SJMP 0x4312            ;M 
4303  909eb9    MOV DPTR,# #0x9EB9     ;M dptr win: win-9x (0x9EB9)
4306  e0        MOVX A,@DPTR           ;M 
4307  c3        CLR C                  ;M 
4308  13        RRC A                  ;M 
4309  30e004    JNB ACC.0, 0x4310      ;M 
430C  7f03      MOV R7,# #0x03         ;M 
430E  8002      SJMP 0x4312            ;M 
4310  7f09      MOV R7,# #0x09         ;M 
4312  f16e      ACALL 0x476E           ;M 
4314  90a1b0    MOV DPTR,# #0xA1B0     ;M dptr win: win-Ax (0xA1B0)
4317  e0        MOVX A,@DPTR           ;M 
4318  b40308    CJNE A,# #0x03, 0x4323 ;M 
431B  909eb8    MOV DPTR,# #0x9EB8     ;M dptr win: win-9x (0x9EB8)
431E  51b5      ACALL 0x42B5           ;M 
4320  e0        MOVX A,@DPTR           ;M 
4321  04        INC A                  ;M 
4322  f0        MOVX @DPTR,A           ;M 
4323  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
4326  124fd7    LCALL 0x4FD7           ;M 
4329  30e007    JNB ACC.0, 0x4333      ;M 
432C  e4        CLR A                  ;M 
432D  90a1b2    MOV DPTR,# #0xA1B2     ;M dptr win: win-Ax (0xA1B2)
4330  f0        MOVX @DPTR,A           ;M 
4331  8006      SJMP 0x4339            ;M 
4333  90a1b2    MOV DPTR,# #0xA1B2     ;M dptr win: win-Ax (0xA1B2)
4336  7401      MOV A,# #0x01          ;M 
4338  f0        MOVX @DPTR,A           ;M 
4339  12a756    LCALL 0xA756           ;M 
433C  20e013    JB ACC.0, 0x4352       ;M 
433F  909ef7    MOV DPTR,# #0x9EF7     ;M dptr win: win-9x (0x9EF7)
4342  e0        MOVX A,@DPTR           ;M 
4343  6007      JZ 0x434C              ;M 
4345  e4        CLR A                  ;M 
4346  90a1b1    MOV DPTR,# #0xA1B1     ;M dptr win: win-Ax (0xA1B1)
4349  f0        MOVX @DPTR,A           ;M 
434A  8006      SJMP 0x4352            ;M 
434C  90a1b1    MOV DPTR,# #0xA1B1     ;M dptr win: win-Ax (0xA1B1)
434F  7401      MOV A,# #0x01          ;M 
4351  f0        MOVX @DPTR,A           ;M 
4352  90a1b1    MOV DPTR,# #0xA1B1     ;M dptr win: win-Ax (0xA1B1)
4355  910e      ACALL 0x440E           ;M 
4357  909ec8    MOV DPTR,# #0x9EC8     ;M dptr win: win-9x (0x9EC8)
435A  7401      MOV A,# #0x01          ;M 
435C  f0        MOVX @DPTR,A           ;M 
435D  12a713    LCALL 0xA713           ;M 
4360  30e00b    JNB ACC.0, 0x436E      ;M 
4363  90a1b0    MOV DPTR,# #0xA1B0     ;M dptr win: win-Ax (0xA1B0)
4366  e0        MOVX A,@DPTR           ;M 
4367  7038      JNZ 0x43A1             ;M 
4369  1258a3    LCALL 0x58A3           ;M 
436C  8033      SJMP 0x43A1            ;M 
436E  f137      ACALL 0x4737           ;M 
4370  30e01a    JNB ACC.0, 0x438D      ;M 
4373  909ebc    MOV DPTR,# #0x9EBC     ;M dptr win: win-9x (0x9EBC)
4376  e0        MOVX A,@DPTR           ;M 
4377  4420      ORL A,# #0x20          ;M 
4379  f0        MOVX @DPTR,A           ;M 
437A  909eb5    MOV DPTR,# #0x9EB5     ;M dptr win: win-9x (0x9EB5)
437D  e0        MOVX A,@DPTR           ;M 
437E  6004      JZ 0x4384              ;M 
4380  7d01      MOV R5,# #0x01         ;M 
4382  8018      SJMP 0x439C            ;M 
4384  1258a2    LCALL 0x58A2           ;M 
4387  7d01      MOV R5,# #0x01         ;M 
4389  7f0c      MOV R7,# #0x0C         ;M 
438B  8011      SJMP 0x439E            ;M 
438D  90a1b0    MOV DPTR,# #0xA1B0     ;M dptr win: win-Ax (0xA1B0)
4390  e0        MOVX A,@DPTR           ;M 
4391  b4030d    CJNE A,# #0x03, 0x43A1 ;M 
4394  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
4397  e0        MOVX A,@DPTR           ;M 
4398  6007      JZ 0x43A1              ;M 
439A  e4        CLR A                  ;M 
439B  fd        MOV R5,A               ;M 
439C  7f04      MOV R7,# #0x04         ;M 
439E  12607e    LCALL 0x607E           ;M 
43A1  909eb5    MOV DPTR,# #0x9EB5     ;M dptr win: win-9x (0x9EB5)
43A4  e0        MOVX A,@DPTR           ;M 
43A5  6018      JZ 0x43BF              ;M 
43A7  90a1b0    MOV DPTR,# #0xA1B0     ;M dptr win: win-Ax (0xA1B0)
43AA  e0        MOVX A,@DPTR           ;M 
43AB  7004      JNZ 0x43B1             ;M 
43AD  7b04      MOV R3,# #0x04         ;M 
43AF  800a      SJMP 0x43BB            ;M 
43B1  90a1b0    MOV DPTR,# #0xA1B0     ;M dptr win: win-Ax (0xA1B0)
43B4  e0        MOVX A,@DPTR           ;M 
43B5  6403      XRL A,# #0x03          ;M 
43B7  702f      JNZ 0x43E8             ;M 
43B9  7b0b      MOV R3,# #0x0B         ;M 
43BB  7d6f      MOV R5,# #0x6F         ;M 
43BD  8024      SJMP 0x43E3            ;M 
43BF  90a1b0    MOV DPTR,# #0xA1B0     ;M dptr win: win-Ax (0xA1B0)
43C2  e0        MOVX A,@DPTR           ;M 
43C3  7004      JNZ 0x43C9             ;M 
43C5  fb        MOV R3,A               ;M 
43C6  fd        MOV R5,A               ;M 
43C7  801a      SJMP 0x43E3            ;M 
43C9  90a1b0    MOV DPTR,# #0xA1B0     ;M dptr win: win-Ax (0xA1B0)
43CC  e0        MOVX A,@DPTR           ;M 
43CD  6403      XRL A,# #0x03          ;M 
43CF  7017      JNZ 0x43E8             ;M 
43D1  f148      ACALL 0x4748           ;M 
43D3  20e00a    JB ACC.0, 0x43E0       ;M 
43D6  ef        MOV A,R7               ;M 
43D7  13        RRC A                  ;M 
43D8  13        RRC A                  ;M 
43D9  543f      ANL A,# #0x3F          ;M 
43DB  30e002    JNB ACC.0, 0x43E0      ;M 
43DE  f1ae      ACALL 0x47AE           ;M 
43E0  e4        CLR A                  ;M 
43E1  fb        MOV R3,A               ;M 
43E2  fd        MOV R5,A               ;M 
43E3  7fff      MOV R7,# #0xFF         ;M 
43E5  1258a7    LCALL 0x58A7           ;M 
43E8  124fd4    LCALL 0x4FD4           ;M 
43EB  30e004    JNB ACC.0, 0x43F2      ;M 
43EE  7f01      MOV R7,# #0x01         ;M 
43F0  f117      ACALL 0x4717           ;M 
43F2  909eba    MOV DPTR,# #0x9EBA     ;M dptr win: win-9x (0x9EBA)
43F5  e0        MOVX A,@DPTR           ;M 
43F6  c3        CLR C                  ;M 
43F7  13        RRC A                  ;M 
43F8  30e00e    JNB ACC.0, 0x4409      ;M 
43FB  9006cd    MOV DPTR,# #0x06CD     ;M dptr win: RAM/table (0x06CD)
43FE  e0        MOVX A,@DPTR           ;M 
43FF  4410      ORL A,# #0x10          ;M 
4401  f0        MOVX @DPTR,A           ;M 
4402  9006cf    MOV DPTR,# #0x06CF     ;M dptr win: RAM/table (0x06CF)
4405  e0        MOVX A,@DPTR           ;M 
4406  4410      ORL A,# #0x10          ;M 
4408  f0        MOVX @DPTR,A           ;M 
4409  d0d0      POP dir PSW            ;M 
440B  92af      MOV bit,C IE.7         ;M 
440D  22        RET                    ;M 

sub_440E:  ; M func, size~5
440E  e0        MOVX A,@DPTR           ;M 
440F  ff        MOV R7,A               ;M 
4410  a3        INC DPTR               ;M 
4411  e0        MOVX A,@DPTR           ;M 
4412  fd        MOV R5,A               ;M 

sub_4413:  ; H func, size~70
4413  d3        SETB C                 ;H 
4414  10af01    JBC IE.7, 0x4418       ;H 
4417  c3        CLR C                  ;H 
4418  c0d0      PUSH dir PSW           ;H 
441A  8f69      MOV dir,R7 0x69        ;H 
441C  8d6a      MOV dir,R5 0x6A        ;H 
441E  e569      MOV A,dir 0x69         ;H 
4420  6402      XRL A,# #0x02          ;H 
4422  602d      JZ 0x4451              ;H 
4424  e56a      MOV A,dir 0x6A         ;H 
4426  7029      JNZ 0x4451             ;H 
4428  d1f8      ACALL 0x46F8           ;H 
442A  e4        CLR A                  ;H 
442B  ff        MOV R7,A               ;H 
442C  b10b      ACALL 0x450B           ;H 
442E  e569      MOV A,dir 0x69         ;H 
4430  b40111    CJNE A,# #0x01, 0x4444 ;H 
4433  f106      ACALL 0x4706           ;H 
4435  90a141    MOV DPTR,# #0xA141     ;H dptr win: win-Ax (0xA141)
4438  30e005    JNB ACC.0, 0x4440      ;H 
443B  1248db    LCALL 0x48DB           ;H 
443E  800b      SJMP 0x444B            ;H 
4440  f10e      ACALL 0x470E           ;H 
4442  8007      SJMP 0x444B            ;H 
4444  b112      ACALL 0x4512           ;H 
4446  ef        MOV A,R7               ;H 
4447  4420      ORL A,# #0x20          ;H 
4449  ff        MOV R7,A               ;H 
444A  ec        MOV A,R4               ;H 
444B  b10c      ACALL 0x450C           ;H 
444D  b118      ACALL 0x4518           ;H 
444F  d1ff      ACALL 0x46FF           ;H 
4451  e56a      MOV A,dir 0x6A         ;H 
4453  6402      XRL A,# #0x02          ;H 
4455  7002      JNZ 0x4459             ;H 
4457  a105      AJMP 0x4505            ;H 
4459  .db 90 9F 15 E0 C3 13 7F 30 7E 09 30 E0 1C 12 37 AD
4469  .db E4 B1 0A 90 A1 45 12 08 79 00 77 00 00 90 A1 49
4479  .db 12 08 79 00 66

sub_447E:  ; M func, size~135
447E  00        NOP                    ;M 
447F  00        NOP                    ;M 
4480  8020      SJMP 0x44A2            ;M 
4482  1237ad    LCALL 0x37AD           ;M 
4485  ee        MOV A,R6               ;M 
4486  54f0      ANL A,# #0xF0          ;M 
4488  fe        MOV R6,A               ;M 
4489  ed        MOV A,R5               ;M 
448A  540f      ANL A,# #0x0F          ;M 
448C  b10a      ACALL 0x450A           ;M 
448E  90a145    MOV DPTR,# #0xA145     ;M dptr win: win-Ax (0xA145)
4491  120879    LCALL 0x0879           ;M 
4494  00        NOP                    ;M 
4495  7007      JNZ 0x449E             ;M 
4497  00        NOP                    ;M 
4498  90a149    MOV DPTR,# #0xA149     ;M dptr win: win-Ax (0xA149)
449B  120879    LCALL 0x0879           ;M 
449E  00        NOP                    ;M 
449F  6006      JZ 0x44A7              ;M 
44A1  00        NOP                    ;M 
44A2  e56a      MOV A,dir 0x6A         ;M 
44A4  700f      JNZ 0x44B5             ;M 
44A6  b112      ACALL 0x4512           ;M 
44A8  90a145    MOV DPTR,# #0xA145     ;M dptr win: win-Ax (0xA145)
44AB  1248e7    LCALL 0x48E7           ;M 
44AE  1248bd    LCALL 0x48BD           ;M 
44B1  b10c      ACALL 0x450C           ;M 
44B3  8047      SJMP 0x44FC            ;M 
44B5  b112      ACALL 0x4512           ;M 
44B7  90a149    MOV DPTR,# #0xA149     ;M dptr win: win-Ax (0xA149)
44BA  1248e7    LCALL 0x48E7           ;M 
44BD  1248bd    LCALL 0x48BD           ;M 
44C0  b10c      ACALL 0x450C           ;M 
44C2  d1f8      ACALL 0x46F8           ;M 
44C4  e4        CLR A                  ;M 
44C5  ff        MOV R7,A               ;M 
44C6  ec        MOV A,R4               ;M 
44C7  90a145    MOV DPTR,# #0xA145     ;M dptr win: win-Ax (0xA145)
44CA  12086d    LCALL 0x086D           ;M 
44CD  909ef7    MOV DPTR,# #0x9EF7     ;M dptr win: win-9x (0x9EF7)
44D0  e0        MOVX A,@DPTR           ;M 
44D1  600d      JZ 0x44E0              ;M 
44D3  90a145    MOV DPTR,# #0xA145     ;M dptr win: win-Ax (0xA145)
44D6  1248db    LCALL 0x48DB           ;M 
44D9  ef        MOV A,R7               ;M 
44DA  4420      ORL A,# #0x20          ;M 
44DC  ff        MOV R7,A               ;M 
44DD  ec        MOV A,R4               ;M 
44DE  800f      SJMP 0x44EF            ;M 
44E0  f106      ACALL 0x4706           ;M 
44E2  90a145    MOV DPTR,# #0xA145     ;M dptr win: win-Ax (0xA145)
44E5  30e005    JNB ACC.0, 0x44ED      ;M 
44E8  1248db    LCALL 0x48DB           ;M 
44EB  8002      SJMP 0x44EF            ;M 
44ED  f10e      ACALL 0x470E           ;M 
44EF  90a145    MOV DPTR,# #0xA145     ;M dptr win: win-Ax (0xA145)
44F2  12086d    LCALL 0x086D           ;M 
44F5  90a145    MOV DPTR,# #0xA145     ;M dptr win: win-Ax (0xA145)
44F8  b11b      ACALL 0x451B           ;M 
44FA  d1ff      ACALL 0x46FF           ;M 
44FC  b118      ACALL 0x4518           ;M 
44FE  7f30      MOV R7,# #0x30         ;M 
4500  7e09      MOV R6,# #0x09         ;M 
4502  1238a4    LCALL 0x38A4           ;M 

sub_4505:  ; H func, size~6
4505  d0d0      POP dir PSW            ;H 
4507  92af      MOV bit,C IE.7         ;H 
4509  22        RET                    ;H 
450A  .db FD

sub_450B:  ; H func, size~1
450B  ec        MOV A,R4               ;H 

sub_450C:  ; H func, size~6
450C  90a141    MOV DPTR,# #0xA141     ;H dptr win: win-Ax (0xA141)
450F  02086d    LJMP 0x086D            ;H 

sub_4512:  ; H func, size~6
4512  90a141    MOV DPTR,# #0xA141     ;H dptr win: win-Ax (0xA141)
4515  0248db    LJMP 0x48DB            ;H 

sub_4518:  ; H func, size~3
4518  90a141    MOV DPTR,# #0xA141     ;H dptr win: win-Ax (0xA141)

sub_451B:  ; H func, size~9
451B  1248db    LCALL 0x48DB           ;H 
451E  90aab9    MOV DPTR,# #0xAAB9     ;H dptr win: win-Ax (0xAAB9)
4521  02086d    LJMP 0x086D            ;H 

sub_4524:  ; M func, size~43
4524  d3        SETB C                 ;M 
4525  10af01    JBC IE.7, 0x4529       ;M 
4528  c3        CLR C                  ;M 
4529  c0d0      PUSH dir PSW           ;M 
452B  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
452E  124908    LCALL 0x4908           ;M 
4531  1256c5    LCALL 0x56C5           ;M 
4534  12b26a    LCALL 0xB26A           ;M 
4537  754305    MOV dir,# 0x43, #0x05  ;M 
453A  7b01      MOV R3,# #0x01         ;M 
453C  7a9e      MOV R2,# #0x9E         ;M 
453E  79b6      MOV R1,# #0xB6         ;M 
4540  123585    LCALL 0x3585           ;M 
4543  1256c5    LCALL 0x56C5           ;M 
4546  120689    LCALL 0x0689           ;M 
4549  ff        MOV R7,A               ;M 
454A  20e002    JB ACC.0, 0x454F       ;M 
454D  c174      AJMP 0x4674            ;M 

sub_454F:  ; M func, size~109
454F  900554    MOV DPTR,# #0x0554     ;M dptr win: RAM/table (0x0554)
4552  e0        MOVX A,@DPTR           ;M 
4553  909ec7    MOV DPTR,# #0x9EC7     ;M dptr win: win-9x (0x9EC7)
4556  f0        MOVX @DPTR,A           ;M 
4557  e0        MOVX A,@DPTR           ;M 
4558  c3        CLR C                  ;M 
4559  13        RRC A                  ;M 
455A  909ec6    MOV DPTR,# #0x9EC6     ;M dptr win: win-9x (0x9EC6)
455D  f13f      ACALL 0x473F           ;M 
455F  30e00f    JNB ACC.0, 0x4571      ;M 
4562  125733    LCALL 0x5733           ;M 
4565  909eb7    MOV DPTR,# #0x9EB7     ;M dptr win: win-9x (0x9EB7)
4568  124fb8    LCALL 0x4FB8           ;M 
456B  909eb8    MOV DPTR,# #0x9EB8     ;M dptr win: win-9x (0x9EB8)
456E  f0        MOVX @DPTR,A           ;M 
456F  8042      SJMP 0x45B3            ;M 
4571  125733    LCALL 0x5733           ;M 
4574  fe        MOV R6,A               ;M 
4575  c3        CLR C                  ;M 
4576  942a      SUBB A,# #0x2A         ;M 
4578  5012      JNC 0x458C             ;M 
457A  ee        MOV A,R6               ;M 
457B  c3        CLR C                  ;M 
457C  9403      SUBB A,# #0x03         ;M 
457E  909eb7    MOV DPTR,# #0x9EB7     ;M dptr win: win-9x (0x9EB7)
4581  5005      JNC 0x4588             ;M 
4583  7403      MOV A,# #0x03          ;M 
4585  f0        MOVX @DPTR,A           ;M 
4586  800a      SJMP 0x4592            ;M 
4588  ee        MOV A,R6               ;M 
4589  f0        MOVX @DPTR,A           ;M 
458A  8006      SJMP 0x4592            ;M 
458C  909eb7    MOV DPTR,# #0x9EB7     ;M dptr win: win-9x (0x9EB7)
458F  742a      MOV A,# #0x2A          ;M 
4591  f0        MOVX @DPTR,A           ;M 
4592  124fb9    LCALL 0x4FB9           ;M 
4595  fe        MOV R6,A               ;M 
4596  c3        CLR C                  ;M 
4597  942a      SUBB A,# #0x2A         ;M 
4599  5012      JNC 0x45AD             ;M 
459B  ee        MOV A,R6               ;M 
459C  c3        CLR C                  ;M 
459D  9403      SUBB A,# #0x03         ;M 
459F  909eb8    MOV DPTR,# #0x9EB8     ;M dptr win: win-9x (0x9EB8)
45A2  5005      JNC 0x45A9             ;M 
45A4  7403      MOV A,# #0x03          ;M 
45A6  f0        MOVX @DPTR,A           ;M 
45A7  800a      SJMP 0x45B3            ;M 
45A9  ee        MOV A,R6               ;M 
45AA  f0        MOVX @DPTR,A           ;M 
45AB  8006      SJMP 0x45B3            ;M 
45AD  909eb8    MOV DPTR,# #0x9EB8     ;M dptr win: win-9x (0x9EB8)
45B0  742a      MOV A,# #0x2A          ;M 
45B2  f0        MOVX @DPTR,A           ;M 
45B3  12669f    LCALL 0x669F           ;M 
45B6  30e02a    JNB ACC.0, 0x45E3      ;M 
45B9  909eb7    MOV DPTR,# #0x9EB7     ;M dptr win: win-9x (0x9EB7)

sub_45BC:  ; H func, size~310
45BC  e0        MOVX A,@DPTR           ;H 
45BD  c3        CLR C                  ;H 
45BE  13        RRC A                  ;H 
45BF  909ec0    MOV DPTR,# #0x9EC0     ;H dptr win: win-9x (0x9EC0)
45C2  f0        MOVX @DPTR,A           ;H 
45C3  909eb8    MOV DPTR,# #0x9EB8     ;H dptr win: win-9x (0x9EB8)
45C6  e0        MOVX A,@DPTR           ;H 
45C7  75f003    MOV dir,# B, #0x03     ;H 
45CA  84        DIV AB                 ;H 
45CB  909ec1    MOV DPTR,# #0x9EC1     ;H dptr win: win-9x (0x9EC1)
45CE  f0        MOVX @DPTR,A           ;H 
45CF  909eb7    MOV DPTR,# #0x9EB7     ;H dptr win: win-9x (0x9EB7)
45D2  e0        MOVX A,@DPTR           ;H 
45D3  c3        CLR C                  ;H 
45D4  13        RRC A                  ;H 
45D5  909ec2    MOV DPTR,# #0x9EC2     ;H dptr win: win-9x (0x9EC2)
45D8  f0        MOVX @DPTR,A           ;H 
45D9  909eb8    MOV DPTR,# #0x9EB8     ;H dptr win: win-9x (0x9EB8)
45DC  e0        MOVX A,@DPTR           ;H 
45DD  c3        CLR C                  ;H 
45DE  13        RRC A                  ;H 
45DF  909ec3    MOV DPTR,# #0x9EC3     ;H dptr win: win-9x (0x9EC3)
45E2  f0        MOVX @DPTR,A           ;H 
45E3  1256c5    LCALL 0x56C5           ;H 
45E6  d1f2      ACALL 0x46F2           ;H 
45E8  fe        MOV R6,A               ;H 
45E9  c4        SWAP A                 ;H 
45EA  13        RRC A                  ;H 
45EB  13        RRC A                  ;H 
45EC  5403      ANL A,# #0x03          ;H 
45EE  20e033    JB ACC.0, 0x4624       ;H 
45F1  909eb6    MOV DPTR,# #0x9EB6     ;H dptr win: win-9x (0x9EB6)
45F4  e0        MOVX A,@DPTR           ;H 
45F5  fe        MOV R6,A               ;H 
45F6  c3        CLR C                  ;H 
45F7  13        RRC A                  ;H 
45F8  20e007    JB ACC.0, 0x4602       ;H 
45FB  ee        MOV A,R6               ;H 
45FC  124fd8    LCALL 0x4FD8           ;H 
45FF  30e022    JNB ACC.0, 0x4624      ;H 
4602  128ebd    LCALL 0x8EBD           ;H 
4605  30e008    JNB ACC.0, 0x4610      ;H 
4608  909ef7    MOV DPTR,# #0x9EF7     ;H dptr win: win-9x (0x9EF7)
460B  e0        MOVX A,@DPTR           ;H 
460C  6008      JZ 0x4616              ;H 
460E  800b      SJMP 0x461B            ;H 
4610  909ef7    MOV DPTR,# #0x9EF7     ;H dptr win: win-9x (0x9EF7)
4613  e0        MOVX A,@DPTR           ;H 
4614  6005      JZ 0x461B              ;H 
4616  755101    MOV dir,# 0x51, #0x01  ;H 
4619  8003      SJMP 0x461E            ;H 
461B  e4        CLR A                  ;H 
461C  f551      MOV dir,A 0x51         ;H 
461E  7d02      MOV R5,# #0x02         ;H 
4620  af51      MOV R7,dir 0x51        ;H 
4622  9113      ACALL 0x4413           ;H 
4624  f137      ACALL 0x4737           ;H 
4626  30e00f    JNB ACC.0, 0x4638      ;H 
4629  12a70c    LCALL 0xA70C           ;H 
462C  5407      ANL A,# #0x07          ;H 
462E  30e007    JNB ACC.0, 0x4638      ;H 
4631  7d04      MOV R5,# #0x04         ;H 
4633  7f02      MOV R7,# #0x02         ;H 
4635  126296    LCALL 0x6296           ;H 
4638  128eff    LCALL 0x8EFF           ;H 
463B  909ebe    MOV DPTR,# #0x9EBE     ;H dptr win: win-9x (0x9EBE)
463E  e0        MOVX A,@DPTR           ;H 
463F  ff        MOV R7,A               ;H 
4640  b40108    CJNE A,# #0x01, 0x464B ;H 
4643  909ec9    MOV DPTR,# #0x9EC9     ;H dptr win: win-9x (0x9EC9)
4646  7401      MOV A,# #0x01          ;H 
4648  f0        MOVX @DPTR,A           ;H 
4649  8022      SJMP 0x466D            ;H 
464B  ef        MOV A,R7               ;H 
464C  b40408    CJNE A,# #0x04, 0x4657 ;H 
464F  909ec9    MOV DPTR,# #0x9EC9     ;H dptr win: win-9x (0x9EC9)
4652  7404      MOV A,# #0x04          ;H 
4654  f0        MOVX @DPTR,A           ;H 
4655  8016      SJMP 0x466D            ;H 
4657  ef        MOV A,R7               ;H 
4658  b40608    CJNE A,# #0x06, 0x4663 ;H 
465B  909ec9    MOV DPTR,# #0x9EC9     ;H dptr win: win-9x (0x9EC9)
465E  7402      MOV A,# #0x02          ;H 
4660  f0        MOVX @DPTR,A           ;H 
4661  800a      SJMP 0x466D            ;H 
4663  ef        MOV A,R7               ;H 
4664  b40706    CJNE A,# #0x07, 0x466D ;H 
4667  909ec9    MOV DPTR,# #0x9EC9     ;H dptr win: win-9x (0x9EC9)
466A  7405      MOV A,# #0x05          ;H 
466C  f0        MOVX @DPTR,A           ;H 
466D  e4        CLR A                  ;H 
466E  909ebe    MOV DPTR,# #0x9EBE     ;H dptr win: win-9x (0x9EBE)
4671  f0        MOVX @DPTR,A           ;H 
4672  8054      SJMP 0x46C8            ;H 
4674  1256c5    LCALL 0x56C5           ;H 
4677  d1f2      ACALL 0x46F2           ;H 
4679  1265f4    LCALL 0x65F4           ;H 
467C  30e005    JNB ACC.0, 0x4684      ;H 
467F  755202    MOV dir,# 0x52, #0x02  ;H 
4682  8011      SJMP 0x4695            ;H 
4684  120689    LCALL 0x0689           ;H 
4687  126671    LCALL 0x6671           ;H 
468A  30e005    JNB ACC.0, 0x4692      ;H 
468D  755201    MOV dir,# 0x52, #0x01  ;H 
4690  8003      SJMP 0x4695            ;H 
4692  e4        CLR A                  ;H 
4693  f552      MOV dir,A 0x52         ;H 
4695  12a7a4    LCALL 0xA7A4           ;H 
4698  909f15    MOV DPTR,# #0x9F15     ;H dptr win: win-9x (0x9F15)
469B  e0        MOVX A,@DPTR           ;H 
469C  30e004    JNB ACC.0, 0x46A3      ;H 
469F  7da0      MOV R5,# #0xA0         ;H 
46A1  8002      SJMP 0x46A5            ;H 
46A3  7d20      MOV R5,# #0x20         ;H 
46A5  7f40      MOV R7,# #0x40         ;H 
46A7  1250a0    LCALL 0x50A0           ;H 
46AA  1256c5    LCALL 0x56C5           ;H 
46AD  d1f2      ACALL 0x46F2           ;H 
46AF  13        RRC A                  ;H 
46B0  13        RRC A                  ;H 
46B1  13        RRC A                  ;H 
46B2  541f      ANL A,# #0x1F          ;H 
46B4  30e004    JNB ACC.0, 0x46BB      ;H 
46B7  7f03      MOV R7,# #0x03         ;H 
46B9  8002      SJMP 0x46BD            ;H 
46BB  7f01      MOV R7,# #0x01         ;H 
46BD  f16e      ACALL 0x476E           ;H 
46BF  ad52      MOV R5,dir 0x52        ;H 
46C1  7f02      MOV R7,# #0x02         ;H 
46C3  9113      ACALL 0x4413           ;H 
46C5  1258a2    LCALL 0x58A2           ;H 
46C8  12a74d    LCALL 0xA74D           ;H 
46CB  909ec8    MOV DPTR,# #0x9EC8     ;H dptr win: win-9x (0x9EC8)
46CE  f0        MOVX @DPTR,A           ;H 
46CF  124fd4    LCALL 0x4FD4           ;H 
46D2  30e009    JNB ACC.0, 0x46DE      ;H 
46D5  909ee8    MOV DPTR,# #0x9EE8     ;H dptr win: win-9x (0x9EE8)
46D8  e0        MOVX A,@DPTR           ;H 
46D9  4402      ORL A,# #0x02          ;H 
46DB  f0        MOVX @DPTR,A           ;H 
46DC  800b      SJMP 0x46E9            ;H 
46DE  7f01      MOV R7,# #0x01         ;H 
46E0  f117      ACALL 0x4717           ;H 
46E2  909ee8    MOV DPTR,# #0x9EE8     ;H dptr win: win-9x (0x9EE8)
46E5  e0        MOVX A,@DPTR           ;H 
46E6  54fd      ANL A,# #0xFD          ;H 
46E8  f0        MOVX @DPTR,A           ;H 
46E9  7f03      MOV R7,# #0x03         ;H 
46EB  f1df      ACALL 0x47DF           ;H 
46ED  d0d0      POP dir PSW            ;H 
46EF  92af      MOV bit,C IE.7         ;H 
46F1  22        RET                    ;H 

sub_46F2:  ; H func, size~6
46F2  900003    MOV DPTR,# #0x0003     ;H dptr win: MAC/reg-low (0x0003)
46F5  0206a2    LJMP 0x06A2            ;H 

sub_46F8:  ; H func, size~7
46F8  7f2c      MOV R7,# #0x2C         ;H 
46FA  7e09      MOV R6,# #0x09         ;H 
46FC  0237ad    LJMP 0x37AD            ;H 

sub_46FF:  ; H func, size~7
46FF  7f2c      MOV R7,# #0x2C         ;H 
4701  7e09      MOV R6,# #0x09         ;H 
4703  0238a4    LJMP 0x38A4            ;H 

sub_4706:  ; H func, size~8
4706  909f15    MOV DPTR,# #0x9F15     ;H dptr win: win-9x (0x9F15)
4709  e0        MOVX A,@DPTR           ;H 
470A  ff        MOV R7,A               ;H 
470B  c3        CLR C                  ;H 
470C  13        RRC A                  ;H 
470D  22        RET                    ;H 

sub_470E:  ; H func, size~9
470E  1248db    LCALL 0x48DB           ;H 
4711  ef        MOV A,R7               ;H 
4712  4404      ORL A,# #0x04          ;H 
4714  ff        MOV R7,A               ;H 
4715  ec        MOV A,R4               ;H 
4716  22        RET                    ;H 

sub_4717:  ; H func, size~32
4717  909ee8    MOV DPTR,# #0x9EE8     ;H dptr win: win-9x (0x9EE8)
471A  e0        MOVX A,@DPTR           ;H 
471B  fe        MOV R6,A               ;H 
471C  c3        CLR C                  ;H 
471D  13        RRC A                  ;H 
471E  30e015    JNB ACC.0, 0x4736      ;H 
4721  ef        MOV A,R7               ;H 
4722  b40105    CJNE A,# #0x01, 0x472A ;H 
4725  909eef    MOV DPTR,# #0x9EEF     ;H dptr win: win-9x (0x9EEF)
4728  8003      SJMP 0x472D            ;H 
472A  909eeb    MOV DPTR,# #0x9EEB     ;H dptr win: win-9x (0x9EEB)
472D  b11b      ACALL 0x451B           ;H 
472F  7f80      MOV R7,# #0x80         ;H 
4731  7e08      MOV R6,# #0x08         ;H 
4733  1238a4    LCALL 0x38A4           ;H 
4736  22        RET                    ;H 

sub_4737:  ; H func, size~8
4737  909eb6    MOV DPTR,# #0x9EB6     ;H dptr win: win-9x (0x9EB6)
473A  e0        MOVX A,@DPTR           ;H 
473B  c4        SWAP A                 ;H 
473C  540f      ANL A,# #0x0F          ;H 
473E  22        RET                    ;H 

sub_473F:  ; M func, size~9
473F  f0        MOVX @DPTR,A           ;M 
4740  909eb9    MOV DPTR,# #0x9EB9     ;M dptr win: win-9x (0x9EB9)
4743  e0        MOVX A,@DPTR           ;M 
4744  c4        SWAP A                 ;M 
4745  540f      ANL A,# #0x0F          ;M 
4747  22        RET                    ;M 

sub_4748:  ; M func, size~10
4748  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
474B  e0        MOVX A,@DPTR           ;M 
474C  ff        MOV R7,A               ;M 
474D  c4        SWAP A                 ;M 
474E  13        RRC A                  ;M 
474F  5407      ANL A,# #0x07          ;M 
4751  22        RET                    ;M 

sub_4752:  ; M func, size~15
4752  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
4755  e0        MOVX A,@DPTR           ;M 
4756  30e007    JNB ACC.0, 0x4760      ;M 
4759  12a73c    LCALL 0xA73C           ;M 
475C  e4        CLR A                  ;M 
475D  ff        MOV R7,A               ;M 
475E  51bd      ACALL 0x42BD           ;M 
4760  22        RET                    ;M 

sub_4761:  ; M func, size~13
4761  7b12      MOV R3,# #0x12         ;M 
4763  f1d1      ACALL 0x47D1           ;M 
4765  7f01      MOV R7,# #0x01         ;M 
4767  f16e      ACALL 0x476E           ;M 
4769  12a847    LCALL 0xA847           ;M 
476C  8113      AJMP 0x4413            ;M 

sub_476E:  ; H func, size~15
476E  909edb    MOV DPTR,# #0x9EDB     ;H dptr win: win-9x (0x9EDB)
4771  f1a7      ACALL 0x47A7           ;H 
4773  30e007    JNB ACC.0, 0x477D      ;H 
4776  900778    MOV DPTR,# #0x0778     ;H dptr win: RAM/table (0x0778)
4779  7409      MOV A,# #0x09          ;H 
477B  f0        MOVX @DPTR,A           ;H 
477C  22        RET                    ;H 

sub_477D:  ; H func, size~26
477D  909f15    MOV DPTR,# #0x9F15     ;H dptr win: win-9x (0x9F15)
4780  e0        MOVX A,@DPTR           ;H 
4781  30e01d    JNB ACC.0, 0x47A1      ;H 
4784  ef        MOV A,R7               ;H 
4785  24fd      ADD A,# #0xFD          ;H 
4787  600e      JZ 0x4797              ;H 
4789  24fa      ADD A,# #0xFA          ;H 
478B  600e      JZ 0x479B              ;H 
478D  24fc      ADD A,# #0xFC          ;H 
478F  600e      JZ 0x479F              ;H 
4791  240c      ADD A,# #0x0C          ;H 
4793  7f02      MOV R7,# #0x02         ;H 
4795  800a      SJMP 0x47A1            ;H 

sub_4797:  ; H func, size~16
4797  7f03      MOV R7,# #0x03         ;H 
4799  8006      SJMP 0x47A1            ;H 
479B  7f0b      MOV R7,# #0x0B         ;H 
479D  8002      SJMP 0x47A1            ;H 
479F  7f0e      MOV R7,# #0x0E         ;H 
47A1  900778    MOV DPTR,# #0x0778     ;H dptr win: RAM/table (0x0778)
47A4  ef        MOV A,R7               ;H 
47A5  f0        MOVX @DPTR,A           ;H 
47A6  22        RET                    ;H 

sub_47A7:  ; H func, size~7
47A7  e0        MOVX A,@DPTR           ;H 
47A8  13        RRC A                  ;H 
47A9  13        RRC A                  ;H 
47AA  13        RRC A                  ;H 
47AB  541f      ANL A,# #0x1F          ;H 
47AD  22        RET                    ;H 

sub_47AE:  ; M func, size~40
47AE  90041d    MOV DPTR,# #0x041D     ;M dptr win: RAM/table (0x041D)
47B1  e0        MOVX A,@DPTR           ;M 
47B2  701c      JNZ 0x47D0             ;M 
47B4  909d44    MOV DPTR,# #0x9D44     ;M dptr win: win-9x (0x9D44)
47B7  e0        MOVX A,@DPTR           ;M 
47B8  ff        MOV R7,A               ;M 
47B9  90a19f    MOV DPTR,# #0xA19F     ;M dptr win: win-Ax (0xA19F)
47BC  7409      MOV A,# #0x09          ;M 
47BE  f0        MOVX @DPTR,A           ;M 
47BF  7b18      MOV R3,# #0x18         ;M 
47C1  e4        CLR A                  ;M 
47C2  fd        MOV R5,A               ;M 
47C3  12a078    LCALL 0xA078           ;M 
47C6  90a1d8    MOV DPTR,# #0xA1D8     ;M dptr win: win-Ax (0xA1D8)
47C9  ee        MOV A,R6               ;M 
47CA  f0        MOVX @DPTR,A           ;M 
47CB  a3        INC DPTR               ;M 
47CC  ef        MOV A,R7               ;M 
47CD  f0        MOVX @DPTR,A           ;M 
47CE  f1d8      ACALL 0x47D8           ;M 
47D0  22        RET                    ;M 
47D1  .db 7D FF 7F FF 02

sub_47D6:  ; M func, size~9
47D6  58        ANL A,R0               ;M 
47D7  a790      MOV @R1,dir P1         ;M 
47D9  04        INC A                  ;M 
47DA  1f        DEC R7                 ;M 
47DB  7420      MOV A,# #0x20          ;M 
47DD  f0        MOVX @DPTR,A           ;M 
47DE  22        RET                    ;M 

sub_47DF:  ; H func, size~58
47DF  d3        SETB C                 ;H 
47E0  10af01    JBC IE.7, 0x47E4       ;H 
47E3  c3        CLR C                  ;H 
47E4  c0d0      PUSH dir PSW           ;H 
47E6  ef        MOV A,R7               ;H 
47E7  6403      XRL A,# #0x03          ;H 
47E9  700e      JNZ 0x47F9             ;H 
47EB  909eb9    MOV DPTR,# #0x9EB9     ;H dptr win: win-9x (0x9EB9)
47EE  1266a2    LCALL 0x66A2           ;H 
47F1  9006cc    MOV DPTR,# #0x06CC     ;H dptr win: RAM/table (0x06CC)
47F4  30e018    JNB ACC.0, 0x480F      ;H 
47F7  8010      SJMP 0x4809            ;H 
47F9  909eba    MOV DPTR,# #0x9EBA     ;H dptr win: win-9x (0x9EBA)
47FC  e0        MOVX A,@DPTR           ;H 
47FD  c4        SWAP A                 ;H 
47FE  540f      ANL A,# #0x0F          ;H 
4800  30e010    JNB ACC.0, 0x4813      ;H 
4803  ef        MOV A,R7               ;H 
4804  9006cc    MOV DPTR,# #0x06CC     ;H dptr win: RAM/table (0x06CC)
4807  7006      JNZ 0x480F             ;H 
4809  e0        MOVX A,@DPTR           ;H 
480A  54fc      ANL A,# #0xFC          ;H 
480C  f0        MOVX @DPTR,A           ;H 
480D  8004      SJMP 0x4813            ;H 
480F  e0        MOVX A,@DPTR           ;H 
4810  4403      ORL A,# #0x03          ;H 
4812  f0        MOVX @DPTR,A           ;H 
4813  d0d0      POP dir PSW            ;H 
4815  92af      MOV bit,C IE.7         ;H 
4817  22        RET                    ;H 
4818  .db 7E

sub_4819:  ; H func, size~164
4819  00        NOP                    ;H 
481A  7f18      MOV R7,# #0x18         ;H 
481C  7d00      MOV R5,# #0x00         ;H 
481E  7b01      MOV R3,# #0x01         ;H 
4820  7a9e      MOV R2,# #0x9E         ;H 
4822  79e8      MOV R1,# #0xE8         ;H 
4824  1208aa    LCALL 0x08AA           ;H 
4827  12b1bd    LCALL 0xB1BD           ;H 
482A  909eef    MOV DPTR,# #0x9EEF     ;H dptr win: win-9x (0x9EEF)
482D  1248db    LCALL 0x48DB           ;H 
4830  909eeb    MOV DPTR,# #0x9EEB     ;H dptr win: win-9x (0x9EEB)
4833  12086d    LCALL 0x086D           ;H 
4836  909d07    MOV DPTR,# #0x9D07     ;H dptr win: win-9x (0x9D07)
4839  e0        MOVX A,@DPTR           ;H 
483A  fc        MOV R4,A               ;H 
483B  6402      XRL A,# #0x02          ;H 
483D  7029      JNZ 0x4868             ;H 
483F  310b      ACALL 0x490B           ;H 
4841  30e002    JNB ACC.0, 0x4846      ;H 
4844  7e01      MOV R6,# #0x01         ;H 
4846  909ef7    MOV DPTR,# #0x9EF7     ;H dptr win: win-9x (0x9EF7)
4849  3109      ACALL 0x4909           ;H 
484B  30e102    JNB ACC.1, 0x4850      ;H 
484E  7e01      MOV R6,# #0x01         ;H 
4850  909ef8    MOV DPTR,# #0x9EF8     ;H dptr win: win-9x (0x9EF8)
4853  3109      ACALL 0x4909           ;H 
4855  30e202    JNB ACC.2, 0x485A      ;H 
4858  7e01      MOV R6,# #0x01         ;H 
485A  ee        MOV A,R6               ;H 
485B  3112      ACALL 0x4912           ;H 
485D  fe        MOV R6,A               ;H 
485E  909eb9    MOV DPTR,# #0x9EB9     ;H dptr win: win-9x (0x9EB9)
4861  e0        MOVX A,@DPTR           ;H 
4862  54bf      ANL A,# #0xBF          ;H 
4864  4e        ORL A,R6               ;H 
4865  f0        MOVX @DPTR,A           ;H 
4866  8051      SJMP 0x48B9            ;H 
4868  ec        MOV A,R4               ;H 
4869  6401      XRL A,# #0x01          ;H 
486B  701d      JNZ 0x488A             ;H 
486D  3102      ACALL 0x4902           ;H 
486F  30e002    JNB ACC.0, 0x4874      ;H 
4872  7f01      MOV R7,# #0x01         ;H 
4874  909ef7    MOV DPTR,# #0x9EF7     ;H dptr win: win-9x (0x9EF7)
4877  3100      ACALL 0x4900           ;H 
4879  30e102    JNB ACC.1, 0x487E      ;H 
487C  7f01      MOV R7,# #0x01         ;H 
487E  909ef8    MOV DPTR,# #0x9EF8     ;H dptr win: win-9x (0x9EF8)
4881  3100      ACALL 0x4900           ;H 
4883  30e202    JNB ACC.2, 0x4888      ;H 
4886  7f01      MOV R7,# #0x01         ;H 
4888  8023      SJMP 0x48AD            ;H 
488A  909d07    MOV DPTR,# #0x9D07     ;H dptr win: win-9x (0x9D07)
488D  e0        MOVX A,@DPTR           ;H 
488E  6403      XRL A,# #0x03          ;H 
4890  7027      JNZ 0x48B9             ;H 
4892  11f9      ACALL 0x48F9           ;H 
4894  30e002    JNB ACC.0, 0x4899      ;H 
4897  7f01      MOV R7,# #0x01         ;H 
4899  909ef7    MOV DPTR,# #0x9EF7     ;H dptr win: win-9x (0x9EF7)
489C  11f7      ACALL 0x48F7           ;H 
489E  30e102    JNB ACC.1, 0x48A3      ;H 
48A1  7f01      MOV R7,# #0x01         ;H 
48A3  909ef8    MOV DPTR,# #0x9EF8     ;H dptr win: win-9x (0x9EF8)
48A6  11f7      ACALL 0x48F7           ;H 
48A8  30e202    JNB ACC.2, 0x48AD      ;H 
48AB  7f01      MOV R7,# #0x01         ;H 
48AD  ef        MOV A,R7               ;H 
48AE  3112      ACALL 0x4912           ;H 
48B0  ff        MOV R7,A               ;H 
48B1  909eb9    MOV DPTR,# #0x9EB9     ;H dptr win: win-9x (0x9EB9)
48B4  e0        MOVX A,@DPTR           ;H 
48B5  54bf      ANL A,# #0xBF          ;H 
48B7  4f        ORL A,R7               ;H 
48B8  f0        MOVX @DPTR,A           ;H 
48B9  90fd68    MOV DPTR,# #0xFD68     ;H dptr win: win-Bx+ (0xFD68)
48BC  e0        MOVX A,@DPTR           ;H 

sub_48BD:  ; H func, size~30
48BD  4402      ORL A,# #0x02          ;H 
48BF  f0        MOVX @DPTR,A           ;H 
48C0  7f01      MOV R7,# #0x01         ;H 
48C2  12876e    LCALL 0x876E           ;H 
48C5  7e00      MOV R6,# #0x00         ;H 
48C7  7f32      MOV R7,# #0x32         ;H 
48C9  7d00      MOV R5,# #0x00         ;H 
48CB  7b01      MOV R3,# #0x01         ;H 
48CD  7a9e      MOV R2,# #0x9E         ;H 
48CF  79b6      MOV R1,# #0xB6         ;H 
48D1  1208aa    LCALL 0x08AA           ;H 
48D4  909eb7    MOV DPTR,# #0x9EB7     ;H dptr win: win-9x (0x9EB7)
48D7  740b      MOV A,# #0x0B          ;H 
48D9  f0        MOVX @DPTR,A           ;H 
48DA  a3        INC DPTR               ;H 

sub_48DB:  ; H func, size~24
48DB  7408      MOV A,# #0x08          ;H 
48DD  f0        MOVX @DPTR,A           ;H 
48DE  12a7a4    LCALL 0xA7A4           ;H 
48E1  909ecf    MOV DPTR,# #0x9ECF     ;H dptr win: win-9x (0x9ECF)
48E4  7401      MOV A,# #0x01          ;H 
48E6  f0        MOVX @DPTR,A           ;H 
48E7  90048f    MOV DPTR,# #0x048F     ;H dptr win: RAM/table (0x048F)
48EA  e4        CLR A                  ;H 
48EB  f0        MOVX @DPTR,A           ;H 
48EC  909f15    MOV DPTR,# #0x9F15     ;H dptr win: win-9x (0x9F15)
48EF  e0        MOVX A,@DPTR           ;H 
48F0  54fe      ANL A,# #0xFE          ;H 
48F2  f0        MOVX @DPTR,A           ;H 

sub_48F3:  ; H func, size~4
48F3  54fd      ANL A,# #0xFD          ;H 
48F5  f0        MOVX @DPTR,A           ;H 
48F6  22        RET                    ;H 

sub_48F7:  ; H func, size~2
48F7  ef        MOV A,R7               ;H 
48F8  f0        MOVX @DPTR,A           ;H 

sub_48F9:  ; H func, size~6
48F9  90fd78    MOV DPTR,# #0xFD78     ;H dptr win: win-Bx+ (0xFD78)
48FC  e0        MOVX A,@DPTR           ;H 
48FD  7f00      MOV R7,# #0x00         ;H 

sub_48FF:  ; H func, size~1
48FF  22        RET                    ;H 

sub_4900:  ; H func, size~2
4900  ef        MOV A,R7               ;H 
4901  f0        MOVX @DPTR,A           ;H 

sub_4902:  ; H func, size~7
4902  90fd70    MOV DPTR,# #0xFD70     ;H dptr win: win-Bx+ (0xFD70)
4905  e0        MOVX A,@DPTR           ;H 
4906  7f00      MOV R7,# #0x00         ;H 
4908  22        RET                    ;H 

sub_4909:  ; H func, size~2
4909  ee        MOV A,R6               ;H 
490A  f0        MOVX @DPTR,A           ;H 

sub_490B:  ; H func, size~7
490B  90fd80    MOV DPTR,# #0xFD80     ;H dptr win: win-Bx+ (0xFD80)
490E  e0        MOVX A,@DPTR           ;H 
490F  7e00      MOV R6,# #0x00         ;H 
4911  22        RET                    ;H 

sub_4912:  ; H func, size~8
4912  5401      ANL A,# #0x01          ;H 
4914  c4        SWAP A                 ;H 
4915  33        RLC A                  ;H 
4916  33        RLC A                  ;H 
4917  54c0      ANL A,# #0xC0          ;H 
4919  22        RET                    ;H 

sub_491A:  ; M func, size~29
491A  314a      ACALL 0x494A           ;M 
491C  12b39f    LCALL 0xB39F           ;M 
491F  124ee2    LCALL 0x4EE2           ;M 
4922  12b99f    LCALL 0xB99F           ;M 
4925  126558    LCALL 0x6558           ;M 
4928  12b78b    LCALL 0xB78B           ;M 
492B  1118      ACALL 0x4818           ;M 
492D  909fa5    MOV DPTR,# #0x9FA5     ;M dptr win: win-9x (0x9FA5)
4930  74ff      MOV A,# #0xFF          ;M 
4932  f0        MOVX @DPTR,A           ;M 
4933  e4        CLR A                  ;M 
4934  125209    LCALL 0x5209           ;M 

irq_00:  ; H func, size~19
4937  a3        INC DPTR               ;H 
4938  e0        MOVX A,@DPTR           ;H 
4939  54fc      ANL A,# #0xFC          ;H 
493B  4402      ORL A,# #0x02          ;H 
493D  f0        MOVX @DPTR,A           ;H 
493E  e4        CLR A                  ;H 
493F  125209    LCALL 0x5209           ;H 
4942  909fa9    MOV DPTR,# #0x9FA9     ;H dptr win: win-9x (0x9FA9)
4945  e0        MOVX A,@DPTR           ;H 
4946  54fb      ANL A,# #0xFB          ;H 
4948  f0        MOVX @DPTR,A           ;H 
4949  22        RET                    ;H 

sub_494A:  ; M func, size~59
494A  e4        CLR A                  ;M 
494B  fd        MOV R5,A               ;M 
494C  ff        MOV R7,A               ;M 
494D  d1bd      ACALL 0x4EBD           ;M 
494F  fe        MOV R6,A               ;M 
4950  ef        MOV A,R7               ;M 
4951  5407      ANL A,# #0x07          ;M 
4953  ff        MOV R7,A               ;M 
4954  ed        MOV A,R5               ;M 
4955  7012      JNZ 0x4969             ;M 
4957  318d      ACALL 0x498D           ;M 
4959  c083      PUSH dir DPH           ;M 
495B  c082      PUSH dir DPL           ;M 
495D  3185      ACALL 0x4985           ;M 
495F  8002      SJMP 0x4963            ;M 
4961  c3        CLR C                  ;M 
4962  33        RLC A                  ;M 
4963  d8fc      DJNZ R0, 0x4961        ;M 
4965  f4        CPL A                  ;M 
4966  5e        ANL A,R6               ;M 
4967  800f      SJMP 0x4978            ;M 
4969  318d      ACALL 0x498D           ;M 
496B  c083      PUSH dir DPH           ;M 
496D  c082      PUSH dir DPL           ;M 
496F  3185      ACALL 0x4985           ;M 
4971  8002      SJMP 0x4975            ;M 
4973  c3        CLR C                  ;M 
4974  33        RLC A                  ;M 
4975  d8fc      DJNZ R0, 0x4973        ;M 
4977  4e        ORL A,R6               ;M 
4978  d082      POP dir DPL            ;M 
497A  d083      POP dir DPH            ;M 
497C  f0        MOVX @DPTR,A           ;M 
497D  3198      ACALL 0x4998           ;M 
497F  909e47    MOV DPTR,# #0x9E47     ;M dptr win: win-9x (0x9E47)
4982  ef        MOV A,R7               ;M 
4983  f0        MOVX @DPTR,A           ;M 
4984  22        RET                    ;M 

sub_4985:  ; M func, size~8
4985  e0        MOVX A,@DPTR           ;M 
4986  fe        MOV R6,A               ;M 
4987  7401      MOV A,# #0x01          ;M 
4989  a807      MOV R0,dir 0x07        ;M 
498B  08        INC R0                 ;M 
498C  22        RET                    ;M 

sub_498D:  ; M func, size~11
498D  7437      MOV A,# #0x37          ;M 
498F  2e        ADD A,R6               ;M 
4990  f582      MOV dir,A DPL          ;M 
4992  e4        CLR A                  ;M 
4993  349e      ADDC A,# #0x9E         ;M 
4995  f583      MOV dir,A DPH          ;M 
4997  22        RET                    ;M 

sub_4998:  ; M func, size~82
4998  d3        SETB C                 ;M 
4999  10af01    JBC IE.7, 0x499D       ;M 
499C  c3        CLR C                  ;M 
499D  c0d0      PUSH dir PSW           ;M 
499F  7d10      MOV R5,# #0x10         ;M 
49A1  ed        MOV A,R5               ;M 
49A2  14        DEC A                  ;M 
49A3  f9        MOV R1,A               ;M 
49A4  2437      ADD A,# #0x37          ;M 
49A6  3190      ACALL 0x4990           ;M 
49A8  e0        MOVX A,@DPTR           ;M 
49A9  6036      JZ 0x49E1              ;M 
49AB  7c08      MOV R4,# #0x08         ;M 
49AD  ec        MOV A,R4               ;M 
49AE  14        DEC A                  ;M 
49AF  90a1dc    MOV DPTR,# #0xA1DC     ;M dptr win: win-Ax (0xA1DC)
49B2  f0        MOVX @DPTR,A           ;M 
49B3  7437      MOV A,# #0x37          ;M 
49B5  29        ADD A,R1               ;M 
49B6  3190      ACALL 0x4990           ;M 
49B8  e0        MOVX A,@DPTR           ;M 
49B9  fb        MOV R3,A               ;M 
49BA  7a00      MOV R2,# #0x00         ;M 
49BC  90a1dc    MOV DPTR,# #0xA1DC     ;M dptr win: win-Ax (0xA1DC)
49BF  e0        MOVX A,@DPTR           ;M 
49C0  1277e4    LCALL 0x77E4           ;M 
49C3  8005      SJMP 0x49CA            ;M 
49C5  c3        CLR C                  ;M 
49C6  33        RLC A                  ;M 
49C7  ce        XCH A,R6               ;M 
49C8  33        RLC A                  ;M 
49C9  ce        XCH A,R6               ;M 
49CA  d8f9      DJNZ R0, 0x49C5        ;M 
49CC  d1f7      ACALL 0x4EF7           ;M 
49CE  600f      JZ 0x49DF              ;M 
49D0  e9        MOV A,R1               ;M 
49D1  75f008    MOV dir,# B, #0x08     ;M 
49D4  a4        MUL AB                 ;M 
49D5  ff        MOV R7,A               ;M 
49D6  90a1dc    MOV DPTR,# #0xA1DC     ;M dptr win: win-Ax (0xA1DC)
49D9  e0        MOVX A,@DPTR           ;M 
49DA  2f        ADD A,R7               ;M 
49DB  04        INC A                  ;M 
49DC  ff        MOV R7,A               ;M 
49DD  8006      SJMP 0x49E5            ;M 
49DF  dccc      DJNZ R4, 0x49AD        ;M 
49E1  ddbe      DJNZ R5, 0x49A1        ;M 
49E3  7f00      MOV R7,# #0x00         ;M 
49E5  d0d0      POP dir PSW            ;M 
49E7  92af      MOV bit,C IE.7         ;M 
49E9  22        RET                    ;M 

sub_49EA:  ; M func, size~90
49EA  7192      ACALL 0x4B92           ;M 
49EC  125733    LCALL 0x5733           ;M 
49EF  ff        MOV R7,A               ;M 
49F0  f555      MOV dir,A 0x55         ;M 
49F2  120689    LCALL 0x0689           ;M 
49F5  fe        MOV R6,A               ;M 
49F6  c3        CLR C                  ;M 
49F7  13        RRC A                  ;M 
49F8  30e007    JNB ACC.0, 0x4A02      ;M 
49FB  124fb9    LCALL 0x4FB9           ;M 
49FE  f556      MOV dir,A 0x56         ;M 
4A00  8002      SJMP 0x4A04            ;M 
4A02  8f56      MOV dir,R7 0x56        ;M 
4A04  855554    MOV dir,dir 0x54,0x55  ;M 
4A07  e554      MOV A,dir 0x54         ;M 
4A09  d3        SETB C                 ;M 
4A0A  9556      SUBB A,dir 0x56        ;M 
4A0C  501d      JNC 0x4A2B             ;M 
4A0E  5185      ACALL 0x4A85           ;M 
4A10  5401      ANL A,# #0x01          ;M 
4A12  fd        MOV R5,A               ;M 
4A13  af54      MOV R7,dir 0x54        ;M 
4A15  314d      ACALL 0x494D           ;M 
4A17  af54      MOV R7,dir 0x54        ;M 
4A19  127322    LCALL 0x7322           ;M 
4A1C  ef        MOV A,R7               ;M 
4A1D  af54      MOV R7,dir 0x54        ;M 
4A1F  7004      JNZ 0x4A25             ;M 
4A21  5180      ACALL 0x4A80           ;M 
4A23  8002      SJMP 0x4A27            ;M 
4A25  5144      ACALL 0x4A44           ;M 
4A27  0554      INC 0x54               ;M 
4A29  80dc      SJMP 0x4A07            ;M 
4A2B  e555      MOV A,dir 0x55         ;M 
4A2D  7014      JNZ 0x4A43             ;M 
4A2F  ff        MOV R7,A               ;M 
4A30  127322    LCALL 0x7322           ;M 
4A33  ef        MOV A,R7               ;M 
4A34  700d      JNZ 0x4A43             ;M 
4A36  125499    LCALL 0x5499           ;M 
4A39  913c      ACALL 0x4C3C           ;M 
4A3B  f168      ACALL 0x4F68           ;M 
4A3D  54bf      ANL A,# #0xBF          ;M 
4A3F  f0        MOVX @DPTR,A           ;M 
4A40  547f      ANL A,# #0x7F          ;M 
4A42  f0        MOVX @DPTR,A           ;M 
4A43  22        RET                    ;M 

sub_4A44:  ; M func, size~60
4A44  e4        CLR A                  ;M 
4A45  fd        MOV R5,A               ;M 
4A46  d3        SETB C                 ;M 
4A47  10af01    JBC IE.7, 0x4A4B       ;M 
4A4A  c3        CLR C                  ;M 
4A4B  c0d0      PUSH dir PSW           ;M 
4A4D  90a1d0    MOV DPTR,# #0xA1D0     ;M dptr win: win-Ax (0xA1D0)
4A50  ef        MOV A,R7               ;M 
4A51  f0        MOVX @DPTR,A           ;M 
4A52  a3        INC DPTR               ;M 
4A53  ed        MOV A,R5               ;M 
4A54  f0        MOVX @DPTR,A           ;M 
4A55  7b44      MOV R3,# #0x44         ;M 
4A57  d1b6      ACALL 0x4EB6           ;M 
4A59  125823    LCALL 0x5823           ;M 
4A5C  90a1d1    MOV DPTR,# #0xA1D1     ;M dptr win: win-Ax (0xA1D1)
4A5F  e0        MOVX A,@DPTR           ;M 
4A60  90a1d0    MOV DPTR,# #0xA1D0     ;M dptr win: win-Ax (0xA1D0)
4A63  b4010a    CJNE A,# #0x01, 0x4A70 ;M 
4A66  e0        MOVX A,@DPTR           ;M 
4A67  126eea    LCALL 0x6EEA           ;M 
4A6A  e0        MOVX A,@DPTR           ;M 
4A6B  4404      ORL A,# #0x04          ;M 
4A6D  f0        MOVX @DPTR,A           ;M 
4A6E  8008      SJMP 0x4A78            ;M 
4A70  e0        MOVX A,@DPTR           ;M 
4A71  126eea    LCALL 0x6EEA           ;M 
4A74  e0        MOVX A,@DPTR           ;M 
4A75  54fb      ANL A,# #0xFB          ;M 
4A77  f0        MOVX @DPTR,A           ;M 
4A78  1258a2    LCALL 0x58A2           ;M 
4A7B  d0d0      POP dir PSW            ;M 
4A7D  92af      MOV bit,C IE.7         ;M 
4A7F  22        RET                    ;M 

sub_4A80:  ; M func, size~14
4A80  7d01      MOV R5,# #0x01         ;M 
4A82  80c2      SJMP 0x4A46            ;M 
4A84  f0        MOVX @DPTR,A           ;M 
4A85  ab51      MOV R3,dir 0x51        ;M 
4A87  aa52      MOV R2,dir 0x52        ;M 
4A89  a953      MOV R1,dir 0x53        ;M 
4A8B  020689    LJMP 0x0689            ;M 

sub_4A8E:  ; M func, size~82
4A8E  7192      ACALL 0x4B92           ;M 
4A90  120689    LCALL 0x0689           ;M 
4A93  ff        MOV R7,A               ;M 
4A94  540f      ANL A,# #0x0F          ;M 
4A96  f554      MOV dir,A 0x54         ;M 
4A98  ef        MOV A,R7               ;M 
4A99  c4        SWAP A                 ;M 
4A9A  540f      ANL A,# #0x0F          ;M 
4A9C  640f      XRL A,# #0x0F          ;M 
4A9E  7040      JNZ 0x4AE0             ;M 
4AA0  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
4AA3  e0        MOVX A,@DPTR           ;M 
4AA4  54fe      ANL A,# #0xFE          ;M 
4AA6  ff        MOV R7,A               ;M 
4AA7  f0        MOVX @DPTR,A           ;M 
4AA8  e554      MOV A,dir 0x54         ;M 
4AAA  5407      ANL A,# #0x07          ;M 
4AAC  25e0      ADD A,dir ACC          ;M 
4AAE  fe        MOV R6,A               ;M 
4AAF  ef        MOV A,R7               ;M 
4AB0  54f1      ANL A,# #0xF1          ;M 
4AB2  4e        ORL A,R6               ;M 
4AB3  916f      ACALL 0x4C6F           ;M 
4AB5  c4        SWAP A                 ;M 
4AB6  13        RRC A                  ;M 
4AB7  5407      ANL A,# #0x07          ;M 
4AB9  909f9e    MOV DPTR,# #0x9F9E     ;M dptr win: win-9x (0x9F9E)
4ABC  20e005    JB ACC.0, 0x4AC4       ;M 
4ABF  7406      MOV A,# #0x06          ;M 
4AC1  f0        MOVX @DPTR,A           ;M 
4AC2  8003      SJMP 0x4AC7            ;M 
4AC4  7401      MOV A,# #0x01          ;M 
4AC6  f0        MOVX @DPTR,A           ;M 
4AC7  7d20      MOV R5,# #0x20         ;M 
4AC9  e4        CLR A                  ;M 
4ACA  ff        MOV R7,A               ;M 
4ACB  1277a6    LCALL 0x77A6           ;M 
4ACE  af54      MOV R7,dir 0x54        ;M 
4AD0  127b99    LCALL 0x7B99           ;M 
4AD3  bf0106    CJNE R7,# #0x01, 0x4ADC ;M 
4AD6  e4        CLR A                  ;M 
4AD7  fd        MOV R5,A               ;M 
4AD8  ff        MOV R7,A               ;M 
4AD9  127c00    LCALL 0x7C00           ;M 
4ADC  7f02      MOV R7,# #0x02         ;M 
4ADE  618f      AJMP 0x4B8F            ;M 

sub_4AE0:  ; M func, size~100
4AE0  e554      MOV A,dir 0x54         ;M 
4AE2  75f01b    MOV dir,# B, #0x1B     ;M 
4AE5  a4        MUL AB                 ;M 
4AE6  241a      ADD A,# #0x1A          ;M 
4AE8  f9        MOV R1,A               ;M 
4AE9  749f      MOV A,# #0x9F          ;M 
4AEB  35f0      ADDC A,dir B           ;M 
4AED  fa        MOV R2,A               ;M 
4AEE  7b01      MOV R3,# #0x01         ;M 
4AF0  c002      PUSH dir 0x02          ;M 
4AF2  c001      PUSH dir 0x01          ;M 
4AF4  e553      MOV A,dir 0x53         ;M 
4AF6  2401      ADD A,# #0x01          ;M 
4AF8  f9        MOV R1,A               ;M 
4AF9  e4        CLR A                  ;M 
4AFA  3552      ADDC A,dir 0x52        ;M 
4AFC  855140    MOV dir,dir 0x40,0x51  ;M 
4AFF  f541      MOV dir,A 0x41         ;M 
4B01  8942      MOV dir,R1 0x42        ;M 
4B03  754304    MOV dir,# 0x43, #0x04  ;M 
4B06  d001      POP dir 0x01           ;M 
4B08  d002      POP dir 0x02           ;M 
4B0A  123585    LCALL 0x3585           ;M 
4B0D  75f01b    MOV dir,# B, #0x1B     ;M 
4B10  e554      MOV A,dir 0x54         ;M 
4B12  125fd1    LCALL 0x5FD1           ;M 
4B15  54f7      ANL A,# #0xF7          ;M 
4B17  5184      ACALL 0x4A84           ;M 
4B19  c4        SWAP A                 ;M 
4B1A  540f      ANL A,# #0x0F          ;M 
4B1C  14        DEC A                  ;M 
4B1D  6554      XRL A,dir 0x54         ;M 
4B1F  7070      JNZ 0x4B91             ;M 
4B21  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
4B24  e0        MOVX A,@DPTR           ;M 
4B25  7007      JNZ 0x4B2E             ;M 
4B27  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
4B2A  e0        MOVX A,@DPTR           ;M 
4B2B  30e004    JNB ACC.0, 0x4B32      ;M 
4B2E  7f05      MOV R7,# #0x05         ;M 
4B30  805d      SJMP 0x4B8F            ;M 
4B32  5185      ACALL 0x4A85           ;M 
4B34  c4        SWAP A                 ;M 
4B35  540f      ANL A,# #0x0F          ;M 
4B37  909f18    MOV DPTR,# #0x9F18     ;M dptr win: win-9x (0x9F18)
4B3A  b154      ACALL 0x4D54           ;M 
4B3C  fc        MOV R4,A               ;M 
4B3D  540f      ANL A,# #0x0F          ;M 
4B3F  c4        SWAP A                 ;M 
4B40  54f0      ANL A,# #0xF0          ;M 
4B42  fe        MOV R6,A               ;M 
4B43  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
4B46  e0        MOVX A,@DPTR           ;M 
4B47  540f      ANL A,# #0x0F          ;M 
4B49  4e        ORL A,R6               ;M 
4B4A  f0        MOVX @DPTR,A           ;M 
4B4B  ec        MOV A,R4               ;M 
4B4C  5460      ANL A,# #0x60          ;M 
4B4E  c4        SWAP A                 ;M 
4B4F  540f      ANL A,# #0x0F          ;M 
4B51  ff        MOV R7,A               ;M 
4B52  909f6c    MOV DPTR,# #0x9F6C     ;M dptr win: win-9x (0x9F6C)
4B55  e0        MOVX A,@DPTR           ;M 
4B56  54f9      ANL A,# #0xF9          ;M 
4B58  4f        ORL A,R7               ;M 
4B59  f0        MOVX @DPTR,A           ;M 
4B5A  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
4B5D  e0        MOVX A,@DPTR           ;M 
4B5E  54f1      ANL A,# #0xF1          ;M 
4B60  f0        MOVX @DPTR,A           ;M 
4B61  d1ff      ACALL 0x4EFF           ;M 
4B63  909f94    MOV DPTR,# #0x9F94     ;M dptr win: win-9x (0x9F94)
4B66  e0        MOVX A,@DPTR           ;M 
4B67  909f98    MOV DPTR,# #0x9F98     ;M dptr win: win-9x (0x9F98)
4B6A  30e00b    JNB ACC.0, 0x4B78      ;M 
4B6D  e0        MOVX A,@DPTR           ;M 
4B6E  54fe      ANL A,# #0xFE          ;M 
4B70  f0        MOVX @DPTR,A           ;M 
4B71  54c1      ANL A,# #0xC1          ;M 
4B73  4402      ORL A,# #0x02          ;M 
4B75  f0        MOVX @DPTR,A           ;M 
4B76  8007      SJMP 0x4B7F            ;M 
4B78  e0        MOVX A,@DPTR           ;M 
4B79  4401      ORL A,# #0x01          ;M 
4B7B  f0        MOVX @DPTR,A           ;M 
4B7C  54c1      ANL A,# #0xC1          ;M 
4B7E  f0        MOVX @DPTR,A           ;M 
4B7F  909f98    MOV DPTR,# #0x9F98     ;M dptr win: win-9x (0x9F98)
4B82  e0        MOVX A,@DPTR           ;M 
4B83  54bf      ANL A,# #0xBF          ;M 
4B85  f0        MOVX @DPTR,A           ;M 
4B86  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
4B89  e0        MOVX A,@DPTR           ;M 
4B8A  4401      ORL A,# #0x01          ;M 
4B8C  f0        MOVX @DPTR,A           ;M 
4B8D  7f03      MOV R7,# #0x03         ;M 
4B8F  d133      ACALL 0x4E33           ;M 
4B91  22        RET                    ;M 

sub_4B92:  ; M func, size~7
4B92  8b51      MOV dir,R3 0x51        ;M 
4B94  8a52      MOV dir,R2 0x52        ;M 
4B96  8953      MOV dir,R1 0x53        ;M 
4B98  22        RET                    ;M 

sub_4B99:  ; M func, size~69
4B99  7192      ACALL 0x4B92           ;M 
4B9B  909f9f    MOV DPTR,# #0x9F9F     ;M dptr win: win-9x (0x9F9F)
4B9E  e0        MOVX A,@DPTR           ;M 
4B9F  54fe      ANL A,# #0xFE          ;M 
4BA1  9176      ACALL 0x4C76           ;M 
4BA3  fc        MOV R4,A               ;M 
4BA4  30e043    JNB ACC.0, 0x4BEA      ;M 
4BA7  909fa0    MOV DPTR,# #0x9FA0     ;M dptr win: win-9x (0x9FA0)
4BAA  e0        MOVX A,@DPTR           ;M 
4BAB  4401      ORL A,# #0x01          ;M 
4BAD  fe        MOV R6,A               ;M 
4BAE  f0        MOVX @DPTR,A           ;M 
4BAF  120689    LCALL 0x0689           ;M 
4BB2  54fe      ANL A,# #0xFE          ;M 
4BB4  fd        MOV R5,A               ;M 
4BB5  ee        MOV A,R6               ;M 
4BB6  5401      ANL A,# #0x01          ;M 
4BB8  4d        ORL A,R5               ;M 
4BB9  909fa0    MOV DPTR,# #0x9FA0     ;M dptr win: win-9x (0x9FA0)
4BBC  125732    LCALL 0x5732           ;M 
4BBF  909fa1    MOV DPTR,# #0x9FA1     ;M dptr win: win-9x (0x9FA1)
4BC2  f0        MOVX @DPTR,A           ;M 
4BC3  ec        MOV A,R4               ;M 
4BC4  c3        CLR C                  ;M 
4BC5  13        RRC A                  ;M 
4BC6  547f      ANL A,# #0x7F          ;M 
4BC8  ff        MOV R7,A               ;M 
4BC9  a3        INC DPTR               ;M 
4BCA  124fb8    LCALL 0x4FB8           ;M 
4BCD  fe        MOV R6,A               ;M 
4BCE  c3        CLR C                  ;M 
4BCF  9f        SUBB A,R7              ;M 
4BD0  909fa3    MOV DPTR,# #0x9FA3     ;M dptr win: win-9x (0x9FA3)
4BD3  f0        MOVX @DPTR,A           ;M 
4BD4  a3        INC DPTR               ;M 
4BD5  ee        MOV A,R6               ;M 
4BD6  f0        MOVX @DPTR,A           ;M 
4BD7  be6404    CJNE R6,# #0x64, 0x4BDE ;M 
4BDA  7401      MOV A,# #0x01          ;M 
4BDC  f0        MOVX @DPTR,A           ;M 
4BDD  22        RET                    ;M 

sub_4BDE:  ; M func, size~12
4BDE  909fa4    MOV DPTR,# #0x9FA4     ;M dptr win: win-9x (0x9FA4)
4BE1  e0        MOVX A,@DPTR           ;M 
4BE2  6496      XRL A,# #0x96          ;M 
4BE4  7055      JNZ 0x4C3B             ;M 
4BE6  7403      MOV A,# #0x03          ;M 
4BE8  f0        MOVX @DPTR,A           ;M 
4BE9  22        RET                    ;M 

sub_4BEA:  ; M func, size~82
4BEA  909fa0    MOV DPTR,# #0x9FA0     ;M dptr win: win-9x (0x9FA0)
4BED  e0        MOVX A,@DPTR           ;M 
4BEE  54fe      ANL A,# #0xFE          ;M 
4BF0  5184      ACALL 0x4A84           ;M 
4BF2  ff        MOV R7,A               ;M 
4BF3  5401      ANL A,# #0x01          ;M 
4BF5  fe        MOV R6,A               ;M 
4BF6  909f94    MOV DPTR,# #0x9F94     ;M dptr win: win-9x (0x9F94)
4BF9  e0        MOVX A,@DPTR           ;M 
4BFA  54fe      ANL A,# #0xFE          ;M 
4BFC  4e        ORL A,R6               ;M 
4BFD  fe        MOV R6,A               ;M 
4BFE  f0        MOVX @DPTR,A           ;M 
4BFF  ef        MOV A,R7               ;M 
4C00  54fe      ANL A,# #0xFE          ;M 
4C02  ff        MOV R7,A               ;M 
4C03  ee        MOV A,R6               ;M 
4C04  5401      ANL A,# #0x01          ;M 
4C06  4f        ORL A,R7               ;M 
4C07  125732    LCALL 0x5732           ;M 
4C0A  909f95    MOV DPTR,# #0x9F95     ;M dptr win: win-9x (0x9F95)
4C0D  124fb8    LCALL 0x4FB8           ;M 
4C10  909f96    MOV DPTR,# #0x9F96     ;M dptr win: win-9x (0x9F96)
4C13  f0        MOVX @DPTR,A           ;M 
4C14  1286f2    LCALL 0x86F2           ;M 
4C17  909f97    MOV DPTR,# #0x9F97     ;M dptr win: win-9x (0x9F97)
4C1A  f0        MOVX @DPTR,A           ;M 
4C1B  909f96    MOV DPTR,# #0x9F96     ;M dptr win: win-9x (0x9F96)
4C1E  e0        MOVX A,@DPTR           ;M 
4C1F  ff        MOV R7,A               ;M 
4C20  b46405    CJNE A,# #0x64, 0x4C28 ;M 
4C23  7401      MOV A,# #0x01          ;M 
4C25  f0        MOVX @DPTR,A           ;M 
4C26  800a      SJMP 0x4C32            ;M 
4C28  ef        MOV A,R7               ;M 
4C29  b49606    CJNE A,# #0x96, 0x4C32 ;M 
4C2C  909f96    MOV DPTR,# #0x9F96     ;M dptr win: win-9x (0x9F96)
4C2F  7403      MOV A,# #0x03          ;M 
4C31  f0        MOVX @DPTR,A           ;M 
4C32  909f96    MOV DPTR,# #0x9F96     ;M dptr win: win-9x (0x9F96)
4C35  e0        MOVX A,@DPTR           ;M 
4C36  04        INC A                  ;M 
4C37  909f99    MOV DPTR,# #0x9F99     ;M dptr win: win-9x (0x9F99)
4C3A  f0        MOVX @DPTR,A           ;M 
4C3B  22        RET                    ;M 

sub_4C3C:  ; M func, size~12
4C3C  f106      ACALL 0x4F06           ;M 
4C3E  1258a2    LCALL 0x58A2           ;M 
4C41  7d0c      MOV R5,# #0x0C         ;M 
4C43  7f01      MOV R7,# #0x01         ;M 
4C45  026296    LJMP 0x6296            ;M 

sub_4C48:  ; M func, size~53
4C48  7192      ACALL 0x4B92           ;M 
4C4A  120689    LCALL 0x0689           ;M 
4C4D  909f1f    MOV DPTR,# #0x9F1F     ;M dptr win: win-9x (0x9F1F)
4C50  125732    LCALL 0x5732           ;M 
4C53  909f20    MOV DPTR,# #0x9F20     ;M dptr win: win-9x (0x9F20)
4C56  124fb8    LCALL 0x4FB8           ;M 
4C59  909f3a    MOV DPTR,# #0x9F3A     ;M dptr win: win-9x (0x9F3A)
4C5C  f0        MOVX @DPTR,A           ;M 
4C5D  1286f2    LCALL 0x86F2           ;M 
4C60  909f3b    MOV DPTR,# #0x9F3B     ;M dptr win: win-9x (0x9F3B)
4C63  916f      ACALL 0x4C6F           ;M 
4C65  909f55    MOV DPTR,# #0x9F55     ;M dptr win: win-9x (0x9F55)
4C68  9176      ACALL 0x4C76           ;M 
4C6A  909f56    MOV DPTR,# #0x9F56     ;M dptr win: win-9x (0x9F56)
4C6D  f0        MOVX @DPTR,A           ;M 
4C6E  22        RET                    ;M 
4C6F  .db F0 90 00 04 02 06 A2 F0 90 00 05 02 06 A2

sub_4C7D:  ; M func, size~62
4C7D  900209    MOV DPTR,# #0x0209     ;M dptr win: MAC/reg-low (0x0209)
4C80  e0        MOVX A,@DPTR           ;M 
4C81  f551      MOV dir,A 0x51         ;M 
4C83  120689    LCALL 0x0689           ;M 
4C86  2551      ADD A,dir 0x51         ;M 
4C88  909d43    MOV DPTR,# #0x9D43     ;M dptr win: win-9x (0x9D43)
4C8B  125732    LCALL 0x5732           ;M 
4C8E  2551      ADD A,dir 0x51         ;M 
4C90  909d44    MOV DPTR,# #0x9D44     ;M dptr win: win-9x (0x9D44)
4C93  124fb8    LCALL 0x4FB8           ;M 
4C96  2551      ADD A,dir 0x51         ;M 
4C98  909d45    MOV DPTR,# #0x9D45     ;M dptr win: win-9x (0x9D45)
4C9B  f0        MOVX @DPTR,A           ;M 
4C9C  1286f2    LCALL 0x86F2           ;M 
4C9F  2551      ADD A,dir 0x51         ;M 
4CA1  909d46    MOV DPTR,# #0x9D46     ;M dptr win: win-9x (0x9D46)
4CA4  916f      ACALL 0x4C6F           ;M 
4CA6  2551      ADD A,dir 0x51         ;M 
4CA8  909d47    MOV DPTR,# #0x9D47     ;M dptr win: win-9x (0x9D47)
4CAB  9176      ACALL 0x4C76           ;M 
4CAD  2551      ADD A,dir 0x51         ;M 
4CAF  909d48    MOV DPTR,# #0x9D48     ;M dptr win: win-9x (0x9D48)
4CB2  b154      ACALL 0x4D54           ;M 
4CB4  2551      ADD A,dir 0x51         ;M 
4CB6  909d49    MOV DPTR,# #0x9D49     ;M dptr win: win-9x (0x9D49)
4CB9  f0        MOVX @DPTR,A           ;M 
4CBA  22        RET                    ;M 

sub_4CBB:  ; M func, size~58
4CBB  120689    LCALL 0x0689           ;M 
4CBE  f551      MOV dir,A 0x51         ;M 
4CC0  125733    LCALL 0x5733           ;M 
4CC3  f554      MOV dir,A 0x54         ;M 
4CC5  124fb9    LCALL 0x4FB9           ;M 
4CC8  f555      MOV dir,A 0x55         ;M 
4CCA  1286f2    LCALL 0x86F2           ;M 
4CCD  f556      MOV dir,A 0x56         ;M 
4CCF  9170      ACALL 0x4C70           ;M 
4CD1  f557      MOV dir,A 0x57         ;M 
4CD3  9177      ACALL 0x4C77           ;M 
4CD5  f558      MOV dir,A 0x58         ;M 
4CD7  b155      ACALL 0x4D55           ;M 
4CD9  f559      MOV dir,A 0x59         ;M 
4CDB  e551      MOV A,dir 0x51         ;M 
4CDD  124911    LCALL 0x4911           ;M 
4CE0  8cf9      MOV dir,R4 0xF9        ;M 
4CE2  00        NOP                    ;M 
4CE3  8d01      MOV dir,R5 0x01        ;M 
4CE5  018d      AJMP 0x488D            ;M 
4CE7  .db 09 02 8D 11 03 8D 19 04 8D 21 05 8D 2A 06

sub_4CF5:  ; M func, size~53
4CF5  00        NOP                    ;M 
4CF6  00        NOP                    ;M 
4CF7  8d41      MOV dir,R5 0x41        ;M 
4CF9  755202    MOV dir,# 0x52, #0x02  ;M 
4CFC  755329    MOV dir,# 0x53, #0x29  ;M 
4CFF  8046      SJMP 0x4D47            ;M 
4D01  755206    MOV dir,# 0x52, #0x06  ;M 
4D04  75532a    MOV dir,# 0x53, #0x2A  ;M 
4D07  803e      SJMP 0x4D47            ;M 
4D09  755201    MOV dir,# 0x52, #0x01  ;M 
4D0C  755331    MOV dir,# 0x53, #0x31  ;M 
4D0F  8036      SJMP 0x4D47            ;M 
4D11  755201    MOV dir,# 0x52, #0x01  ;M 
4D14  755332    MOV dir,# 0x53, #0x32  ;M 
4D17  802e      SJMP 0x4D47            ;M 
4D19  755206    MOV dir,# 0x52, #0x06  ;M 
4D1C  755333    MOV dir,# 0x53, #0x33  ;M 
4D1F  8026      SJMP 0x4D47            ;M 
4D21  7b00      MOV R3,# #0x00         ;M 
4D23  7a00      MOV R2,# #0x00         ;M 
4D25  7954      MOV R1,# #0x54         ;M 
4D27  029fd5    LJMP 0x9FD5            ;M 

sub_4D2A:  ; M func, size~23
4D2A  909ef9    MOV DPTR,# #0x9EF9     ;M dptr win: win-9x (0x9EF9)
4D2D  e554      MOV A,dir 0x54         ;M 
4D2F  f0        MOVX @DPTR,A           ;M 
4D30  a3        INC DPTR               ;M 
4D31  e555      MOV A,dir 0x55         ;M 
4D33  f0        MOVX @DPTR,A           ;M 
4D34  a3        INC DPTR               ;M 
4D35  e556      MOV A,dir 0x56         ;M 
4D37  f0        MOVX @DPTR,A           ;M 
4D38  a3        INC DPTR               ;M 
4D39  e557      MOV A,dir 0x57         ;M 
4D3B  f0        MOVX @DPTR,A           ;M 
4D3C  a3        INC DPTR               ;M 
4D3D  e558      MOV A,dir 0x58         ;M 
4D3F  f0        MOVX @DPTR,A           ;M 
4D40  22        RET                    ;M 

sub_4D41:  ; M func, size~26
4D41  755201    MOV dir,# 0x52, #0x01  ;M 
4D44  7553ff    MOV dir,# 0x53, #0xFF  ;M 
4D47  7b00      MOV R3,# #0x00         ;M 
4D49  7a00      MOV R2,# #0x00         ;M 
4D4B  7954      MOV R1,# #0x54         ;M 
4D4D  ad52      MOV R5,dir 0x52        ;M 
4D4F  af53      MOV R7,dir 0x53        ;M 
4D51  0255eb    LJMP 0x55EB            ;M 
4D54  .db F0 90 00 06 02 06 A2

sub_4D5B:  ; M func, size~62
4D5B  120689    LCALL 0x0689           ;M 
4D5E  ff        MOV R7,A               ;M 
4D5F  c3        CLR C                  ;M 
4D60  9480      SUBB A,# #0x80         ;M 
4D62  5034      JNC 0x4D98             ;M 
4D64  9170      ACALL 0x4C70           ;M 
4D66  fe        MOV R6,A               ;M 
4D67  75f012    MOV dir,# B, #0x12     ;M 
4D6A  ef        MOV A,R7               ;M 
4D6B  12bcb3    LCALL 0xBCB3           ;M 
4D6E  ee        MOV A,R6               ;M 
4D6F  f0        MOVX @DPTR,A           ;M 
4D70  1286f2    LCALL 0x86F2           ;M 
4D73  fe        MOV R6,A               ;M 
4D74  b199      ACALL 0x4D99           ;M 
4D76  ee        MOV A,R6               ;M 
4D77  124fb8    LCALL 0x4FB8           ;M 
4D7A  fe        MOV R6,A               ;M 
4D7B  75f012    MOV dir,# B, #0x12     ;M 
4D7E  ef        MOV A,R7               ;M 
4D7F  909388    MOV DPTR,# #0x9388     ;M dptr win: win-9x (0x9388)
4D82  1248f3    LCALL 0x48F3           ;M 
4D85  ee        MOV A,R6               ;M 
4D86  f0        MOVX @DPTR,A           ;M 
4D87  b199      ACALL 0x4D99           ;M 
4D89  e0        MOVX A,@DPTR           ;M 
4D8A  30e50b    JNB ACC.5, 0x4D98      ;M 
4D8D  75f012    MOV dir,# B, #0x12     ;M 
4D90  ef        MOV A,R7               ;M 
4D91  129b2b    LCALL 0x9B2B           ;M 
4D94  fd        MOV R5,A               ;M 
4D95  126f3b    LCALL 0x6F3B           ;M 
4D98  22        RET                    ;M 

sub_4D99:  ; M func, size~10
4D99  75f012    MOV dir,# B, #0x12     ;M 
4D9C  ef        MOV A,R7               ;M 
4D9D  909389    MOV DPTR,# #0x9389     ;M dptr win: win-9x (0x9389)
4DA0  0248f3    LJMP 0x48F3            ;M 

sub_4DA3:  ; M func, size~144
4DA3  f1c8      ACALL 0x4FC8           ;M 
4DA5  ff        MOV R7,A               ;M 
4DA6  547f      ANL A,# #0x7F          ;M 
4DA8  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
4DAB  f0        MOVX @DPTR,A           ;M 
4DAC  ef        MOV A,R7               ;M 
4DAD  124fd8    LCALL 0x4FD8           ;M 
4DB0  a3        INC DPTR               ;M 
4DB1  125732    LCALL 0x5732           ;M 
4DB4  fd        MOV R5,A               ;M 
4DB5  54f0      ANL A,# #0xF0          ;M 
4DB7  c4        SWAP A                 ;M 
4DB8  540f      ANL A,# #0x0F          ;M 
4DBA  ff        MOV R7,A               ;M 
4DBB  909e50    MOV DPTR,# #0x9E50     ;M dptr win: win-9x (0x9E50)
4DBE  e0        MOVX A,@DPTR           ;M 
4DBF  54f0      ANL A,# #0xF0          ;M 
4DC1  4f        ORL A,R7               ;M 
4DC2  f0        MOVX @DPTR,A           ;M 
4DC3  1286f2    LCALL 0x86F2           ;M 
4DC6  fc        MOV R4,A               ;M 
4DC7  5401      ANL A,# #0x01          ;M 
4DC9  25e0      ADD A,dir ACC          ;M 
4DCB  ff        MOV R7,A               ;M 
4DCC  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
4DCF  e0        MOVX A,@DPTR           ;M 
4DD0  54fd      ANL A,# #0xFD          ;M 
4DD2  4f        ORL A,R7               ;M 
4DD3  f0        MOVX @DPTR,A           ;M 
4DD4  ec        MOV A,R4               ;M 
4DD5  5404      ANL A,# #0x04          ;M 
4DD7  c3        CLR C                  ;M 
4DD8  13        RRC A                  ;M 
4DD9  ff        MOV R7,A               ;M 
4DDA  909e4f    MOV DPTR,# #0x9E4F     ;M dptr win: win-9x (0x9E4F)
4DDD  e0        MOVX A,@DPTR           ;M 
4DDE  54fd      ANL A,# #0xFD          ;M 
4DE0  4f        ORL A,R7               ;M 
4DE1  f0        MOVX @DPTR,A           ;M 
4DE2  ed        MOV A,R5               ;M 
4DE3  540f      ANL A,# #0x0F          ;M 
4DE5  c4        SWAP A                 ;M 
4DE6  54f0      ANL A,# #0xF0          ;M 
4DE8  ff        MOV R7,A               ;M 
4DE9  a3        INC DPTR               ;M 
4DEA  e0        MOVX A,@DPTR           ;M 
4DEB  540f      ANL A,# #0x0F          ;M 
4DED  4f        ORL A,R7               ;M 
4DEE  124fb8    LCALL 0x4FB8           ;M 
4DF1  909e51    MOV DPTR,# #0x9E51     ;M dptr win: win-9x (0x9E51)
4DF4  916f      ACALL 0x4C6F           ;M 
4DF6  fd        MOV R5,A               ;M 
4DF7  7f02      MOV R7,# #0x02         ;M 
4DF9  126296    LCALL 0x6296           ;M 
4DFC  1256c5    LCALL 0x56C5           ;M 
4DFF  90a05f    MOV DPTR,# #0xA05F     ;M dptr win: win-Ax (0xA05F)
4E02  124908    LCALL 0x4908           ;M 
4E05  127782    LCALL 0x7782           ;M 
4E08  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
4E0B  e0        MOVX A,@DPTR           ;M 
4E0C  ff        MOV R7,A               ;M 
4E0D  1273b5    LCALL 0x73B5           ;M 
4E10  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
4E13  e0        MOVX A,@DPTR           ;M 
4E14  601c      JZ 0x4E32              ;M 
4E16  90a05f    MOV DPTR,# #0xA05F     ;M dptr win: win-Ax (0xA05F)
4E19  1248ff    LCALL 0x48FF           ;M 
4E1C  125733    LCALL 0x5733           ;M 
4E1F  540f      ANL A,# #0x0F          ;M 
4E21  ff        MOV R7,A               ;M 
4E22  124fb9    LCALL 0x4FB9           ;M 
4E25  fd        MOV R5,A               ;M 
4E26  12bac4    LCALL 0xBAC4           ;M 
4E29  12aa5b    LCALL 0xAA5B           ;M 
4E2C  7401      MOV A,# #0x01          ;M 
4E2E  f0        MOVX @DPTR,A           ;M 
4E2F  12a94e    LCALL 0xA94E           ;M 
4E32  22        RET                    ;M 

sub_4E33:  ; M func, size~138
4E33  d3        SETB C                 ;M 
4E34  10af01    JBC IE.7, 0x4E38       ;M 
4E37  c3        CLR C                  ;M 
4E38  c0d0      PUSH dir PSW           ;M 
4E3A  ad07      MOV R5,dir 0x07        ;M 
4E3C  900563    MOV DPTR,# #0x0563     ;M dptr win: RAM/table (0x0563)
4E3F  e0        MOVX A,@DPTR           ;M 
4E40  fe        MOV R6,A               ;M 
4E41  900562    MOV DPTR,# #0x0562     ;M dptr win: RAM/table (0x0562)
4E44  e0        MOVX A,@DPTR           ;M 
4E45  7a00      MOV R2,# #0x00         ;M 
4E47  2400      ADD A,# #0x00          ;M 
4E49  ff        MOV R7,A               ;M 
4E4A  ea        MOV A,R2               ;M 
4E4B  3e        ADDC A,R6              ;M 
4E4C  90a111    MOV DPTR,# #0xA111     ;M dptr win: win-Ax (0xA111)
4E4F  f0        MOVX @DPTR,A           ;M 
4E50  a3        INC DPTR               ;M 
4E51  ef        MOV A,R7               ;M 
4E52  f0        MOVX @DPTR,A           ;M 
4E53  900561    MOV DPTR,# #0x0561     ;M dptr win: RAM/table (0x0561)
4E56  e0        MOVX A,@DPTR           ;M 
4E57  fe        MOV R6,A               ;M 
4E58  900560    MOV DPTR,# #0x0560     ;M dptr win: RAM/table (0x0560)
4E5B  e0        MOVX A,@DPTR           ;M 
4E5C  2400      ADD A,# #0x00          ;M 
4E5E  ff        MOV R7,A               ;M 
4E5F  ea        MOV A,R2               ;M 
4E60  3e        ADDC A,R6              ;M 
4E61  fe        MOV R6,A               ;M 
4E62  ed        MOV A,R5               ;M 
4E63  b4080a    CJNE A,# #0x08, 0x4E70 ;M 
4E66  900558    MOV DPTR,# #0x0558     ;M dptr win: RAM/table (0x0558)
4E69  e0        MOVX A,@DPTR           ;M 
4E6A  fc        MOV R4,A               ;M 
4E6B  2f        ADD A,R7               ;M 
4E6C  ff        MOV R7,A               ;M 
4E6D  ea        MOV A,R2               ;M 
4E6E  3e        ADDC A,R6              ;M 
4E6F  fe        MOV R6,A               ;M 
4E70  90a102    MOV DPTR,# #0xA102     ;M dptr win: win-Ax (0xA102)
4E73  7417      MOV A,# #0x17          ;M 
4E75  f0        MOVX @DPTR,A           ;M 
4E76  90a110    MOV DPTR,# #0xA110     ;M dptr win: win-Ax (0xA110)
4E79  7406      MOV A,# #0x06          ;M 
4E7B  f0        MOVX @DPTR,A           ;M 
4E7C  90a104    MOV DPTR,# #0xA104     ;M dptr win: win-Ax (0xA104)
4E7F  ed        MOV A,R5               ;M 
4E80  f0        MOVX @DPTR,A           ;M 
4E81  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
4E84  e0        MOVX A,@DPTR           ;M 
4E85  fd        MOV R5,A               ;M 
4E86  c3        CLR C                  ;M 
4E87  13        RRC A                  ;M 
4E88  5407      ANL A,# #0x07          ;M 
4E8A  75f01b    MOV dir,# B, #0x1B     ;M 
4E8D  127b93    LCALL 0x7B93           ;M 
4E90  e0        MOVX A,@DPTR           ;M 
4E91  90a105    MOV DPTR,# #0xA105     ;M dptr win: win-Ax (0xA105)
4E94  f0        MOVX @DPTR,A           ;M 
4E95  a3        INC DPTR               ;M 
4E96  ef        MOV A,R7               ;M 
4E97  f0        MOVX @DPTR,A           ;M 
4E98  ee        MOV A,R6               ;M 
4E99  a3        INC DPTR               ;M 
4E9A  f0        MOVX @DPTR,A           ;M 
4E9B  90a111    MOV DPTR,# #0xA111     ;M dptr win: win-Ax (0xA111)
4E9E  e0        MOVX A,@DPTR           ;M 
4E9F  fe        MOV R6,A               ;M 
4EA0  a3        INC DPTR               ;M 
4EA1  e0        MOVX A,@DPTR           ;M 
4EA2  90a108    MOV DPTR,# #0xA108     ;M dptr win: win-Ax (0xA108)
4EA5  f0        MOVX @DPTR,A           ;M 
4EA6  ee        MOV A,R6               ;M 
4EA7  a3        INC DPTR               ;M 
4EA8  f0        MOVX @DPTR,A           ;M 
4EA9  7b01      MOV R3,# #0x01         ;M 
4EAB  7aa1      MOV R2,# #0xA1         ;M 
4EAD  7902      MOV R1,# #0x02         ;M 
4EAF  f1f7      ACALL 0x4FF7           ;M 
4EB1  d0d0      POP dir PSW            ;M 
4EB3  92af      MOV bit,C IE.7         ;M 
4EB5  22        RET                    ;M 
4EB6  .db 7D 6F 7F FF 02 58 A7

sub_4EBD:  ; H func, size~7
4EBD  ef        MOV A,R7               ;H 
4EBE  13        RRC A                  ;H 
4EBF  13        RRC A                  ;H 
4EC0  13        RRC A                  ;H 
4EC1  541f      ANL A,# #0x1F          ;H 
4EC3  22        RET                    ;H 

sub_4EC4:  ; H func, size~9
4EC4  ac07      MOV R4,dir 0x07        ;H 
4EC6  ec        MOV A,R4               ;H 
4EC7  b4ff03    CJNE A,# #0xFF, 0x4ECD ;H 
4ECA  7fff      MOV R7,# #0xFF         ;H 
4ECC  22        RET                    ;H 

sub_4ECD:  ; H func, size~13
4ECD  d1bd      ACALL 0x4EBD           ;H 
4ECF  fe        MOV R6,A               ;H 
4ED0  75f008    MOV dir,# B, #0x08     ;H 
4ED3  ed        MOV A,R5               ;H 
4ED4  124fcc    LCALL 0x4FCC           ;H 
4ED7  2e        ADD A,R6               ;H 
4ED8  124eda    LCALL 0x4EDA           ;H 
4EDB  e0        MOVX A,@DPTR           ;H 
4EDC  fb        MOV R3,A               ;H 
4EDD  7a00      MOV R2,# #0x00         ;H 
4EDF  ef        MOV A,R7               ;H 
4EE0  5407      ANL A,# #0x07          ;H 
4EE2  1277e4    LCALL 0x77E4           ;H 
4EE5  8005      SJMP 0x4EEC            ;H 
4EE7  c3        CLR C                  ;H 
4EE8  33        RLC A                  ;H 
4EE9  ce        XCH A,R6               ;H 
4EEA  33        RLC A                  ;H 
4EEB  ce        XCH A,R6               ;H 
4EEC  d8f9      DJNZ R0, 0x4EE7        ;H 
4EEE  d1f7      ACALL 0x4EF7           ;H 
4EF0  7fff      MOV R7,# #0xFF         ;H 
4EF2  6002      JZ 0x4EF6              ;H 
4EF4  af04      MOV R7,dir 0x04        ;H 
4EF6  22        RET                    ;H 

sub_4EF7:  ; H func, size~8
4EF7  ff        MOV R7,A               ;H 
4EF8  ee        MOV A,R6               ;H 
4EF9  5a        ANL A,R2               ;H 
4EFA  fe        MOV R6,A               ;H 
4EFB  ef        MOV A,R7               ;H 
4EFC  5b        ANL A,R3               ;H 
4EFD  4e        ORL A,R6               ;H 
4EFE  22        RET                    ;H 

sub_4EFF:  ; M func, size~7
4EFF  900558    MOV DPTR,# #0x0558     ;M dptr win: RAM/table (0x0558)
4F02  7402      MOV A,# #0x02          ;M 
4F04  f0        MOVX @DPTR,A           ;M 
4F05  22        RET                    ;M 

sub_4F06:  ; M func, size~8
4F06  900604    MOV DPTR,# #0x0604     ;M dptr win: RAM/table (0x0604)
4F09  e0        MOVX A,@DPTR           ;M 
4F0A  547f      ANL A,# #0x7F          ;M 
4F0C  f0        MOVX @DPTR,A           ;M 
4F0D  22        RET                    ;M 

sub_4F0E:  ; M func, size~90
4F0E  90a17b    MOV DPTR,# #0xA17B     ;M dptr win: win-Ax (0xA17B)
4F11  e0        MOVX A,@DPTR           ;M 
4F12  ff        MOV R7,A               ;M 
4F13  d3        SETB C                 ;M 
4F14  10af01    JBC IE.7, 0x4F18       ;M 
4F17  c3        CLR C                  ;M 
4F18  c0d0      PUSH dir PSW           ;M 
4F1A  90a1de    MOV DPTR,# #0xA1DE     ;M dptr win: win-Ax (0xA1DE)
4F1D  ef        MOV A,R7               ;M 
4F1E  f0        MOVX @DPTR,A           ;M 
4F1F  c3        CLR C                  ;M 
4F20  9402      SUBB A,# #0x02         ;M 
4F22  503f      JNC 0x4F63             ;M 
4F24  909d45    MOV DPTR,# #0x9D45     ;M dptr win: win-9x (0x9D45)
4F27  e0        MOVX A,@DPTR           ;M 
4F28  ff        MOV R7,A               ;M 
4F29  90041c    MOV DPTR,# #0x041C     ;M dptr win: RAM/table (0x041C)
4F2C  e0        MOVX A,@DPTR           ;M 
4F2D  6f        XRL A,R7               ;M 
4F2E  7033      JNZ 0x4F63             ;M 
4F30  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
4F33  e0        MOVX A,@DPTR           ;M 
4F34  640e      XRL A,# #0x0E          ;M 
4F36  700f      JNZ 0x4F47             ;M 
4F38  90a1de    MOV DPTR,# #0xA1DE     ;M dptr win: win-Ax (0xA1DE)
4F3B  e0        MOVX A,@DPTR           ;M 
4F3C  7025      JNZ 0x4F63             ;M 
4F3E  f178      ACALL 0x4F78           ;M 
4F40  f106      ACALL 0x4F06           ;M 
4F42  126292    LCALL 0x6292           ;M 
4F45  8019      SJMP 0x4F60            ;M 
4F47  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
4F4A  e0        MOVX A,@DPTR           ;M 
4F4B  6406      XRL A,# #0x06          ;M 
4F4D  7014      JNZ 0x4F63             ;M 
4F4F  90a1de    MOV DPTR,# #0xA1DE     ;M dptr win: win-Ax (0xA1DE)
4F52  e0        MOVX A,@DPTR           ;M 
4F53  600e      JZ 0x4F63              ;M 
4F55  f170      ACALL 0x4F70           ;M 
4F57  12bce6    LCALL 0xBCE6           ;M 
4F5A  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
4F5D  7404      MOV A,# #0x04          ;M 
4F5F  f0        MOVX @DPTR,A           ;M 
4F60  1258a2    LCALL 0x58A2           ;M 
4F63  d0d0      POP dir PSW            ;M 
4F65  92af      MOV bit,C IE.7         ;M 
4F67  22        RET                    ;M 

sub_4F68:  ; M func, size~8
4F68  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
4F6B  e0        MOVX A,@DPTR           ;M 
4F6C  54f7      ANL A,# #0xF7          ;M 
4F6E  f0        MOVX @DPTR,A           ;M 
4F6F  22        RET                    ;M 

sub_4F70:  ; M func, size~8
4F70  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
4F73  e0        MOVX A,@DPTR           ;M 
4F74  54bf      ANL A,# #0xBF          ;M 
4F76  f0        MOVX @DPTR,A           ;M 
4F77  22        RET                    ;M 

sub_4F78:  ; M func, size~8
4F78  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
4F7B  e0        MOVX A,@DPTR           ;M 
4F7C  547f      ANL A,# #0x7F          ;M 
4F7E  f0        MOVX @DPTR,A           ;M 
4F7F  22        RET                    ;M 

sub_4F80:  ; H func, size~7
4F80  e0        MOVX A,@DPTR           ;H 
4F81  fd        MOV R5,A               ;H 
4F82  d1c4      ACALL 0x4EC4           ;H 
4F84  ef        MOV A,R7               ;H 
4F85  f4        CPL A                  ;H 
4F86  22        RET                    ;H 

sub_4F87:  ; M func, size~20
4F87  d3        SETB C                 ;M 
4F88  10af01    JBC IE.7, 0x4F8C       ;M 
4F8B  c3        CLR C                  ;M 
4F8C  c0d0      PUSH dir PSW           ;M 
4F8E  90a076    MOV DPTR,# #0xA076     ;M dptr win: win-Ax (0xA076)
4F91  ed        MOV A,R5               ;M 
4F92  f0        MOVX @DPTR,A           ;M 
4F93  a3        INC DPTR               ;M 
4F94  eb        MOV A,R3               ;M 
4F95  f0        MOVX @DPTR,A           ;M 
4F96  ef        MOV A,R7               ;M 
4F97  04        INC A                  ;M 
4F98  a3        INC DPTR               ;M 
4F99  f0        MOVX @DPTR,A           ;M 
4F9A  f9        MOV R1,A               ;M 

sub_4F9B:  ; H func, size~16
4F9B  90a076    MOV DPTR,# #0xA076     ;H dptr win: win-Ax (0xA076)
4F9E  e0        MOVX A,@DPTR           ;H 
4F9F  ff        MOV R7,A               ;H 
4FA0  e9        MOV A,R1               ;H 
4FA1  d3        SETB C                 ;H 
4FA2  9f        SUBB A,R7              ;H 
4FA3  5011      JNC 0x4FB6             ;H 
4FA5  af01      MOV R7,dir 0x01        ;H 
4FA7  a3        INC DPTR               ;H 
4FA8  f180      ACALL 0x4F80           ;H 
4FAA  6007      JZ 0x4FB3              ;H 
4FAC  90a078    MOV DPTR,# #0xA078     ;H dptr win: win-Ax (0xA078)
4FAF  e9        MOV A,R1               ;H 

sub_4FB0:  ; H func, size~19
4FB0  f0        MOVX @DPTR,A           ;H 
4FB1  8003      SJMP 0x4FB6            ;H 
4FB3  09        INC R1                 ;H 
4FB4  80e5      SJMP 0x4F9B            ;H 
4FB6  90a078    MOV DPTR,# #0xA078     ;H dptr win: win-Ax (0xA078)
4FB9  e0        MOVX A,@DPTR           ;H 
4FBA  ff        MOV R7,A               ;H 
4FBB  90a077    MOV DPTR,# #0xA077     ;H dptr win: win-Ax (0xA077)
4FBE  126fe6    LCALL 0x6FE6           ;H 
4FC1  ef        MOV A,R7               ;H 
4FC2  f0        MOVX @DPTR,A           ;H 

sub_4FC3:  ; H func, size~9
4FC3  d0d0      POP dir PSW            ;H 
4FC5  92af      MOV bit,C IE.7         ;H 
4FC7  22        RET                    ;H 
4FC8  .db 90 A0 5C 12

sub_4FCC:  ; H func, size~8
4FCC  49        ORL A,R1               ;H 
4FCD  08        INC R0                 ;H 
4FCE  020689    LJMP 0x0689            ;H 
4FD1  .db 7B 01 7A 9F 79 00 12

sub_4FD8:  ; H func, size~25
4FD8  afc7      MOV R7,dir 0xC7        ;H 
4FDA  ef        MOV A,R7               ;H 
4FDB  b40218    CJNE A,# #0x02, 0x4FF6 ;H 
4FDE  90a1ce    MOV DPTR,# #0xA1CE     ;H dptr win: win-Ax (0xA1CE)
4FE1  e0        MOVX A,@DPTR           ;H 
4FE2  6404      XRL A,# #0x04          ;H 
4FE4  600b      JZ 0x4FF1              ;H 
4FE6  7f40      MOV R7,# #0x40         ;H 
4FE8  f1fc      ACALL 0x4FFC           ;H 
4FEA  90a1ce    MOV DPTR,# #0xA1CE     ;H dptr win: win-Ax (0xA1CE)
4FED  e0        MOVX A,@DPTR           ;H 
4FEE  04        INC A                  ;H 
4FEF  f0        MOVX @DPTR,A           ;H 
4FF0  22        RET                    ;H 

sub_4FF1:  ; H func, size~5
4FF1  e4        CLR A                  ;H 
4FF2  90a1ce    MOV DPTR,# #0xA1CE     ;H dptr win: win-Ax (0xA1CE)
4FF5  f0        MOVX @DPTR,A           ;H 

sub_4FF6:  ; H func, size~6
4FF6  22        RET                    ;H 
4FF7  .db 12 55 75 7F 04

sub_4FFC:  ; H func, size~33
4FFC  90a1db    MOV DPTR,# #0xA1DB     ;H dptr win: win-Ax (0xA1DB)
4FFF  ef        MOV A,R7               ;H 
5000  f0        MOVX @DPTR,A           ;H 
5001  7f02      MOV R7,# #0x02         ;H 
5003  124797    LCALL 0x4797           ;H 
5006  909d01    MOV DPTR,# #0x9D01     ;H dptr win: win-9x (0x9D01)
5009  e0        MOVX A,@DPTR           ;H 
500A  ff        MOV R7,A               ;H 
500B  90a1db    MOV DPTR,# #0xA1DB     ;H dptr win: win-Ax (0xA1DB)
500E  e0        MOVX A,@DPTR           ;H 
500F  fe        MOV R6,A               ;H 
5010  ef        MOV A,R7               ;H 
5011  4e        ORL A,R6               ;H 
5012  909d01    MOV DPTR,# #0x9D01     ;H dptr win: win-9x (0x9D01)
5015  f0        MOVX @DPTR,A           ;H 
5016  22        RET                    ;H 
5017  .db 7A 00 7D 05 7F 01

sub_501D:  ; H func, size~110
501D  d3        SETB C                 ;H 
501E  10af01    JBC IE.7, 0x5022       ;H 
5021  c3        CLR C                  ;H 
5022  c0d0      PUSH dir PSW           ;H 
5024  909d08    MOV DPTR,# #0x9D08     ;H dptr win: win-9x (0x9D08)
5027  e0        MOVX A,@DPTR           ;H 
5028  fe        MOV R6,A               ;H 
5029  605b      JZ 0x5086              ;H 
502B  90a0bd    MOV DPTR,# #0xA0BD     ;H dptr win: win-Ax (0xA0BD)
502E  ef        MOV A,R7               ;H 
502F  f0        MOVX @DPTR,A           ;H 
5030  a3        INC DPTR               ;H 
5031  ed        MOV A,R5               ;H 
5032  f0        MOVX @DPTR,A           ;H 
5033  eb        MOV A,R3               ;H 
5034  a3        INC DPTR               ;H 
5035  f0        MOVX @DPTR,A           ;H 
5036  ea        MOV A,R2               ;H 
5037  a3        INC DPTR               ;H 
5038  f0        MOVX @DPTR,A           ;H 
5039  90a0b3    MOV DPTR,# #0xA0B3     ;H dptr win: win-Ax (0xA0B3)
503C  e0        MOVX A,@DPTR           ;H 
503D  fc        MOV R4,A               ;H 
503E  a3        INC DPTR               ;H 
503F  e0        MOVX A,@DPTR           ;H 
5040  90a0c1    MOV DPTR,# #0xA0C1     ;H dptr win: win-Ax (0xA0C1)
5043  f0        MOVX @DPTR,A           ;H 
5044  ec        MOV A,R4               ;H 
5045  a3        INC DPTR               ;H 
5046  f0        MOVX @DPTR,A           ;H 
5047  90a0b5    MOV DPTR,# #0xA0B5     ;H dptr win: win-Ax (0xA0B5)
504A  e0        MOVX A,@DPTR           ;H 
504B  fc        MOV R4,A               ;H 
504C  a3        INC DPTR               ;H 
504D  e0        MOVX A,@DPTR           ;H 
504E  90a0c3    MOV DPTR,# #0xA0C3     ;H dptr win: win-Ax (0xA0C3)
5051  f0        MOVX @DPTR,A           ;H 
5052  ec        MOV A,R4               ;H 
5053  a3        INC DPTR               ;H 
5054  f0        MOVX @DPTR,A           ;H 
5055  90a0b7    MOV DPTR,# #0xA0B7     ;H dptr win: win-Ax (0xA0B7)
5058  e0        MOVX A,@DPTR           ;H 
5059  fc        MOV R4,A               ;H 
505A  a3        INC DPTR               ;H 
505B  e0        MOVX A,@DPTR           ;H 
505C  90a0c5    MOV DPTR,# #0xA0C5     ;H dptr win: win-Ax (0xA0C5)
505F  f0        MOVX @DPTR,A           ;H 
5060  ec        MOV A,R4               ;H 
5061  a3        INC DPTR               ;H 
5062  f0        MOVX @DPTR,A           ;H 
5063  90a0b9    MOV DPTR,# #0xA0B9     ;H dptr win: win-Ax (0xA0B9)
5066  e0        MOVX A,@DPTR           ;H 
5067  fc        MOV R4,A               ;H 
5068  a3        INC DPTR               ;H 
5069  e0        MOVX A,@DPTR           ;H 
506A  90a0c7    MOV DPTR,# #0xA0C7     ;H dptr win: win-Ax (0xA0C7)
506D  f0        MOVX @DPTR,A           ;H 
506E  ec        MOV A,R4               ;H 
506F  a3        INC DPTR               ;H 
5070  f0        MOVX @DPTR,A           ;H 
5071  90a0bb    MOV DPTR,# #0xA0BB     ;H dptr win: win-Ax (0xA0BB)
5074  74fe      MOV A,# #0xFE          ;H 
5076  f0        MOVX @DPTR,A           ;H 
5077  90a0c9    MOV DPTR,# #0xA0C9     ;H dptr win: win-Ax (0xA0C9)
507A  740c      MOV A,# #0x0C          ;H 
507C  f0        MOVX @DPTR,A           ;H 
507D  7b01      MOV R3,# #0x01         ;H 
507F  7aa0      MOV R2,# #0xA0         ;H 
5081  79bb      MOV R1,# #0xBB         ;H 
5083  128ff7    LCALL 0x8FF7           ;H 
5086  d0d0      POP dir PSW            ;H 
5088  92af      MOV bit,C IE.7         ;H 
508A  22        RET                    ;H 

sub_508B:  ; H func, size~21
508B  120780    LCALL 0x0780           ;H 
508E  ff        MOV R7,A               ;H 
508F  90a0b3    MOV DPTR,# #0xA0B3     ;H dptr win: win-Ax (0xA0B3)
5092  e5f0      MOV A,dir B            ;H 
5094  f0        MOVX @DPTR,A           ;H 
5095  a3        INC DPTR               ;H 
5096  ef        MOV A,R7               ;H 
5097  f0        MOVX @DPTR,A           ;H 
5098  900002    MOV DPTR,# #0x0002     ;H dptr win: MAC/reg-low (0x0002)
509B  1207ab    LCALL 0x07AB           ;H 
509E  ff        MOV R7,A               ;H 
509F  90a0b5    MOV DPTR,# #0xA0B5     ;H dptr win: win-Ax (0xA0B5)
50A2  e5f0      MOV A,dir B            ;H 
50A4  f0        MOVX @DPTR,A           ;H 
50A5  a3        INC DPTR               ;H 
50A6  ef        MOV A,R7               ;H 
50A7  f0        MOVX @DPTR,A           ;H 
50A8  900004    MOV DPTR,# #0x0004     ;H dptr win: MAC/reg-low (0x0004)
50AB  1207ab    LCALL 0x07AB           ;H 
50AE  ff        MOV R7,A               ;H 
50AF  90a0b7    MOV DPTR,# #0xA0B7     ;H dptr win: win-Ax (0xA0B7)
50B2  e5f0      MOV A,dir B            ;H 
50B4  f0        MOVX @DPTR,A           ;H 
50B5  a3        INC DPTR               ;H 
50B6  ef        MOV A,R7               ;H 
50B7  f0        MOVX @DPTR,A           ;H 
50B8  900006    MOV DPTR,# #0x0006     ;H dptr win: MAC/reg-low (0x0006)
50BB  1207ab    LCALL 0x07AB           ;H 
50BE  ff        MOV R7,A               ;H 
50BF  90a0b9    MOV DPTR,# #0xA0B9     ;H dptr win: win-Ax (0xA0B9)
50C2  e5f0      MOV A,dir B            ;H 
50C4  f0        MOVX @DPTR,A           ;H 
50C5  a3        INC DPTR               ;H 
50C6  ef        MOV A,R7               ;H 
50C7  f0        MOVX @DPTR,A           ;H 
50C8  7b01      MOV R3,# #0x01         ;H 
50CA  7a00      MOV R2,# #0x00         ;H 
50CC  7d01      MOV R5,# #0x01         ;H 
50CE  7f01      MOV R7,# #0x01         ;H 
50D0  111d      ACALL 0x501D           ;H 

sub_50D2:  ; H func, size~7
50D2  ab56      MOV R3,dir 0x56        ;H 
50D4  aa57      MOV R2,dir 0x57        ;H 
50D6  a958      MOV R1,dir 0x58        ;H 
50D8  22        RET                    ;H 

sub_50D9:  ; H func, size~8
50D9  7a00      MOV R2,# #0x00         ;H 
50DB  7d04      MOV R5,# #0x04         ;H 
50DD  7f01      MOV R7,# #0x01         ;H 
50DF  111d      ACALL 0x501D           ;H 

sub_50E1:  ; H func, size~12
50E1  7426      MOV A,# #0x26          ;H 
50E3  2555      ADD A,dir 0x55         ;H 
50E5  f582      MOV dir,A DPL          ;H 
50E7  e4        CLR A                  ;H 
50E8  349d      ADDC A,# #0x9D         ;H 
50EA  f583      MOV dir,A DPH          ;H 
50EC  22        RET                    ;H 

sub_50ED:  ; M func, size~32
50ED  e4        CLR A                  ;M 
50EE  90a064    MOV DPTR,# #0xA064     ;M dptr win: win-Ax (0xA064)
50F1  f0        MOVX @DPTR,A           ;M 
50F2  90a067    MOV DPTR,# #0xA067     ;M dptr win: win-Ax (0xA067)
50F5  f0        MOVX @DPTR,A           ;M 
50F6  909d42    MOV DPTR,# #0x9D42     ;M dptr win: win-9x (0x9D42)
50F9  e0        MOVX A,@DPTR           ;M 
50FA  04        INC A                  ;M 
50FB  f0        MOVX @DPTR,A           ;M 
50FC  e4        CLR A                  ;M 
50FD  f551      MOV dir,A 0x51         ;M 
50FF  909e47    MOV DPTR,# #0x9E47     ;M dptr win: win-9x (0x9E47)
5102  e0        MOVX A,@DPTR           ;M 
5103  ff        MOV R7,A               ;M 
5104  e551      MOV A,dir 0x51         ;M 
5106  c3        CLR C                  ;M 
5107  9f        SUBB A,R7              ;M 
5108  4003      JC 0x510D              ;M 
510A  029919    LJMP 0x9919            ;M 

sub_510D:  ; M func, size~27
510D  9004a0    MOV DPTR,# #0x04A0     ;M dptr win: RAM/table (0x04A0)
5110  e0        MOVX A,@DPTR           ;M 
5111  90a058    MOV DPTR,# #0xA058     ;M dptr win: win-Ax (0xA058)
5114  f0        MOVX @DPTR,A           ;M 
5115  9004a1    MOV DPTR,# #0x04A1     ;M dptr win: RAM/table (0x04A1)
5118  e0        MOVX A,@DPTR           ;M 
5119  90a059    MOV DPTR,# #0xA059     ;M dptr win: win-Ax (0xA059)
511C  f0        MOVX @DPTR,A           ;M 
511D  af51      MOV R7,dir 0x51        ;M 
511F  127322    LCALL 0x7322           ;M 
5122  ef        MOV A,R7               ;M 
5123  7003      JNZ 0x5128             ;M 
5125  029914    LJMP 0x9914            ;M 

sub_5128:  ; M func, size~17
5128  75f012    MOV dir,# B, #0x12     ;M 
512B  e551      MOV A,dir 0x51         ;M 
512D  124b44    LCALL 0x4B44           ;M 
5130  124fd8    LCALL 0x4FD8           ;M 
5133  30e003    JNB ACC.0, 0x5139      ;M 
5136  029914    LJMP 0x9914            ;M 

sub_5139:  ; M func, size~17
5139  75f012    MOV dir,# B, #0x12     ;M 
513C  e551      MOV A,dir 0x51         ;M 
513E  126c5a    LCALL 0x6C5A           ;M 
5141  1287a7    LCALL 0x87A7           ;M 
5144  30e003    JNB ACC.0, 0x514A      ;M 
5147  029914    LJMP 0x9914            ;M 

sub_514A:  ; M func, size~162
514A  e551      MOV A,dir 0x51         ;M 
514C  12bc7d    LCALL 0xBC7D           ;M 
514F  e0        MOVX A,@DPTR           ;M 
5150  fe        MOV R6,A               ;M 
5151  a3        INC DPTR               ;M 
5152  e0        MOVX A,@DPTR           ;M 
5153  4e        ORL A,R6               ;M 
5154  700d      JNZ 0x5163             ;M 
5156  7481      MOV A,# #0x81          ;M 
5158  2551      ADD A,dir 0x51         ;M 
515A  1269fa    LCALL 0x69FA           ;M 
515D  e0        MOVX A,@DPTR           ;M 
515E  7003      JNZ 0x5163             ;M 
5160  029914    LJMP 0x9914            ;M 
5163  .db 75 F0 12 E5 51 12 6C 1C 54 F0 F0 E5 51 75 F0 0A
5173  .db A4 24 01 F9 74 8D 35 F0 75 56 01 F5 57 89 58 E5
5183  .db 51 12 BC 7D E0 F5 59 A3 E0 F5 5A 74 81 25 51 12
5193  .db 69 FA E0 F5 5B 75 F0 10 E5 51 12 4F C3 E0 F5 52
51A3  .db 54 7F F5 54 E5 52 54 80 F5 53 75 F0 12 E5 51 12
51B3  .db 6F 03 E5 52 F0 AB 56 AA 57 11 8B 12 BD 1B FF 90
51C3  .db A0 B3 E5 F0 F0 A3 EF F0 A3 E4 F0 A3 E5 5B F0 A3
51D3  .db E5 59 F0 A3 E5 5A F0 A3 E4 F0 A3 E5 52 F0 7B 02
51E3  .db 7A 00 12 BD C7 12 9B 26 FF 12 BC F2 12 6F 11 ED
51F3  .db F0 12 6F CF 90 A0 B7 E4 F0 A3 E5 51 12 9D BD 7B
5203  .db 04 FA 12 BD C7 12

sub_5209:  ; H func, size~11
5209  bcf2e0    CJNE R4,# #0xF2, 0x51EC ;H 
520C  c3        CLR C                  ;H 
520D  9405      SUBB A,# #0x05         ;H 
520F  4003      JC 0x5214              ;H 
5211  02990d    LJMP 0x990D            ;H 

sub_5214:  ; H func, size~68
5214  75f012    MOV dir,# B, #0x12     ;H 
5217  e551      MOV A,dir 0x51         ;H 
5219  126f33    LCALL 0x6F33           ;H 
521C  ff        MOV R7,A               ;H 
521D  e554      MOV A,dir 0x54         ;H 
521F  d3        SETB C                 ;H 
5220  9f        SUBB A,R7              ;H 
5221  4011      JC 0x5234              ;H 
5223  8f54      MOV dir,R7 0x54        ;H 
5225  e553      MOV A,dir 0x53         ;H 
5227  6007      JZ 0x5230              ;H 
5229  e554      MOV A,dir 0x54         ;H 
522B  4480      ORL A,# #0x80          ;H 
522D  ff        MOV R7,A               ;H 
522E  8002      SJMP 0x5232            ;H 
5230  af54      MOV R7,dir 0x54        ;H 
5232  8f52      MOV dir,R7 0x52        ;H 
5234  855455    MOV dir,dir 0x55,0x54  ;H 
5237  e555      MOV A,dir 0x55         ;H 
5239  90411d    MOV DPTR,# #0x411D     ;H dptr win: RAM/table-hi (0x411D)
523C  93        MOVC A,@A+DPTR         ;H 
523D  ff        MOV R7,A               ;H 
523E  e55b      MOV A,dir 0x5B         ;H 
5240  d3        SETB C                 ;H 
5241  9f        SUBB A,R7              ;H 
5242  4007      JC 0x524B              ;H 
5244  12bd27    LCALL 0xBD27           ;H 
5247  6002      JZ 0x524B              ;H 
5249  8055      SJMP 0x52A0            ;H 
524B  d3        SETB C                 ;H 
524C  e55a      MOV A,dir 0x5A         ;H 
524E  9405      SUBB A,# #0x05         ;H 
5250  e559      MOV A,dir 0x59         ;H 
5252  9400      SUBB A,# #0x00         ;H 
5254  4002      JC 0x5258              ;H 
5256  6102      AJMP 0x5302            ;H 

sub_5258:  ; H func, size~7
5258  12bd27    LCALL 0xBD27           ;H 
525B  7002      JNZ 0x525F             ;H 
525D  6102      AJMP 0x5302            ;H 

sub_525F:  ; H func, size~65
525F  11d2      ACALL 0x50D2           ;H 
5261  12bd1b    LCALL 0xBD1B           ;H 
5264  255b      ADD A,dir 0x5B         ;H 
5266  ff        MOV R7,A               ;H 
5267  e4        CLR A                  ;H 
5268  35f0      ADDC A,dir B           ;H 
526A  fe        MOV R6,A               ;H 
526B  900006    MOV DPTR,# #0x0006     ;H dptr win: MAC/reg-low (0x0006)
526E  12bc45    LCALL 0xBC45           ;H 
5271  fe        MOV R6,A               ;H 
5272  12bc97    LCALL 0xBC97           ;H 
5275  2f        ADD A,R7               ;H 
5276  fd        MOV R5,A               ;H 
5277  ee        MOV A,R6               ;H 
5278  35f0      ADDC A,dir B           ;H 
527A  fc        MOV R4,A               ;H 
527B  e559      MOV A,dir 0x59         ;H 
527D  c3        CLR C                  ;H 
527E  13        RRC A                  ;H 
527F  fe        MOV R6,A               ;H 
5280  e55a      MOV A,dir 0x5A         ;H 
5282  13        RRC A                  ;H 
5283  ff        MOV R7,A               ;H 
5284  d3        SETB C                 ;H 
5285  ed        MOV A,R5               ;H 
5286  9f        SUBB A,R7              ;H 
5287  ec        MOV A,R4               ;H 
5288  9e        SUBB A,R6              ;H 
5289  401a      JC 0x52A5              ;H 
528B  12bc19    LCALL 0xBC19           ;H 
528E  90a0b7    MOV DPTR,# #0xA0B7     ;H dptr win: win-Ax (0xA0B7)
5291  129dba    LCALL 0x9DBA           ;H 
5294  7b01      MOV R3,# #0x01         ;H 
5296  fa        MOV R2,A               ;H 
5297  12bdd6    LCALL 0xBDD6           ;H 
529A  124fab    LCALL 0x4FAB           ;H 
529D  543f      ANL A,# #0x3F          ;H 
529F  f0        MOVX @DPTR,A           ;H 

sub_52A0:  ; H func, size~5
52A0  e4        CLR A                  ;H 
52A1  fb        MOV R3,A               ;H 
52A2  02982b    LJMP 0x982B            ;H 

sub_52A5:  ; H func, size~55
52A5  11d2      ACALL 0x50D2           ;H 
52A7  120780    LCALL 0x0780           ;H 
52AA  655a      XRL A,dir 0x5A         ;H 
52AC  7004      JNZ 0x52B2             ;H 
52AE  e5f0      MOV A,dir B            ;H 
52B0  6559      XRL A,dir 0x59         ;H 
52B2  7045      JNZ 0x52F9             ;H 
52B4  124fab    LCALL 0x4FAB           ;H 
52B7  1265f4    LCALL 0x65F4           ;H 
52BA  fe        MOV R6,A               ;H 
52BB  ef        MOV A,R7               ;H 
52BC  543f      ANL A,# #0x3F          ;H 
52BE  ff        MOV R7,A               ;H 
52BF  ee        MOV A,R6               ;H 
52C0  04        INC A                  ;H 
52C1  5403      ANL A,# #0x03          ;H 
52C3  fe        MOV R6,A               ;H 
52C4  c4        SWAP A                 ;H 
52C5  33        RLC A                  ;H 
52C6  33        RLC A                  ;H 
52C7  54c0      ANL A,# #0xC0          ;H 
52C9  4f        ORL A,R7               ;H 
52CA  f0        MOVX @DPTR,A           ;H 
52CB  124fab    LCALL 0x4FAB           ;H 
52CE  c4        SWAP A                 ;H 
52CF  13        RRC A                  ;H 
52D0  13        RRC A                  ;H 
52D1  5403      ANL A,# #0x03          ;H 
52D3  ff        MOV R7,A               ;H 
52D4  c3        CLR C                  ;H 
52D5  9402      SUBB A,# #0x02         ;H 
52D7  5003      JNC 0x52DC             ;H 
52D9  02990d    LJMP 0x990D            ;H 

sub_52DC:  ; H func, size~29
52DC  129aa3    LCALL 0x9AA3           ;H 
52DF  12bc19    LCALL 0xBC19           ;H 
52E2  90a0b7    MOV DPTR,# #0xA0B7     ;H dptr win: win-Ax (0xA0B7)
52E5  f0        MOVX @DPTR,A           ;H 
52E6  a3        INC DPTR               ;H 
52E7  ef        MOV A,R7               ;H 
52E8  f0        MOVX @DPTR,A           ;H 
52E9  7b02      MOV R3,# #0x02         ;H 
52EB  7a00      MOV R2,# #0x00         ;H 
52ED  12bdd6    LCALL 0xBDD6           ;H 
52F0  e4        CLR A                  ;H 
52F1  fd        MOV R5,A               ;H 
52F2  af51      MOV R7,dir 0x51        ;H 
52F4  129941    LCALL 0x9941           ;H 
52F7  8000      SJMP 0x52F9            ;H 

sub_52F9:  ; H func, size~9
52F9  124fab    LCALL 0x4FAB           ;H 
52FC  543f      ANL A,# #0x3F          ;H 
52FE  f0        MOVX @DPTR,A           ;H 
52FF  02990d    LJMP 0x990D            ;H 

sub_5302:  ; H func, size~31
5302  e4        CLR A                  ;H 
5303  90a06c    MOV DPTR,# #0xA06C     ;H dptr win: win-Ax (0xA06C)
5306  f0        MOVX @DPTR,A           ;H 
5307  11d2      ACALL 0x50D2           ;H 
5309  900002    MOV DPTR,# #0x0002     ;H dptr win: MAC/reg-low (0x0002)
530C  12bd14    LCALL 0xBD14           ;H 
530F  120780    LCALL 0x0780           ;H 
5312  12bc3c    LCALL 0xBC3C           ;H 
5315  fe        MOV R6,A               ;H 
5316  900006    MOV DPTR,# #0x0006     ;H dptr win: MAC/reg-low (0x0006)
5319  12bc45    LCALL 0xBC45           ;H 
531C  4f        ORL A,R7               ;H 
531D  7002      JNZ 0x5321             ;H 
531F  61a5      AJMP 0x53A5            ;H 

sub_5321:  ; H func, size~132
5321  e4        CLR A                  ;H 
5322  90a06b    MOV DPTR,# #0xA06B     ;H dptr win: win-Ax (0xA06B)
5325  f0        MOVX @DPTR,A           ;H 
5326  90a06b    MOV DPTR,# #0xA06B     ;H dptr win: win-Ax (0xA06B)
5329  e0        MOVX A,@DPTR           ;H 
532A  ff        MOV R7,A               ;H 
532B  c3        CLR C                  ;H 
532C  9403      SUBB A,# #0x03         ;H 
532E  501e      JNC 0x534E             ;H 
5330  11d2      ACALL 0x50D2           ;H 
5332  75f002    MOV dir,# B, #0x02     ;H 
5335  ef        MOV A,R7               ;H 
5336  12bc90    LCALL 0xBC90           ;H 
5339  1207ab    LCALL 0x07AB           ;H 
533C  45f0      ORL A,dir B            ;H 
533E  700e      JNZ 0x534E             ;H 
5340  90a06c    MOV DPTR,# #0xA06C     ;H dptr win: win-Ax (0xA06C)
5343  e0        MOVX A,@DPTR           ;H 
5344  04        INC A                  ;H 
5345  f0        MOVX @DPTR,A           ;H 
5346  90a06b    MOV DPTR,# #0xA06B     ;H dptr win: win-Ax (0xA06B)
5349  e0        MOVX A,@DPTR           ;H 
534A  04        INC A                  ;H 
534B  f0        MOVX @DPTR,A           ;H 
534C  80d8      SJMP 0x5326            ;H 
534E  90a06c    MOV DPTR,# #0xA06C     ;H dptr win: win-Ax (0xA06C)
5351  e0        MOVX A,@DPTR           ;H 
5352  6051      JZ 0x53A5              ;H 
5354  e4        CLR A                  ;H 
5355  90a06b    MOV DPTR,# #0xA06B     ;H dptr win: win-Ax (0xA06B)
5358  f0        MOVX @DPTR,A           ;H 
5359  90a06b    MOV DPTR,# #0xA06B     ;H dptr win: win-Ax (0xA06B)
535C  e0        MOVX A,@DPTR           ;H 
535D  ff        MOV R7,A               ;H 
535E  c3        CLR C                  ;H 
535F  9404      SUBB A,# #0x04         ;H 
5361  5042      JNC 0x53A5             ;H 
5363  a3        INC DPTR               ;H 
5364  e0        MOVX A,@DPTR           ;H 
5365  fe        MOV R6,A               ;H 
5366  c3        CLR C                  ;H 
5367  7404      MOV A,# #0x04          ;H 
5369  9e        SUBB A,R6              ;H 
536A  fd        MOV R5,A               ;H 
536B  ef        MOV A,R7               ;H 
536C  c3        CLR C                  ;H 
536D  9d        SUBB A,R5              ;H 
536E  5022      JNC 0x5392             ;H 
5370  ee        MOV A,R6               ;H 
5371  ff        MOV R7,A               ;H 
5372  90a06b    MOV DPTR,# #0xA06B     ;H dptr win: win-Ax (0xA06B)
5375  e0        MOVX A,@DPTR           ;H 
5376  2f        ADD A,R7               ;H 
5377  ff        MOV R7,A               ;H 
5378  e4        CLR A                  ;H 
5379  33        RLC A                  ;H 
537A  fe        MOV R6,A               ;H 
537B  ef        MOV A,R7               ;H 
537C  25e0      ADD A,dir ACC          ;H 
537E  ff        MOV R7,A               ;H 
537F  ee        MOV A,R6               ;H 
5380  33        RLC A                  ;H 
5381  11d2      ACALL 0x50D2           ;H 
5383  8f82      MOV dir,R7 DPL         ;H 
5385  f583      MOV dir,A DPH          ;H 
5387  12bd14    LCALL 0xBD14           ;H 
538A  12bc89    LCALL 0xBC89           ;H 
538D  ee        MOV A,R6               ;H 
538E  8ff0      MOV dir,R7 B           ;H 
5390  8008      SJMP 0x539A            ;H 
5392  11d2      ACALL 0x50D2           ;H 
5394  12bc89    LCALL 0xBC89           ;H 
5397  e4        CLR A                  ;H 
5398  f5f0      MOV dir,A B            ;H 
539A  124819    LCALL 0x4819           ;H 
539D  90a06b    MOV DPTR,# #0xA06B     ;H dptr win: win-Ax (0xA06B)
53A0  e0        MOVX A,@DPTR           ;H 
53A1  04        INC A                  ;H 
53A2  f0        MOVX @DPTR,A           ;H 
53A3  80b4      SJMP 0x5359            ;H 

sub_53A5:  ; H func, size~244
53A5  11d2      ACALL 0x50D2           ;H 
53A7  120780    LCALL 0x0780           ;H 
53AA  ff        MOV R7,A               ;H 
53AB  aef0      MOV R6,dir B           ;H 
53AD  4e        ORL A,R6               ;H 
53AE  6017      JZ 0x53C7              ;H 
53B0  12bcc9    LCALL 0xBCC9           ;H 
53B3  7012      JNZ 0x53C7             ;H 
53B5  12bc97    LCALL 0xBC97           ;H 
53B8  45f0      ORL A,dir B            ;H 
53BA  600b      JZ 0x53C7              ;H 
53BC  900004    MOV DPTR,# #0x0004     ;H dptr win: MAC/reg-low (0x0004)
53BF  e4        CLR A                  ;H 
53C0  f5f0      MOV dir,A B            ;H 
53C2  124819    LCALL 0x4819           ;H 
53C5  802a      SJMP 0x53F1            ;H 
53C7  ef        MOV A,R7               ;H 
53C8  4e        ORL A,R6               ;H 
53C9  6013      JZ 0x53DE              ;H 
53CB  12bcc9    LCALL 0xBCC9           ;H 
53CE  700e      JNZ 0x53DE             ;H 
53D0  12bc97    LCALL 0xBC97           ;H 
53D3  45f0      ORL A,dir B            ;H 
53D5  7007      JNZ 0x53DE             ;H 
53D7  12bd21    LCALL 0xBD21           ;H 
53DA  45f0      ORL A,dir B            ;H 
53DC  7013      JNZ 0x53F1             ;H 
53DE  12bcc9    LCALL 0xBCC9           ;H 
53E1  6017      JZ 0x53FA              ;H 
53E3  12bc97    LCALL 0xBC97           ;H 
53E6  45f0      ORL A,dir B            ;H 
53E8  7010      JNZ 0x53FA             ;H 
53EA  12bd21    LCALL 0xBD21           ;H 
53ED  45f0      ORL A,dir B            ;H 
53EF  6009      JZ 0x53FA              ;H 
53F1  900006    MOV DPTR,# #0x0006     ;H dptr win: MAC/reg-low (0x0006)
53F4  e4        CLR A                  ;H 
53F5  f5f0      MOV dir,A B            ;H 
53F7  124819    LCALL 0x4819           ;H 
53FA  11d2      ACALL 0x50D2           ;H 
53FC  118b      ACALL 0x508B           ;H 
53FE  900002    MOV DPTR,# #0x0002     ;H dptr win: MAC/reg-low (0x0002)
5401  12bd14    LCALL 0xBD14           ;H 
5404  120780    LCALL 0x0780           ;H 
5407  12bc3c    LCALL 0xBC3C           ;H 
540A  fe        MOV R6,A               ;H 
540B  900006    MOV DPTR,# #0x0006     ;H dptr win: MAC/reg-low (0x0006)
540E  12bc45    LCALL 0xBC45           ;H 
5411  fe        MOV R6,A               ;H 
5412  90a05c    MOV DPTR,# #0xA05C     ;H dptr win: win-Ax (0xA05C)
5415  f0        MOVX @DPTR,A           ;H 
5416  a3        INC DPTR               ;H 
5417  ef        MOV A,R7               ;H 
5418  f0        MOVX @DPTR,A           ;H 
5419  900002    MOV DPTR,# #0x0002     ;H dptr win: MAC/reg-low (0x0002)
541C  1207ab    LCALL 0x07AB           ;H 
541F  2f        ADD A,R7               ;H 
5420  fd        MOV R5,A               ;H 
5421  ee        MOV A,R6               ;H 
5422  35f0      ADDC A,dir B           ;H 
5424  fc        MOV R4,A               ;H 
5425  12bc97    LCALL 0xBC97           ;H 
5428  25e0      ADD A,dir ACC          ;H 
542A  ff        MOV R7,A               ;H 
542B  e5f0      MOV A,dir B            ;H 
542D  33        RLC A                  ;H 
542E  fe        MOV R6,A               ;H 
542F  ed        MOV A,R5               ;H 
5430  2f        ADD A,R7               ;H 
5431  fd        MOV R5,A               ;H 
5432  ec        MOV A,R4               ;H 
5433  3e        ADDC A,R6              ;H 
5434  fc        MOV R4,A               ;H 
5435  12bd21    LCALL 0xBD21           ;H 
5438  fb        MOV R3,A               ;H 
5439  aaf0      MOV R2,dir B           ;H 
543B  25e0      ADD A,dir ACC          ;H 
543D  ff        MOV R7,A               ;H 
543E  ea        MOV A,R2               ;H 
543F  33        RLC A                  ;H 
5440  fe        MOV R6,A               ;H 
5441  ed        MOV A,R5               ;H 
5442  2f        ADD A,R7               ;H 
5443  ff        MOV R7,A               ;H 
5444  ec        MOV A,R4               ;H 
5445  3e        ADDC A,R6              ;H 
5446  cf        XCH A,R7               ;H 
5447  2b        ADD A,R3               ;H 
5448  fd        MOV R5,A               ;H 
5449  ef        MOV A,R7               ;H 
544A  3a        ADDC A,R2              ;H 
544B  fc        MOV R4,A               ;H 
544C  ab56      MOV R3,dir 0x56        ;H 
544E  aa57      MOV R2,dir 0x57        ;H 
5450  12bd1b    LCALL 0xBD1B           ;H 
5453  aef0      MOV R6,dir B           ;H 
5455  7802      MOV R0,# #0x02         ;H 
5457  c3        CLR C                  ;H 
5458  33        RLC A                  ;H 
5459  ce        XCH A,R6               ;H 
545A  33        RLC A                  ;H 
545B  ce        XCH A,R6               ;H 
545C  d8f9      DJNZ R0, 0x5457        ;H 
545E  2d        ADD A,R5               ;H 
545F  ff        MOV R7,A               ;H 
5460  ec        MOV A,R4               ;H 
5461  3e        ADDC A,R6              ;H 
5462  90a05e    MOV DPTR,# #0xA05E     ;H dptr win: win-Ax (0xA05E)
5465  f0        MOVX @DPTR,A           ;H 
5466  a3        INC DPTR               ;H 
5467  ef        MOV A,R7               ;H 
5468  f0        MOVX @DPTR,A           ;H 
5469  e4        CLR A                  ;H 
546A  90a05a    MOV DPTR,# #0xA05A     ;H dptr win: win-Ax (0xA05A)
546D  f0        MOVX @DPTR,A           ;H 
546E  a3        INC DPTR               ;H 
546F  f0        MOVX @DPTR,A           ;H 
5470  a3        INC DPTR               ;H 
5471  e0        MOVX A,@DPTR           ;H 
5472  fe        MOV R6,A               ;H 
5473  a3        INC DPTR               ;H 
5474  e0        MOVX A,@DPTR           ;H 
5475  ff        MOV R7,A               ;H 
5476  4e        ORL A,R6               ;H 
5477  601b      JZ 0x5494              ;H 
5479  a3        INC DPTR               ;H 
547A  e0        MOVX A,@DPTR           ;H 
547B  fc        MOV R4,A               ;H 
547C  a3        INC DPTR               ;H 
547D  e0        MOVX A,@DPTR           ;H 
547E  fd        MOV R5,A               ;H 
547F  12b897    LCALL 0xB897           ;H 
5482  90a05a    MOV DPTR,# #0xA05A     ;H dptr win: win-Ax (0xA05A)
5485  ef        MOV A,R7               ;H 
5486  f0        MOVX @DPTR,A           ;H 
5487  75f012    MOV dir,# B, #0x12     ;H 
548A  e551      MOV A,dir 0x51         ;H 
548C  909392    MOV DPTR,# #0x9392     ;H dptr win: win-9x (0x9392)
548F  1248f3    LCALL 0x48F3           ;H 
5492  ef        MOV A,R7               ;H 
5493  f0        MOVX @DPTR,A           ;H 
5494  c3        CLR C                  ;H 
5495  e55a      MOV A,dir 0x5A         ;H 
5497  955b      SUBB A,dir 0x5B        ;H 

sub_5499:  ; H func, size~220
5499  fd        MOV R5,A               ;H 
549A  e559      MOV A,dir 0x59         ;H 
549C  9400      SUBB A,# #0x00         ;H 
549E  fc        MOV R4,A               ;H 
549F  4d        ORL A,R5               ;H 
54A0  6010      JZ 0x54B2              ;H 
54A2  90a05c    MOV DPTR,# #0xA05C     ;H dptr win: win-Ax (0xA05C)
54A5  e0        MOVX A,@DPTR           ;H 
54A6  fe        MOV R6,A               ;H 
54A7  a3        INC DPTR               ;H 
54A8  e0        MOVX A,@DPTR           ;H 
54A9  ff        MOV R7,A               ;H 
54AA  12b897    LCALL 0xB897           ;H 
54AD  90a05b    MOV DPTR,# #0xA05B     ;H dptr win: win-Ax (0xA05B)
54B0  ef        MOV A,R7               ;H 
54B1  f0        MOVX @DPTR,A           ;H 
54B2  e555      MOV A,dir 0x55         ;H 
54B4  9040e5    MOV DPTR,# #0x40E5     ;H dptr win: RAM/table-hi (0x40E5)
54B7  93        MOVC A,@A+DPTR         ;H 
54B8  f55c      MOV dir,A 0x5C         ;H 
54BA  e555      MOV A,dir 0x55         ;H 
54BC  9040ad    MOV DPTR,# #0x40AD     ;H dptr win: RAM/table-hi (0x40AD)
54BF  93        MOVC A,@A+DPTR         ;H 
54C0  f55d      MOV dir,A 0x5D         ;H 
54C2  11e1      ACALL 0x50E1           ;H 
54C4  129d9a    LCALL 0x9D9A           ;H 
54C7  c3        CLR C                  ;H 
54C8  9f        SUBB A,R7              ;H 
54C9  401e      JC 0x54E9              ;H 
54CB  ee        MOV A,R6               ;H 
54CC  9f        SUBB A,R7              ;H 
54CD  90a060    MOV DPTR,# #0xA060     ;H dptr win: win-Ax (0xA060)
54D0  f0        MOVX @DPTR,A           ;H 
54D1  12bc4e    LCALL 0xBC4E           ;H 
54D4  e0        MOVX A,@DPTR           ;H 
54D5  ff        MOV R7,A               ;H 
54D6  540f      ANL A,# #0x0F          ;H 
54D8  25e0      ADD A,dir ACC          ;H 
54DA  4401      ORL A,# #0x01          ;H 
54DC  540f      ANL A,# #0x0F          ;H 
54DE  fe        MOV R6,A               ;H 
54DF  12bc4e    LCALL 0xBC4E           ;H 
54E2  ef        MOV A,R7               ;H 
54E3  54f0      ANL A,# #0xF0          ;H 
54E5  4e        ORL A,R6               ;H 
54E6  f0        MOVX @DPTR,A           ;H 
54E7  8028      SJMP 0x5511            ;H 
54E9  11e1      ACALL 0x50E1           ;H 
54EB  129d9a    LCALL 0x9D9A           ;H 
54EE  c3        CLR C                  ;H 
54EF  ef        MOV A,R7               ;H 
54F0  9e        SUBB A,R6              ;H 
54F1  90a060    MOV DPTR,# #0xA060     ;H dptr win: win-Ax (0xA060)
54F4  f0        MOVX @DPTR,A           ;H 
54F5  12bc4e    LCALL 0xBC4E           ;H 
54F8  e0        MOVX A,@DPTR           ;H 
54F9  ff        MOV R7,A               ;H 
54FA  7e01      MOV R6,# #0x01         ;H 
54FC  540f      ANL A,# #0x0F          ;H 
54FE  fd        MOV R5,A               ;H 
54FF  ef        MOV A,R7               ;H 
5500  54f0      ANL A,# #0xF0          ;H 
5502  ff        MOV R7,A               ;H 
5503  ed        MOV A,R5               ;H 
5504  7801      MOV R0,# #0x01         ;H 
5506  08        INC R0                 ;H 
5507  8002      SJMP 0x550B            ;H 
5509  c3        CLR C                  ;H 
550A  33        RLC A                  ;H 
550B  d8fc      DJNZ R0, 0x5509        ;H 
550D  540f      ANL A,# #0x0F          ;H 
550F  4f        ORL A,R7               ;H 
5510  f0        MOVX @DPTR,A           ;H 
5511  12bc4e    LCALL 0xBC4E           ;H 
5514  e0        MOVX A,@DPTR           ;H 
5515  540f      ANL A,# #0x0F          ;H 
5517  129937    LCALL 0x9937           ;H 
551A  90a05a    MOV DPTR,# #0xA05A     ;H dptr win: win-Ax (0xA05A)
551D  126fcd    LCALL 0x6FCD           ;H 
5520  90a05b    MOV DPTR,# #0xA05B     ;H dptr win: win-Ax (0xA05B)
5523  e0        MOVX A,@DPTR           ;H 
5524  ff        MOV R7,A               ;H 
5525  126f13    LCALL 0x6F13           ;H 
5528  ef        MOV A,R7               ;H 
5529  f0        MOVX @DPTR,A           ;H 
552A  90a060    MOV DPTR,# #0xA060     ;H dptr win: win-Ax (0xA060)
552D  129aa1    LCALL 0x9AA1           ;H 
5530  7b03      MOV R3,# #0x03         ;H 
5532  11d9      ACALL 0x50D9           ;H 
5534  e0        MOVX A,@DPTR           ;H 
5535  ff        MOV R7,A               ;H 
5536  90a062    MOV DPTR,# #0xA062     ;H dptr win: win-Ax (0xA062)
5539  e4        CLR A                  ;H 
553A  f0        MOVX @DPTR,A           ;H 
553B  a3        INC DPTR               ;H 
553C  ef        MOV A,R7               ;H 
553D  f0        MOVX @DPTR,A           ;H 
553E  90a05a    MOV DPTR,# #0xA05A     ;H dptr win: win-Ax (0xA05A)
5541  e0        MOVX A,@DPTR           ;H 
5542  f9        MOV R1,A               ;H 
5543  fd        MOV R5,A               ;H 
5544  7c00      MOV R4,# #0x00         ;H 
5546  90a062    MOV DPTR,# #0xA062     ;H dptr win: win-Ax (0xA062)
5549  e0        MOVX A,@DPTR           ;H 
554A  fa        MOV R2,A               ;H 
554B  a3        INC DPTR               ;H 
554C  e0        MOVX A,@DPTR           ;H 
554D  fb        MOV R3,A               ;H 
554E  ae02      MOV R6,dir 0x02        ;H 
5550  7803      MOV R0,# #0x03         ;H 
5552  c3        CLR C                  ;H 
5553  33        RLC A                  ;H 
5554  ce        XCH A,R6               ;H 
5555  33        RLC A                  ;H 
5556  ce        XCH A,R6               ;H 
5557  d8f9      DJNZ R0, 0x5552        ;H 
5559  2d        ADD A,R5               ;H 
555A  ff        MOV R7,A               ;H 
555B  ee        MOV A,R6               ;H 
555C  3c        ADDC A,R4              ;H 
555D  cf        XCH A,R7               ;H 
555E  c3        CLR C                  ;H 
555F  9b        SUBB A,R3              ;H 
5560  cf        XCH A,R7               ;H 
5561  9a        SUBB A,R2              ;H 
5562  90a062    MOV DPTR,# #0xA062     ;H dptr win: win-Ax (0xA062)
5565  f0        MOVX @DPTR,A           ;H 
5566  a3        INC DPTR               ;H 
5567  ef        MOV A,R7               ;H 
5568  f0        MOVX @DPTR,A           ;H 
5569  5407      ANL A,# #0x07          ;H 
556B  6016      JZ 0x5583              ;H 
556D  11e1      ACALL 0x50E1           ;H 
556F  e0        MOVX A,@DPTR           ;H 
5570  ff        MOV R7,A               ;H 
5571  e9        MOV A,R1               ;H 
5572  d3        SETB C                 ;H 
5573  9f        SUBB A,R7              ;H 
5574  400d      JC 0x5583              ;H 
5576  12bd38    LCALL 0xBD38           ;H 
5579  ce        XCH A,R6               ;H 
557A  c3        CLR C                  ;H 
557B  13        RRC A                  ;H 
557C  ce        XCH A,R6               ;H 
557D  13        RRC A                  ;H 
557E  d8f9      DJNZ R0, 0x5579        ;H 
5580  04        INC A                  ;H 
5581  800a      SJMP 0x558D            ;H 
5583  12bd38    LCALL 0xBD38           ;H 
5586  ce        XCH A,R6               ;H 
5587  c3        CLR C                  ;H 
5588  13        RRC A                  ;H 
5589  ce        XCH A,R6               ;H 
558A  13        RRC A                  ;H 
558B  d8f9      DJNZ R0, 0x5586        ;H 
558D  ff        MOV R7,A               ;H 
558E  11e1      ACALL 0x50E1           ;H 
5590  ef        MOV A,R7               ;H 
5591  f0        MOVX @DPTR,A           ;H 
5592  11e1      ACALL 0x50E1           ;H 
5594  e0        MOVX A,@DPTR           ;H 
5595  c3        CLR C                  ;H 
5596  9464      SUBB A,# #0x64         ;H 
5598  4005      JC 0x559F              ;H 
559A  11e1      ACALL 0x50E1           ;H 
559C  7464      MOV A,# #0x64          ;H 
559E  f0        MOVX @DPTR,A           ;H 
559F  740a      MOV A,# #0x0A          ;H 
55A1  2555      ADD A,dir 0x55         ;H 
55A3  12bc75    LCALL 0xBC75           ;H 
55A6  e0        MOVX A,@DPTR           ;H 
55A7  90a068    MOV DPTR,# #0xA068     ;H dptr win: win-Ax (0xA068)
55AA  f0        MOVX @DPTR,A           ;H 
55AB  90a061    MOV DPTR,# #0xA061     ;H dptr win: win-Ax (0xA061)
55AE  7401      MOV A,# #0x01          ;H 
55B0  f0        MOVX @DPTR,A           ;H 
55B1  90a060    MOV DPTR,# #0xA060     ;H dptr win: win-Ax (0xA060)
55B4  e0        MOVX A,@DPTR           ;H 
55B5  d3        SETB C                 ;H 
55B6  940e      SUBB A,# #0x0E         ;H 
55B8  4003      JC 0x55BD              ;H 
55BA  740e      MOV A,# #0x0E          ;H 
55BC  f0        MOVX @DPTR,A           ;H 
55BD  90a060    MOV DPTR,# #0xA060     ;H dptr win: win-Ax (0xA060)
55C0  e0        MOVX A,@DPTR           ;H 
55C1  90409e    MOV DPTR,# #0x409E     ;H dptr win: RAM/table-hi (0x409E)
55C4  93        MOVC A,@A+DPTR         ;H 
55C5  ff        MOV R7,A               ;H 
55C6  d3        SETB C                 ;H 
55C7  940a      SUBB A,# #0x0A         ;H 
55C9  4011      JC 0x55DC              ;H 
55CB  12bc4e    LCALL 0xBC4E           ;H 
55CE  e0        MOVX A,@DPTR           ;H 
55CF  5403      ANL A,# #0x03          ;H 
55D1  fe        MOV R6,A               ;H 
55D2  6003      JZ 0x55D7              ;H 
55D4  be0305    CJNE R6,# #0x03, 0x55DC ;H 
55D7  e4        CLR A                  ;H 
55D8  90a061    MOV DPTR,# #0xA061     ;H dptr win: win-Ax (0xA061)
55DB  f0        MOVX @DPTR,A           ;H 
55DC  90a061    MOV DPTR,# #0xA061     ;H dptr win: win-Ax (0xA061)
55DF  e0        MOVX A,@DPTR           ;H 
55E0  601a      JZ 0x55FC              ;H 
55E2  90a068    MOV DPTR,# #0xA068     ;H dptr win: win-Ax (0xA068)
55E5  e0        MOVX A,@DPTR           ;H 
55E6  2f        ADD A,R7               ;H 
55E7  f0        MOVX @DPTR,A           ;H 
55E8  e0        MOVX A,@DPTR           ;H 
55E9  ff        MOV R7,A               ;H 
55EA  c3        CLR C                  ;H 
55EB  940a      SUBB A,# #0x0A         ;H 
55ED  4006      JC 0x55F5              ;H 
55EF  ef        MOV A,R7               ;H 
55F0  24f6      ADD A,# #0xF6          ;H 
55F2  ff        MOV R7,A               ;H 
55F3  8002      SJMP 0x55F7            ;H 
55F5  7f00      MOV R7,# #0x00         ;H 
55F7  90a068    MOV DPTR,# #0xA068     ;H dptr win: win-Ax (0xA068)
55FA  ef        MOV A,R7               ;H 
55FB  f0        MOVX @DPTR,A           ;H 
55FC  90a068    MOV DPTR,# #0xA068     ;H dptr win: win-Ax (0xA068)
55FF  e0        MOVX A,@DPTR           ;H 
5600  c3        CLR C                  ;H 
5601  9419      SUBB A,# #0x19         ;H 
5603  4003      JC 0x5608              ;H 
5605  7419      MOV A,# #0x19          ;H 
5607  f0        MOVX @DPTR,A           ;H 
5608  90a068    MOV DPTR,# #0xA068     ;H dptr win: win-Ax (0xA068)
560B  e0        MOVX A,@DPTR           ;H 
560C  ff        MOV R7,A               ;H 
560D  740a      MOV A,# #0x0A          ;H 
560F  2555      ADD A,dir 0x55         ;H 
5611  12bc75    LCALL 0xBC75           ;H 
5614  ef        MOV A,R7               ;H 
5615  f0        MOVX @DPTR,A           ;H 
5616  90a064    MOV DPTR,# #0xA064     ;H dptr win: win-Ax (0xA064)
5619  ef        MOV A,R7               ;H 
561A  f0        MOVX @DPTR,A           ;H 
561B  d3        SETB C                 ;H 
561C  940a      SUBB A,# #0x0A         ;H 
561E  4008      JC 0x5628              ;H 
5620  90a069    MOV DPTR,# #0xA069     ;H dptr win: win-Ax (0xA069)
5623  7402      MOV A,# #0x02          ;H 
5625  f0        MOVX @DPTR,A           ;H 
5626  801f      SJMP 0x5647            ;H 
5628  ef        MOV A,R7               ;H 
5629  d3        SETB C                 ;H 
562A  9405      SUBB A,# #0x05         ;H 
562C  4008      JC 0x5636              ;H 
562E  90a069    MOV DPTR,# #0xA069     ;H dptr win: win-Ax (0xA069)
5631  7403      MOV A,# #0x03          ;H 
5633  f0        MOVX @DPTR,A           ;H 
5634  8011      SJMP 0x5647            ;H 
5636  ef        MOV A,R7               ;H 
5637  d3        SETB C                 ;H 
5638  9402      SUBB A,# #0x02         ;H 
563A  90a069    MOV DPTR,# #0xA069     ;H dptr win: win-Ax (0xA069)
563D  4005      JC 0x5644              ;H 
563F  7404      MOV A,# #0x04          ;H 
5641  f0        MOVX @DPTR,A           ;H 
5642  8003      SJMP 0x5647            ;H 
5644  7405      MOV A,# #0x05          ;H 
5646  f0        MOVX @DPTR,A           ;H 
5647  11e1      ACALL 0x50E1           ;H 
5649  e0        MOVX A,@DPTR           ;H 
564A  ff        MOV R7,A               ;H 
564B  c3        CLR C                  ;H 
564C  945a      SUBB A,# #0x5A         ;H 
564E  501b      JNC 0x566B             ;H 
5650  c3        CLR C                  ;H 
5651  745a      MOV A,# #0x5A          ;H 
5653  9f        SUBB A,R7              ;H 
5654  ff        MOV R7,A               ;H 
5655  90a069    MOV DPTR,# #0xA069     ;H dptr win: win-Ax (0xA069)
5658  e0        MOVX A,@DPTR           ;H 
5659  fe        MOV R6,A               ;H 
565A  ef        MOV A,R7               ;H 
565B  a806      MOV R0,dir 0x06        ;H 
565D  08        INC R0                 ;H 
565E  8002      SJMP 0x5662            ;H 
5660  c3        CLR C                  ;H 
5661  13        RRC A                  ;H 
5662  d8fc      DJNZ R0, 0x5660        ;H 
5664  ff        MOV R7,A               ;H 
5665  90a064    MOV DPTR,# #0xA064     ;H dptr win: win-Ax (0xA064)
5668  e0        MOVX A,@DPTR           ;H 
5669  2f        ADD A,R7               ;H 
566A  f0        MOVX @DPTR,A           ;H 
566B  90a064    MOV DPTR,# #0xA064     ;H dptr win: win-Ax (0xA064)
566E  e0        MOVX A,@DPTR           ;H 
566F  c3        CLR C                  ;H 
5670  9428      SUBB A,# #0x28         ;H 
5672  4003      JC 0x5677              ;H 
5674  7428      MOV A,# #0x28          ;H 
5676  f0        MOVX @DPTR,A           ;H 
5677  e553      MOV A,dir 0x53         ;H 
5679  600a      JZ 0x5685              ;H 
567B  e555      MOV A,dir 0x55         ;H 
567D  9040c9    MOV DPTR,# #0x40C9     ;H dptr win: RAM/table-hi (0x40C9)
5680  93        MOVC A,@A+DPTR         ;H 
5681  f55d      MOV dir,A 0x5D         ;H 
5683  8043      SJMP 0x56C8            ;H 
5685  75f012    MOV dir,# B, #0x12     ;H 
5688  e551      MOV A,dir 0x51         ;H 
568A  126c5a    LCALL 0x6C5A           ;H 
568D  e0        MOVX A,@DPTR           ;H 
568E  5403      ANL A,# #0x03          ;H 
5690  6401      XRL A,# #0x01          ;H 
5692  7034      JNZ 0x56C8             ;H 
5694  e554      MOV A,dir 0x54         ;H 
5696  c3        CLR C                  ;H 
5697  940d      SUBB A,# #0x0D         ;H 
5699  402d      JC 0x56C8              ;H 
569B  124fab    LCALL 0x4FAB           ;H 
569E  c4        SWAP A                 ;H 
569F  13        RRC A                  ;H 
56A0  5407      ANL A,# #0x07          ;H 
56A2  30e023    JNB ACC.0, 0x56C8      ;H 
56A5  12bdce    LCALL 0xBDCE           ;H 
56A8  501e      JNC 0x56C8             ;H 
56AA  7408      MOV A,# #0x08          ;H 
56AC  255d      ADD A,dir 0x5D         ;H 
56AE  f55d      MOV dir,A 0x5D         ;H 
56B0  129a91    LCALL 0x9A91           ;H 
56B3  04        INC A                  ;H 
56B4  f0        MOVX @DPTR,A           ;H 
56B5  7e00      MOV R6,# #0x00         ;H 
56B7  a3        INC DPTR               ;H 
56B8  14        DEC A                  ;H 
56B9  f0        MOVX @DPTR,A           ;H 
56BA  a3        INC DPTR               ;H 
56BB  e55d      MOV A,dir 0x5D         ;H 
56BD  125205    LCALL 0x5205           ;H 
56C0  fb        MOV R3,A               ;H 
56C1  fa        MOV R2,A               ;H 
56C2  7d01      MOV R5,# #0x01         ;H 
56C4  7fff      MOV R7,# #0xFF         ;H 
56C6  111d      ACALL 0x501D           ;H 
56C8  12bdce    LCALL 0xBDCE           ;H 
56CB  500f      JNC 0x56DC             ;H 
56CD  90a05b    MOV DPTR,# #0xA05B     ;H dptr win: win-Ax (0xA05B)
56D0  e0        MOVX A,@DPTR           ;H 
56D1  ff        MOV R7,A               ;H 
56D2  c3        CLR C                  ;H 
56D3  7464      MOV A,# #0x64          ;H 
56D5  9f        SUBB A,R7              ;H 
56D6  c3        CLR C                  ;H 
56D7  13        RRC A                  ;H 
56D8  90a067    MOV DPTR,# #0xA067     ;H dptr win: win-Ax (0xA067)
56DB  f0        MOVX @DPTR,A           ;H 
56DC  90a067    MOV DPTR,# #0xA067     ;H dptr win: win-Ax (0xA067)
56DF  e0        MOVX A,@DPTR           ;H 
56E0  fd        MOV R5,A               ;H 
56E1  255d      ADD A,dir 0x5D         ;H 
56E3  24fd      ADD A,# #0xFD          ;H 
56E5  90a065    MOV DPTR,# #0xA065     ;H dptr win: win-Ax (0xA065)
56E8  f0        MOVX @DPTR,A           ;H 
56E9  e55c      MOV A,dir 0x5C         ;H 
56EB  2d        ADD A,R5               ;H 
56EC  a3        INC DPTR               ;H 
56ED  12bcad    LCALL 0xBCAD           ;H 
56F0  e0        MOVX A,@DPTR           ;H 
56F1  fe        MOV R6,A               ;H 
56F2  543f      ANL A,# #0x3F          ;H 
56F4  90a06a    MOV DPTR,# #0xA06A     ;H dptr win: win-Ax (0xA06A)
56F7  f0        MOVX @DPTR,A           ;H 
56F8  ee        MOV A,R6               ;H 
56F9  30e70b    JNB ACC.7, 0x5707      ;H 
56FC  e0        MOVX A,@DPTR           ;H 
56FD  ff        MOV R7,A               ;H 
56FE  90a065    MOV DPTR,# #0xA065     ;H dptr win: win-Ax (0xA065)
5701  e0        MOVX A,@DPTR           ;H 
5702  2f        ADD A,R7               ;H 
5703  f0        MOVX @DPTR,A           ;H 
5704  a3        INC DPTR               ;H 
5705  800a      SJMP 0x5711            ;H 
5707  90a06a    MOV DPTR,# #0xA06A     ;H dptr win: win-Ax (0xA06A)
570A  e0        MOVX A,@DPTR           ;H 
570B  ff        MOV R7,A               ;H 
570C  6006      JZ 0x5714              ;H 
570E  90a064    MOV DPTR,# #0xA064     ;H dptr win: win-Ax (0xA064)
5711  e0        MOVX A,@DPTR           ;H 
5712  2f        ADD A,R7               ;H 
5713  f0        MOVX @DPTR,A           ;H 
5714  90a064    MOV DPTR,# #0xA064     ;H dptr win: win-Ax (0xA064)
5717  e0        MOVX A,@DPTR           ;H 
5718  ff        MOV R7,A               ;H 
5719  a3        INC DPTR               ;H 
571A  e0        MOVX A,@DPTR           ;H 
571B  fe        MOV R6,A               ;H 
571C  d3        SETB C                 ;H 
571D  9f        SUBB A,R7              ;H 
571E  4005      JC 0x5725              ;H 
5720  ee        MOV A,R6               ;H 
5721  9f        SUBB A,R7              ;H 
5722  ff        MOV R7,A               ;H 
5723  8002      SJMP 0x5727            ;H 
5725  7f00      MOV R7,# #0x00         ;H 
5727  90a065    MOV DPTR,# #0xA065     ;H dptr win: win-Ax (0xA065)
572A  ef        MOV A,R7               ;H 
572B  f0        MOVX @DPTR,A           ;H 
572C  90a064    MOV DPTR,# #0xA064     ;H dptr win: win-Ax (0xA064)
572F  e0        MOVX A,@DPTR           ;H 
5730  ff        MOV R7,A               ;H 
5731  90a066    MOV DPTR,# #0xA066     ;H dptr win: win-Ax (0xA066)
5734  e0        MOVX A,@DPTR           ;H 
5735  fe        MOV R6,A               ;H 
5736  d3        SETB C                 ;H 
5737  9f        SUBB A,R7              ;H 
5738  4005      JC 0x573F              ;H 
573A  ee        MOV A,R6               ;H 
573B  9f        SUBB A,R7              ;H 
573C  ff        MOV R7,A               ;H 
573D  8002      SJMP 0x5741            ;H 
573F  7f00      MOV R7,# #0x00         ;H 
5741  90a066    MOV DPTR,# #0xA066     ;H dptr win: win-Ax (0xA066)
5744  ef        MOV A,R7               ;H 
5745  f0        MOVX @DPTR,A           ;H 
5746  90a065    MOV DPTR,# #0xA065     ;H dptr win: win-Ax (0xA065)
5749  e0        MOVX A,@DPTR           ;H 
574A  ff        MOV R7,A               ;H 
574B  d3        SETB C                 ;H 
574C  940a      SUBB A,# #0x0A         ;H 
574E  4002      JC 0x5752              ;H 
5750  8002      SJMP 0x5754            ;H 
5752  7f0a      MOV R7,# #0x0A         ;H 
5754  90a065    MOV DPTR,# #0xA065     ;H dptr win: win-Ax (0xA065)
5757  ef        MOV A,R7               ;H 
5758  f0        MOVX @DPTR,A           ;H 
5759  a3        INC DPTR               ;H 
575A  e0        MOVX A,@DPTR           ;H 
575B  ff        MOV R7,A               ;H 
575C  d3        SETB C                 ;H 
575D  9423      SUBB A,# #0x23         ;H 
575F  4002      JC 0x5763              ;H 
5761  8002      SJMP 0x5765            ;H 
5763  7f23      MOV R7,# #0x23         ;H 
5765  90a066    MOV DPTR,# #0xA066     ;H dptr win: win-Ax (0xA066)
5768  ef        MOV A,R7               ;H 
5769  12bcad    LCALL 0xBCAD           ;H 
576C  e0        MOVX A,@DPTR           ;H 
576D  5480      ANL A,# #0x80          ;H 
576F  fe        MOV R6,A               ;H 
5770  124fd8    LCALL 0x4FD8           ;H 
5773  fd        MOV R5,A               ;H 
5774  129a91    LCALL 0x9A91           ;H 
5777  ed        MOV A,R5               ;H 
5778  f0        MOVX @DPTR,A           ;H 
5779  90a06a    MOV DPTR,# #0xA06A     ;H dptr win: win-Ax (0xA06A)
577C  126f11    LCALL 0x6F11           ;H 
577F  ed        MOV A,R5               ;H 
5780  f0        MOVX @DPTR,A           ;H 
5781  90a065    MOV DPTR,# #0xA065     ;H dptr win: win-Ax (0xA065)
5784  e0        MOVX A,@DPTR           ;H 
5785  12bd2e    LCALL 0xBD2E           ;H 
5788  129b0b    LCALL 0x9B0B           ;H 
578B  7b04      MOV R3,# #0x04         ;H 
578D  11d9      ACALL 0x50D9           ;H 
578F  126fcd    LCALL 0x6FCD           ;H 
5792  90a068    MOV DPTR,# #0xA068     ;H dptr win: win-Ax (0xA068)
5795  e0        MOVX A,@DPTR           ;H 
5796  ff        MOV R7,A               ;H 
5797  126f13    LCALL 0x6F13           ;H 
579A  ef        MOV A,R7               ;H 
579B  f0        MOVX @DPTR,A           ;H 
579C  90a064    MOV DPTR,# #0xA064     ;H dptr win: win-Ax (0xA064)
579F  129936    LCALL 0x9936           ;H 
57A2  90a067    MOV DPTR,# #0xA067     ;H dptr win: win-Ax (0xA067)
57A5  129aa1    LCALL 0x9AA1           ;H 
57A8  7b05      MOV R3,# #0x05         ;H 
57AA  7a00      MOV R2,# #0x00         ;H 
57AC  7d04      MOV R5,# #0x04         ;H 
57AE  7f01      MOV R7,# #0x01         ;H 
57B0  111d      ACALL 0x501D           ;H 
57B2  12bd27    LCALL 0xBD27           ;H 
57B5  7038      JNZ 0x57EF             ;H 
57B7  a3        INC DPTR               ;H 
57B8  e0        MOVX A,@DPTR           ;H 
57B9  6551      XRL A,dir 0x51         ;H 
57BB  7032      JNZ 0x57EF             ;H 
57BD  9004a2    MOV DPTR,# #0x04A2     ;H dptr win: RAM/table (0x04A2)
57C0  e0        MOVX A,@DPTR           ;H 
57C1  f552      MOV dir,A 0x52         ;H 
57C3  a3        INC DPTR               ;H 
57C4  e0        MOVX A,@DPTR           ;H 
57C5  ff        MOV R7,A               ;H 
57C6  75f010    MOV dir,# B, #0x10     ;H 
57C9  e551      MOV A,dir 0x51         ;H 
57CB  124fc3    LCALL 0x4FC3           ;H 
57CE  e552      MOV A,dir 0x52         ;H 
57D0  f0        MOVX @DPTR,A           ;H 
57D1  75f010    MOV dir,# B, #0x10     ;H 
57D4  e551      MOV A,dir 0x51         ;H 
57D6  126eed    LCALL 0x6EED           ;H 
57D9  e0        MOVX A,@DPTR           ;H 
57DA  54fc      ANL A,# #0xFC          ;H 
57DC  fe        MOV R6,A               ;H 
57DD  ef        MOV A,R7               ;H 
57DE  5403      ANL A,# #0x03          ;H 
57E0  4e        ORL A,R6               ;H 
57E1  ff        MOV R7,A               ;H 
57E2  75f010    MOV dir,# B, #0x10     ;H 
57E5  e551      MOV A,dir 0x51         ;H 
57E7  126eed    LCALL 0x6EED           ;H 
57EA  ef        MOV A,R7               ;H 
57EB  f0        MOVX @DPTR,A           ;H 
57EC  029914    LJMP 0x9914            ;H 

sub_57EF:  ; H func, size~34
57EF  90a065    MOV DPTR,# #0xA065     ;H dptr win: win-Ax (0xA065)
57F2  129d9a    LCALL 0x9D9A           ;H 
57F5  d3        SETB C                 ;H 
57F6  9f        SUBB A,R7              ;H 
57F7  503b      JNC 0x5834             ;H 
57F9  129925    LCALL 0x9925           ;H 
57FC  e4        CLR A                  ;H 
57FD  f0        MOVX @DPTR,A           ;H 
57FE  90a05b    MOV DPTR,# #0xA05B     ;H dptr win: win-Ax (0xA05B)
5801  e0        MOVX A,@DPTR           ;H 
5802  c3        CLR C                  ;H 
5803  9450      SUBB A,# #0x50         ;H 
5805  400a      JC 0x5811              ;H 
5807  90a064    MOV DPTR,# #0xA064     ;H dptr win: win-Ax (0xA064)
580A  e0        MOVX A,@DPTR           ;H 
580B  9414      SUBB A,# #0x14         ;H 
580D  4002      JC 0x5811              ;H 
580F  210d      AJMP 0x590D            ;H 

sub_5811:  ; H func, size~35
5811  311a      ACALL 0x591A           ;H 
5813  e4        CLR A                  ;H 
5814  f0        MOVX @DPTR,A           ;H 
5815  ee        MOV A,R6               ;H 
5816  fd        MOV R5,A               ;H 
5817  5191      ACALL 0x5A91           ;H 
5819  ed        MOV A,R5               ;H 
581A  f0        MOVX @DPTR,A           ;H 
581B  a3        INC DPTR               ;H 
581C  e4        CLR A                  ;H 
581D  f0        MOVX @DPTR,A           ;H 
581E  a3        INC DPTR               ;H 
581F  ef        MOV A,R7               ;H 
5820  125205    LCALL 0x5205           ;H 
5823  7b02      MOV R3,# #0x02         ;H 
5825  fa        MOV R2,A               ;H 
5826  129019    LCALL 0x9019           ;H 
5829  7b01      MOV R3,# #0x01         ;H 
582B  7d01      MOV R5,# #0x01         ;H 
582D  af51      MOV R7,dir 0x51        ;H 
582F  126d40    LCALL 0x6D40           ;H 
5832  210d      AJMP 0x590D            ;H 

sub_5834:  ; H func, size~110
5834  90a066    MOV DPTR,# #0xA066     ;H dptr win: win-Ax (0xA066)
5837  e0        MOVX A,@DPTR           ;H 
5838  f9        MOV R1,A               ;H 
5839  90a05a    MOV DPTR,# #0xA05A     ;H dptr win: win-Ax (0xA05A)
583C  e0        MOVX A,@DPTR           ;H 
583D  c3        CLR C                  ;H 
583E  99        SUBB A,R1              ;H 
583F  5008      JNC 0x5849             ;H 
5841  3125      ACALL 0x5925           ;H 
5843  e0        MOVX A,@DPTR           ;H 
5844  c3        CLR C                  ;H 
5845  941e      SUBB A,# #0x1E         ;H 
5847  4063      JC 0x58AC              ;H 
5849  311a      ACALL 0x591A           ;H 
584B  e0        MOVX A,@DPTR           ;H 
584C  ff        MOV R7,A               ;H 
584D  75f012    MOV dir,# B, #0x12     ;H 
5850  e551      MOV A,dir 0x51         ;H 
5852  126c1c    LCALL 0x6C1C           ;H 
5855  c4        SWAP A                 ;H 
5856  540f      ANL A,# #0x0F          ;H 
5858  fd        MOV R5,A               ;H 
5859  90a0b9    MOV DPTR,# #0xA0B9     ;H dptr win: win-Ax (0xA0B9)
585C  e4        CLR A                  ;H 
585D  f0        MOVX @DPTR,A           ;H 
585E  a3        INC DPTR               ;H 
585F  ed        MOV A,R5               ;H 
5860  f0        MOVX @DPTR,A           ;H 
5861  3138      ACALL 0x5938           ;H 
5863  90a05a    MOV DPTR,# #0xA05A     ;H dptr win: win-Ax (0xA05A)
5866  126fcd    LCALL 0x6FCD           ;H 
5869  e9        MOV A,R1               ;H 
586A  710a      ACALL 0x5B0A           ;H 
586C  7b01      MOV R3,# #0x01         ;H 
586E  129017    LCALL 0x9017           ;H 
5871  711b      ACALL 0x5B1B           ;H 
5873  e0        MOVX A,@DPTR           ;H 
5874  ff        MOV R7,A               ;H 
5875  7126      ACALL 0x5B26           ;H 
5877  fe        MOV R6,A               ;H 
5878  c3        CLR C                  ;H 
5879  9f        SUBB A,R7              ;H 
587A  4005      JC 0x5881              ;H 
587C  ee        MOV A,R6               ;H 
587D  9f        SUBB A,R7              ;H 
587E  ff        MOV R7,A               ;H 
587F  8009      SJMP 0x588A            ;H 
5881  7126      ACALL 0x5B26           ;H 
5883  ff        MOV R7,A               ;H 
5884  711b      ACALL 0x5B1B           ;H 
5886  e0        MOVX A,@DPTR           ;H 
5887  c3        CLR C                  ;H 
5888  9f        SUBB A,R7              ;H 
5889  ff        MOV R7,A               ;H 
588A  ef        MOV A,R7               ;H 
588B  d3        SETB C                 ;H 
588C  9404      SUBB A,# #0x04         ;H 
588E  5005      JNC 0x5895             ;H 
5890  311a      ACALL 0x591A           ;H 
5892  e0        MOVX A,@DPTR           ;H 
5893  7010      JNZ 0x58A5             ;H 
5895  3125      ACALL 0x5925           ;H 
5897  e4        CLR A                  ;H 
5898  f0        MOVX @DPTR,A           ;H 
5899  311a      ACALL 0x591A           ;H 
589B  e4        CLR A                  ;H 
589C  f0        MOVX @DPTR,A           ;H 
589D  7d01      MOV R5,# #0x01         ;H 
589F  af51      MOV R7,dir 0x51        ;H 
58A1  3141      ACALL 0x5941           ;H 
58A3  8068      SJMP 0x590D            ;H 
58A5  311a      ACALL 0x591A           ;H 

sub_58A7:  ; H func, size~102
58A7  e0        MOVX A,@DPTR           ;H 
58A8  14        DEC A                  ;H 
58A9  f0        MOVX @DPTR,A           ;H 
58AA  8061      SJMP 0x590D            ;H 
58AC  311a      ACALL 0x591A           ;H 
58AE  e0        MOVX A,@DPTR           ;H 
58AF  ff        MOV R7,A               ;H 
58B0  c3        CLR C                  ;H 
58B1  9402      SUBB A,# #0x02         ;H 
58B3  4008      JC 0x58BD              ;H 
58B5  311a      ACALL 0x591A           ;H 
58B7  e0        MOVX A,@DPTR           ;H 
58B8  24fe      ADD A,# #0xFE          ;H 
58BA  f0        MOVX @DPTR,A           ;H 
58BB  800b      SJMP 0x58C8            ;H 
58BD  ef        MOV A,R7               ;H 
58BE  d3        SETB C                 ;H 
58BF  9400      SUBB A,# #0x00         ;H 
58C1  4005      JC 0x58C8              ;H 
58C3  311a      ACALL 0x591A           ;H 
58C5  e0        MOVX A,@DPTR           ;H 
58C6  14        DEC A                  ;H 
58C7  f0        MOVX @DPTR,A           ;H 
58C8  3125      ACALL 0x5925           ;H 
58CA  e0        MOVX A,@DPTR           ;H 
58CB  04        INC A                  ;H 
58CC  f0        MOVX @DPTR,A           ;H 
58CD  75f012    MOV dir,# B, #0x12     ;H 
58D0  e551      MOV A,dir 0x51         ;H 
58D2  126c5a    LCALL 0x6C5A           ;H 
58D5  e0        MOVX A,@DPTR           ;H 
58D6  54cf      ANL A,# #0xCF          ;H 
58D8  f0        MOVX @DPTR,A           ;H 
58D9  75f012    MOV dir,# B, #0x12     ;H 
58DC  e551      MOV A,dir 0x51         ;H 
58DE  126c1c    LCALL 0x6C1C           ;H 
58E1  54f0      ANL A,# #0xF0          ;H 
58E3  f0        MOVX @DPTR,A           ;H 
58E4  75f012    MOV dir,# B, #0x12     ;H 
58E7  e551      MOV A,dir 0x51         ;H 
58E9  126c1c    LCALL 0x6C1C           ;H 
58EC  540f      ANL A,# #0x0F          ;H 
58EE  f0        MOVX @DPTR,A           ;H 
58EF  3125      ACALL 0x5925           ;H 
58F1  51a1      ACALL 0x5AA1           ;H 
58F3  90a05a    MOV DPTR,# #0xA05A     ;H dptr win: win-Ax (0xA05A)
58F6  126fcd    LCALL 0x6FCD           ;H 
58F9  90a066    MOV DPTR,# #0xA066     ;H dptr win: win-Ax (0xA066)
58FC  e0        MOVX A,@DPTR           ;H 
58FD  ff        MOV R7,A               ;H 
58FE  126f13    LCALL 0x6F13           ;H 
5901  ef        MOV A,R7               ;H 
5902  f0        MOVX @DPTR,A           ;H 
5903  90a065    MOV DPTR,# #0xA065     ;H dptr win: win-Ax (0xA065)
5906  3136      ACALL 0x5936           ;H 
5908  7b03      MOV R3,# #0x03         ;H 
590A  129017    LCALL 0x9017           ;H 

sub_590D:  ; H func, size~13
590D  7d01      MOV R5,# #0x01         ;H 
590F  af51      MOV R7,dir 0x51        ;H 
5911  12695a    LCALL 0x695A           ;H 
5914  0551      INC 0x51               ;H 
5916  0290ff    LJMP 0x90FF            ;H 
5919  .db 22

sub_591A:  ; H func, size~11
591A  75f012    MOV dir,# B, #0x12     ;H 
591D  e551      MOV A,dir 0x51         ;H 
591F  90938b    MOV DPTR,# #0x938B     ;H dptr win: win-9x (0x938B)
5922  0248f3    LJMP 0x48F3            ;H 

sub_5925:  ; H func, size~12
5925  75f012    MOV dir,# B, #0x12     ;H 
5928  e551      MOV A,dir 0x51         ;H 
592A  909390    MOV DPTR,# #0x9390     ;H dptr win: win-9x (0x9390)
592D  0248f3    LJMP 0x48F3            ;H 
5930  .db 90

sub_5931:  ; M func, size~5
5931  93        MOVC A,@A+DPTR         ;M 
5932  8e12      MOV dir,R6 0x12        ;M 
5934  48        ORL A,R0               ;M 
5935  f3        MOVX @R1,A             ;M 

sub_5936:  ; H func, size~2
5936  e0        MOVX A,@DPTR           ;H 
5937  ff        MOV R7,A               ;H 

sub_5938:  ; H func, size~9
5938  90a0b7    MOV DPTR,# #0xA0B7     ;H dptr win: win-Ax (0xA0B7)
593B  e4        CLR A                  ;H 
593C  f0        MOVX @DPTR,A           ;H 
593D  a3        INC DPTR               ;H 
593E  ef        MOV A,R7               ;H 
593F  f0        MOVX @DPTR,A           ;H 
5940  22        RET                    ;H 

sub_5941:  ; H func, size~88
5941  8f5e      MOV dir,R7 0x5E        ;H 
5943  8d5f      MOV dir,R5 0x5F        ;H 
5945  75f010    MOV dir,# B, #0x10     ;H 
5948  ef        MOV A,R7               ;H 
5949  126eed    LCALL 0x6EED           ;H 
594C  e0        MOVX A,@DPTR           ;H 
594D  5403      ANL A,# #0x03          ;H 
594F  90a071    MOV DPTR,# #0xA071     ;H dptr win: win-Ax (0xA071)
5952  b1b2      ACALL 0x5DB2           ;H 
5954  124fc3    LCALL 0x4FC3           ;H 
5957  f18a      ACALL 0x5F8A           ;H 
5959  fe        MOV R6,A               ;H 
595A  90a06f    MOV DPTR,# #0xA06F     ;H dptr win: win-Ax (0xA06F)
595D  f0        MOVX @DPTR,A           ;H 
595E  fb        MOV R3,A               ;H 
595F  ef        MOV A,R7               ;H 
5960  5480      ANL A,# #0x80          ;H 
5962  a3        INC DPTR               ;H 
5963  126f2d    LCALL 0x6F2D           ;H 
5966  90a073    MOV DPTR,# #0xA073     ;H dptr win: win-Ax (0xA073)
5969  b1aa      ACALL 0x5DAA           ;H 
596B  124b44    LCALL 0x4B44           ;H 
596E  5403      ANL A,# #0x03          ;H 
5970  90a072    MOV DPTR,# #0xA072     ;H dptr win: win-Ax (0xA072)
5973  f0        MOVX @DPTR,A           ;H 
5974  126c55    LCALL 0x6C55           ;H 
5977  e0        MOVX A,@DPTR           ;H 
5978  ff        MOV R7,A               ;H 
5979  5403      ANL A,# #0x03          ;H 
597B  90a074    MOV DPTR,# #0xA074     ;H dptr win: win-Ax (0xA074)
597E  f0        MOVX @DPTR,A           ;H 
597F  126c55    LCALL 0x6C55           ;H 
5982  ef        MOV A,R7               ;H 
5983  54cf      ANL A,# #0xCF          ;H 
5985  4410      ORL A,# #0x10          ;H 
5987  126c2e    LCALL 0x6C2E           ;H 
598A  e0        MOVX A,@DPTR           ;H 
598B  543f      ANL A,# #0x3F          ;H 
598D  4f        ORL A,R7               ;H 
598E  f0        MOVX @DPTR,A           ;H 
598F  eb        MOV A,R3               ;H 
5990  6c        XRL A,R4               ;H 
5991  703a      JNZ 0x59CD             ;H 
5993  5198      ACALL 0x5A98           ;H 
5995  5002      JNC 0x5999             ;H 
5997  4190      AJMP 0x5A90            ;H 

sub_5999:  ; H func, size~31
5999  75f012    MOV dir,# B, #0x12     ;H 
599C  e55e      MOV A,dir 0x5E         ;H 
599E  124fb0    LCALL 0x4FB0           ;H 
59A1  fe        MOV R6,A               ;H 
59A2  c4        SWAP A                 ;H 
59A3  13        RRC A                  ;H 
59A4  5407      ANL A,# #0x07          ;H 
59A6  30e00f    JNB ACC.0, 0x59B8      ;H 
59A9  90a070    MOV DPTR,# #0xA070     ;H dptr win: win-Ax (0xA070)
59AC  e0        MOVX A,@DPTR           ;H 
59AD  7009      JNZ 0x59B8             ;H 
59AF  ef        MOV A,R7               ;H 
59B0  4480      ORL A,# #0x80          ;H 
59B2  90a06e    MOV DPTR,# #0xA06E     ;H dptr win: win-Ax (0xA06E)
59B5  f0        MOVX @DPTR,A           ;H 
59B6  4162      AJMP 0x5A62            ;H 

sub_59B8:  ; H func, size~21
59B8  5191      ACALL 0x5A91           ;H 
59BA  e55e      MOV A,dir 0x5E         ;H 
59BC  125205    LCALL 0x5205           ;H 
59BF  a3        INC DPTR               ;H 
59C0  f0        MOVX @DPTR,A           ;H 
59C1  a3        INC DPTR               ;H 
59C2  f0        MOVX @DPTR,A           ;H 
59C3  7b01      MOV R3,# #0x01         ;H 
59C5  fa        MOV R2,A               ;H 
59C6  7d02      MOV R5,# #0x02         ;H 
59C8  7f04      MOV R7,# #0x04         ;H 
59CA  02901d    LJMP 0x901D            ;H 

sub_59CD:  ; H func, size~195
59CD  90a073    MOV DPTR,# #0xA073     ;H dptr win: win-Ax (0xA073)
59D0  e0        MOVX A,@DPTR           ;H 
59D1  ff        MOV R7,A               ;H 
59D2  90a06f    MOV DPTR,# #0xA06F     ;H dptr win: win-Ax (0xA06F)
59D5  e0        MOVX A,@DPTR           ;H 
59D6  fd        MOV R5,A               ;H 
59D7  c3        CLR C                  ;H 
59D8  9f        SUBB A,R7              ;H 
59D9  5078      JNC 0x5A53             ;H 
59DB  90a074    MOV DPTR,# #0xA074     ;H dptr win: win-Ax (0xA074)
59DE  e0        MOVX A,@DPTR           ;H 
59DF  6401      XRL A,# #0x01          ;H 
59E1  6009      JZ 0x59EC              ;H 
59E3  7b01      MOV R3,# #0x01         ;H 
59E5  af5e      MOV R7,dir 0x5E        ;H 
59E7  9135      ACALL 0x5C35           ;H 
59E9  ef        MOV A,R7               ;H 
59EA  700a      JNZ 0x59F6             ;H 
59EC  90a06f    MOV DPTR,# #0xA06F     ;H dptr win: win-Ax (0xA06F)
59EF  b1a2      ACALL 0x5DA2           ;H 
59F1  ab5e      MOV R3,dir 0x5E        ;H 
59F3  128f87    LCALL 0x8F87           ;H 
59F6  75f012    MOV dir,# B, #0x12     ;H 
59F9  e55e      MOV A,dir 0x5E         ;H 
59FB  126fea    LCALL 0x6FEA           ;H 
59FE  e0        MOVX A,@DPTR           ;H 
59FF  90a06e    MOV DPTR,# #0xA06E     ;H dptr win: win-Ax (0xA06E)
5A02  f0        MOVX @DPTR,A           ;H 
5A03  90a074    MOV DPTR,# #0xA074     ;H dptr win: win-Ax (0xA074)
5A06  e0        MOVX A,@DPTR           ;H 
5A07  6401      XRL A,# #0x01          ;H 
5A09  7057      JNZ 0x5A62             ;H 
5A0B  5198      ACALL 0x5A98           ;H 
5A0D  4053      JC 0x5A62              ;H 
5A0F  75f012    MOV dir,# B, #0x12     ;H 
5A12  e55e      MOV A,dir 0x5E         ;H 
5A14  124fb0    LCALL 0x4FB0           ;H 
5A17  fe        MOV R6,A               ;H 
5A18  c4        SWAP A                 ;H 
5A19  13        RRC A                  ;H 
5A1A  5407      ANL A,# #0x07          ;H 
5A1C  30e043    JNB ACC.0, 0x5A62      ;H 
5A1F  e55f      MOV A,dir 0x5F         ;H 
5A21  603f      JZ 0x5A62              ;H 
5A23  90a070    MOV DPTR,# #0xA070     ;H dptr win: win-Ax (0xA070)
5A26  e0        MOVX A,@DPTR           ;H 
5A27  7011      JNZ 0x5A3A             ;H 
5A29  90a06e    MOV DPTR,# #0xA06E     ;H dptr win: win-Ax (0xA06E)
5A2C  e0        MOVX A,@DPTR           ;H 
5A2D  fe        MOV R6,A               ;H 
5A2E  126ef3    LCALL 0x6EF3           ;H 
5A31  ee        MOV A,R6               ;H 
5A32  126c0f    LCALL 0x6C0F           ;H 
5A35  54f0      ANL A,# #0xF0          ;H 
5A37  4402      ORL A,# #0x02          ;H 
5A39  f0        MOVX @DPTR,A           ;H 
5A3A  126fb5    LCALL 0x6FB5           ;H 
5A3D  90a075    MOV DPTR,# #0xA075     ;H dptr win: win-Ax (0xA075)
5A40  3136      ACALL 0x5936           ;H 
5A42  e4        CLR A                  ;H 
5A43  a3        INC DPTR               ;H 
5A44  f0        MOVX @DPTR,A           ;H 
5A45  a3        INC DPTR               ;H 
5A46  f0        MOVX @DPTR,A           ;H 
5A47  7b09      MOV R3,# #0x09         ;H 
5A49  fa        MOV R2,A               ;H 
5A4A  7d0a      MOV R5,# #0x0A         ;H 
5A4C  7fff      MOV R7,# #0xFF         ;H 
5A4E  12901d    LCALL 0x901D           ;H 
5A51  800f      SJMP 0x5A62            ;H 
5A53  90a073    MOV DPTR,# #0xA073     ;H dptr win: win-Ax (0xA073)
5A56  e0        MOVX A,@DPTR           ;H 
5A57  ff        MOV R7,A               ;H 
5A58  126efe    LCALL 0x6EFE           ;H 
5A5B  ef        MOV A,R7               ;H 
5A5C  f0        MOVX @DPTR,A           ;H 
5A5D  90a06e    MOV DPTR,# #0xA06E     ;H dptr win: win-Ax (0xA06E)
5A60  ef        MOV A,R7               ;H 
5A61  f0        MOVX @DPTR,A           ;H 
5A62  126fb5    LCALL 0x6FB5           ;H 
5A65  90a071    MOV DPTR,# #0xA071     ;H dptr win: win-Ax (0xA071)
5A68  3136      ACALL 0x5936           ;H 
5A6A  a3        INC DPTR               ;H 
5A6B  e4        CLR A                  ;H 
5A6C  f0        MOVX @DPTR,A           ;H 
5A6D  a3        INC DPTR               ;H 
5A6E  e55f      MOV A,dir 0x5F         ;H 
5A70  f0        MOVX @DPTR,A           ;H 
5A71  7b01      MOV R3,# #0x01         ;H 
5A73  7a00      MOV R2,# #0x00         ;H 
5A75  7d05      MOV R5,# #0x05         ;H 
5A77  7f04      MOV R7,# #0x04         ;H 
5A79  12901d    LCALL 0x901D           ;H 
5A7C  90a06e    MOV DPTR,# #0xA06E     ;H dptr win: win-Ax (0xA06E)
5A7F  e0        MOVX A,@DPTR           ;H 
5A80  fd        MOV R5,A               ;H 
5A81  90a071    MOV DPTR,# #0xA071     ;H dptr win: win-Ax (0xA071)
5A84  e0        MOVX A,@DPTR           ;H 
5A85  90a171    MOV DPTR,# #0xA171     ;H dptr win: win-Ax (0xA171)
5A88  f0        MOVX @DPTR,A           ;H 
5A89  ab5f      MOV R3,dir 0x5F        ;H 
5A8B  af5e      MOV R7,dir 0x5E        ;H 
5A8D  126a02    LCALL 0x6A02           ;H 

sub_5A90:  ; H func, size~1
5A90  22        RET                    ;H 

sub_5A91:  ; H func, size~7
5A91  90a0b3    MOV DPTR,# #0xA0B3     ;H dptr win: win-Ax (0xA0B3)
5A94  e4        CLR A                  ;H 
5A95  f0        MOVX @DPTR,A           ;H 
5A96  a3        INC DPTR               ;H 
5A97  22        RET                    ;H 

sub_5A98:  ; H func, size~9
5A98  90a06f    MOV DPTR,# #0xA06F     ;H dptr win: win-Ax (0xA06F)
5A9B  e0        MOVX A,@DPTR           ;H 
5A9C  ff        MOV R7,A               ;H 
5A9D  c3        CLR C                  ;H 
5A9E  940c      SUBB A,# #0x0C         ;H 
5AA0  22        RET                    ;H 

sub_5AA1:  ; H func, size~11
5AA1  e0        MOVX A,@DPTR           ;H 
5AA2  ff        MOV R7,A               ;H 
5AA3  90a0b9    MOV DPTR,# #0xA0B9     ;H dptr win: win-Ax (0xA0B9)
5AA6  e4        CLR A                  ;H 
5AA7  f0        MOVX @DPTR,A           ;H 
5AA8  a3        INC DPTR               ;H 
5AA9  ef        MOV A,R7               ;H 
5AAA  f0        MOVX @DPTR,A           ;H 
5AAB  22        RET                    ;H 

sub_5AAC:  ; M func, size~94
5AAC  8f61      MOV dir,R7 0x61        ;M 
5AAE  8d62      MOV dir,R5 0x62        ;M 
5AB0  90a079    MOV DPTR,# #0xA079     ;M dptr win: win-Ax (0xA079)
5AB3  e561      MOV A,dir 0x61         ;M 
5AB5  f0        MOVX @DPTR,A           ;M 
5AB6  a3        INC DPTR               ;M 
5AB7  e562      MOV A,dir 0x62         ;M 
5AB9  f0        MOVX @DPTR,A           ;M 
5ABA  eb        MOV A,R3               ;M 
5ABB  6401      XRL A,# #0x01          ;M 
5ABD  7018      JNZ 0x5AD7             ;M 
5ABF  e561      MOV A,dir 0x61         ;M 
5AC1  d3        SETB C                 ;M 
5AC2  9562      SUBB A,dir 0x62        ;M 
5AC4  5041      JNC 0x5B07             ;M 
5AC6  126fcf    LCALL 0x6FCF           ;M 
5AC9  a3        INC DPTR               ;M 
5ACA  e4        CLR A                  ;M 
5ACB  f0        MOVX @DPTR,A           ;M 
5ACC  a3        INC DPTR               ;M 
5ACD  e562      MOV A,dir 0x62         ;M 
5ACF  125205    LCALL 0x5205           ;M 
5AD2  7b03      MOV R3,# #0x03         ;M 
5AD4  fa        MOV R2,A               ;M 
5AD5  802b      SJMP 0x5B02            ;M 
5AD7  7112      ACALL 0x5B12           ;M 
5AD9  ff        MOV R7,A               ;M 
5ADA  90a079    MOV DPTR,# #0xA079     ;M dptr win: win-Ax (0xA079)
5ADD  e0        MOVX A,@DPTR           ;M 
5ADE  90415f    MOV DPTR,# #0x415F     ;M dptr win: RAM/table-hi (0x415F)
5AE1  93        MOVC A,@A+DPTR         ;M 
5AE2  fe        MOV R6,A               ;M 
5AE3  c3        CLR C                  ;M 
5AE4  9f        SUBB A,R7              ;M 
5AE5  5020      JNC 0x5B07             ;M 
5AE7  e561      MOV A,dir 0x61         ;M 
5AE9  fd        MOV R5,A               ;M 
5AEA  5191      ACALL 0x5A91           ;M 
5AEC  ed        MOV A,R5               ;M 
5AED  f0        MOVX @DPTR,A           ;M 
5AEE  e562      MOV A,dir 0x62         ;M 
5AF0  fd        MOV R5,A               ;M 
5AF1  a3        INC DPTR               ;M 
5AF2  e4        CLR A                  ;M 
5AF3  f0        MOVX @DPTR,A           ;M 
5AF4  a3        INC DPTR               ;M 
5AF5  ed        MOV A,R5               ;M 
5AF6  f0        MOVX @DPTR,A           ;M 
5AF7  ee        MOV A,R6               ;M 
5AF8  710a      ACALL 0x5B0A           ;M 
5AFA  7112      ACALL 0x5B12           ;M 
5AFC  51a2      ACALL 0x5AA2           ;M 
5AFE  7b03      MOV R3,# #0x03         ;M 
5B00  7a00      MOV R2,# #0x00         ;M 
5B02  b193      ACALL 0x5D93           ;M 
5B04  7f01      MOV R7,# #0x01         ;M 
5B06  22        RET                    ;M 
5B07  .db 7F 00 22

sub_5B0A:  ; H func, size~8
5B0A  ff        MOV R7,A               ;H 
5B0B  a3        INC DPTR               ;H 
5B0C  e4        CLR A                  ;H 
5B0D  f0        MOVX @DPTR,A           ;H 
5B0E  a3        INC DPTR               ;H 
5B0F  ef        MOV A,R7               ;H 
5B10  f0        MOVX @DPTR,A           ;H 
5B11  22        RET                    ;H 

sub_5B12:  ; M func, size~9
5B12  90a07a    MOV DPTR,# #0xA07A     ;M dptr win: win-Ax (0xA07A)
5B15  e0        MOVX A,@DPTR           ;M 
5B16  90415f    MOV DPTR,# #0x415F     ;M dptr win: RAM/table-hi (0x415F)
5B19  93        MOVC A,@A+DPTR         ;M 
5B1A  22        RET                    ;M 

sub_5B1B:  ; H func, size~11
5B1B  75f012    MOV dir,# B, #0x12     ;H 
5B1E  e551      MOV A,dir 0x51         ;H 
5B20  90938c    MOV DPTR,# #0x938C     ;H dptr win: win-9x (0x938C)
5B23  0248f3    LJMP 0x48F3            ;H 

sub_5B26:  ; H func, size~13
5B26  75f012    MOV dir,# B, #0x12     ;H 
5B29  e551      MOV A,dir 0x51         ;H 
5B2B  909388    MOV DPTR,# #0x9388     ;H dptr win: win-9x (0x9388)
5B2E  1248f3    LCALL 0x48F3           ;H 
5B31  e0        MOVX A,@DPTR           ;H 
5B32  22        RET                    ;H 

sub_5B33:  ; M func, size~81
5B33  90a07a    MOV DPTR,# #0xA07A     ;M dptr win: win-Ax (0xA07A)
5B36  ed        MOV A,R5               ;M 
5B37  f0        MOVX @DPTR,A           ;M 
5B38  a3        INC DPTR               ;M 
5B39  eb        MOV A,R3               ;M 
5B3A  f0        MOVX @DPTR,A           ;M 
5B3B  e4        CLR A                  ;M 
5B3C  90a07d    MOV DPTR,# #0xA07D     ;M dptr win: win-Ax (0xA07D)
5B3F  f0        MOVX @DPTR,A           ;M 
5B40  a3        INC DPTR               ;M 
5B41  f0        MOVX @DPTR,A           ;M 
5B42  a3        INC DPTR               ;M 
5B43  f0        MOVX @DPTR,A           ;M 
5B44  90a07b    MOV DPTR,# #0xA07B     ;M dptr win: win-Ax (0xA07B)
5B47  124b40    LCALL 0x4B40           ;M 
5B4A  fe        MOV R6,A               ;M 
5B4B  c4        SWAP A                 ;M 
5B4C  5403      ANL A,# #0x03          ;M 
5B4E  7bff      MOV R3,# #0xFF         ;M 
5B50  6006      JZ 0x5B58              ;M 
5B52  7a41      MOV R2,# #0x41         ;M 
5B54  7997      MOV R1,# #0x97         ;M 
5B56  8004      SJMP 0x5B5C            ;M 
5B58  7a41      MOV R2,# #0x41         ;M 
5B5A  797b      MOV R1,# #0x7B         ;M 
5B5C  90a080    MOV DPTR,# #0xA080     ;M dptr win: win-Ax (0xA080)
5B5F  124908    LCALL 0x4908           ;M 
5B62  ef        MOV A,R7               ;M 
5B63  14        DEC A                  ;M 
5B64  90a07d    MOV DPTR,# #0xA07D     ;M dptr win: win-Ax (0xA07D)
5B67  f0        MOVX @DPTR,A           ;M 
5B68  90a07a    MOV DPTR,# #0xA07A     ;M dptr win: win-Ax (0xA07A)
5B6B  e0        MOVX A,@DPTR           ;M 
5B6C  ff        MOV R7,A               ;M 
5B6D  fd        MOV R5,A               ;M 
5B6E  90a07d    MOV DPTR,# #0xA07D     ;M dptr win: win-Ax (0xA07D)
5B71  e0        MOVX A,@DPTR           ;M 
5B72  fe        MOV R6,A               ;M 
5B73  fb        MOV R3,A               ;M 
5B74  33        RLC A                  ;M 
5B75  95e0      SUBB A,dir ACC         ;M 
5B77  fa        MOV R2,A               ;M 
5B78  c3        CLR C                  ;M 
5B79  eb        MOV A,R3               ;M 
5B7A  9d        SUBB A,R5              ;M 
5B7B  7480      MOV A,# #0x80          ;M 
5B7D  f8        MOV R0,A               ;M 
5B7E  6a        XRL A,R2               ;M 
5B7F  98        SUBB A,R0              ;M 
5B80  5002      JNC 0x5B84             ;M 
5B82  8127      AJMP 0x5C27            ;M 

sub_5B84:  ; M func, size~10
5B84  ee        MOV A,R6               ;M 
5B85  7007      JNZ 0x5B8E             ;M 
5B87  90a07f    MOV DPTR,# #0xA07F     ;M dptr win: win-Ax (0xA07F)
5B8A  ef        MOV A,R7               ;M 
5B8B  f0        MOVX @DPTR,A           ;M 
5B8C  8127      AJMP 0x5C27            ;M 

sub_5B8E:  ; M func, size~15
5B8E  90a07d    MOV DPTR,# #0xA07D     ;M dptr win: win-Ax (0xA07D)
5B91  e0        MOVX A,@DPTR           ;M 
5B92  ff        MOV R7,A               ;M 
5B93  90a07b    MOV DPTR,# #0xA07B     ;M dptr win: win-Ax (0xA07B)
5B96  128f80    LCALL 0x8F80           ;M 
5B99  7002      JNZ 0x5B9D             ;M 
5B9B  811f      AJMP 0x5C1F            ;M 

sub_5B9D:  ; M func, size~138
5B9D  90a080    MOV DPTR,# #0xA080     ;M dptr win: win-Ax (0xA080)
5BA0  1248ff    LCALL 0x48FF           ;M 
5BA3  90a07a    MOV DPTR,# #0xA07A     ;M dptr win: win-Ax (0xA07A)
5BA6  e0        MOVX A,@DPTR           ;M 
5BA7  f582      MOV dir,A DPL          ;M 
5BA9  1257b0    LCALL 0x57B0           ;M 
5BAC  ff        MOV R7,A               ;M 
5BAD  90a07d    MOV DPTR,# #0xA07D     ;M dptr win: win-Ax (0xA07D)
5BB0  e0        MOVX A,@DPTR           ;M 
5BB1  fd        MOV R5,A               ;M 
5BB2  33        RLC A                  ;M 
5BB3  95e0      SUBB A,dir ACC         ;M 
5BB5  8d82      MOV dir,R5 DPL         ;M 
5BB7  f583      MOV dir,A DPH          ;M 
5BB9  1206a2    LCALL 0x06A2           ;M 
5BBC  c3        CLR C                  ;M 
5BBD  9f        SUBB A,R7              ;M 
5BBE  405f      JC 0x5C1F              ;M 
5BC0  90a07d    MOV DPTR,# #0xA07D     ;M dptr win: win-Ax (0xA07D)
5BC3  e0        MOVX A,@DPTR           ;M 
5BC4  ff        MOV R7,A               ;M 
5BC5  33        RLC A                  ;M 
5BC6  95e0      SUBB A,dir ACC         ;M 
5BC8  fe        MOV R6,A               ;M 
5BC9  90a0b3    MOV DPTR,# #0xA0B3     ;M dptr win: win-Ax (0xA0B3)
5BCC  f0        MOVX @DPTR,A           ;M 
5BCD  a3        INC DPTR               ;M 
5BCE  ef        MOV A,R7               ;M 
5BCF  f0        MOVX @DPTR,A           ;M 
5BD0  90a07a    MOV DPTR,# #0xA07A     ;M dptr win: win-Ax (0xA07A)
5BD3  126f11    LCALL 0x6F11           ;M 
5BD6  ed        MOV A,R5               ;M 
5BD7  f0        MOVX @DPTR,A           ;M 
5BD8  90a080    MOV DPTR,# #0xA080     ;M dptr win: win-Ax (0xA080)
5BDB  1248ff    LCALL 0x48FF           ;M 
5BDE  8f82      MOV dir,R7 DPL         ;M 
5BE0  8e83      MOV dir,R6 DPH         ;M 
5BE2  1206a2    LCALL 0x06A2           ;M 
5BE5  3137      ACALL 0x5937           ;M 
5BE7  90a07a    MOV DPTR,# #0xA07A     ;M dptr win: win-Ax (0xA07A)
5BEA  e0        MOVX A,@DPTR           ;M 
5BEB  f582      MOV dir,A DPL          ;M 
5BED  1257b0    LCALL 0x57B0           ;M 
5BF0  51a2      ACALL 0x5AA2           ;M 
5BF2  7b07      MOV R3,# #0x07         ;M 
5BF4  7a00      MOV R2,# #0x00         ;M 
5BF6  b18c      ACALL 0x5D8C           ;M 
5BF8  90a07d    MOV DPTR,# #0xA07D     ;M dptr win: win-Ax (0xA07D)
5BFB  e0        MOVX A,@DPTR           ;M 
5BFC  90a07f    MOV DPTR,# #0xA07F     ;M dptr win: win-Ax (0xA07F)
5BFF  f0        MOVX @DPTR,A           ;M 
5C00  90a07e    MOV DPTR,# #0xA07E     ;M dptr win: win-Ax (0xA07E)
5C03  e0        MOVX A,@DPTR           ;M 
5C04  04        INC A                  ;M 
5C05  f0        MOVX @DPTR,A           ;M 
5C06  90a07c    MOV DPTR,# #0xA07C     ;M dptr win: win-Ax (0xA07C)
5C09  e0        MOVX A,@DPTR           ;M 
5C0A  ff        MOV R7,A               ;M 
5C0B  90a07e    MOV DPTR,# #0xA07E     ;M dptr win: win-Ax (0xA07E)
5C0E  e0        MOVX A,@DPTR           ;M 
5C0F  6f        XRL A,R7               ;M 
5C10  6015      JZ 0x5C27              ;M 
5C12  90a07a    MOV DPTR,# #0xA07A     ;M dptr win: win-Ax (0xA07A)
5C15  e0        MOVX A,@DPTR           ;M 
5C16  ff        MOV R7,A               ;M 
5C17  90a07f    MOV DPTR,# #0xA07F     ;M dptr win: win-Ax (0xA07F)
5C1A  e0        MOVX A,@DPTR           ;M 
5C1B  d3        SETB C                 ;M 
5C1C  9f        SUBB A,R7              ;M 
5C1D  4008      JC 0x5C27              ;M 
5C1F  90a07d    MOV DPTR,# #0xA07D     ;M dptr win: win-Ax (0xA07D)
5C22  e0        MOVX A,@DPTR           ;M 
5C23  14        DEC A                  ;M 
5C24  f0        MOVX @DPTR,A           ;M 
5C25  6168      AJMP 0x5B68            ;M 

sub_5C27:  ; M func, size~14
5C27  90a07f    MOV DPTR,# #0xA07F     ;M dptr win: win-Ax (0xA07F)
5C2A  e0        MOVX A,@DPTR           ;M 
5C2B  ff        MOV R7,A               ;M 
5C2C  90a07b    MOV DPTR,# #0xA07B     ;M dptr win: win-Ax (0xA07B)
5C2F  126fe6    LCALL 0x6FE6           ;M 
5C32  ef        MOV A,R7               ;M 
5C33  f0        MOVX @DPTR,A           ;M 
5C34  22        RET                    ;M 

sub_5C35:  ; H func, size~90
5C35  90a079    MOV DPTR,# #0xA079     ;H dptr win: win-Ax (0xA079)
5C38  ef        MOV A,R7               ;H 
5C39  f0        MOVX @DPTR,A           ;H 
5C3A  a3        INC DPTR               ;H 
5C3B  eb        MOV A,R3               ;H 
5C3C  f0        MOVX @DPTR,A           ;H 
5C3D  90a07c    MOV DPTR,# #0xA07C     ;H dptr win: win-Ax (0xA07C)
5C40  7401      MOV A,# #0x01          ;H 
5C42  f0        MOVX @DPTR,A           ;H 
5C43  6b        XRL A,R3               ;H 
5C44  7049      JNZ 0x5C8F             ;H 
5C46  ed        MOV A,R5               ;H 
5C47  c3        CLR C                  ;H 
5C48  940c      SUBB A,# #0x0C         ;H 
5C4A  401b      JC 0x5C67              ;H 
5C4C  ed        MOV A,R5               ;H 
5C4D  24f4      ADD A,# #0xF4          ;H 
5C4F  a3        INC DPTR               ;H 
5C50  f0        MOVX @DPTR,A           ;H 
5C51  e0        MOVX A,@DPTR           ;H 
5C52  ff        MOV R7,A               ;H 
5C53  25e0      ADD A,dir ACC          ;H 
5C55  24b7      ADD A,# #0xB7          ;H 
5C57  f582      MOV dir,A DPL          ;H 
5C59  e4        CLR A                  ;H 
5C5A  3441      ADDC A,# #0x41         ;H 
5C5C  b13d      ACALL 0x5D3D           ;H 
5C5E  24b8      ADD A,# #0xB8          ;H 
5C60  f582      MOV dir,A DPL          ;H 
5C62  e4        CLR A                  ;H 
5C63  3441      ADDC A,# #0x41         ;H 
5C65  8043      SJMP 0x5CAA            ;H 
5C67  ed        MOV A,R5               ;H 
5C68  d3        SETB C                 ;H 
5C69  9404      SUBB A,# #0x04         ;H 
5C6B  501b      JNC 0x5C88             ;H 
5C6D  90a07d    MOV DPTR,# #0xA07D     ;H dptr win: win-Ax (0xA07D)
5C70  ed        MOV A,R5               ;H 
5C71  f0        MOVX @DPTR,A           ;H 
5C72  e0        MOVX A,@DPTR           ;H 
5C73  ff        MOV R7,A               ;H 
5C74  25e0      ADD A,dir ACC          ;H 
5C76  2455      ADD A,# #0x55          ;H 
5C78  f582      MOV dir,A DPL          ;H 
5C7A  e4        CLR A                  ;H 
5C7B  3441      ADDC A,# #0x41         ;H 
5C7D  b13d      ACALL 0x5D3D           ;H 
5C7F  2456      ADD A,# #0x56          ;H 
5C81  f582      MOV dir,A DPL          ;H 
5C83  e4        CLR A                  ;H 
5C84  3441      ADDC A,# #0x41         ;H 
5C86  8022      SJMP 0x5CAA            ;H 
5C88  e4        CLR A                  ;H 
5C89  90a07c    MOV DPTR,# #0xA07C     ;H dptr win: win-Ax (0xA07C)
5C8C  f0        MOVX @DPTR,A           ;H 
5C8D  ff        MOV R7,A               ;H 
5C8E  22        RET                    ;H 

sub_5C8F:  ; H func, size~27
5C8F  ed        MOV A,R5               ;H 
5C90  24f3      ADD A,# #0xF3          ;H 
5C92  90a07d    MOV DPTR,# #0xA07D     ;H dptr win: win-Ax (0xA07D)
5C95  f0        MOVX @DPTR,A           ;H 
5C96  e0        MOVX A,@DPTR           ;H 
5C97  ff        MOV R7,A               ;H 
5C98  25e0      ADD A,dir ACC          ;H 
5C9A  24d5      ADD A,# #0xD5          ;H 
5C9C  f582      MOV dir,A DPL          ;H 
5C9E  e4        CLR A                  ;H 
5C9F  3441      ADDC A,# #0x41         ;H 
5CA1  b13d      ACALL 0x5D3D           ;H 
5CA3  24d6      ADD A,# #0xD6          ;H 
5CA5  f582      MOV dir,A DPL          ;H 
5CA7  e4        CLR A                  ;H 
5CA8  3441      ADDC A,# #0x41         ;H 

sub_5CAA:  ; H func, size~147
5CAA  f583      MOV dir,A DPH          ;H 
5CAC  e4        CLR A                  ;H 
5CAD  93        MOVC A,@A+DPTR         ;H 
5CAE  f9        MOV R1,A               ;H 
5CAF  b149      ACALL 0x5D49           ;H 
5CB1  fd        MOV R5,A               ;H 
5CB2  128ec4    LCALL 0x8EC4           ;H 
5CB5  90a07b    MOV DPTR,# #0xA07B     ;H dptr win: win-Ax (0xA07B)
5CB8  ef        MOV A,R7               ;H 
5CB9  f0        MOVX @DPTR,A           ;H 
5CBA  af01      MOV R7,dir 0x01        ;H 
5CBC  90a079    MOV DPTR,# #0xA079     ;H dptr win: win-Ax (0xA079)
5CBF  e0        MOVX A,@DPTR           ;H 
5CC0  fd        MOV R5,A               ;H 
5CC1  128ec4    LCALL 0x8EC4           ;H 
5CC4  a907      MOV R1,dir 0x07        ;H 
5CC6  90a07b    MOV DPTR,# #0xA07B     ;H dptr win: win-Ax (0xA07B)
5CC9  e0        MOVX A,@DPTR           ;H 
5CCA  fd        MOV R5,A               ;H 
5CCB  f4        CPL A                  ;H 
5CCC  6039      JZ 0x5D07              ;H 
5CCE  e9        MOV A,R1               ;H 
5CCF  f4        CPL A                  ;H 
5CD0  6035      JZ 0x5D07              ;H 
5CD2  90a079    MOV DPTR,# #0xA079     ;H dptr win: win-Ax (0xA079)
5CD5  e0        MOVX A,@DPTR           ;H 
5CD6  ff        MOV R7,A               ;H 
5CD7  ab01      MOV R3,dir 0x01        ;H 
5CD9  12b866    LCALL 0xB866           ;H 
5CDC  ef        MOV A,R7               ;H 
5CDD  6009      JZ 0x5CE8              ;H 
5CDF  90a07b    MOV DPTR,# #0xA07B     ;H dptr win: win-Ax (0xA07B)
5CE2  e0        MOVX A,@DPTR           ;H 
5CE3  ff        MOV R7,A               ;H 
5CE4  e9        MOV A,R1               ;H 
5CE5  f0        MOVX @DPTR,A           ;H 
5CE6  a907      MOV R1,dir 0x07        ;H 
5CE8  90a07a    MOV DPTR,# #0xA07A     ;H dptr win: win-Ax (0xA07A)
5CEB  e0        MOVX A,@DPTR           ;H 
5CEC  7f01      MOV R7,# #0x01         ;H 
5CEE  b40102    CJNE A,# #0x01, 0x5CF3 ;H 
5CF1  7f03      MOV R7,# #0x03         ;H 
5CF3  ef        MOV A,R7               ;H 
5CF4  540f      ANL A,# #0x0F          ;H 
5CF6  ff        MOV R7,A               ;H 
5CF7  90a079    MOV DPTR,# #0xA079     ;H dptr win: win-Ax (0xA079)
5CFA  e0        MOVX A,@DPTR           ;H 
5CFB  75f012    MOV dir,# B, #0x12     ;H 
5CFE  126c1c    LCALL 0x6C1C           ;H 
5D01  54f0      ANL A,# #0xF0          ;H 
5D03  4f        ORL A,R7               ;H 
5D04  f0        MOVX @DPTR,A           ;H 
5D05  801f      SJMP 0x5D26            ;H 
5D07  90a07b    MOV DPTR,# #0xA07B     ;H dptr win: win-Ax (0xA07B)
5D0A  e0        MOVX A,@DPTR           ;H 
5D0B  b4ff0a    CJNE A,# #0xFF, 0x5D18 ;H 
5D0E  e9        MOV A,R1               ;H 
5D0F  f4        CPL A                  ;H 
5D10  6006      JZ 0x5D18              ;H 
5D12  e9        MOV A,R1               ;H 
5D13  f0        MOVX @DPTR,A           ;H 
5D14  79ff      MOV R1,# #0xFF         ;H 
5D16  800e      SJMP 0x5D26            ;H 
5D18  90a07b    MOV DPTR,# #0xA07B     ;H dptr win: win-Ax (0xA07B)
5D1B  e0        MOVX A,@DPTR           ;H 
5D1C  b4ff07    CJNE A,# #0xFF, 0x5D26 ;H 
5D1F  e9        MOV A,R1               ;H 
5D20  b4ff03    CJNE A,# #0xFF, 0x5D26 ;H 
5D23  e4        CLR A                  ;H 
5D24  a3        INC DPTR               ;H 
5D25  f0        MOVX @DPTR,A           ;H 
5D26  b149      ACALL 0x5D49           ;H 
5D28  fe        MOV R6,A               ;H 
5D29  126fe7    LCALL 0x6FE7           ;H 
5D2C  ef        MOV A,R7               ;H 
5D2D  f0        MOVX @DPTR,A           ;H 
5D2E  75f012    MOV dir,# B, #0x12     ;H 
5D31  ee        MOV A,R6               ;H 
5D32  126ef8    LCALL 0x6EF8           ;H 
5D35  e9        MOV A,R1               ;H 
5D36  f0        MOVX @DPTR,A           ;H 
5D37  90a07c    MOV DPTR,# #0xA07C     ;H dptr win: win-Ax (0xA07C)
5D3A  e0        MOVX A,@DPTR           ;H 
5D3B  ff        MOV R7,A               ;H 
5D3C  22        RET                    ;H 

sub_5D3D:  ; H func, size~12
5D3D  f583      MOV dir,A DPH          ;H 
5D3F  e4        CLR A                  ;H 
5D40  93        MOVC A,@A+DPTR         ;H 
5D41  90a07b    MOV DPTR,# #0xA07B     ;H dptr win: win-Ax (0xA07B)
5D44  f0        MOVX @DPTR,A           ;H 
5D45  ef        MOV A,R7               ;H 
5D46  25e0      ADD A,dir ACC          ;H 
5D48  22        RET                    ;H 

sub_5D49:  ; H func, size~10
5D49  90a07b    MOV DPTR,# #0xA07B     ;H dptr win: win-Ax (0xA07B)
5D4C  e0        MOVX A,@DPTR           ;H 
5D4D  ff        MOV R7,A               ;H 
5D4E  90a079    MOV DPTR,# #0xA079     ;H dptr win: win-Ax (0xA079)
5D51  e0        MOVX A,@DPTR           ;H 
5D52  22        RET                    ;H 

sub_5D53:  ; M func, size~14
5D53  90a076    MOV DPTR,# #0xA076     ;M dptr win: win-Ax (0xA076)
5D56  e0        MOVX A,@DPTR           ;M 
5D57  fd        MOV R5,A               ;M 
5D58  90a078    MOV DPTR,# #0xA078     ;M dptr win: win-Ax (0xA078)
5D5B  e0        MOVX A,@DPTR           ;M 
5D5C  fb        MOV R3,A               ;M 
5D5D  51ac      ACALL 0x5AAC           ;M 
5D5F  ef        MOV A,R7               ;M 
5D60  22        RET                    ;M 

sub_5D61:  ; M func, size~48
5D61  125733    LCALL 0x5733           ;M 
5D64  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
5D67  124fb8    LCALL 0x4FB8           ;M 
5D6A  ff        MOV R7,A               ;M 
5D6B  120689    LCALL 0x0689           ;M 
5D6E  909d08    MOV DPTR,# #0x9D08     ;M dptr win: win-9x (0x9D08)
5D71  f0        MOVX @DPTR,A           ;M 
5D72  fd        MOV R5,A               ;M 
5D73  5191      ACALL 0x5A91           ;M 
5D75  ed        MOV A,R5               ;M 
5D76  f0        MOVX @DPTR,A           ;M 
5D77  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
5D7A  126f11    LCALL 0x6F11           ;M 
5D7D  ed        MOV A,R5               ;M 
5D7E  f0        MOVX @DPTR,A           ;M 
5D7F  a3        INC DPTR               ;M 
5D80  e4        CLR A                  ;M 
5D81  b1ba      ACALL 0x5DBA           ;M 
5D83  fb        MOV R3,A               ;M 
5D84  fa        MOV R2,A               ;M 
5D85  7d01      MOV R5,# #0x01         ;M 
5D87  7f20      MOV R7,# #0x20         ;M 
5D89  02901d    LJMP 0x901D            ;M 
5D8C  .db 7D 05 7F FF 02

sub_5D91:  ; M func, size~9
5D91  901d7d    MOV DPTR,# #0x1D7D     ;M dptr win: RAM/table (0x1D7D)
5D94  09        INC R1                 ;M 
5D95  7fff      MOV R7,# #0xFF         ;M 
5D97  02901d    LJMP 0x901D            ;M 

sub_5D9A:  ; M func, size~8
5D9A  e0        MOVX A,@DPTR           ;M 
5D9B  ff        MOV R7,A               ;M 
5D9C  90a05a    MOV DPTR,# #0xA05A     ;M dptr win: win-Ax (0xA05A)
5D9F  e0        MOVX A,@DPTR           ;M 
5DA0  fe        MOV R6,A               ;M 
5DA1  22        RET                    ;M 

sub_5DA2:  ; H func, size~8
5DA2  e0        MOVX A,@DPTR           ;H 
5DA3  ff        MOV R7,A               ;H 
5DA4  90a073    MOV DPTR,# #0xA073     ;H dptr win: win-Ax (0xA073)
5DA7  e0        MOVX A,@DPTR           ;H 
5DA8  fd        MOV R5,A               ;H 
5DA9  22        RET                    ;H 

sub_5DAA:  ; H func, size~8
5DAA  f0        MOVX @DPTR,A           ;H 
5DAB  fc        MOV R4,A               ;H 
5DAC  75f012    MOV dir,# B, #0x12     ;H 
5DAF  e55e      MOV A,dir 0x5E         ;H 
5DB1  22        RET                    ;H 

sub_5DB2:  ; H func, size~8
5DB2  f0        MOVX @DPTR,A           ;H 
5DB3  fd        MOV R5,A               ;H 
5DB4  75f010    MOV dir,# B, #0x10     ;H 
5DB7  e55e      MOV A,dir 0x5E         ;H 
5DB9  22        RET                    ;H 

sub_5DBA:  ; M func, size~10
5DBA  f0        MOVX @DPTR,A           ;M 
5DBB  a3        INC DPTR               ;M 
5DBC  ef        MOV A,R7               ;M 
5DBD  f0        MOVX @DPTR,A           ;M 
5DBE  e4        CLR A                  ;M 
5DBF  a3        INC DPTR               ;M 
5DC0  f0        MOVX @DPTR,A           ;M 
5DC1  a3        INC DPTR               ;M 
5DC2  f0        MOVX @DPTR,A           ;M 
5DC3  22        RET                    ;M 

sub_5DC4:  ; M func, size~38
5DC4  120689    LCALL 0x0689           ;M 
5DC7  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
5DCA  f0        MOVX @DPTR,A           ;M 
5DCB  f4        CPL A                  ;M 
5DCC  909fa9    MOV DPTR,# #0x9FA9     ;M dptr win: win-9x (0x9FA9)
5DCF  6019      JZ 0x5DEA              ;M 
5DD1  e0        MOVX A,@DPTR           ;M 
5DD2  4404      ORL A,# #0x04          ;M 
5DD4  b1f6      ACALL 0x5DF6           ;M 
5DD6  124fb8    LCALL 0x4FB8           ;M 
5DD9  75f00a    MOV dir,# B, #0x0A     ;M 
5DDC  a4        MUL AB                 ;M 
5DDD  ff        MOV R7,A               ;M 
5DDE  909fa6    MOV DPTR,# #0x9FA6     ;M dptr win: win-9x (0x9FA6)
5DE1  e5f0      MOV A,dir B            ;M 
5DE3  f0        MOVX @DPTR,A           ;M 
5DE4  a3        INC DPTR               ;M 
5DE5  ef        MOV A,R7               ;M 
5DE6  f0        MOVX @DPTR,A           ;M 
5DE7  0278a7    LJMP 0x78A7            ;M 

sub_5DEA:  ; M func, size~12
5DEA  e0        MOVX A,@DPTR           ;M 
5DEB  54fb      ANL A,# #0xFB          ;M 
5DED  b1f6      ACALL 0x5DF6           ;M 
5DEF  b1bd      ACALL 0x5DBD           ;M 
5DF1  90015f    MOV DPTR,# #0x015F     ;M dptr win: MAC/reg-low (0x015F)
5DF4  f0        MOVX @DPTR,A           ;M 
5DF5  22        RET                    ;M 

sub_5DF6:  ; M func, size~9
5DF6  f0        MOVX @DPTR,A           ;M 
5DF7  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
5DFA  e0        MOVX A,@DPTR           ;M 
5DFB  909fa5    MOV DPTR,# #0x9FA5     ;M dptr win: win-9x (0x9FA5)
5DFE  22        RET                    ;M 

sub_5DFF:  ; M func, size~64
5DFF  d3        SETB C                 ;M 
5E00  10af01    JBC IE.7, 0x5E04       ;M 
5E03  c3        CLR C                  ;M 
5E04  c0d0      PUSH dir PSW           ;M 
5E06  90a190    MOV DPTR,# #0xA190     ;M dptr win: win-Ax (0xA190)
5E09  ee        MOV A,R6               ;M 
5E0A  b1ba      ACALL 0x5DBA           ;M 
5E0C  90a190    MOV DPTR,# #0xA190     ;M dptr win: win-Ax (0xA190)
5E0F  f181      ACALL 0x5F81           ;M 
5E11  e0        MOVX A,@DPTR           ;M 
5E12  6024      JZ 0x5E38              ;M 
5E14  c3        CLR C                  ;M 
5E15  90a193    MOV DPTR,# #0xA193     ;M dptr win: win-Ax (0xA193)
5E18  e0        MOVX A,@DPTR           ;M 
5E19  94e8      SUBB A,# #0xE8         ;M 
5E1B  90a192    MOV DPTR,# #0xA192     ;M dptr win: win-Ax (0xA192)
5E1E  e0        MOVX A,@DPTR           ;M 
5E1F  9403      SUBB A,# #0x03         ;M 
5E21  400b      JC 0x5E2E              ;M 
5E23  9001c0    MOV DPTR,# #0x01C0     ;M dptr win: MAC/reg-low (0x01C0)
5E26  e0        MOVX A,@DPTR           ;M 
5E27  4480      ORL A,# #0x80          ;M 
5E29  f0        MOVX @DPTR,A           ;M 
5E2A  7f00      MOV R7,# #0x00         ;M 
5E2C  800c      SJMP 0x5E3A            ;M 
5E2E  90a192    MOV DPTR,# #0xA192     ;M dptr win: win-Ax (0xA192)
5E31  125816    LCALL 0x5816           ;M 
5E34  f160      ACALL 0x5F60           ;M 
5E36  80d4      SJMP 0x5E0C            ;M 
5E38  7f01      MOV R7,# #0x01         ;M 
5E3A  d0d0      POP dir PSW            ;M 
5E3C  92af      MOV bit,C IE.7         ;M 
5E3E  22        RET                    ;M 

sub_5E3F:  ; M func, size~98
5E3F  d3        SETB C                 ;M 
5E40  10af01    JBC IE.7, 0x5E44       ;M 
5E43  c3        CLR C                  ;M 
5E44  c0d0      PUSH dir PSW           ;M 
5E46  90a198    MOV DPTR,# #0xA198     ;M dptr win: win-Ax (0xA198)
5E49  124908    LCALL 0x4908           ;M 
5E4C  7f96      MOV R7,# #0x96         ;M 
5E4E  7e02      MOV R6,# #0x02         ;M 
5E50  b1ff      ACALL 0x5DFF           ;M 
5E52  ef        MOV A,R7               ;M 
5E53  6047      JZ 0x5E9C              ;M 
5E55  900117    MOV DPTR,# #0x0117     ;M dptr win: MAC/reg-low (0x0117)
5E58  e0        MOVX A,@DPTR           ;M 
5E59  fe        MOV R6,A               ;M 
5E5A  900116    MOV DPTR,# #0x0116     ;M dptr win: MAC/reg-low (0x0116)
5E5D  f178      ACALL 0x5F78           ;M 
5E5F  fe        MOV R6,A               ;M 
5E60  f167      ACALL 0x5F67           ;M 
5E62  90a19b    MOV DPTR,# #0xA19B     ;M dptr win: win-Ax (0xA19B)
5E65  ef        MOV A,R7               ;M 
5E66  f0        MOVX @DPTR,A           ;M 
5E67  ee        MOV A,R6               ;M 
5E68  ff        MOV R7,A               ;M 
5E69  90fd11    MOV DPTR,# #0xFD11     ;M dptr win: win-Bx+ (0xFD11)
5E6C  f0        MOVX @DPTR,A           ;M 
5E6D  90a19b    MOV DPTR,# #0xA19B     ;M dptr win: win-Ax (0xA19B)
5E70  e0        MOVX A,@DPTR           ;M 
5E71  fd        MOV R5,A               ;M 
5E72  900294    MOV DPTR,# #0x0294     ;M dptr win: MAC/reg-low (0x0294)
5E75  f0        MOVX @DPTR,A           ;M 
5E76  a3        INC DPTR               ;M 
5E77  ef        MOV A,R7               ;M 
5E78  f0        MOVX @DPTR,A           ;M 
5E79  90a198    MOV DPTR,# #0xA198     ;M dptr win: win-Ax (0xA198)
5E7C  f16f      ACALL 0x5F6F           ;M 
5E7E  2402      ADD A,# #0x02          ;M 
5E80  ff        MOV R7,A               ;M 
5E81  e4        CLR A                  ;M 
5E82  33        RLC A                  ;M 
5E83  fe        MOV R6,A               ;M 
5E84  d1a1      ACALL 0x5EA1           ;M 
5E86  90a19b    MOV DPTR,# #0xA19B     ;M dptr win: win-Ax (0xA19B)
5E89  e0        MOVX A,@DPTR           ;M 
5E8A  2418      ADD A,# #0x18          ;M 
5E8C  ff        MOV R7,A               ;M 
5E8D  90a198    MOV DPTR,# #0xA198     ;M dptr win: win-Ax (0xA198)
5E90  1248ff    LCALL 0x48FF           ;M 
5E93  12b271    LCALL 0xB271           ;M 
5E96  900296    MOV DPTR,# #0x0296     ;M dptr win: MAC/reg-low (0x0296)
5E99  7401      MOV A,# #0x01          ;M 
5E9B  f0        MOVX @DPTR,A           ;M 
5E9C  d0d0      POP dir PSW            ;M 
5E9E  92af      MOV bit,C IE.7         ;M 
5EA0  22        RET                    ;M 

sub_5EA1:  ; M func, size~81
5EA1  e4        CLR A                  ;M 
5EA2  fc        MOV R4,A               ;M 
5EA3  ed        MOV A,R5               ;M 
5EA4  2c        ADD A,R4               ;M 
5EA5  2400      ADD A,# #0x00          ;M 
5EA7  d1f2      ACALL 0x5EF2           ;M 
5EA9  e4        CLR A                  ;M 
5EAA  f0        MOVX @DPTR,A           ;M 
5EAB  0c        INC R4                 ;M 
5EAC  ec        MOV A,R4               ;M 
5EAD  b418f3    CJNE A,# #0x18, 0x5EA3 ;M 
5EB0  7400      MOV A,# #0x00          ;M 
5EB2  2d        ADD A,R5               ;M 
5EB3  d1f2      ACALL 0x5EF2           ;M 
5EB5  ef        MOV A,R7               ;M 
5EB6  f0        MOVX @DPTR,A           ;M 
5EB7  ee        MOV A,R6               ;M 
5EB8  543f      ANL A,# #0x3F          ;M 
5EBA  ff        MOV R7,A               ;M 
5EBB  7401      MOV A,# #0x01          ;M 
5EBD  2d        ADD A,R5               ;M 
5EBE  f582      MOV dir,A DPL          ;M 
5EC0  e4        CLR A                  ;M 
5EC1  34fb      ADDC A,# #0xFB         ;M 
5EC3  f583      MOV dir,A DPH          ;M 
5EC5  ef        MOV A,R7               ;M 
5EC6  f0        MOVX @DPTR,A           ;M 
5EC7  7402      MOV A,# #0x02          ;M 
5EC9  2d        ADD A,R5               ;M 
5ECA  f582      MOV dir,A DPL          ;M 
5ECC  e4        CLR A                  ;M 
5ECD  34fb      ADDC A,# #0xFB         ;M 
5ECF  f583      MOV dir,A DPH          ;M 
5ED1  e0        MOVX A,@DPTR           ;M 
5ED2  54f0      ANL A,# #0xF0          ;M 
5ED4  f0        MOVX @DPTR,A           ;M 
5ED5  7403      MOV A,# #0x03          ;M 
5ED7  2d        ADD A,R5               ;M 
5ED8  f582      MOV dir,A DPL          ;M 
5EDA  e4        CLR A                  ;M 
5EDB  34fb      ADDC A,# #0xFB         ;M 
5EDD  f583      MOV dir,A DPH          ;M 
5EDF  e0        MOVX A,@DPTR           ;M 
5EE0  4480      ORL A,# #0x80          ;M 
5EE2  f0        MOVX @DPTR,A           ;M 
5EE3  740b      MOV A,# #0x0B          ;M 
5EE5  2d        ADD A,R5               ;M 
5EE6  f582      MOV dir,A DPL          ;M 
5EE8  e4        CLR A                  ;M 
5EE9  34fb      ADDC A,# #0xFB         ;M 
5EEB  f583      MOV dir,A DPH          ;M 
5EED  e0        MOVX A,@DPTR           ;M 
5EEE  4410      ORL A,# #0x10          ;M 
5EF0  f0        MOVX @DPTR,A           ;M 
5EF1  22        RET                    ;M 

sub_5EF2:  ; M func, size~8
5EF2  f582      MOV dir,A DPL          ;M 
5EF4  e4        CLR A                  ;M 
5EF5  34fb      ADDC A,# #0xFB         ;M 
5EF7  f583      MOV dir,A DPH          ;M 
5EF9  22        RET                    ;M 

sub_5EFA:  ; M func, size~101
5EFA  d3        SETB C                 ;M 
5EFB  10af01    JBC IE.7, 0x5EFF       ;M 
5EFE  c3        CLR C                  ;M 
5EFF  c0d0      PUSH dir PSW           ;M 
5F01  e4        CLR A                  ;M 
5F02  ff        MOV R7,A               ;M 
5F03  909e33    MOV DPTR,# #0x9E33     ;M dptr win: win-9x (0x9E33)
5F06  e0        MOVX A,@DPTR           ;M 
5F07  fe        MOV R6,A               ;M 
5F08  909e32    MOV DPTR,# #0x9E32     ;M dptr win: win-9x (0x9E32)
5F0B  e0        MOVX A,@DPTR           ;M 
5F0C  fd        MOV R5,A               ;M 
5F0D  b50604    CJNE A,dir 0x06, 0x5F14 ;M 
5F10  7e01      MOV R6,# #0x01         ;M 
5F12  8002      SJMP 0x5F16            ;M 
5F14  7e00      MOV R6,# #0x00         ;M 
5F16  ee        MOV A,R6               ;M 
5F17  6401      XRL A,# #0x01          ;M 
5F19  603f      JZ 0x5F5A              ;M 
5F1B  ed        MOV A,R5               ;M 
5F1C  f194      ACALL 0x5F94           ;M 
5F1E  fa        MOV R2,A               ;M 
5F1F  7b01      MOV R3,# #0x01         ;M 
5F21  d13f      ACALL 0x5E3F           ;M 
5F23  7f01      MOV R7,# #0x01         ;M 
5F25  ef        MOV A,R7               ;M 
5F26  6032      JZ 0x5F5A              ;M 
5F28  909e32    MOV DPTR,# #0x9E32     ;M dptr win: win-9x (0x9E32)
5F2B  e0        MOVX A,@DPTR           ;M 
5F2C  04        INC A                  ;M 
5F2D  f0        MOVX @DPTR,A           ;M 
5F2E  e0        MOVX A,@DPTR           ;M 
5F2F  b40a02    CJNE A,# #0x0A, 0x5F34 ;M 
5F32  8002      SJMP 0x5F36            ;M 
5F34  7f00      MOV R7,# #0x00         ;M 
5F36  ef        MOV A,R7               ;M 
5F37  6005      JZ 0x5F3E              ;M 
5F39  e4        CLR A                  ;M 
5F3A  909e32    MOV DPTR,# #0x9E32     ;M dptr win: win-9x (0x9E32)
5F3D  f0        MOVX @DPTR,A           ;M 
5F3E  909e33    MOV DPTR,# #0x9E33     ;M dptr win: win-9x (0x9E33)
5F41  e0        MOVX A,@DPTR           ;M 
5F42  ff        MOV R7,A               ;M 
5F43  909e32    MOV DPTR,# #0x9E32     ;M dptr win: win-9x (0x9E32)
5F46  e0        MOVX A,@DPTR           ;M 
5F47  b50704    CJNE A,dir 0x07, 0x5F4E ;M 
5F4A  7f01      MOV R7,# #0x01         ;M 
5F4C  8002      SJMP 0x5F50            ;M 
5F4E  7f00      MOV R7,# #0x00         ;M 
5F50  ef        MOV A,R7               ;M 
5F51  7007      JNZ 0x5F5A             ;M 
5F53  909d01    MOV DPTR,# #0x9D01     ;M dptr win: win-9x (0x9D01)
5F56  e0        MOVX A,@DPTR           ;M 
5F57  4404      ORL A,# #0x04          ;M 
5F59  f0        MOVX @DPTR,A           ;M 
5F5A  d0d0      POP dir PSW            ;M 
5F5C  92af      MOV bit,C IE.7         ;M 
5F5E  22        RET                    ;M 

sub_5F5F:  ; M func, size~8
5F5F  f0        MOVX @DPTR,A           ;M 
5F60  7f0a      MOV R7,# #0x0A         ;M 
5F62  7e00      MOV R6,# #0x00         ;M 
5F64  023e87    LJMP 0x3E87            ;M 

sub_5F67:  ; M func, size~9
5F67  ef        MOV A,R7               ;M 
5F68  2401      ADD A,# #0x01          ;M 
5F6A  ff        MOV R7,A               ;M 
5F6B  e4        CLR A                  ;M 
5F6C  3e        ADDC A,R6              ;M 
5F6D  fe        MOV R6,A               ;M 
5F6E  22        RET                    ;M 
5F6F  .db 12

sub_5F70:  ; M func, size~8
5F70  48        ORL A,R0               ;M 
5F71  ff        MOV R7,A               ;M 
5F72  90000e    MOV DPTR,# #0x000E     ;M dptr win: MAC/reg-low (0x000E)
5F75  0206a2    LJMP 0x06A2            ;M 

sub_5F78:  ; M func, size~9
5F78  e0        MOVX A,@DPTR           ;M 
5F79  7c00      MOV R4,# #0x00         ;M 
5F7B  2400      ADD A,# #0x00          ;M 
5F7D  ff        MOV R7,A               ;M 
5F7E  ec        MOV A,R4               ;M 
5F7F  3e        ADDC A,R6              ;M 
5F80  22        RET                    ;M 

sub_5F81:  ; M func, size~9
5F81  e0        MOVX A,@DPTR           ;M 
5F82  fe        MOV R6,A               ;M 
5F83  a3        INC DPTR               ;M 
5F84  e0        MOVX A,@DPTR           ;M 
5F85  f582      MOV dir,A DPL          ;M 
5F87  8e83      MOV dir,R6 DPH         ;M 
5F89  22        RET                    ;M 

sub_5F8A:  ; H func, size~10
5F8A  e0        MOVX A,@DPTR           ;H 
5F8B  90a06d    MOV DPTR,# #0xA06D     ;H dptr win: win-Ax (0xA06D)
5F8E  f0        MOVX @DPTR,A           ;H 
5F8F  e0        MOVX A,@DPTR           ;H 
5F90  ff        MOV R7,A               ;H 
5F91  547f      ANL A,# #0x7F          ;H 
5F93  22        RET                    ;H 

sub_5F94:  ; M func, size~12
5F94  75f00f    MOV dir,# B, #0x0F     ;M 
5F97  a4        MUL AB                 ;M 
5F98  249c      ADD A,# #0x9C          ;M 
5F9A  f9        MOV R1,A               ;M 
5F9B  749d      MOV A,# #0x9D          ;M 
5F9D  35f0      ADDC A,dir B           ;M 
5F9F  22        RET                    ;M 

sub_5FA0:  ; M func, size~24
5FA0  90019a    MOV DPTR,# #0x019A     ;M dptr win: MAC/reg-low (0x019A)
5FA3  e0        MOVX A,@DPTR           ;M 
5FA4  54c0      ANL A,# #0xC0          ;M 
5FA6  440b      ORL A,# #0x0B          ;M 
5FA8  f15f      ACALL 0x5F5F           ;M 
5FAA  900198    MOV DPTR,# #0x0198     ;M dptr win: MAC/reg-low (0x0198)
5FAD  e0        MOVX A,@DPTR           ;M 
5FAE  54c0      ANL A,# #0xC0          ;M 
5FB0  7f00      MOV R7,# #0x00         ;M 
5FB2  b44002    CJNE A,# #0x40, 0x5FB7 ;M 
5FB5  7f01      MOV R7,# #0x01         ;M 
5FB7  22        RET                    ;M 

sub_5FB8:  ; M func, size~29
5FB8  900101    MOV DPTR,# #0x0101     ;M dptr win: MAC/reg-low (0x0101)
5FBB  e0        MOVX A,@DPTR           ;M 
5FBC  4404      ORL A,# #0x04          ;M 
5FBE  f0        MOVX @DPTR,A           ;M 
5FBF  90019a    MOV DPTR,# #0x019A     ;M dptr win: MAC/reg-low (0x019A)
5FC2  e0        MOVX A,@DPTR           ;M 
5FC3  54c0      ANL A,# #0xC0          ;M 
5FC5  f15f      ACALL 0x5F5F           ;M 
5FC7  900199    MOV DPTR,# #0x0199     ;M dptr win: MAC/reg-low (0x0199)
5FCA  e0        MOVX A,@DPTR           ;M 
5FCB  44c0      ORL A,# #0xC0          ;M 
5FCD  f0        MOVX @DPTR,A           ;M 
5FCE  90019b    MOV DPTR,# #0x019B     ;M dptr win: MAC/reg-low (0x019B)
5FD1  7480      MOV A,# #0x80          ;M 
5FD3  f0        MOVX @DPTR,A           ;M 
5FD4  22        RET                    ;M 

sub_5FD5:  ; M func, size~55
5FD5  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
5FD8  124908    LCALL 0x4908           ;M 
5FDB  90a05f    MOV DPTR,# #0xA05F     ;M dptr win: win-Ax (0xA05F)
5FDE  740a      MOV A,# #0x0A          ;M 
5FE0  f0        MOVX @DPTR,A           ;M 
5FE1  90a06d    MOV DPTR,# #0xA06D     ;M dptr win: win-Ax (0xA06D)
5FE4  7406      MOV A,# #0x06          ;M 
5FE6  f0        MOVX @DPTR,A           ;M 
5FE7  e4        CLR A                  ;M 
5FE8  ff        MOV R7,A               ;M 
5FE9  1256c5    LCALL 0x56C5           ;M 
5FEC  8f82      MOV dir,R7 DPL         ;M 
5FEE  1257b0    LCALL 0x57B0           ;M 
5FF1  fe        MOV R6,A               ;M 
5FF2  7461      MOV A,# #0x61          ;M 
5FF4  2f        ADD A,R7               ;M 
5FF5  f582      MOV dir,A DPL          ;M 
5FF7  e4        CLR A                  ;M 
5FF8  34a0      ADDC A,# #0xA0         ;M 
5FFA  f583      MOV dir,A DPH          ;M 
5FFC  ee        MOV A,R6               ;M 
5FFD  f0        MOVX @DPTR,A           ;M 
5FFE  0f        INC R7                 ;M 
5FFF  ef        MOV A,R7               ;M 
6000  b406e6    CJNE A,# #0x06, 0x5FE9 ;M 
6003  7b01      MOV R3,# #0x01         ;M 
6005  7aa0      MOV R2,# #0xA0         ;M 
6007  795f      MOV R1,# #0x5F         ;M 
6009  025575    LJMP 0x5575            ;M 

sub_600C:  ; M func, size~97
600C  90a09b    MOV DPTR,# #0xA09B     ;M dptr win: win-Ax (0xA09B)
600F  ec        MOV A,R4               ;M 
6010  91c3      ACALL 0x64C3           ;M 
6012  90a09b    MOV DPTR,# #0xA09B     ;M dptr win: win-Ax (0xA09B)
6015  e0        MOVX A,@DPTR           ;M 
6016  fc        MOV R4,A               ;M 
6017  a3        INC DPTR               ;M 
6018  e0        MOVX A,@DPTR           ;M 
6019  fd        MOV R5,A               ;M 
601A  126796    LCALL 0x6796           ;M 
601D  90a09b    MOV DPTR,# #0xA09B     ;M dptr win: win-Ax (0xA09B)
6020  a3        INC DPTR               ;M 
6021  e0        MOVX A,@DPTR           ;M 
6022  ff        MOV R7,A               ;M 
6023  fd        MOV R5,A               ;M 
6024  240d      ADD A,# #0x0D          ;M 
6026  3181      ACALL 0x6181           ;M 
6028  4480      ORL A,# #0x80          ;M 
602A  f0        MOVX @DPTR,A           ;M 
602B  740d      MOV A,# #0x0D          ;M 
602D  2d        ADD A,R5               ;M 
602E  3181      ACALL 0x6181           ;M 
6030  54ef      ANL A,# #0xEF          ;M 
6032  f0        MOVX @DPTR,A           ;M 
6033  7412      MOV A,# #0x12          ;M 
6035  2f        ADD A,R7               ;M 
6036  1170      ACALL 0x6070           ;M 
6038  e0        MOVX A,@DPTR           ;M 
6039  4402      ORL A,# #0x02          ;M 
603B  f0        MOVX @DPTR,A           ;M 
603C  7412      MOV A,# #0x12          ;M 
603E  2f        ADD A,R7               ;M 
603F  1170      ACALL 0x6070           ;M 
6041  e0        MOVX A,@DPTR           ;M 
6042  5403      ANL A,# #0x03          ;M 
6044  f0        MOVX @DPTR,A           ;M 
6045  90a09d    MOV DPTR,# #0xA09D     ;M dptr win: win-Ax (0xA09D)
6048  e0        MOVX A,@DPTR           ;M 
6049  ff        MOV R7,A               ;M 
604A  90a09b    MOV DPTR,# #0xA09B     ;M dptr win: win-Ax (0xA09B)
604D  a3        INC DPTR               ;M 
604E  e0        MOVX A,@DPTR           ;M 
604F  fe        MOV R6,A               ;M 
6050  242a      ADD A,# #0x2A          ;M 
6052  91cb      ACALL 0x64CB           ;M 
6054  90a09e    MOV DPTR,# #0xA09E     ;M dptr win: win-Ax (0xA09E)
6057  e0        MOVX A,@DPTR           ;M 
6058  ff        MOV R7,A               ;M 
6059  742b      MOV A,# #0x2B          ;M 
605B  2e        ADD A,R6               ;M 
605C  f15f      ACALL 0x675F           ;M 
605E  742c      MOV A,# #0x2C          ;M 
6060  2e        ADD A,R6               ;M 
6061  f582      MOV dir,A DPL          ;M 
6063  e4        CLR A                  ;M 
6064  34fc      ADDC A,# #0xFC         ;M 
6066  f583      MOV dir,A DPH          ;M 
6068  e0        MOVX A,@DPTR           ;M 
6069  2402      ADD A,# #0x02          ;M 
606B  f0        MOVX @DPTR,A           ;M 
606C  22        RET                    ;M 

sub_606D:  ; M func, size~10
606D  7412      MOV A,# #0x12          ;M 
606F  2e        ADD A,R6               ;M 
6070  f582      MOV dir,A DPL          ;M 
6072  e4        CLR A                  ;M 
6073  34fc      ADDC A,# #0xFC         ;M 
6075  f583      MOV dir,A DPH          ;M 

sub_6077:  ; H func, size~1
6077  22        RET                    ;H 
6078  .db D3 10 AF 01 C3 C0

sub_607E:  ; H func, size~4
607E  d090      POP dir P1             ;H 
6080  a19d      AJMP 0x659D            ;H 

sub_6082:  ; M func, size~156
6082  ed        MOV A,R5               ;M 
6083  f0        MOVX @DPTR,A           ;M 
6084  a3        INC DPTR               ;M 
6085  eb        MOV A,R3               ;M 
6086  f0        MOVX @DPTR,A           ;M 
6087  90a19c    MOV DPTR,# #0xA19C     ;M dptr win: win-Ax (0xA19C)
608A  ef        MOV A,R7               ;M 
608B  f0        MOVX @DPTR,A           ;M 
608C  e4        CLR A                  ;M 
608D  fd        MOV R5,A               ;M 
608E  fc        MOV R4,A               ;M 
608F  f11c      ACALL 0x671C           ;M 
6091  7c00      MOV R4,# #0x00         ;M 
6093  ad07      MOV R5,dir 0x07        ;M 
6095  90a19c    MOV DPTR,# #0xA19C     ;M dptr win: win-Ax (0xA19C)
6098  e0        MOVX A,@DPTR           ;M 
6099  900425    MOV DPTR,# #0x0425     ;M dptr win: RAM/table (0x0425)
609C  f0        MOVX @DPTR,A           ;M 
609D  90a19d    MOV DPTR,# #0xA19D     ;M dptr win: win-Ax (0xA19D)
60A0  e0        MOVX A,@DPTR           ;M 
60A1  6005      JZ 0x60A8              ;M 
60A3  5104      ACALL 0x6204           ;M 
60A5  4480      ORL A,# #0x80          ;M 
60A7  f0        MOVX @DPTR,A           ;M 
60A8  af05      MOV R7,dir 0x05        ;M 
60AA  7420      MOV A,# #0x20          ;M 
60AC  2f        ADD A,R7               ;M 
60AD  f582      MOV dir,A DPL          ;M 
60AF  e4        CLR A                  ;M 
60B0  34fc      ADDC A,# #0xFC         ;M 
60B2  f583      MOV dir,A DPH          ;M 
60B4  e0        MOVX A,@DPTR           ;M 
60B5  54c0      ANL A,# #0xC0          ;M 
60B7  f0        MOVX @DPTR,A           ;M 
60B8  5104      ACALL 0x6204           ;M 
60BA  54c0      ANL A,# #0xC0          ;M 
60BC  f0        MOVX @DPTR,A           ;M 
60BD  90a19f    MOV DPTR,# #0xA19F     ;M dptr win: win-Ax (0xA19F)
60C0  e0        MOVX A,@DPTR           ;M 
60C1  ff        MOV R7,A               ;M 
60C2  ae05      MOV R6,dir 0x05        ;M 
60C4  7418      MOV A,# #0x18          ;M 
60C6  2e        ADD A,R6               ;M 
60C7  f582      MOV dir,A DPL          ;M 
60C9  e4        CLR A                  ;M 
60CA  34fc      ADDC A,# #0xFC         ;M 
60CC  f583      MOV dir,A DPH          ;M 
60CE  ef        MOV A,R7               ;M 
60CF  f0        MOVX @DPTR,A           ;M 
60D0  116d      ACALL 0x606D           ;M 
60D2  e0        MOVX A,@DPTR           ;M 
60D3  20e115    JB ACC.1, 0x60EB       ;M 
60D6  5401      ANL A,# #0x01          ;M 
60D8  ff        MOV R7,A               ;M 
60D9  90a19e    MOV DPTR,# #0xA19E     ;M dptr win: win-Ax (0xA19E)
60DC  e0        MOVX A,@DPTR           ;M 
60DD  25e0      ADD A,dir ACC          ;M 
60DF  25e0      ADD A,dir ACC          ;M 
60E1  fb        MOV R3,A               ;M 
60E2  ef        MOV A,R7               ;M 
60E3  4402      ORL A,# #0x02          ;M 
60E5  4b        ORL A,R3               ;M 
60E6  ff        MOV R7,A               ;M 
60E7  116d      ACALL 0x606D           ;M 
60E9  ef        MOV A,R7               ;M 
60EA  f0        MOVX @DPTR,A           ;M 
60EB  af05      MOV R7,dir 0x05        ;M 
60ED  7411      MOV A,# #0x11          ;M 
60EF  2f        ADD A,R7               ;M 
60F0  91ba      ACALL 0x64BA           ;M 
60F2  74ff      MOV A,# #0xFF          ;M 
60F4  f0        MOVX @DPTR,A           ;M 
60F5  7429      MOV A,# #0x29          ;M 
60F7  2f        ADD A,R7               ;M 
60F8  91d8      ACALL 0x64D8           ;M 
60FA  54f7      ANL A,# #0xF7          ;M 
60FC  f0        MOVX @DPTR,A           ;M 
60FD  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
6100  e0        MOVX A,@DPTR           ;M 
6101  30e00c    JNB ACC.0, 0x6110      ;M 
6104  31f8      ACALL 0x61F8           ;M 
6106  4480      ORL A,# #0x80          ;M 
6108  f0        MOVX @DPTR,A           ;M 
6109  900512    MOV DPTR,# #0x0512     ;M dptr win: RAM/table (0x0512)
610C  e4        CLR A                  ;M 
610D  f0        MOVX @DPTR,A           ;M 
610E  8005      SJMP 0x6115            ;M 
6110  31f8      ACALL 0x61F8           ;M 
6112  547f      ANL A,# #0x7F          ;M 
6114  f0        MOVX @DPTR,A           ;M 
6115  ae04      MOV R6,dir 0x04        ;M 
6117  af05      MOV R7,dir 0x05        ;M 
6119  d0d0      POP dir PSW            ;M 
611B  92af      MOV bit,C IE.7         ;M 
611D  22        RET                    ;M 

sub_611E:  ; M func, size~56
611E  90a094    MOV DPTR,# #0xA094     ;M dptr win: win-Ax (0xA094)
6121  91c2      ACALL 0x64C2           ;M 
6123  90041d    MOV DPTR,# #0x041D     ;M dptr win: RAM/table (0x041D)
6126  e0        MOVX A,@DPTR           ;M 
6127  6025      JZ 0x614E              ;M 
6129  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
612C  e0        MOVX A,@DPTR           ;M 
612D  90a099    MOV DPTR,# #0xA099     ;M dptr win: win-Ax (0xA099)
6130  f0        MOVX @DPTR,A           ;M 
6131  7b01      MOV R3,# #0x01         ;M 
6133  12581d    LCALL 0x581D           ;M 
6136  ef        MOV A,R7               ;M 
6137  6401      XRL A,# #0x01          ;M 
6139  7005      JNZ 0x6140             ;M 
613B  3156      ACALL 0x6156           ;M 
613D  f0        MOVX @DPTR,A           ;M 
613E  110c      ACALL 0x600C           ;M 
6140  90a099    MOV DPTR,# #0xA099     ;M dptr win: win-Ax (0xA099)
6143  e0        MOVX A,@DPTR           ;M 
6144  fd        MOV R5,A               ;M 
6145  7b02      MOV R3,# #0x02         ;M 
6147  e4        CLR A                  ;M 
6148  ff        MOV R7,A               ;M 
6149  1258a7    LCALL 0x58A7           ;M 
614C  8005      SJMP 0x6153            ;M 
614E  3156      ACALL 0x6156           ;M 
6150  f0        MOVX @DPTR,A           ;M 
6151  110c      ACALL 0x600C           ;M 
6153  0287d8    LJMP 0x87D8            ;M 

sub_6156:  ; M func, size~43
6156  909d47    MOV DPTR,# #0x9D47     ;M dptr win: win-9x (0x9D47)
6159  e0        MOVX A,@DPTR           ;M 
615A  ff        MOV R7,A               ;M 
615B  90a19f    MOV DPTR,# #0xA19F     ;M dptr win: win-Ax (0xA19F)
615E  7401      MOV A,# #0x01          ;M 
6160  f0        MOVX @DPTR,A           ;M 
6161  7b08      MOV R3,# #0x08         ;M 
6163  fd        MOV R5,A               ;M 
6164  1178      ACALL 0x6078           ;M 
6166  90a097    MOV DPTR,# #0xA097     ;M dptr win: win-Ax (0xA097)
6169  ee        MOV A,R6               ;M 
616A  f0        MOVX @DPTR,A           ;M 
616B  fc        MOV R4,A               ;M 
616C  a3        INC DPTR               ;M 
616D  ef        MOV A,R7               ;M 
616E  f0        MOVX @DPTR,A           ;M 
616F  fd        MOV R5,A               ;M 
6170  90a094    MOV DPTR,# #0xA094     ;M dptr win: win-Ax (0xA094)
6173  e0        MOVX A,@DPTR           ;M 
6174  ff        MOV R7,A               ;M 
6175  a3        INC DPTR               ;M 
6176  e0        MOVX A,@DPTR           ;M 
6177  fb        MOV R3,A               ;M 
6178  a3        INC DPTR               ;M 
6179  e0        MOVX A,@DPTR           ;M 
617A  90a09e    MOV DPTR,# #0xA09E     ;M dptr win: win-Ax (0xA09E)
617D  22        RET                    ;M 
617E  .db 74 0D 2C

sub_6181:  ; H func, size~9
6181  f582      MOV dir,A DPL          ;H 
6183  e4        CLR A                  ;H 
6184  34fc      ADDC A,# #0xFC         ;H 
6186  f583      MOV dir,A DPH          ;H 
6188  e0        MOVX A,@DPTR           ;H 
6189  22        RET                    ;H 

sub_618A:  ; M func, size~99
618A  90a17d    MOV DPTR,# #0xA17D     ;M dptr win: win-Ax (0xA17D)
618D  e0        MOVX A,@DPTR           ;M 
618E  fe        MOV R6,A               ;M 
618F  a3        INC DPTR               ;M 
6190  e0        MOVX A,@DPTR           ;M 
6191  ff        MOV R7,A               ;M 
6192  908100    MOV DPTR,# #0x8100     ;M dptr win: win-8x (0x8100)
6195  e0        MOVX A,@DPTR           ;M 
6196  540f      ANL A,# #0x0F          ;M 
6198  fd        MOV R5,A               ;M 
6199  ac07      MOV R4,dir 0x07        ;M 
619B  317e      ACALL 0x617E           ;M 
619D  4401      ORL A,# #0x01          ;M 
619F  f0        MOVX @DPTR,A           ;M 
61A0  317e      ACALL 0x617E           ;M 
61A2  54fb      ANL A,# #0xFB          ;M 
61A4  f0        MOVX @DPTR,A           ;M 
61A5  ac07      MOV R4,dir 0x07        ;M 
61A7  7412      MOV A,# #0x12          ;M 
61A9  2c        ADD A,R4               ;M 
61AA  1170      ACALL 0x6070           ;M 
61AC  e0        MOVX A,@DPTR           ;M 
61AD  44fa      ORL A,# #0xFA          ;M 
61AF  f0        MOVX @DPTR,A           ;M 
61B0  7411      MOV A,# #0x11          ;M 
61B2  2c        ADD A,R4               ;M 
61B3  91ba      ACALL 0x64BA           ;M 
61B5  e0        MOVX A,@DPTR           ;M 
61B6  441f      ORL A,# #0x1F          ;M 
61B8  f0        MOVX @DPTR,A           ;M 
61B9  ac07      MOV R4,dir 0x07        ;M 
61BB  7406      MOV A,# #0x06          ;M 
61BD  2c        ADD A,R4               ;M 
61BE  f582      MOV dir,A DPL          ;M 
61C0  e4        CLR A                  ;M 
61C1  34fc      ADDC A,# #0xFC         ;M 
61C3  f583      MOV dir,A DPH          ;M 
61C5  e0        MOVX A,@DPTR           ;M 
61C6  440e      ORL A,# #0x0E          ;M 
61C8  f0        MOVX @DPTR,A           ;M 
61C9  9004a7    MOV DPTR,# #0x04A7     ;M dptr win: RAM/table (0x04A7)
61CC  e4        CLR A                  ;M 
61CD  f0        MOVX @DPTR,A           ;M 
61CE  9004a6    MOV DPTR,# #0x04A6     ;M dptr win: RAM/table (0x04A6)
61D1  f0        MOVX @DPTR,A           ;M 
61D2  9004a5    MOV DPTR,# #0x04A5     ;M dptr win: RAM/table (0x04A5)
61D5  74ff      MOV A,# #0xFF          ;M 
61D7  f0        MOVX @DPTR,A           ;M 
61D8  9004a4    MOV DPTR,# #0x04A4     ;M dptr win: RAM/table (0x04A4)
61DB  74fd      MOV A,# #0xFD          ;M 
61DD  f0        MOVX @DPTR,A           ;M 
61DE  7414      MOV A,# #0x14          ;M 
61E0  2c        ADD A,R4               ;M 
61E1  31f0      ACALL 0x61F0           ;M 
61E3  e0        MOVX A,@DPTR           ;M 
61E4  54c0      ANL A,# #0xC0          ;M 
61E6  4d        ORL A,R5               ;M 
61E7  fd        MOV R5,A               ;M 
61E8  31ed      ACALL 0x61ED           ;M 
61EA  ed        MOV A,R5               ;M 
61EB  f0        MOVX @DPTR,A           ;M 
61EC  22        RET                    ;M 

sub_61ED:  ; M func, size~11
61ED  7414      MOV A,# #0x14          ;M 
61EF  2f        ADD A,R7               ;M 
61F0  f582      MOV dir,A DPL          ;M 
61F2  e4        CLR A                  ;M 
61F3  34fc      ADDC A,# #0xFC         ;M 
61F5  f583      MOV dir,A DPH          ;M 
61F7  22        RET                    ;M 

sub_61F8:  ; M func, size~12
61F8  7405      MOV A,# #0x05          ;M 
61FA  2d        ADD A,R5               ;M 
61FB  f582      MOV dir,A DPL          ;M 
61FD  e4        CLR A                  ;M 
61FE  34fc      ADDC A,# #0xFC         ;M 
6200  f583      MOV dir,A DPH          ;M 
6202  e0        MOVX A,@DPTR           ;M 
6203  22        RET                    ;M 

sub_6204:  ; M func, size~12
6204  7421      MOV A,# #0x21          ;M 
6206  2f        ADD A,R7               ;M 
6207  f582      MOV dir,A DPL          ;M 
6209  e4        CLR A                  ;M 
620A  34fc      ADDC A,# #0xFC         ;M 
620C  f583      MOV dir,A DPH          ;M 
620E  e0        MOVX A,@DPTR           ;M 
620F  22        RET                    ;M 

sub_6210:  ; M func, size~60
6210  d3        SETB C                 ;M 
6211  10af01    JBC IE.7, 0x6215       ;M 
6214  c3        CLR C                  ;M 
6215  c0d0      PUSH dir PSW           ;M 
6217  90a1a8    MOV DPTR,# #0xA1A8     ;M dptr win: win-Ax (0xA1A8)
621A  ef        MOV A,R7               ;M 
621B  f0        MOVX @DPTR,A           ;M 
621C  90041d    MOV DPTR,# #0x041D     ;M dptr win: RAM/table (0x041D)
621F  e0        MOVX A,@DPTR           ;M 
6220  6020      JZ 0x6242              ;M 
6222  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
6225  e0        MOVX A,@DPTR           ;M 
6226  90a1ab    MOV DPTR,# #0xA1AB     ;M dptr win: win-Ax (0xA1AB)
6229  f0        MOVX @DPTR,A           ;M 
622A  7b29      MOV R3,# #0x29         ;M 
622C  12581d    LCALL 0x581D           ;M 
622F  bf0102    CJNE R7,# #0x01, 0x6234 ;M 
6232  514c      ACALL 0x624C           ;M 
6234  90a1ab    MOV DPTR,# #0xA1AB     ;M dptr win: win-Ax (0xA1AB)
6237  e0        MOVX A,@DPTR           ;M 
6238  fd        MOV R5,A               ;M 
6239  7b2a      MOV R3,# #0x2A         ;M 
623B  e4        CLR A                  ;M 
623C  ff        MOV R7,A               ;M 
623D  1258a7    LCALL 0x58A7           ;M 
6240  8002      SJMP 0x6244            ;M 
6242  514c      ACALL 0x624C           ;M 
6244  1287d8    LCALL 0x87D8           ;M 
6247  d0d0      POP dir PSW            ;M 
6249  92af      MOV bit,C IE.7         ;M 
624B  22        RET                    ;M 

sub_624C:  ; M func, size~74
624C  909d46    MOV DPTR,# #0x9D46     ;M dptr win: win-9x (0x9D46)
624F  e0        MOVX A,@DPTR           ;M 
6250  ff        MOV R7,A               ;M 
6251  90a19f    MOV DPTR,# #0xA19F     ;M dptr win: win-Ax (0xA19F)
6254  740b      MOV A,# #0x0B          ;M 
6256  f0        MOVX @DPTR,A           ;M 
6257  7b08      MOV R3,# #0x08         ;M 
6259  7d01      MOV R5,# #0x01         ;M 
625B  1178      ACALL 0x6078           ;M 
625D  90a1a9    MOV DPTR,# #0xA1A9     ;M dptr win: win-Ax (0xA1A9)
6260  ee        MOV A,R6               ;M 
6261  f0        MOVX @DPTR,A           ;M 
6262  fc        MOV R4,A               ;M 
6263  a3        INC DPTR               ;M 
6264  ef        MOV A,R7               ;M 
6265  f0        MOVX @DPTR,A           ;M 
6266  fd        MOV R5,A               ;M 
6267  90a1a8    MOV DPTR,# #0xA1A8     ;M dptr win: win-Ax (0xA1A8)
626A  e0        MOVX A,@DPTR           ;M 
626B  ff        MOV R7,A               ;M 
626C  026796    LJMP 0x6796            ;M 
626F  .db D3 10 AF 01 C3 C0 D0 90 A0 A5 EF F0 A3 EC F0 A3
627F  .db ED F0 90 04 1D E0 60 23 90 05 22 E0 90 A0 AA F0
628F  .db 7B 36 12 58 1D BF 01

sub_6296:  ; H func, size~42
6296  0551      INC 0x51               ;H 
6298  c0fd      PUSH dir 0xFD          ;H 
629A  51e1      ACALL 0x62E1           ;H 
629C  90a0aa    MOV DPTR,# #0xA0AA     ;H dptr win: win-Ax (0xA0AA)
629F  e0        MOVX A,@DPTR           ;H 
62A0  fd        MOV R5,A               ;H 
62A1  7b37      MOV R3,# #0x37         ;H 
62A3  e4        CLR A                  ;H 
62A4  ff        MOV R7,A               ;H 
62A5  1258a7    LCALL 0x58A7           ;H 
62A8  8005      SJMP 0x62AF            ;H 
62AA  51c0      ACALL 0x62C0           ;H 
62AC  fd        MOV R5,A               ;H 
62AD  51e1      ACALL 0x62E1           ;H 
62AF  f124      ACALL 0x6724           ;H 
62B1  7b38      MOV R3,# #0x38         ;H 
62B3  7f90      MOV R7,# #0x90         ;H 
62B5  1258a7    LCALL 0x58A7           ;H 
62B8  1287d8    LCALL 0x87D8           ;H 
62BB  d0d0      POP dir PSW            ;H 
62BD  92af      MOV bit,C IE.7         ;H 
62BF  22        RET                    ;H 

sub_62C0:  ; H func, size~33
62C0  90a0a5    MOV DPTR,# #0xA0A5     ;H dptr win: win-Ax (0xA0A5)
62C3  e0        MOVX A,@DPTR           ;H 
62C4  ff        MOV R7,A               ;H 
62C5  90a19f    MOV DPTR,# #0xA19F     ;H dptr win: win-Ax (0xA19F)
62C8  740c      MOV A,# #0x0C          ;H 
62CA  f0        MOVX @DPTR,A           ;H 
62CB  e4        CLR A                  ;H 
62CC  fb        MOV R3,A               ;H 
62CD  7d01      MOV R5,# #0x01         ;H 
62CF  1178      ACALL 0x6078           ;H 
62D1  90a0a8    MOV DPTR,# #0xA0A8     ;H dptr win: win-Ax (0xA0A8)
62D4  ee        MOV A,R6               ;H 
62D5  f0        MOVX @DPTR,A           ;H 
62D6  a3        INC DPTR               ;H 
62D7  ef        MOV A,R7               ;H 
62D8  f0        MOVX @DPTR,A           ;H 
62D9  90a0a6    MOV DPTR,# #0xA0A6     ;H dptr win: win-Ax (0xA0A6)
62DC  e0        MOVX A,@DPTR           ;H 
62DD  fc        MOV R4,A               ;H 
62DE  a3        INC DPTR               ;H 
62DF  e0        MOVX A,@DPTR           ;H 
62E0  22        RET                    ;H 

sub_62E1:  ; H func, size~50
62E1  d3        SETB C                 ;H 
62E2  10af01    JBC IE.7, 0x62E6       ;H 
62E5  c3        CLR C                  ;H 
62E6  c0d0      PUSH dir PSW           ;H 
62E8  ab07      MOV R3,dir 0x07        ;H 
62EA  90a0ab    MOV DPTR,# #0xA0AB     ;H dptr win: win-Ax (0xA0AB)
62ED  ed        MOV A,R5               ;H 
62EE  f0        MOVX @DPTR,A           ;H 
62EF  ec        MOV A,R4               ;H 
62F0  f9        MOV R1,A               ;H 
62F1  e0        MOVX A,@DPTR           ;H 
62F2  ff        MOV R7,A               ;H 
62F3  ae03      MOV R6,dir 0x03        ;H 
62F5  742a      MOV A,# #0x2A          ;H 
62F7  2e        ADD A,R6               ;H 
62F8  91cb      ACALL 0x64CB           ;H 
62FA  742b      MOV A,# #0x2B          ;H 
62FC  2e        ADD A,R6               ;H 
62FD  f582      MOV dir,A DPL          ;H 
62FF  e4        CLR A                  ;H 
6300  34fc      ADDC A,# #0xFC         ;H 
6302  f583      MOV dir,A DPH          ;H 
6304  e9        MOV A,R1               ;H 
6305  f0        MOVX @DPTR,A           ;H 
6306  740d      MOV A,# #0x0D          ;H 
6308  2e        ADD A,R6               ;H 
6309  3181      ACALL 0x6181           ;H 
630B  4480      ORL A,# #0x80          ;H 
630D  f0        MOVX @DPTR,A           ;H 
630E  d0d0      POP dir PSW            ;H 
6310  92af      MOV bit,C IE.7         ;H 
6312  22        RET                    ;H 

sub_6313:  ; M func, size~49
6313  e4        CLR A                  ;M 
6314  90a1c5    MOV DPTR,# #0xA1C5     ;M dptr win: win-Ax (0xA1C5)
6317  f134      ACALL 0x6734           ;M 
6319  90a1c7    MOV DPTR,# #0xA1C7     ;M dptr win: win-Ax (0xA1C7)
631C  f0        MOVX @DPTR,A           ;M 
631D  90042d    MOV DPTR,# #0x042D     ;M dptr win: RAM/table (0x042D)
6320  e0        MOVX A,@DPTR           ;M 
6321  5401      ANL A,# #0x01          ;M 
6323  f0        MOVX @DPTR,A           ;M 
6324  90041d    MOV DPTR,# #0x041D     ;M dptr win: RAM/table (0x041D)
6327  e0        MOVX A,@DPTR           ;M 
6328  6029      JZ 0x6353              ;M 
632A  c3        CLR C                  ;M 
632B  90a1c6    MOV DPTR,# #0xA1C6     ;M dptr win: win-Ax (0xA1C6)
632E  e0        MOVX A,@DPTR           ;M 
632F  94d0      SUBB A,# #0xD0         ;M 
6331  90a1c5    MOV DPTR,# #0xA1C5     ;M dptr win: win-Ax (0xA1C5)
6334  e0        MOVX A,@DPTR           ;M 
6335  9407      SUBB A,# #0x07         ;M 
6337  501a      JNC 0x6353             ;M 
6339  7197      ACALL 0x6397           ;M 
633B  20e006    JB ACC.0, 0x6344       ;M 
633E  e4        CLR A                  ;M 
633F  909fac    MOV DPTR,# #0x9FAC     ;M dptr win: win-9x (0x9FAC)
6342  f0        MOVX @DPTR,A           ;M 
6343  22        RET                    ;M 

sub_6344:  ; M func, size~83
6344  7f01      MOV R7,# #0x01         ;M 
6346  7e00      MOV R6,# #0x00         ;M 
6348  123e87    LCALL 0x3E87           ;M 
634B  90a1c5    MOV DPTR,# #0xA1C5     ;M dptr win: win-Ax (0xA1C5)
634E  125816    LCALL 0x5816           ;M 
6351  80d1      SJMP 0x6324            ;M 
6353  909fa5    MOV DPTR,# #0x9FA5     ;M dptr win: win-9x (0x9FA5)
6356  e0        MOVX A,@DPTR           ;M 
6357  ff        MOV R7,A               ;M 
6358  90a19f    MOV DPTR,# #0xA19F     ;M dptr win: win-Ax (0xA19F)
635B  7405      MOV A,# #0x05          ;M 
635D  f0        MOVX @DPTR,A           ;M 
635E  7b18      MOV R3,# #0x18         ;M 
6360  7d01      MOV R5,# #0x01         ;M 
6362  1178      ACALL 0x6078           ;M 
6364  31ed      ACALL 0x61ED           ;M 
6366  e0        MOVX A,@DPTR           ;M 
6367  c4        SWAP A                 ;M 
6368  13        RRC A                  ;M 
6369  5403      ANL A,# #0x03          ;M 
636B  ff        MOV R7,A               ;M 
636C  909fa9    MOV DPTR,# #0x9FA9     ;M dptr win: win-9x (0x9FA9)
636F  e0        MOVX A,@DPTR           ;M 
6370  54fc      ANL A,# #0xFC          ;M 
6372  4f        ORL A,R7               ;M 
6373  f0        MOVX @DPTR,A           ;M 
6374  90a1c7    MOV DPTR,# #0xA1C7     ;M dptr win: win-Ax (0xA1C7)
6377  e0        MOVX A,@DPTR           ;M 
6378  546f      ANL A,# #0x6F          ;M 
637A  fd        MOV R5,A               ;M 
637B  7b19      MOV R3,# #0x19         ;M 
637D  7f90      MOV R7,# #0x90         ;M 
637F  1258a7    LCALL 0x58A7           ;M 
6382  7197      ACALL 0x6397           ;M 
6384  30e00f    JNB ACC.0, 0x6396      ;M 
6387  1287d8    LCALL 0x87D8           ;M 
638A  909faa    MOV DPTR,# #0x9FAA     ;M dptr win: win-9x (0x9FAA)
638D  125816    LCALL 0x5816           ;M 
6390  909fac    MOV DPTR,# #0x9FAC     ;M dptr win: win-9x (0x9FAC)
6393  7401      MOV A,# #0x01          ;M 
6395  f0        MOVX @DPTR,A           ;M 
6396  22        RET                    ;M 

sub_6397:  ; M func, size~9
6397  909fa9    MOV DPTR,# #0x9FA9     ;M dptr win: win-9x (0x9FA9)
639A  e0        MOVX A,@DPTR           ;M 
639B  13        RRC A                  ;M 
639C  13        RRC A                  ;M 
639D  543f      ANL A,# #0x3F          ;M 
639F  22        RET                    ;M 

sub_63A0:  ; M func, size~282
63A0  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
63A3  ef        MOV A,R7               ;M 
63A4  f0        MOVX @DPTR,A           ;M 
63A5  7f03      MOV R7,# #0x03         ;M 
63A7  12816e    LCALL 0x816E           ;M 
63AA  128740    LCALL 0x8740           ;M 
63AD  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
63B0  30e005    JNB ACC.0, 0x63B8      ;M 
63B3  7405      MOV A,# #0x05          ;M 
63B5  f0        MOVX @DPTR,A           ;M 
63B6  8003      SJMP 0x63BB            ;M 
63B8  e0        MOVX A,@DPTR           ;M 
63B9  04        INC A                  ;M 
63BA  f0        MOVX @DPTR,A           ;M 
63BB  909eba    MOV DPTR,# #0x9EBA     ;M dptr win: win-9x (0x9EBA)
63BE  12874b    LCALL 0x874B           ;M 
63C1  20e006    JB ACC.0, 0x63CA       ;M 
63C4  128ebd    LCALL 0x8EBD           ;M 
63C7  30e038    JNB ACC.0, 0x6402      ;M 
63CA  128740    LCALL 0x8740           ;M 
63CD  30e00a    JNB ACC.0, 0x63DA      ;M 
63D0  909eb7    MOV DPTR,# #0x9EB7     ;M dptr win: win-9x (0x9EB7)
63D3  e0        MOVX A,@DPTR           ;M 
63D4  ff        MOV R7,A               ;M 
63D5  909ec7    MOV DPTR,# #0x9EC7     ;M dptr win: win-9x (0x9EC7)
63D8  8021      SJMP 0x63FB            ;M 
63DA  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
63DD  e0        MOVX A,@DPTR           ;M 
63DE  fc        MOV R4,A               ;M 
63DF  b4010d    CJNE A,# #0x01, 0x63EF ;M 
63E2  909eb7    MOV DPTR,# #0x9EB7     ;M dptr win: win-9x (0x9EB7)
63E5  e0        MOVX A,@DPTR           ;M 
63E6  fe        MOV R6,A               ;M 
63E7  909ec6    MOV DPTR,# #0x9EC6     ;M dptr win: win-9x (0x9EC6)
63EA  e0        MOVX A,@DPTR           ;M 
63EB  c3        CLR C                  ;M 
63EC  9e        SUBB A,R6              ;M 
63ED  800f      SJMP 0x63FE            ;M 
63EF  ec        MOV A,R4               ;M 
63F0  b4040f    CJNE A,# #0x04, 0x6402 ;M 
63F3  909eb8    MOV DPTR,# #0x9EB8     ;M dptr win: win-9x (0x9EB8)
63F6  e0        MOVX A,@DPTR           ;M 
63F7  ff        MOV R7,A               ;M 
63F8  909ec6    MOV DPTR,# #0x9EC6     ;M dptr win: win-9x (0x9EC6)
63FB  e0        MOVX A,@DPTR           ;M 
63FC  c3        CLR C                  ;M 
63FD  9f        SUBB A,R7              ;M 
63FE  909ecd    MOV DPTR,# #0x9ECD     ;M dptr win: win-9x (0x9ECD)
6401  f0        MOVX @DPTR,A           ;M 
6402  f113      ACALL 0x6713           ;M 
6404  30e01f    JNB ACC.0, 0x6426      ;M 
6407  f10c      ACALL 0x670C           ;M 
6409  5407      ANL A,# #0x07          ;M 
640B  30e079    JNB ACC.0, 0x6487      ;M 
640E  f144      ACALL 0x6744           ;M 
6410  500a      JNC 0x641C             ;M 
6412  ef        MOV A,R7               ;M 
6413  25e0      ADD A,dir ACC          ;M 
6415  25e0      ADD A,dir ACC          ;M 
6417  fb        MOV R3,A               ;M 
6418  e4        CLR A                  ;M 
6419  fd        MOV R5,A               ;M 
641A  8005      SJMP 0x6421            ;M 
641C  7b7f      MOV R3,# #0x7F         ;M 
641E  7dff      MOV R5,# #0xFF         ;M 
6420  e4        CLR A                  ;M 
6421  ff        MOV R7,A               ;M 
6422  311e      ACALL 0x611E           ;M 
6424  8061      SJMP 0x6487            ;M 
6426  128737    LCALL 0x8737           ;M 
6429  30e044    JNB ACC.0, 0x6470      ;M 
642C  f14d      ACALL 0x674D           ;M 
642E  fd        MOV R5,A               ;M 
642F  7f04      MOV R7,# #0x04         ;M 
6431  12607e    LCALL 0x607E           ;M 
6434  12669f    LCALL 0x669F           ;M 
6437  30e036    JNB ACC.0, 0x6470      ;M 
643A  12775b    LCALL 0x775B           ;M 
643D  54fb      ANL A,# #0xFB          ;M 
643F  f0        MOVX @DPTR,A           ;M 
6440  e4        CLR A                  ;M 
6441  909ecc    MOV DPTR,# #0x9ECC     ;M dptr win: win-9x (0x9ECC)
6444  f0        MOVX @DPTR,A           ;M 
6445  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
6448  f0        MOVX @DPTR,A           ;M 
6449  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
644C  e0        MOVX A,@DPTR           ;M 
644D  ff        MOV R7,A               ;M 
644E  b40108    CJNE A,# #0x01, 0x6459 ;M 
6451  909ebe    MOV DPTR,# #0x9EBE     ;M dptr win: win-9x (0x9EBE)
6454  7406      MOV A,# #0x06          ;M 
6456  f0        MOVX @DPTR,A           ;M 
6457  800a      SJMP 0x6463            ;M 
6459  ef        MOV A,R7               ;M 
645A  b40406    CJNE A,# #0x04, 0x6463 ;M 
645D  909ebe    MOV DPTR,# #0x9EBE     ;M dptr win: win-9x (0x9EBE)
6460  7407      MOV A,# #0x07          ;M 
6462  f0        MOVX @DPTR,A           ;M 
6463  909eb5    MOV DPTR,# #0x9EB5     ;M dptr win: win-9x (0x9EB5)
6466  e0        MOVX A,@DPTR           ;M 
6467  6007      JZ 0x6470              ;M 
6469  909ebd    MOV DPTR,# #0x9EBD     ;M dptr win: win-9x (0x9EBD)
646C  e0        MOVX A,@DPTR           ;M 
646D  4404      ORL A,# #0x04          ;M 
646F  f0        MOVX @DPTR,A           ;M 
6470  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
6473  e0        MOVX A,@DPTR           ;M 
6474  b40104    CJNE A,# #0x01, 0x647B ;M 
6477  7b06      MOV R3,# #0x06         ;M 
6479  8009      SJMP 0x6484            ;M 
647B  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
647E  e0        MOVX A,@DPTR           ;M 
647F  b40405    CJNE A,# #0x04, 0x6487 ;M 
6482  7b0c      MOV R3,# #0x0C         ;M 
6484  128eb6    LCALL 0x8EB6           ;M 
6487  909eba    MOV DPTR,# #0x9EBA     ;M dptr win: win-9x (0x9EBA)
648A  1287a7    LCALL 0x87A7           ;M 
648D  30e01f    JNB ACC.0, 0x64AF      ;M 
6490  909ecd    MOV DPTR,# #0x9ECD     ;M dptr win: win-9x (0x9ECD)
6493  e0        MOVX A,@DPTR           ;M 
6494  fe        MOV R6,A               ;M 
6495  c3        CLR C                  ;M 
6496  9420      SUBB A,# #0x20         ;M 
6498  500a      JNC 0x64A4             ;M 
649A  ee        MOV A,R6               ;M 
649B  f12c      ACALL 0x672C           ;M 
649D  909d48    MOV DPTR,# #0x9D48     ;M dptr win: win-9x (0x9D48)
64A0  e0        MOVX A,@DPTR           ;M 
64A1  ff        MOV R7,A               ;M 
64A2  8009      SJMP 0x64AD            ;M 
64A4  909d48    MOV DPTR,# #0x9D48     ;M dptr win: win-9x (0x9D48)
64A7  e0        MOVX A,@DPTR           ;M 
64A8  ff        MOV R7,A               ;M 
64A9  7dff      MOV R5,# #0xFF         ;M 
64AB  7c7f      MOV R4,# #0x7F         ;M 
64AD  516f      ACALL 0x626F           ;M 
64AF  909eb9    MOV DPTR,# #0x9EB9     ;M dptr win: win-9x (0x9EB9)
64B2  e0        MOVX A,@DPTR           ;M 
64B3  30e003    JNB ACC.0, 0x64B9      ;M 
64B6  1258a2    LCALL 0x58A2           ;M 
64B9  22        RET                    ;M 

sub_64BA:  ; M func, size~8
64BA  f582      MOV dir,A DPL          ;M 
64BC  e4        CLR A                  ;M 
64BD  34fc      ADDC A,# #0xFC         ;M 
64BF  f583      MOV dir,A DPH          ;M 
64C1  22        RET                    ;M 

sub_64C2:  ; M func, size~9
64C2  ef        MOV A,R7               ;M 
64C3  f0        MOVX @DPTR,A           ;M 
64C4  a3        INC DPTR               ;M 
64C5  ed        MOV A,R5               ;M 
64C6  f0        MOVX @DPTR,A           ;M 
64C7  a3        INC DPTR               ;M 
64C8  eb        MOV A,R3               ;M 
64C9  f0        MOVX @DPTR,A           ;M 
64CA  22        RET                    ;M 

sub_64CB:  ; H func, size~10
64CB  f582      MOV dir,A DPL          ;H 
64CD  e4        CLR A                  ;H 
64CE  34fc      ADDC A,# #0xFC         ;H 
64D0  f583      MOV dir,A DPH          ;H 
64D2  ef        MOV A,R7               ;H 
64D3  f0        MOVX @DPTR,A           ;H 
64D4  22        RET                    ;H 

sub_64D5:  ; M func, size~12
64D5  7429      MOV A,# #0x29          ;M 
64D7  2d        ADD A,R5               ;M 
64D8  f582      MOV dir,A DPL          ;M 
64DA  e4        CLR A                  ;M 
64DB  34fc      ADDC A,# #0xFC         ;M 
64DD  f583      MOV dir,A DPH          ;M 
64DF  e0        MOVX A,@DPTR           ;M 
64E0  22        RET                    ;M 

sub_64E1:  ; M func, size~47
64E1  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
64E4  e0        MOVX A,@DPTR           ;M 
64E5  30e03c    JNB ACC.0, 0x6524      ;M 
64E8  127640    LCALL 0x7640           ;M 
64EB  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
64EE  e0        MOVX A,@DPTR           ;M 
64EF  ff        MOV R7,A               ;M 
64F0  b40102    CJNE A,# #0x01, 0x64F5 ;M 
64F3  8023      SJMP 0x6518            ;M 
64F5  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
64F8  e0        MOVX A,@DPTR           ;M 
64F9  ff        MOV R7,A               ;M 
64FA  b40202    CJNE A,# #0x02, 0x64FF ;M 
64FD  8023      SJMP 0x6522            ;M 
64FF  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
6502  e0        MOVX A,@DPTR           ;M 
6503  b4030a    CJNE A,# #0x03, 0x6510 ;M 
6506  f13c      ACALL 0x673C           ;M 
6508  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
650B  e0        MOVX A,@DPTR           ;M 
650C  ff        MOV R7,A               ;M 
650D  0282bd    LJMP 0x82BD            ;M 

sub_6510:  ; M func, size~10
6510  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
6513  e0        MOVX A,@DPTR           ;M 
6514  ff        MOV R7,A               ;M 
6515  b40402    CJNE A,# #0x04, 0x651A ;M 
6518  61a0      AJMP 0x63A0            ;M 

sub_651A:  ; M func, size~11
651A  909ec9    MOV DPTR,# #0x9EC9     ;M dptr win: win-9x (0x9EC9)
651D  e0        MOVX A,@DPTR           ;M 
651E  ff        MOV R7,A               ;M 
651F  b40502    CJNE A,# #0x05, 0x6524 ;M 
6522  b1e9      ACALL 0x65E9           ;M 
6524  22        RET                    ;M 

sub_6525:  ; M func, size~109
6525  9006a9    MOV DPTR,# #0x06A9     ;M dptr win: RAM/table (0x06A9)
6528  e0        MOVX A,@DPTR           ;M 
6529  90a085    MOV DPTR,# #0xA085     ;M dptr win: win-Ax (0xA085)
652C  f0        MOVX @DPTR,A           ;M 
652D  e0        MOVX A,@DPTR           ;M 
652E  fd        MOV R5,A               ;M 
652F  54c0      ANL A,# #0xC0          ;M 
6531  7004      JNZ 0x6537             ;M 
6533  b197      ACALL 0x6597           ;M 
6535  805c      SJMP 0x6593            ;M 
6537  ed        MOV A,R5               ;M 
6538  30e640    JNB ACC.6, 0x657B      ;M 
653B  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
653E  e0        MOVX A,@DPTR           ;M 
653F  6402      XRL A,# #0x02          ;M 
6541  7027      JNZ 0x656A             ;M 
6543  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
6546  e0        MOVX A,@DPTR           ;M 
6547  ff        MOV R7,A               ;M 
6548  c3        CLR C                  ;M 
6549  13        RRC A                  ;M 
654A  20e009    JB ACC.0, 0x6556       ;M 
654D  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
6550  e0        MOVX A,@DPTR           ;M 
6551  4401      ORL A,# #0x01          ;M 
6553  f0        MOVX @DPTR,A           ;M 
6554  801b      SJMP 0x6571            ;M 
6556  12776a    LCALL 0x776A           ;M 
6559  6401      XRL A,# #0x01          ;M 
655B  7020      JNZ 0x657D             ;M 
655D  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
6560  e0        MOVX A,@DPTR           ;M 
6561  4404      ORL A,# #0x04          ;M 
6563  f0        MOVX @DPTR,A           ;M 
6564  7f01      MOV R7,# #0x01         ;M 
6566  5110      ACALL 0x6210           ;M 
6568  8013      SJMP 0x657D            ;M 
656A  127763    LCALL 0x7763           ;M 
656D  6402      XRL A,# #0x02          ;M 
656F  6005      JZ 0x6576              ;M 
6571  1287ae    LCALL 0x87AE           ;M 
6574  8007      SJMP 0x657D            ;M 
6576  127771    LCALL 0x7771           ;M 
6579  8002      SJMP 0x657D            ;M 
657B  b197      ACALL 0x6597           ;M 
657D  90a085    MOV DPTR,# #0xA085     ;M dptr win: win-Ax (0xA085)
6580  e0        MOVX A,@DPTR           ;M 
6581  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
6584  30e70b    JNB ACC.7, 0x6592      ;M 
6587  128095    LCALL 0x8095           ;M 
658A  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
658D  e0        MOVX A,@DPTR           ;M 
658E  4404      ORL A,# #0x04          ;M 
6590  f0        MOVX @DPTR,A           ;M 
6591  22        RET                    ;M 

sub_6592:  ; M func, size~11
6592  e0        MOVX A,@DPTR           ;M 
6593  54fd      ANL A,# #0xFD          ;M 
6595  f0        MOVX @DPTR,A           ;M 
6596  22        RET                    ;M 
6597  .db 90 9E 56 E0 54 FE

sub_659D:  ; H func, size~2
659D  f0        MOVX @DPTR,A           ;H 
659E  22        RET                    ;H 

sub_659F:  ; M func, size~18
659F  9006a9    MOV DPTR,# #0x06A9     ;M dptr win: RAM/table (0x06A9)
65A2  e0        MOVX A,@DPTR           ;M 
65A3  f563      MOV dir,A 0x63         ;M 
65A5  54c0      ANL A,# #0xC0          ;M 
65A7  7008      JNZ 0x65B1             ;M 
65A9  b197      ACALL 0x6597           ;M 
65AB  54fd      ANL A,# #0xFD          ;M 
65AD  f0        MOVX @DPTR,A           ;M 
65AE  026063    LJMP 0x6063            ;M 

sub_65B1:  ; M func, size~51
65B1  e563      MOV A,dir 0x63         ;M 
65B3  30e619    JNB ACC.6, 0x65CF      ;M 
65B6  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
65B9  e0        MOVX A,@DPTR           ;M 
65BA  6401      XRL A,# #0x01          ;M 
65BC  7013      JNZ 0x65D1             ;M 
65BE  127763    LCALL 0x7763           ;M 
65C1  6402      XRL A,# #0x02          ;M 
65C3  6005      JZ 0x65CA              ;M 
65C5  1287ae    LCALL 0x87AE           ;M 
65C8  8007      SJMP 0x65D1            ;M 
65CA  127771    LCALL 0x7771           ;M 
65CD  8002      SJMP 0x65D1            ;M 
65CF  b197      ACALL 0x6597           ;M 
65D1  e563      MOV A,dir 0x63         ;M 
65D3  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
65D6  30e70b    JNB ACC.7, 0x65E4      ;M 
65D9  128095    LCALL 0x8095           ;M 
65DC  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
65DF  e0        MOVX A,@DPTR           ;M 
65E0  4404      ORL A,# #0x04          ;M 
65E2  f0        MOVX @DPTR,A           ;M 
65E3  22        RET                    ;M 

sub_65E4:  ; M func, size~5
65E4  e0        MOVX A,@DPTR           ;M 
65E5  54fd      ANL A,# #0xFD          ;M 
65E7  f0        MOVX @DPTR,A           ;M 
65E8  22        RET                    ;M 

sub_65E9:  ; M func, size~11
65E9  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
65EC  ef        MOV A,R7               ;M 
65ED  f0        MOVX @DPTR,A           ;M 
65EE  90a095    MOV DPTR,# #0xA095     ;M dptr win: win-Ax (0xA095)
65F1  7402      MOV A,# #0x02          ;M 
65F3  f0        MOVX @DPTR,A           ;M 

sub_65F4:  ; H func, size~60
65F4  7f01      MOV R7,# #0x01         ;H 
65F6  1287df    LCALL 0x87DF           ;H 
65F9  909eba    MOV DPTR,# #0x9EBA     ;H dptr win: win-9x (0x9EBA)
65FC  124fd7    LCALL 0x4FD7           ;H 
65FF  30e004    JNB ACC.0, 0x6606      ;H 
6602  7f03      MOV R7,# #0x03         ;H 
6604  8002      SJMP 0x6608            ;H 
6606  7f01      MOV R7,# #0x01         ;H 
6608  12876e    LCALL 0x876E           ;H 
660B  90a093    MOV DPTR,# #0xA093     ;H dptr win: win-Ax (0xA093)
660E  e0        MOVX A,@DPTR           ;H 
660F  b40211    CJNE A,# #0x02, 0x6623 ;H 
6612  909eb7    MOV DPTR,# #0x9EB7     ;H dptr win: win-9x (0x9EB7)
6615  e0        MOVX A,@DPTR           ;H 
6616  2403      ADD A,# #0x03          ;H 
6618  ff        MOV R7,A               ;H 
6619  909ec6    MOV DPTR,# #0x9EC6     ;H dptr win: win-9x (0x9EC6)
661C  e0        MOVX A,@DPTR           ;H 
661D  c3        CLR C                  ;H 
661E  9f        SUBB A,R7              ;H 
661F  ff        MOV R7,A               ;H 
6620  12816e    LCALL 0x816E           ;H 
6623  909eb6    MOV DPTR,# #0x9EB6     ;H dptr win: win-9x (0x9EB6)
6626  e0        MOVX A,@DPTR           ;H 
6627  c3        CLR C                  ;H 
6628  13        RRC A                  ;H 
6629  30e007    JNB ACC.0, 0x6633      ;H 
662C  e4        CLR A                  ;H 
662D  90a094    MOV DPTR,# #0xA094     ;H dptr win: win-Ax (0xA094)

sub_6630:  ; H func, size~65
6630  f0        MOVX @DPTR,A           ;H 
6631  8006      SJMP 0x6639            ;H 
6633  90a094    MOV DPTR,# #0xA094     ;H dptr win: win-Ax (0xA094)
6636  7401      MOV A,# #0x01          ;H 
6638  f0        MOVX @DPTR,A           ;H 
6639  f156      ACALL 0x6756           ;H 
663B  20e013    JB ACC.0, 0x6651       ;H 
663E  909ef7    MOV DPTR,# #0x9EF7     ;H dptr win: win-9x (0x9EF7)
6641  e0        MOVX A,@DPTR           ;H 
6642  6008      JZ 0x664C              ;H 
6644  90a095    MOV DPTR,# #0xA095     ;H dptr win: win-Ax (0xA095)
6647  7401      MOV A,# #0x01          ;H 
6649  f0        MOVX @DPTR,A           ;H 
664A  8005      SJMP 0x6651            ;H 
664C  e4        CLR A                  ;H 
664D  90a095    MOV DPTR,# #0xA095     ;H dptr win: win-Ax (0xA095)
6650  f0        MOVX @DPTR,A           ;H 
6651  90a095    MOV DPTR,# #0xA095     ;H dptr win: win-Ax (0xA095)
6654  e0        MOVX A,@DPTR           ;H 
6655  ff        MOV R7,A               ;H 
6656  90a094    MOV DPTR,# #0xA094     ;H dptr win: win-Ax (0xA094)
6659  e0        MOVX A,@DPTR           ;H 
665A  fd        MOV R5,A               ;H 
665B  128413    LCALL 0x8413           ;H 
665E  e4        CLR A                  ;H 
665F  909ec8    MOV DPTR,# #0x9EC8     ;H dptr win: win-9x (0x9EC8)
6662  f0        MOVX @DPTR,A           ;H 
6663  90a093    MOV DPTR,# #0xA093     ;H dptr win: win-Ax (0xA093)
6666  e0        MOVX A,@DPTR           ;H 
6667  ff        MOV R7,A               ;H 
6668  b40208    CJNE A,# #0x02, 0x6673 ;H 
666B  909ec9    MOV DPTR,# #0x9EC9     ;H dptr win: win-9x (0x9EC9)
666E  e0        MOVX A,@DPTR           ;H 
666F  04        INC A                  ;H 
6670  f0        MOVX @DPTR,A           ;H 

sub_6671:  ; H func, size~7
6671  8009      SJMP 0x667C            ;H 
6673  ef        MOV A,R7               ;H 
6674  b40505    CJNE A,# #0x05, 0x667C ;H 
6677  e4        CLR A                  ;H 

sub_6678:  ; H func, size~42
6678  909ec9    MOV DPTR,# #0x9EC9     ;H dptr win: win-9x (0x9EC9)
667B  f0        MOVX @DPTR,A           ;H 
667C  f113      ACALL 0x6713           ;H 
667E  30e017    JNB ACC.0, 0x6698      ;H 
6681  90a093    MOV DPTR,# #0xA093     ;H dptr win: win-Ax (0xA093)
6684  e0        MOVX A,@DPTR           ;H 
6685  b40204    CJNE A,# #0x02, 0x668C ;H 
6688  7b08      MOV R3,# #0x08         ;H 
668A  8050      SJMP 0x66DC            ;H 
668C  90a093    MOV DPTR,# #0xA093     ;H dptr win: win-Ax (0xA093)
668F  e0        MOVX A,@DPTR           ;H 
6690  6405      XRL A,# #0x05          ;H 
6692  704b      JNZ 0x66DF             ;H 
6694  7b0e      MOV R3,# #0x0E         ;H 
6696  8044      SJMP 0x66DC            ;H 
6698  128737    LCALL 0x8737           ;H 
669B  30e021    JNB ACC.0, 0x66BF      ;H 
669E  f10c      ACALL 0x670C           ;H 
66A0  5407      ANL A,# #0x07          ;H 

sub_66A2:  ; H func, size~106
66A2  20e003    JB ACC.0, 0x66A8       ;H 
66A5  126077    LCALL 0x6077           ;H 
66A8  90a093    MOV DPTR,# #0xA093     ;H dptr win: win-Ax (0xA093)
66AB  e0        MOVX A,@DPTR           ;H 
66AC  b40204    CJNE A,# #0x02, 0x66B3 ;H 
66AF  7b09      MOV R3,# #0x09         ;H 
66B1  8029      SJMP 0x66DC            ;H 
66B3  90a093    MOV DPTR,# #0xA093     ;H dptr win: win-Ax (0xA093)
66B6  e0        MOVX A,@DPTR           ;H 
66B7  6405      XRL A,# #0x05          ;H 
66B9  7024      JNZ 0x66DF             ;H 
66BB  7b0f      MOV R3,# #0x0F         ;H 
66BD  801d      SJMP 0x66DC            ;H 
66BF  909e52    MOV DPTR,# #0x9E52     ;H dptr win: win-9x (0x9E52)
66C2  e0        MOVX A,@DPTR           ;H 
66C3  601a      JZ 0x66DF              ;H 
66C5  126077    LCALL 0x6077           ;H 
66C8  90a093    MOV DPTR,# #0xA093     ;H dptr win: win-Ax (0xA093)
66CB  e0        MOVX A,@DPTR           ;H 
66CC  b40204    CJNE A,# #0x02, 0x66D3 ;H 
66CF  7b0a      MOV R3,# #0x0A         ;H 
66D1  8009      SJMP 0x66DC            ;H 
66D3  90a093    MOV DPTR,# #0xA093     ;H dptr win: win-Ax (0xA093)
66D6  e0        MOVX A,@DPTR           ;H 
66D7  b40505    CJNE A,# #0x05, 0x66DF ;H 
66DA  7b10      MOV R3,# #0x10         ;H 
66DC  128eb6    LCALL 0x8EB6           ;H 
66DF  909eb9    MOV DPTR,# #0x9EB9     ;H dptr win: win-9x (0x9EB9)
66E2  e0        MOVX A,@DPTR           ;H 
66E3  30e003    JNB ACC.0, 0x66E9      ;H 
66E6  1258a2    LCALL 0x58A2           ;H 
66E9  124fd4    LCALL 0x4FD4           ;H 
66EC  30e005    JNB ACC.0, 0x66F4      ;H 
66EF  e4        CLR A                  ;H 
66F0  ff        MOV R7,A               ;H 
66F1  128717    LCALL 0x8717           ;H 
66F4  909eba    MOV DPTR,# #0x9EBA     ;H dptr win: win-9x (0x9EBA)
66F7  e0        MOVX A,@DPTR           ;H 
66F8  c3        CLR C                  ;H 
66F9  13        RRC A                  ;H 
66FA  30e00e    JNB ACC.0, 0x670B      ;H 
66FD  9006cd    MOV DPTR,# #0x06CD     ;H dptr win: RAM/table (0x06CD)
6700  e0        MOVX A,@DPTR           ;H 
6701  54ef      ANL A,# #0xEF          ;H 
6703  f0        MOVX @DPTR,A           ;H 
6704  9006cf    MOV DPTR,# #0x06CF     ;H dptr win: RAM/table (0x06CF)
6707  e0        MOVX A,@DPTR           ;H 
6708  54ef      ANL A,# #0xEF          ;H 
670A  f0        MOVX @DPTR,A           ;H 
670B  22        RET                    ;H 

sub_670C:  ; H func, size~7
670C  909eba    MOV DPTR,# #0x9EBA     ;H dptr win: win-9x (0x9EBA)
670F  e0        MOVX A,@DPTR           ;H 
6710  c4        SWAP A                 ;H 
6711  13        RRC A                  ;H 
6712  22        RET                    ;H 

sub_6713:  ; H func, size~9
6713  909eb6    MOV DPTR,# #0x9EB6     ;H dptr win: win-9x (0x9EB6)
6716  e0        MOVX A,@DPTR           ;H 
6717  c4        SWAP A                 ;H 
6718  13        RRC A                  ;H 
6719  5407      ANL A,# #0x07          ;H 
671B  22        RET                    ;H 

sub_671C:  ; M func, size~8
671C  90fd10    MOV DPTR,# #0xFD10     ;M dptr win: win-Bx+ (0xFD10)
671F  ef        MOV A,R7               ;M 
6720  f0        MOVX @DPTR,A           ;M 
6721  7f00      MOV R7,# #0x00         ;M 
6723  22        RET                    ;M 

sub_6724:  ; H func, size~8
6724  900522    MOV DPTR,# #0x0522     ;H dptr win: RAM/table (0x0522)
6727  e0        MOVX A,@DPTR           ;H 
6728  546f      ANL A,# #0x6F          ;H 
672A  fd        MOV R5,A               ;H 
672B  22        RET                    ;H 

sub_672C:  ; M func, size~8
672C  7d00      MOV R5,# #0x00         ;M 
672E  25e0      ADD A,dir ACC          ;M 
6730  25e0      ADD A,dir ACC          ;M 
6732  fc        MOV R4,A               ;M 
6733  22        RET                    ;M 

sub_6734:  ; M func, size~8
6734  f0        MOVX @DPTR,A           ;M 
6735  a3        INC DPTR               ;M 
6736  f0        MOVX @DPTR,A           ;M 
6737  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
673A  e0        MOVX A,@DPTR           ;M 
673B  22        RET                    ;M 

sub_673C:  ; M func, size~8
673C  909edb    MOV DPTR,# #0x9EDB     ;M dptr win: win-9x (0x9EDB)
673F  e0        MOVX A,@DPTR           ;M 
6740  4410      ORL A,# #0x10          ;M 
6742  f0        MOVX @DPTR,A           ;M 
6743  22        RET                    ;M 

sub_6744:  ; M func, size~9
6744  909ecd    MOV DPTR,# #0x9ECD     ;M dptr win: win-9x (0x9ECD)
6747  e0        MOVX A,@DPTR           ;M 
6748  ff        MOV R7,A               ;M 
6749  c3        CLR C                  ;M 
674A  9420      SUBB A,# #0x20         ;M 
674C  22        RET                    ;M 

sub_674D:  ; M func, size~9
674D  909ebc    MOV DPTR,# #0x9EBC     ;M dptr win: win-9x (0x9EBC)
6750  e0        MOVX A,@DPTR           ;M 
6751  54df      ANL A,# #0xDF          ;M 
6753  f0        MOVX @DPTR,A           ;M 
6754  e4        CLR A                  ;M 
6755  22        RET                    ;M 

sub_6756:  ; H func, size~9
6756  909eb9    MOV DPTR,# #0x9EB9     ;H dptr win: win-9x (0x9EB9)
6759  e0        MOVX A,@DPTR           ;H 
675A  c4        SWAP A                 ;H 
675B  13        RRC A                  ;H 
675C  5407      ANL A,# #0x07          ;H 
675E  22        RET                    ;H 

sub_675F:  ; M func, size~10
675F  f582      MOV dir,A DPL          ;M 
6761  e4        CLR A                  ;M 
6762  34fc      ADDC A,# #0xFC         ;M 
6764  f583      MOV dir,A DPH          ;M 
6766  ef        MOV A,R7               ;M 
6767  f0        MOVX @DPTR,A           ;M 
6768  22        RET                    ;M 

sub_6769:  ; M func, size~12
6769  909ed1    MOV DPTR,# #0x9ED1     ;M dptr win: win-9x (0x9ED1)
676C  e0        MOVX A,@DPTR           ;M 
676D  30e003    JNB ACC.0, 0x6773      ;M 
6770  028761    LJMP 0x8761            ;M 
6773  .db 81 E1

sub_6775:  ; M func, size~33
6775  90a067    MOV DPTR,# #0xA067     ;M dptr win: win-Ax (0xA067)
6778  7412      MOV A,# #0x12          ;M 
677A  f0        MOVX @DPTR,A           ;M 
677B  90a075    MOV DPTR,# #0xA075     ;M dptr win: win-Ax (0xA075)
677E  7405      MOV A,# #0x05          ;M 
6780  f0        MOVX @DPTR,A           ;M 
6781  90a069    MOV DPTR,# #0xA069     ;M dptr win: win-Ax (0xA069)
6784  91c2      ACALL 0x64C2           ;M 
6786  90a065    MOV DPTR,# #0xA065     ;M dptr win: win-Ax (0xA065)
6789  e0        MOVX A,@DPTR           ;M 
678A  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
678D  f0        MOVX @DPTR,A           ;M 
678E  90a066    MOV DPTR,# #0xA066     ;M dptr win: win-Ax (0xA066)
6791  e0        MOVX A,@DPTR           ;M 
6792  90a06d    MOV DPTR,# #0xA06D     ;M dptr win: win-Ax (0xA06D)
6795  f0        MOVX @DPTR,A           ;M 

sub_6796:  ; H func, size~14
6796  7b01      MOV R3,# #0x01         ;H 
6798  7aa0      MOV R2,# #0xA0         ;H 
679A  7967      MOV R1,# #0x67         ;H 
679C  125575    LCALL 0x5575           ;H 
679F  7f04      MOV R7,# #0x04         ;H 
67A1  028ffc    LJMP 0x8FFC            ;H 

sub_67A4:  ; M func, size~22
67A4  7e00      MOV R6,# #0x00         ;M 
67A6  7f0a      MOV R7,# #0x0A         ;M 
67A8  7d00      MOV R5,# #0x00         ;M 
67AA  7b01      MOV R3,# #0x01         ;M 
67AC  7a9e      MOV R2,# #0x9E         ;M 
67AE  79de      MOV R1,# #0xDE         ;M 
67B0  1208aa    LCALL 0x08AA           ;M 
67B3  909eca    MOV DPTR,# #0x9ECA     ;M dptr win: win-9x (0x9ECA)
67B6  7402      MOV A,# #0x02          ;M 
67B8  f0        MOVX @DPTR,A           ;M 
67B9  22        RET                    ;M 

sub_67BA:  ; M func, size~112
67BA  90a0ae    MOV DPTR,# #0xA0AE     ;M dptr win: win-Ax (0xA0AE)
67BD  ef        MOV A,R7               ;M 
67BE  f0        MOVX @DPTR,A           ;M 
67BF  1286f8    LCALL 0x86F8           ;M 
67C2  ef        MOV A,R7               ;M 
67C3  5420      ANL A,# #0x20          ;M 
67C5  ff        MOV R7,A               ;M 
67C6  e4        CLR A                  ;M 
67C7  fd        MOV R5,A               ;M 
67C8  fc        MOV R4,A               ;M 
67C9  ef        MOV A,R7               ;M 
67CA  6007      JZ 0x67D3              ;M 
67CC  e4        CLR A                  ;M 
67CD  909ed7    MOV DPTR,# #0x9ED7     ;M dptr win: win-9x (0x9ED7)
67D0  f0        MOVX @DPTR,A           ;M 
67D1  8006      SJMP 0x67D9            ;M 
67D3  909ed7    MOV DPTR,# #0x9ED7     ;M dptr win: win-9x (0x9ED7)
67D6  7401      MOV A,# #0x01          ;M 
67D8  f0        MOVX @DPTR,A           ;M 
67D9  7f30      MOV R7,# #0x30         ;M 
67DB  7e09      MOV R6,# #0x09         ;M 
67DD  1237ad    LCALL 0x37AD           ;M 
67E0  ee        MOV A,R6               ;M 
67E1  5401      ANL A,# #0x01          ;M 
67E3  fe        MOV R6,A               ;M 
67E4  ed        MOV A,R5               ;M 
67E5  5410      ANL A,# #0x10          ;M 
67E7  fd        MOV R5,A               ;M 
67E8  e4        CLR A                  ;M 
67E9  fc        MOV R4,A               ;M 
67EA  ed        MOV A,R5               ;M 
67EB  4e        ORL A,R6               ;M 
67EC  6007      JZ 0x67F5              ;M 
67EE  e4        CLR A                  ;M 
67EF  909ed8    MOV DPTR,# #0x9ED8     ;M dptr win: win-9x (0x9ED8)
67F2  f0        MOVX @DPTR,A           ;M 
67F3  8006      SJMP 0x67FB            ;M 
67F5  909ed8    MOV DPTR,# #0x9ED8     ;M dptr win: win-9x (0x9ED8)
67F8  7401      MOV A,# #0x01          ;M 
67FA  f0        MOVX @DPTR,A           ;M 
67FB  909ed1    MOV DPTR,# #0x9ED1     ;M dptr win: win-9x (0x9ED1)
67FE  e0        MOVX A,@DPTR           ;M 
67FF  4401      ORL A,# #0x01          ;M 
6801  f0        MOVX @DPTR,A           ;M 
6802  7b11      MOV R3,# #0x11         ;M 
6804  1287d1    LCALL 0x87D1           ;M 
6807  12502c    LCALL 0x502C           ;M 
680A  900778    MOV DPTR,# #0x0778     ;M dptr win: RAM/table (0x0778)
680D  e0        MOVX A,@DPTR           ;M 
680E  909ed6    MOV DPTR,# #0x9ED6     ;M dptr win: win-9x (0x9ED6)
6811  f0        MOVX @DPTR,A           ;M 
6812  1147      ACALL 0x6847           ;M 
6814  128413    LCALL 0x8413           ;M 
6817  90a0ae    MOV DPTR,# #0xA0AE     ;M dptr win: win-Ax (0xA0AE)
681A  e0        MOVX A,@DPTR           ;M 
681B  fd        MOV R5,A               ;M 
681C  7002      JNZ 0x6820             ;M 
681E  801c      SJMP 0x683C            ;M 
6820  ed        MOV A,R5               ;M 
6821  b40106    CJNE A,# #0x01, 0x682A ;M 
6824  1140      ACALL 0x6840           ;M 
6826  4420      ORL A,# #0x20          ;M 
6828  f0        MOVX @DPTR,A           ;M 
6829  22        RET                    ;M 

sub_682A:  ; M func, size~14
682A  90a0ae    MOV DPTR,# #0xA0AE     ;M dptr win: win-Ax (0xA0AE)
682D  e0        MOVX A,@DPTR           ;M 
682E  fd        MOV R5,A               ;M 
682F  b40206    CJNE A,# #0x02, 0x6838 ;M 
6832  1140      ACALL 0x6840           ;M 
6834  4460      ORL A,# #0x60          ;M 
6836  f0        MOVX @DPTR,A           ;M 
6837  22        RET                    ;M 

sub_6838:  ; M func, size~8
6838  ed        MOV A,R5               ;M 
6839  b40303    CJNE A,# #0x03, 0x683F ;M 
683C  1140      ACALL 0x6840           ;M 
683E  f0        MOVX @DPTR,A           ;M 
683F  22        RET                    ;M 

sub_6840:  ; M func, size~7
6840  909ed1    MOV DPTR,# #0x9ED1     ;M dptr win: win-9x (0x9ED1)
6843  e0        MOVX A,@DPTR           ;M 
6844  541f      ANL A,# #0x1F          ;M 
6846  22        RET                    ;M 

sub_6847:  ; M func, size~8
6847  909ef7    MOV DPTR,# #0x9EF7     ;M dptr win: win-9x (0x9EF7)
684A  e0        MOVX A,@DPTR           ;M 
684B  ff        MOV R7,A               ;M 
684C  e4        CLR A                  ;M 
684D  fd        MOV R5,A               ;M 
684E  22        RET                    ;M 

sub_684F:  ; H func, size~37
684F  909ed1    MOV DPTR,# #0x9ED1     ;H dptr win: win-9x (0x9ED1)
6852  e0        MOVX A,@DPTR           ;H 
6853  54fe      ANL A,# #0xFE          ;H 
6855  f0        MOVX @DPTR,A           ;H 
6856  54e1      ANL A,# #0xE1          ;H 
6858  f0        MOVX @DPTR,A           ;H 
6859  909ed6    MOV DPTR,# #0x9ED6     ;H dptr win: win-9x (0x9ED6)
685C  e0        MOVX A,@DPTR           ;H 
685D  ff        MOV R7,A               ;H 
685E  12876e    LCALL 0x876E           ;H 
6861  909ed7    MOV DPTR,# #0x9ED7     ;H dptr win: win-9x (0x9ED7)
6864  12840e    LCALL 0x840E           ;H 
6867  909e52    MOV DPTR,# #0x9E52     ;H dptr win: win-9x (0x9E52)
686A  e0        MOVX A,@DPTR           ;H 
686B  7006      JNZ 0x6873             ;H 
686D  125499    LCALL 0x5499           ;H 
6870  1258a2    LCALL 0x58A2           ;H 
6873  22        RET                    ;H 

sub_6874:  ; M func, size~11
6874  128761    LCALL 0x8761           ;M 
6877  909ed1    MOV DPTR,# #0x9ED1     ;M dptr win: win-9x (0x9ED1)
687A  12874b    LCALL 0x874B           ;M 
687D  fe        MOV R6,A               ;M 
687E  ef        MOV A,R7               ;M 

sub_687F:  ; H func, size~31
687F  c3        CLR C                  ;H 
6880  13        RRC A                  ;H 
6881  540f      ANL A,# #0x0F          ;H 
6883  c3        CLR C                  ;H 
6884  9e        SUBB A,R6              ;H 
6885  4002      JC 0x6889              ;H 
6887  80c6      SJMP 0x684F            ;H 
6889  909ed1    MOV DPTR,# #0x9ED1     ;H dptr win: win-9x (0x9ED1)
688C  e0        MOVX A,@DPTR           ;H 
688D  ff        MOV R7,A               ;H 
688E  c3        CLR C                  ;H 
688F  13        RRC A                  ;H 
6890  fe        MOV R6,A               ;H 
6891  ef        MOV A,R7               ;H 
6892  54e1      ANL A,# #0xE1          ;H 
6894  ff        MOV R7,A               ;H 
6895  ee        MOV A,R6               ;H 
6896  04        INC A                  ;H 
6897  540f      ANL A,# #0x0F          ;H 
6899  25e0      ADD A,dir ACC          ;H 
689B  4f        ORL A,R7               ;H 
689C  f0        MOVX @DPTR,A           ;H 
689D  22        RET                    ;H 

sub_689E:  ; M func, size~35
689E  909ed1    MOV DPTR,# #0x9ED1     ;M dptr win: win-9x (0x9ED1)
68A1  e0        MOVX A,@DPTR           ;M 
68A2  30e004    JNB ACC.0, 0x68A9      ;M 
68A5  1174      ACALL 0x6874           ;M 
68A7  8003      SJMP 0x68AC            ;M 
68A9  128276    LCALL 0x8276           ;M 
68AC  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
68AF  e0        MOVX A,@DPTR           ;M 
68B0  30e006    JNB ACC.0, 0x68B9      ;M 
68B3  909e4a    MOV DPTR,# #0x9E4A     ;M dptr win: win-9x (0x9E4A)
68B6  7401      MOV A,# #0x01          ;M 
68B8  f0        MOVX @DPTR,A           ;M 
68B9  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
68BC  e0        MOVX A,@DPTR           ;M 
68BD  7002      JNZ 0x68C1             ;M 
68BF  2149      AJMP 0x6949            ;M 

sub_68C1:  ; M func, size~141
68C1  909e69    MOV DPTR,# #0x9E69     ;M dptr win: win-9x (0x9E69)
68C4  e0        MOVX A,@DPTR           ;M 
68C5  04        INC A                  ;M 
68C6  125bd8    LCALL 0x5BD8           ;M 
68C9  1248bd    LCALL 0x48BD           ;M 
68CC  c004      PUSH dir 0x04          ;M 
68CE  c005      PUSH dir 0x05          ;M 
68D0  c006      PUSH dir 0x06          ;M 
68D2  c007      PUSH dir 0x07          ;M 
68D4  900562    MOV DPTR,# #0x0562     ;M dptr win: RAM/table (0x0562)
68D7  125bf2    LCALL 0x5BF2           ;M 
68DA  7810      MOV R0,# #0x10         ;M 
68DC  12085a    LCALL 0x085A           ;M 
68DF  d003      POP dir 0x03           ;M 
68E1  d002      POP dir 0x02           ;M 
68E3  d001      POP dir 0x01           ;M 
68E5  d000      POP dir 0x00           ;M 
68E7  1248bd    LCALL 0x48BD           ;M 
68EA  c004      PUSH dir 0x04          ;M 
68EC  c005      PUSH dir 0x05          ;M 
68EE  c006      PUSH dir 0x06          ;M 
68F0  c007      PUSH dir 0x07          ;M 
68F2  a3        INC DPTR               ;M 
68F3  125bf2    LCALL 0x5BF2           ;M 
68F6  7818      MOV R0,# #0x18         ;M 
68F8  12085a    LCALL 0x085A           ;M 
68FB  d003      POP dir 0x03           ;M 
68FD  d002      POP dir 0x02           ;M 
68FF  d001      POP dir 0x01           ;M 
6901  d000      POP dir 0x00           ;M 
6903  1248bd    LCALL 0x48BD           ;M 
6906  909e9d    MOV DPTR,# #0x9E9D     ;M dptr win: win-9x (0x9E9D)
6909  9114      ACALL 0x6C14           ;M 
690B  547f      ANL A,# #0x7F          ;M 
690D  f0        MOVX @DPTR,A           ;M 
690E  a3        INC DPTR               ;M 
690F  e0        MOVX A,@DPTR           ;M 
6910  30e009    JNB ACC.0, 0x691C      ;M 
6913  515b      ACALL 0x6A5B           ;M 
6915  7405      MOV A,# #0x05          ;M 
6917  f0        MOVX @DPTR,A           ;M 
6918  314e      ACALL 0x694E           ;M 
691A  511e      ACALL 0x6A1E           ;M 
691C  909e4e    MOV DPTR,# #0x9E4E     ;M dptr win: win-9x (0x9E4E)
691F  1287a7    LCALL 0x87A7           ;M 
6922  30e00d    JNB ACC.0, 0x6932      ;M 
6925  90013b    MOV DPTR,# #0x013B     ;M dptr win: MAC/reg-low (0x013B)
6928  e0        MOVX A,@DPTR           ;M 
6929  30e406    JNB ACC.4, 0x6932      ;M 
692C  127520    LCALL 0x7520           ;M 
692F  1277c4    LCALL 0x77C4           ;M 
6932  90a1dd    MOV DPTR,# #0xA1DD     ;M dptr win: win-Ax (0xA1DD)
6935  e0        MOVX A,@DPTR           ;M 
6936  04        INC A                  ;M 
6937  f0        MOVX @DPTR,A           ;M 
6938  e0        MOVX A,@DPTR           ;M 
6939  c3        CLR C                  ;M 
693A  9480      SUBB A,# #0x80         ;M 
693C  400b      JC 0x6949              ;M 
693E  900198    MOV DPTR,# #0x0198     ;M dptr win: MAC/reg-low (0x0198)
6941  e0        MOVX A,@DPTR           ;M 
6942  54fe      ANL A,# #0xFE          ;M 
6944  f0        MOVX @DPTR,A           ;M 
6945  e0        MOVX A,@DPTR           ;M 
6946  4401      ORL A,# #0x01          ;M 
6948  f0        MOVX @DPTR,A           ;M 
6949  7f01      MOV R7,# #0x01         ;M 
694B  0255d8    LJMP 0x55D8            ;M 

sub_694E:  ; M func, size~12
694E  d3        SETB C                 ;M 
694F  10af01    JBC IE.7, 0x6953       ;M 
6952  c3        CLR C                  ;M 
6953  c0d0      PUSH dir PSW           ;M 
6955  ac07      MOV R4,dir 0x07        ;M 
6957  909e4e    MOV DPTR,# #0x9E4E     ;M dptr win: win-9x (0x9E4E)

sub_695A:  ; H func, size~8
695A  124fd7    LCALL 0x4FD7           ;H 
695D  30e002    JNB ACC.0, 0x6962      ;H 
6960  4107      AJMP 0x6A07            ;H 

sub_6962:  ; H func, size~160
6962  909e4d    MOV DPTR,# #0x9E4D     ;H dptr win: win-9x (0x9E4D)
6965  e0        MOVX A,@DPTR           ;H 
6966  30e016    JNB ACC.0, 0x697F      ;H 
6969  909e6f    MOV DPTR,# #0x9E6F     ;H dptr win: win-9x (0x9E6F)
696C  e0        MOVX A,@DPTR           ;H 
696D  2404      ADD A,# #0x04          ;H 
696F  909e67    MOV DPTR,# #0x9E67     ;H dptr win: win-9x (0x9E67)
6972  f0        MOVX @DPTR,A           ;H 
6973  909e6f    MOV DPTR,# #0x9E6F     ;H dptr win: win-9x (0x9E6F)
6976  e0        MOVX A,@DPTR           ;H 
6977  2403      ADD A,# #0x03          ;H 
6979  909e66    MOV DPTR,# #0x9E66     ;H dptr win: win-9x (0x9E66)
697C  f0        MOVX @DPTR,A           ;H 
697D  800d      SJMP 0x698C            ;H 
697F  909e67    MOV DPTR,# #0x9E67     ;H dptr win: win-9x (0x9E67)
6982  7402      MOV A,# #0x02          ;H 
6984  f0        MOVX @DPTR,A           ;H 
6985  909e66    MOV DPTR,# #0x9E66     ;H dptr win: win-9x (0x9E66)
6988  14        DEC A                  ;H 
6989  f0        MOVX @DPTR,A           ;H 
698A  0b        INC R3                 ;H 
698B  0b        INC R3                 ;H 
698C  909e66    MOV DPTR,# #0x9E66     ;H dptr win: win-9x (0x9E66)
698F  e0        MOVX A,@DPTR           ;H 
6990  fa        MOV R2,A               ;H 
6991  909e65    MOV DPTR,# #0x9E65     ;H dptr win: win-9x (0x9E65)
6994  e0        MOVX A,@DPTR           ;H 
6995  d3        SETB C                 ;H 
6996  9a        SUBB A,R2              ;H 
6997  500e      JNC 0x69A7             ;H 
6999  909e5a    MOV DPTR,# #0x9E5A     ;H dptr win: win-9x (0x9E5A)
699C  eb        MOV A,R3               ;H 
699D  f0        MOVX @DPTR,A           ;H 
699E  909e67    MOV DPTR,# #0x9E67     ;H dptr win: win-9x (0x9E67)
69A1  e0        MOVX A,@DPTR           ;H 
69A2  c3        CLR C                  ;H 
69A3  9d        SUBB A,R5              ;H 
69A4  2c        ADD A,R4               ;H 
69A5  8011      SJMP 0x69B8            ;H 
69A7  c3        CLR C                  ;H 
69A8  ed        MOV A,R5               ;H 
69A9  9a        SUBB A,R2              ;H 
69AA  2b        ADD A,R3               ;H 
69AB  909e5a    MOV DPTR,# #0x9E5A     ;H dptr win: win-9x (0x9E5A)
69AE  f0        MOVX @DPTR,A           ;H 
69AF  909e66    MOV DPTR,# #0x9E66     ;H dptr win: win-9x (0x9E66)
69B2  e0        MOVX A,@DPTR           ;H 
69B3  ff        MOV R7,A               ;H 
69B4  a3        INC DPTR               ;H 
69B5  e0        MOVX A,@DPTR           ;H 
69B6  c3        CLR C                  ;H 
69B7  9f        SUBB A,R7              ;H 
69B8  909e6a    MOV DPTR,# #0x9E6A     ;H dptr win: win-9x (0x9E6A)
69BB  f0        MOVX @DPTR,A           ;H 
69BC  909e67    MOV DPTR,# #0x9E67     ;H dptr win: win-9x (0x9E67)
69BF  e0        MOVX A,@DPTR           ;H 
69C0  ff        MOV R7,A               ;H 
69C1  240a      ADD A,# #0x0A          ;H 
69C3  fd        MOV R5,A               ;H 
69C4  e4        CLR A                  ;H 
69C5  33        RLC A                  ;H 
69C6  fc        MOV R4,A               ;H 
69C7  909e6a    MOV DPTR,# #0x9E6A     ;H dptr win: win-9x (0x9E6A)
69CA  5113      ACALL 0x6A13           ;H 
69CC  4004      JC 0x69D2              ;H 
69CE  ef        MOV A,R7               ;H 
69CF  240a      ADD A,# #0x0A          ;H 
69D1  f0        MOVX @DPTR,A           ;H 
69D2  909e6a    MOV DPTR,# #0x9E6A     ;H dptr win: win-9x (0x9E6A)
69D5  e0        MOVX A,@DPTR           ;H 
69D6  ff        MOV R7,A               ;H 
69D7  2423      ADD A,# #0x23          ;H 
69D9  fd        MOV R5,A               ;H 
69DA  e4        CLR A                  ;H 
69DB  33        RLC A                  ;H 
69DC  fc        MOV R4,A               ;H 
69DD  909e5a    MOV DPTR,# #0x9E5A     ;H dptr win: win-9x (0x9E5A)
69E0  5113      ACALL 0x6A13           ;H 
69E2  4004      JC 0x69E8              ;H 
69E4  ef        MOV A,R7               ;H 
69E5  2423      ADD A,# #0x23          ;H 
69E7  f0        MOVX @DPTR,A           ;H 
69E8  909e6a    MOV DPTR,# #0x9E6A     ;H dptr win: win-9x (0x9E6A)
69EB  e0        MOVX A,@DPTR           ;H 
69EC  ff        MOV R7,A               ;H 
69ED  7e00      MOV R6,# #0x00         ;H 
69EF  909e5e    MOV DPTR,# #0x9E5E     ;H dptr win: win-9x (0x9E5E)
69F2  ee        MOV A,R6               ;H 
69F3  f0        MOVX @DPTR,A           ;H 
69F4  a3        INC DPTR               ;H 
69F5  ef        MOV A,R7               ;H 
69F6  f0        MOVX @DPTR,A           ;H 
69F7  900558    MOV DPTR,# #0x0558     ;H dptr win: RAM/table (0x0558)
69FA  e0        MOVX A,@DPTR           ;H 
69FB  6f        XRL A,R7               ;H 
69FC  7001      JNZ 0x69FF             ;H 
69FE  e4        CLR A                  ;H 
69FF  6002      JZ 0x6A03              ;H 
6A01  9104      ACALL 0x6C04           ;H 
6A03  511e      ACALL 0x6A1E           ;H 
6A05  8007      SJMP 0x6A0E            ;H 

sub_6A07:  ; H func, size~12
6A07  909e4f    MOV DPTR,# #0x9E4F     ;H dptr win: win-9x (0x9E4F)
6A0A  e0        MOVX A,@DPTR           ;H 
6A0B  4401      ORL A,# #0x01          ;H 
6A0D  f0        MOVX @DPTR,A           ;H 
6A0E  d0d0      POP dir PSW            ;H 
6A10  92af      MOV bit,C IE.7         ;H 
6A12  22        RET                    ;H 

sub_6A13:  ; H func, size~11
6A13  e0        MOVX A,@DPTR           ;H 
6A14  d3        SETB C                 ;H 
6A15  9d        SUBB A,R5              ;H 
6A16  ec        MOV A,R4               ;H 
6A17  6480      XRL A,# #0x80          ;H 
6A19  f8        MOV R0,A               ;H 
6A1A  7480      MOV A,# #0x80          ;H 
6A1C  98        SUBB A,R0              ;H 
6A1D  22        RET                    ;H 

sub_6A1E:  ; H func, size~8
6A1E  909e4f    MOV DPTR,# #0x9E4F     ;H dptr win: win-9x (0x9E4F)
6A21  e0        MOVX A,@DPTR           ;H 
6A22  54fe      ANL A,# #0xFE          ;H 
6A24  f0        MOVX @DPTR,A           ;H 
6A25  22        RET                    ;H 

sub_6A26:  ; M func, size~53
6A26  12b6e1    LCALL 0xB6E1           ;M 
6A29  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
6A2C  ef        MOV A,R7               ;M 
6A2D  f0        MOVX @DPTR,A           ;M 
6A2E  30e005    JNB ACC.0, 0x6A36      ;M 
6A31  7d01      MOV R5,# #0x01         ;M 
6A33  e4        CLR A                  ;M 
6A34  8002      SJMP 0x6A38            ;M 
6A36  e4        CLR A                  ;M 
6A37  fd        MOV R5,A               ;M 
6A38  ff        MOV R7,A               ;M 
6A39  126296    LCALL 0x6296           ;M 
6A3C  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
6A3F  e0        MOVX A,@DPTR           ;M 
6A40  30e611    JNB ACC.6, 0x6A54      ;M 
6A43  90012f    MOV DPTR,# #0x012F     ;M dptr win: MAC/reg-low (0x012F)
6A46  e0        MOVX A,@DPTR           ;M 
6A47  30e704    JNB ACC.7, 0x6A4E      ;M 
6A4A  e4        CLR A                  ;M 
6A4B  f0        MOVX @DPTR,A           ;M 
6A4C  8006      SJMP 0x6A54            ;M 
6A4E  90012f    MOV DPTR,# #0x012F     ;M dptr win: MAC/reg-low (0x012F)
6A51  7480      MOV A,# #0x80          ;M 
6A53  f0        MOVX @DPTR,A           ;M 
6A54  515b      ACALL 0x6A5B           ;M 
6A56  7402      MOV A,# #0x02          ;M 
6A58  f0        MOVX @DPTR,A           ;M 
6A59  214e      AJMP 0x694E            ;M 

sub_6A5B:  ; M func, size~17
6A5B  909e64    MOV DPTR,# #0x9E64     ;M dptr win: win-9x (0x9E64)
6A5E  e0        MOVX A,@DPTR           ;M 
6A5F  ff        MOV R7,A               ;M 
6A60  a3        INC DPTR               ;M 
6A61  e0        MOVX A,@DPTR           ;M 
6A62  fd        MOV R5,A               ;M 
6A63  909e6b    MOV DPTR,# #0x9E6B     ;M dptr win: win-9x (0x9E6B)
6A66  e0        MOVX A,@DPTR           ;M 
6A67  fb        MOV R3,A               ;M 
6A68  90a1af    MOV DPTR,# #0xA1AF     ;M dptr win: win-Ax (0xA1AF)
6A6B  22        RET                    ;M 

sub_6A6C:  ; M func, size~177
6A6C  125bd9    LCALL 0x5BD9           ;M 
6A6F  1248bd    LCALL 0x48BD           ;M 
6A72  c004      PUSH dir 0x04          ;M 
6A74  c005      PUSH dir 0x05          ;M 
6A76  c006      PUSH dir 0x06          ;M 
6A78  c007      PUSH dir 0x07          ;M 
6A7A  900562    MOV DPTR,# #0x0562     ;M dptr win: RAM/table (0x0562)
6A7D  125bf2    LCALL 0x5BF2           ;M 
6A80  7810      MOV R0,# #0x10         ;M 
6A82  12085a    LCALL 0x085A           ;M 
6A85  d003      POP dir 0x03           ;M 
6A87  d002      POP dir 0x02           ;M 
6A89  d001      POP dir 0x01           ;M 
6A8B  d000      POP dir 0x00           ;M 
6A8D  1248bd    LCALL 0x48BD           ;M 
6A90  c004      PUSH dir 0x04          ;M 
6A92  c005      PUSH dir 0x05          ;M 
6A94  c006      PUSH dir 0x06          ;M 
6A96  c007      PUSH dir 0x07          ;M 
6A98  a3        INC DPTR               ;M 
6A99  125bf2    LCALL 0x5BF2           ;M 
6A9C  7818      MOV R0,# #0x18         ;M 
6A9E  12085a    LCALL 0x085A           ;M 
6AA1  d003      POP dir 0x03           ;M 
6AA3  d002      POP dir 0x02           ;M 
6AA5  d001      POP dir 0x01           ;M 
6AA7  d000      POP dir 0x00           ;M 
6AA9  1248bd    LCALL 0x48BD           ;M 
6AAC  909ea1    MOV DPTR,# #0x9EA1     ;M dptr win: win-9x (0x9EA1)
6AAF  12086d    LCALL 0x086D           ;M 
6AB2  909ea5    MOV DPTR,# #0x9EA5     ;M dptr win: win-9x (0x9EA5)
6AB5  1248db    LCALL 0x48DB           ;M 
6AB8  909ea1    MOV DPTR,# #0x9EA1     ;M dptr win: win-9x (0x9EA1)
6ABB  1248e7    LCALL 0x48E7           ;M 
6ABE  c3        CLR C                  ;M 
6ABF  1248ca    LCALL 0x48CA           ;M 
6AC2  4044      JC 0x6B08              ;M 
6AC4  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
6AC7  e0        MOVX A,@DPTR           ;M 
6AC8  909ea5    MOV DPTR,# #0x9EA5     ;M dptr win: win-9x (0x9EA5)
6ACB  30e00f    JNB ACC.0, 0x6ADD      ;M 
6ACE  71e6      ACALL 0x6BE6           ;M 
6AD0  909e6f    MOV DPTR,# #0x9E6F     ;M dptr win: win-9x (0x9E6F)
6AD3  e0        MOVX A,@DPTR           ;M 
6AD4  2404      ADD A,# #0x04          ;M 
6AD6  2f        ADD A,R7               ;M 
6AD7  ff        MOV R7,A               ;M 
6AD8  909ea9    MOV DPTR,# #0x9EA9     ;M dptr win: win-9x (0x9EA9)
6ADB  8005      SJMP 0x6AE2            ;M 
6ADD  71e6      ACALL 0x6BE6           ;M 
6ADF  909eaa    MOV DPTR,# #0x9EAA     ;M dptr win: win-9x (0x9EAA)
6AE2  e0        MOVX A,@DPTR           ;M 
6AE3  fe        MOV R6,A               ;M 
6AE4  c3        CLR C                  ;M 
6AE5  ef        MOV A,R7               ;M 
6AE6  9e        SUBB A,R6              ;M 
6AE7  90a085    MOV DPTR,# #0xA085     ;M dptr win: win-Ax (0xA085)
6AEA  f0        MOVX @DPTR,A           ;M 
6AEB  90a085    MOV DPTR,# #0xA085     ;M dptr win: win-Ax (0xA085)
6AEE  e0        MOVX A,@DPTR           ;M 
6AEF  ff        MOV R7,A               ;M 
6AF0  c3        CLR C                  ;M 
6AF1  942d      SUBB A,# #0x2D         ;M 
6AF3  5013      JNC 0x6B08             ;M 
6AF5  7470      MOV A,# #0x70          ;M 
6AF7  2f        ADD A,R7               ;M 
6AF8  f582      MOV dir,A DPL          ;M 
6AFA  e4        CLR A                  ;M 
6AFB  349e      ADDC A,# #0x9E         ;M 
6AFD  f583      MOV dir,A DPH          ;M 
6AFF  e0        MOVX A,@DPTR           ;M 
6B00  04        INC A                  ;M 
6B01  f0        MOVX @DPTR,A           ;M 
6B02  909e68    MOV DPTR,# #0x9E68     ;M dptr win: win-9x (0x9E68)
6B05  e0        MOVX A,@DPTR           ;M 
6B06  04        INC A                  ;M 
6B07  f0        MOVX @DPTR,A           ;M 
6B08  909e68    MOV DPTR,# #0x9E68     ;M dptr win: win-9x (0x9E68)
6B0B  e0        MOVX A,@DPTR           ;M 
6B0C  ff        MOV R7,A               ;M 
6B0D  d3        SETB C                 ;M 
6B0E  909eac    MOV DPTR,# #0x9EAC     ;M dptr win: win-9x (0x9EAC)
6B11  e0        MOVX A,@DPTR           ;M 
6B12  9f        SUBB A,R7              ;M 
6B13  909eab    MOV DPTR,# #0x9EAB     ;M dptr win: win-9x (0x9EAB)
6B16  e0        MOVX A,@DPTR           ;M 
6B17  9400      SUBB A,# #0x00         ;M 
6B19  4002      JC 0x6B1D              ;M 
6B1B  61cb      AJMP 0x6BCB            ;M 

sub_6B1D:  ; M func, size~175
6B1D  e4        CLR A                  ;M 
6B1E  ff        MOV R7,A               ;M 
6B1F  fe        MOV R6,A               ;M 
6B20  71d4      ACALL 0x6BD4           ;M 
6B22  fd        MOV R5,A               ;M 
6B23  ef        MOV A,R7               ;M 
6B24  d3        SETB C                 ;M 
6B25  9d        SUBB A,R5              ;M 
6B26  4007      JC 0x6B2F              ;M 
6B28  90a086    MOV DPTR,# #0xA086     ;M dptr win: win-Ax (0xA086)
6B2B  ee        MOV A,R6               ;M 
6B2C  f0        MOVX @DPTR,A           ;M 
6B2D  8005      SJMP 0x6B34            ;M 
6B2F  0e        INC R6                 ;M 
6B30  ee        MOV A,R6               ;M 
6B31  b42dec    CJNE A,# #0x2D, 0x6B20 ;M 
6B34  e4        CLR A                  ;M 
6B35  ff        MOV R7,A               ;M 
6B36  fe        MOV R6,A               ;M 
6B37  71d4      ACALL 0x6BD4           ;M 
6B39  fd        MOV R5,A               ;M 
6B3A  c3        CLR C                  ;M 
6B3B  909eac    MOV DPTR,# #0x9EAC     ;M dptr win: win-9x (0x9EAC)
6B3E  e0        MOVX A,@DPTR           ;M 
6B3F  9d        SUBB A,R5              ;M 
6B40  fd        MOV R5,A               ;M 
6B41  909eab    MOV DPTR,# #0x9EAB     ;M dptr win: win-9x (0x9EAB)
6B44  e0        MOVX A,@DPTR           ;M 
6B45  9400      SUBB A,# #0x00         ;M 
6B47  fc        MOV R4,A               ;M 
6B48  ef        MOV A,R7               ;M 
6B49  d3        SETB C                 ;M 
6B4A  9d        SUBB A,R5              ;M 
6B4B  e4        CLR A                  ;M 
6B4C  9c        SUBB A,R4              ;M 
6B4D  4007      JC 0x6B56              ;M 
6B4F  90a087    MOV DPTR,# #0xA087     ;M dptr win: win-Ax (0xA087)
6B52  ee        MOV A,R6               ;M 
6B53  f0        MOVX @DPTR,A           ;M 
6B54  8005      SJMP 0x6B5B            ;M 
6B56  0e        INC R6                 ;M 
6B57  ee        MOV A,R6               ;M 
6B58  b42ddc    CJNE A,# #0x2D, 0x6B37 ;M 
6B5B  90a086    MOV DPTR,# #0xA086     ;M dptr win: win-Ax (0xA086)
6B5E  e0        MOVX A,@DPTR           ;M 
6B5F  909e6d    MOV DPTR,# #0x9E6D     ;M dptr win: win-9x (0x9E6D)
6B62  f0        MOVX @DPTR,A           ;M 
6B63  90a087    MOV DPTR,# #0xA087     ;M dptr win: win-Ax (0xA087)
6B66  e0        MOVX A,@DPTR           ;M 
6B67  909e6e    MOV DPTR,# #0x9E6E     ;M dptr win: win-9x (0x9E6E)
6B6A  71cc      ACALL 0x6BCC           ;M 
6B6C  940a      SUBB A,# #0x0A         ;M 
6B6E  400a      JC 0x6B7A              ;M 
6B70  ef        MOV A,R7               ;M 
6B71  24f6      ADD A,# #0xF6          ;M 
6B73  909e65    MOV DPTR,# #0x9E65     ;M dptr win: win-9x (0x9E65)
6B76  f0        MOVX @DPTR,A           ;M 
6B77  e4        CLR A                  ;M 
6B78  8009      SJMP 0x6B83            ;M 
6B7A  e4        CLR A                  ;M 
6B7B  909e65    MOV DPTR,# #0x9E65     ;M dptr win: win-9x (0x9E65)
6B7E  71cc      ACALL 0x6BCC           ;M 
6B80  740a      MOV A,# #0x0A          ;M 
6B82  9f        SUBB A,R7              ;M 
6B83  909e64    MOV DPTR,# #0x9E64     ;M dptr win: win-9x (0x9E64)
6B86  f0        MOVX @DPTR,A           ;M 
6B87  909e6d    MOV DPTR,# #0x9E6D     ;M dptr win: win-9x (0x9E6D)
6B8A  e0        MOVX A,@DPTR           ;M 
6B8B  ff        MOV R7,A               ;M 
6B8C  a3        INC DPTR               ;M 
6B8D  e0        MOVX A,@DPTR           ;M 
6B8E  c3        CLR C                  ;M 
6B8F  9f        SUBB A,R7              ;M 
6B90  909e6b    MOV DPTR,# #0x9E6B     ;M dptr win: win-9x (0x9E6B)
6B93  f0        MOVX @DPTR,A           ;M 
6B94  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
6B97  e0        MOVX A,@DPTR           ;M 
6B98  30e005    JNB ACC.0, 0x6BA0      ;M 
6B9B  909ea9    MOV DPTR,# #0x9EA9     ;M dptr win: win-9x (0x9EA9)
6B9E  8003      SJMP 0x6BA3            ;M 
6BA0  909eaa    MOV DPTR,# #0x9EAA     ;M dptr win: win-9x (0x9EAA)
6BA3  e0        MOVX A,@DPTR           ;M 
6BA4  04        INC A                  ;M 
6BA5  ff        MOV R7,A               ;M 
6BA6  909e6b    MOV DPTR,# #0x9E6B     ;M dptr win: win-9x (0x9E6B)
6BA9  e0        MOVX A,@DPTR           ;M 
6BAA  2f        ADD A,R7               ;M 
6BAB  f0        MOVX @DPTR,A           ;M 
6BAC  909e6b    MOV DPTR,# #0x9E6B     ;M dptr win: win-9x (0x9E6B)
6BAF  e0        MOVX A,@DPTR           ;M 
6BB0  c3        CLR C                  ;M 
6BB1  9410      SUBB A,# #0x10         ;M 
6BB3  5003      JNC 0x6BB8             ;M 
6BB5  7410      MOV A,# #0x10          ;M 
6BB7  f0        MOVX @DPTR,A           ;M 
6BB8  909e6b    MOV DPTR,# #0x9E6B     ;M dptr win: win-9x (0x9E6B)
6BBB  e0        MOVX A,@DPTR           ;M 
6BBC  2402      ADD A,# #0x02          ;M 
6BBE  f0        MOVX @DPTR,A           ;M 
6BBF  515b      ACALL 0x6A5B           ;M 
6BC1  7403      MOV A,# #0x03          ;M 
6BC3  f0        MOVX @DPTR,A           ;M 
6BC4  314e      ACALL 0x694E           ;M 
6BC6  e4        CLR A                  ;M 
6BC7  ff        MOV R7,A               ;M 
6BC8  12bbb6    LCALL 0xBBB6           ;M 
6BCB  22        RET                    ;M 

sub_6BCC:  ; M func, size~8
6BCC  f0        MOVX @DPTR,A           ;M 
6BCD  909e6d    MOV DPTR,# #0x9E6D     ;M dptr win: win-9x (0x9E6D)
6BD0  e0        MOVX A,@DPTR           ;M 
6BD1  ff        MOV R7,A               ;M 
6BD2  c3        CLR C                  ;M 
6BD3  22        RET                    ;M 

sub_6BD4:  ; M func, size~18
6BD4  7470      MOV A,# #0x70          ;M 
6BD6  2e        ADD A,R6               ;M 
6BD7  f582      MOV dir,A DPL          ;M 
6BD9  e4        CLR A                  ;M 
6BDA  349e      ADDC A,# #0x9E         ;M 
6BDC  f583      MOV dir,A DPH          ;M 
6BDE  e0        MOVX A,@DPTR           ;M 
6BDF  2f        ADD A,R7               ;M 
6BE0  ff        MOV R7,A               ;M 
6BE1  909ead    MOV DPTR,# #0x9EAD     ;M dptr win: win-9x (0x9EAD)
6BE4  e0        MOVX A,@DPTR           ;M 
6BE5  22        RET                    ;M 

sub_6BE6:  ; M func, size~30
6BE6  1248e7    LCALL 0x48E7           ;M 
6BE9  909ea1    MOV DPTR,# #0x9EA1     ;M dptr win: win-9x (0x9EA1)
6BEC  1248db    LCALL 0x48DB           ;M 
6BEF  124853    LCALL 0x4853           ;M 
6BF2  780a      MOV R0,# #0x0A         ;M 
6BF4  120847    LCALL 0x0847           ;M 
6BF7  909e6a    MOV DPTR,# #0x9E6A     ;M dptr win: win-9x (0x9E6A)
6BFA  e0        MOVX A,@DPTR           ;M 
6BFB  fe        MOV R6,A               ;M 
6BFC  c3        CLR C                  ;M 
6BFD  740a      MOV A,# #0x0A          ;M 
6BFF  9e        SUBB A,R6              ;M 
6C00  2f        ADD A,R7               ;M 
6C01  ff        MOV R7,A               ;M 
6C02  22        RET                    ;M 
6C03  .db F0

sub_6C04:  ; H func, size~10
6C04  909e5e    MOV DPTR,# #0x9E5E     ;H dptr win: win-9x (0x9E5E)
6C07  a3        INC DPTR               ;H 
6C08  e0        MOVX A,@DPTR           ;H 
6C09  900558    MOV DPTR,# #0x0558     ;H dptr win: RAM/table (0x0558)
6C0C  f0        MOVX @DPTR,A           ;H 
6C0D  22        RET                    ;H 

sub_6C0E:  ; H func, size~1
6C0E  1248bd    LCALL 0x48BD           ;H 
6C11  909ea5    MOV DPTR,# #0x9EA5     ;H dptr win: win-9x (0x9EA5)
6C14  12086d    LCALL 0x086D           ;H 
6C17  909e4e    MOV DPTR,# #0x9E4E     ;H dptr win: win-9x (0x9E4E)
6C1A  e0        MOVX A,@DPTR           ;H 
6C1B  22        RET                    ;H 
6C1C  .db E4 F5 63 90 9E 52 E0 60 7B 12 72 FF 64 01 70 74
6C2C  .db 12 5B D9 12 48 BD C0 04 C0 05 C0 06 C0 07 90 05
6C3C  .db 62 12 5B F2 78 10 12 08 5A D0 03 D0 02 D0 01 D0
6C4C  .db 00 12 48 BD C0 04 C0 05 C0 06 C0 07 A3 12

sub_6C5A:  ; H func, size~71
6C5A  5b        ANL A,R3               ;H 
6C5B  f2        MOVX @R0,A             ;H 
6C5C  7818      MOV R0,# #0x18         ;H 
6C5E  12085a    LCALL 0x085A           ;H 
6C61  d003      POP dir 0x03           ;H 
6C63  d002      POP dir 0x02           ;H 
6C65  d001      POP dir 0x01           ;H 
6C67  d000      POP dir 0x00           ;H 
6C69  910e      ACALL 0x6C0E           ;H 
6C6B  4480      ORL A,# #0x80          ;H 
6C6D  f0        MOVX @DPTR,A           ;H 
6C6E  12bd93    LCALL 0xBD93           ;H 
6C71  600a      JZ 0x6C7D              ;H 
6C73  909e4e    MOV DPTR,# #0x9E4E     ;H dptr win: win-9x (0x9E4E)
6C76  e0        MOVX A,@DPTR           ;H 
6C77  1265f4    LCALL 0x65F4           ;H 
6C7A  20e003    JB ACC.0, 0x6C80       ;H 
6C7D  756301    MOV dir,# 0x63, #0x01  ;H 
6C80  909e48    MOV DPTR,# #0x9E48     ;H dptr win: win-9x (0x9E48)
6C83  e0        MOVX A,@DPTR           ;H 
6C84  30e012    JNB ACC.0, 0x6C99      ;H 
6C87  909e4c    MOV DPTR,# #0x9E4C     ;H dptr win: win-9x (0x9E4C)
6C8A  e0        MOVX A,@DPTR           ;H 
6C8B  b40203    CJNE A,# #0x02, 0x6C91 ;H 
6C8E  e4        CLR A                  ;H 
6C8F  f563      MOV dir,A 0x63         ;H 
6C91  126678    LCALL 0x6678           ;H 
6C94  ef        MOV A,R7               ;H 
6C95  7002      JNZ 0x6C99             ;H 
6C97  f563      MOV dir,A 0x63         ;H 
6C99  e563      MOV A,dir 0x63         ;H 
6C9B  6003      JZ 0x6CA0              ;H 
6C9D  1280da    LCALL 0x80DA           ;H 
6CA0  22        RET                    ;H 

sub_6CA1:  ; M func, size~159
6CA1  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
6CA4  e0        MOVX A,@DPTR           ;M 
6CA5  30e011    JNB ACC.0, 0x6CB9      ;M 
6CA8  a3        INC DPTR               ;M 
6CA9  7401      MOV A,# #0x01          ;M 
6CAB  f0        MOVX @DPTR,A           ;M 
6CAC  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
6CAF  e0        MOVX A,@DPTR           ;M 
6CB0  ff        MOV R7,A               ;M 
6CB1  c3        CLR C                  ;M 
6CB2  13        RRC A                  ;M 
6CB3  30e003    JNB ACC.0, 0x6CB9      ;M 
6CB6  12b618    LCALL 0xB618           ;M 
6CB9  911c      ACALL 0x6C1C           ;M 
6CBB  e4        CLR A                  ;M 
6CBC  ff        MOV R7,A               ;M 
6CBD  b158      ACALL 0x6D58           ;M 
6CBF  128752    LCALL 0x8752           ;M 
6CC2  0258d3    LJMP 0x58D3            ;M 
6CC5  .db E4 90 A0 93 F0 90 9E 52 E0 60 77 12 72 FF 64 01
6CD5  .db 70 70 F1 CE 12 5B D8 12 48 BD C0 04 C0 05 C0 06
6CE5  .db C0 07 90 05 62 12 5B F2 78 10 12 08 5A D0 03 D0
6CF5  .db 02 D0 01 D0 00 12 48 BD C0 04 C0 05 C0 06 C0 07
6D05  .db A3 12 5B F2 78 18 12 08 5A D0 03 D0 02 D0 01 D0
6D15  .db 00 91 0E 44 80 B1 8D E4 90 9E 59 F0 90 9E 48 E0
6D25  .db 30 E0 16 90 9E 4C E0 B4 02 05 E4 90 A0 93 F0 12
6D35  .db 66 78 EF 70 04 90 A0 93 F0 90 A0

sub_6D40:  ; H func, size~8
6D40  93        MOVC A,@A+DPTR         ;H 
6D41  e0        MOVX A,@DPTR           ;H 
6D42  6003      JZ 0x6D47              ;H 
6D44  1280da    LCALL 0x80DA           ;H 
6D47  22        RET                    ;H 

sub_6D48:  ; M func, size~16
6D48  91c5      ACALL 0x6CC5           ;M 
6D4A  7d02      MOV R5,# #0x02         ;M 
6D4C  7f02      MOV R7,# #0x02         ;M 
6D4E  12750c    LCALL 0x750C           ;M 
6D51  7f01      MOV R7,# #0x01         ;M 
6D53  b158      ACALL 0x6D58           ;M 
6D55  028752    LJMP 0x8752            ;M 

sub_6D58:  ; M func, size~53
6D58  d3        SETB C                 ;M 
6D59  10af01    JBC IE.7, 0x6D5D       ;M 
6D5C  c3        CLR C                  ;M 
6D5D  c0d0      PUSH dir PSW           ;M 
6D5F  909e4f    MOV DPTR,# #0x9E4F     ;M dptr win: win-9x (0x9E4F)
6D62  e0        MOVX A,@DPTR           ;M 
6D63  fe        MOV R6,A               ;M 
6D64  c3        CLR C                  ;M 
6D65  13        RRC A                  ;M 
6D66  30e01f    JNB ACC.0, 0x6D88      ;M 
6D69  90a132    MOV DPTR,# #0xA132     ;M dptr win: win-Ax (0xA132)
6D6C  741e      MOV A,# #0x1E          ;M 
6D6E  f0        MOVX @DPTR,A           ;M 
6D6F  90a140    MOV DPTR,# #0xA140     ;M dptr win: win-Ax (0xA140)
6D72  7401      MOV A,# #0x01          ;M 
6D74  f0        MOVX @DPTR,A           ;M 
6D75  90a134    MOV DPTR,# #0xA134     ;M dptr win: win-Ax (0xA134)
6D78  ef        MOV A,R7               ;M 
6D79  f0        MOVX @DPTR,A           ;M 
6D7A  7b01      MOV R3,# #0x01         ;M 
6D7C  7aa1      MOV R2,# #0xA1         ;M 
6D7E  7932      MOV R1,# #0x32         ;M 
6D80  125575    LCALL 0x5575           ;M 
6D83  7f04      MOV R7,# #0x04         ;M 
6D85  1255d8    LCALL 0x55D8           ;M 
6D88  d0d0      POP dir PSW            ;M 
6D8A  92af      MOV bit,C IE.7         ;M 
6D8C  22        RET                    ;M 

sub_6D8D:  ; M func, size~8
6D8D  f0        MOVX @DPTR,A           ;M 
6D8E  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
6D91  7401      MOV A,# #0x01          ;M 
6D93  f0        MOVX @DPTR,A           ;M 
6D94  22        RET                    ;M 

sub_6D95:  ; M func, size~134
6D95  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6D98  e0        MOVX A,@DPTR           ;M 
6D99  ff        MOV R7,A               ;M 
6D9A  c3        CLR C                  ;M 
6D9B  13        RRC A                  ;M 
6D9C  30e004    JNB ACC.0, 0x6DA3      ;M 
6D9F  ef        MOV A,R7               ;M 
6DA0  54fd      ANL A,# #0xFD          ;M 
6DA2  f0        MOVX @DPTR,A           ;M 
6DA3  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6DA6  126670    LCALL 0x6670           ;M 
6DA9  30e010    JNB ACC.0, 0x6DBC      ;M 
6DAC  ef        MOV A,R7               ;M 
6DAD  54f7      ANL A,# #0xF7          ;M 
6DAF  f0        MOVX @DPTR,A           ;M 
6DB0  90fd58    MOV DPTR,# #0xFD58     ;M dptr win: win-Bx+ (0xFD58)
6DB3  e0        MOVX A,@DPTR           ;M 
6DB4  30e005    JNB ACC.0, 0x6DBC      ;M 
6DB7  e4        CLR A                  ;M 
6DB8  ff        MOV R7,A               ;M 
6DB9  1255d4    LCALL 0x55D4           ;M 
6DBC  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6DBF  12874b    LCALL 0x874B           ;M 
6DC2  30e004    JNB ACC.0, 0x6DC9      ;M 
6DC5  ef        MOV A,R7               ;M 
6DC6  54df      ANL A,# #0xDF          ;M 
6DC8  f0        MOVX @DPTR,A           ;M 
6DC9  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6DCC  e0        MOVX A,@DPTR           ;M 
6DCD  ff        MOV R7,A               ;M 
6DCE  124fd8    LCALL 0x4FD8           ;M 
6DD1  30e023    JNB ACC.0, 0x6DF7      ;M 
6DD4  ef        MOV A,R7               ;M 
6DD5  547f      ANL A,# #0x7F          ;M 
6DD7  f0        MOVX @DPTR,A           ;M 
6DD8  90fd58    MOV DPTR,# #0xFD58     ;M dptr win: win-Bx+ (0xFD58)
6DDB  e0        MOVX A,@DPTR           ;M 
6DDC  20e004    JB ACC.0, 0x6DE3       ;M 
6DDF  b18e      ACALL 0x6D8E           ;M 
6DE1  8005      SJMP 0x6DE8            ;M 
6DE3  e4        CLR A                  ;M 
6DE4  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
6DE7  f0        MOVX @DPTR,A           ;M 
6DE8  90a093    MOV DPTR,# #0xA093     ;M dptr win: win-Ax (0xA093)
6DEB  e0        MOVX A,@DPTR           ;M 
6DEC  fd        MOV R5,A               ;M 
6DED  909ee3    MOV DPTR,# #0x9EE3     ;M dptr win: win-9x (0x9EE3)
6DF0  e0        MOVX A,@DPTR           ;M 
6DF1  fb        MOV R3,A               ;M 
6DF2  e4        CLR A                  ;M 
6DF3  ff        MOV R7,A               ;M 
6DF4  125739    LCALL 0x5739           ;M 
6DF7  909edf    MOV DPTR,# #0x9EDF     ;M dptr win: win-9x (0x9EDF)
6DFA  e0        MOVX A,@DPTR           ;M 
6DFB  ff        MOV R7,A               ;M 
6DFC  c3        CLR C                  ;M 
6DFD  13        RRC A                  ;M 
6DFE  30e004    JNB ACC.0, 0x6E05      ;M 
6E01  ef        MOV A,R7               ;M 
6E02  54fd      ANL A,# #0xFD          ;M 
6E04  f0        MOVX @DPTR,A           ;M 
6E05  90fd58    MOV DPTR,# #0xFD58     ;M dptr win: win-Bx+ (0xFD58)
6E08  e0        MOVX A,@DPTR           ;M 
6E09  20e055    JB ACC.0, 0x6E61       ;M 
6E0C  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6E0F  e0        MOVX A,@DPTR           ;M 
6E10  30e008    JNB ACC.0, 0x6E1B      ;M 
6E13  7b01      MOV R3,# #0x01         ;M 
6E15  7a9f      MOV R2,# #0x9F         ;M 
6E17  7900      MOV R1,# #0x00         ;M 
6E19  c1b3      AJMP 0x6EB3            ;M 

sub_6E1B:  ; M func, size~19
6E1B  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6E1E  e0        MOVX A,@DPTR           ;M 
6E1F  ff        MOV R7,A               ;M 
6E20  c4        SWAP A                 ;M 
6E21  540f      ANL A,# #0x0F          ;M 
6E23  30e008    JNB ACC.0, 0x6E2E      ;M 
6E26  7b01      MOV R3,# #0x01         ;M 
6E28  7a9e      MOV R2,# #0x9E         ;M 
6E2A  79e1      MOV R1,# #0xE1         ;M 
6E2C  e16c      AJMP 0x6F6C            ;M 

sub_6E2E:  ; M func, size~19
6E2E  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6E31  e0        MOVX A,@DPTR           ;M 
6E32  1265f4    LCALL 0x65F4           ;M 
6E35  30e009    JNB ACC.0, 0x6E41      ;M 
6E38  7b01      MOV R3,# #0x01         ;M 
6E3A  7a9e      MOV R2,# #0x9E         ;M 
6E3C  79e3      MOV R1,# #0xE3         ;M 
6E3E  02b1d8    LJMP 0xB1D8            ;M 

sub_6E41:  ; M func, size~33
6E41  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6E44  1275b3    LCALL 0x75B3           ;M 
6E47  30e008    JNB ACC.0, 0x6E52      ;M 
6E4A  7b01      MOV R3,# #0x01         ;M 
6E4C  7a9e      MOV R2,# #0x9E         ;M 
6E4E  79e0      MOV R1,# #0xE0         ;M 
6E50  8010      SJMP 0x6E62            ;M 
6E52  909edf    MOV DPTR,# #0x9EDF     ;M dptr win: win-9x (0x9EDF)
6E55  e0        MOVX A,@DPTR           ;M 
6E56  30e008    JNB ACC.0, 0x6E61      ;M 
6E59  7b01      MOV R3,# #0x01         ;M 
6E5B  7a9e      MOV R2,# #0x9E         ;M 
6E5D  79e2      MOV R1,# #0xE2         ;M 
6E5F  f118      ACALL 0x6F18           ;M 
6E61  22        RET                    ;M 

sub_6E62:  ; M func, size~36
6E62  90a1b6    MOV DPTR,# #0xA1B6     ;M dptr win: win-Ax (0xA1B6)
6E65  124908    LCALL 0x4908           ;M 
6E68  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6E6B  e0        MOVX A,@DPTR           ;M 
6E6C  4404      ORL A,# #0x04          ;M 
6E6E  f0        MOVX @DPTR,A           ;M 
6E6F  7d01      MOV R5,# #0x01         ;M 
6E71  7f23      MOV R7,# #0x23         ;M 
6E73  1255eb    LCALL 0x55EB           ;M 
6E76  8f6b      MOV dir,R7 0x6B        ;M 
6E78  e56b      MOV A,dir 0x6B         ;M 
6E7A  b40109    CJNE A,# #0x01, 0x6E86 ;M 
6E7D  d1ab      ACALL 0x6EAB           ;M 
6E7F  4408      ORL A,# #0x08          ;M 
6E81  f106      ACALL 0x6F06           ;M 
6E83  0280ad    LJMP 0x80AD            ;M 

sub_6E86:  ; M func, size~19
6E86  e56b      MOV A,dir 0x6B         ;M 
6E88  b4020e    CJNE A,# #0x02, 0x6E99 ;M 
6E8B  90a1b6    MOV DPTR,# #0xA1B6     ;M dptr win: win-Ax (0xA1B6)
6E8E  1248ff    LCALL 0x48FF           ;M 
6E91  120689    LCALL 0x0689           ;M 
6E94  909ee0    MOV DPTR,# #0x9EE0     ;M dptr win: win-9x (0x9EE0)
6E97  f0        MOVX @DPTR,A           ;M 
6E98  22        RET                    ;M 

sub_6E99:  ; M func, size~18
6E99  e56b      MOV A,dir 0x6B         ;M 
6E9B  b4040c    CJNE A,# #0x04, 0x6EAA ;M 
6E9E  d1ab      ACALL 0x6EAB           ;M 
6EA0  e4        CLR A                  ;M 
6EA1  ff        MOV R7,A               ;M 
6EA2  1254fa    LCALL 0x54FA           ;M 
6EA5  7f04      MOV R7,# #0x04         ;M 
6EA7  128ffc    LCALL 0x8FFC           ;M 
6EAA  22        RET                    ;M 

sub_6EAB:  ; M func, size~66
6EAB  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6EAE  e0        MOVX A,@DPTR           ;M 
6EAF  54fb      ANL A,# #0xFB          ;M 
6EB1  f0        MOVX @DPTR,A           ;M 
6EB2  22        RET                    ;M 
6EB3  .db 90 A1 88 12 49 08 90 A1 88 12 48 FF 12 06 89 90
6EC3  .db 9F 00 12 57 32 90 9F 01 12 4F B8 90 9F 02 F0 90
6ED3  .db 9E DE E0 44 01 F0 90 A1 88 12 48 FF F1 C7 90 A1
6EE3  .db 8B EF F0 BF 01 08 90 9E DE F1

sub_6EED:  ; H func, size~6
6EED  00        NOP                    ;H 
6EEE  0280ad    LJMP 0x80AD            ;H 
6EF1  .db 90 A1

sub_6EF3:  ; H func, size~5
6EF3  8be0      MOV dir,R3 ACC         ;H 
6EF5  b40407    CJNE A,# #0x04, 0x6EFF ;H 

sub_6EF8:  ; H func, size~6
6EF8  909ede    MOV DPTR,# #0x9EDE     ;H dptr win: win-9x (0x9EDE)
6EFB  e0        MOVX A,@DPTR           ;H 
6EFC  54fe      ANL A,# #0xFE          ;H 

sub_6EFE:  ; H func, size~2
6EFE  f0        MOVX @DPTR,A           ;H 
6EFF  22        RET                    ;H 

sub_6F00:  ; H func, size~17
6F00  e0        MOVX A,@DPTR           ;H 
6F01  54fe      ANL A,# #0xFE          ;H 
6F03  f0        MOVX @DPTR,A           ;H 
6F04  4402      ORL A,# #0x02          ;H 
6F06  f0        MOVX @DPTR,A           ;H 
6F07  e4        CLR A                  ;H 
6F08  90a179    MOV DPTR,# #0xA179     ;H dptr win: win-Ax (0xA179)
6F0B  f0        MOVX @DPTR,A           ;H 
6F0C  a3        INC DPTR               ;H 
6F0D  740a      MOV A,# #0x0A          ;H 
6F0F  f0        MOVX @DPTR,A           ;H 
6F10  e4        CLR A                  ;H 

sub_6F11:  ; H func, size~2
6F11  fb        MOV R3,A               ;H 
6F12  fd        MOV R5,A               ;H 

sub_6F13:  ; H func, size~26
6F13  7f68      MOV R7,# #0x68         ;H 
6F15  7e01      MOV R6,# #0x01         ;H 
6F17  22        RET                    ;H 
6F18  .db D3 10 AF 01 C3 C0 D0 90 A1 8C 12 49 08 90 9E DF
6F28  .db E0 44 01 F0 7D

sub_6F2D:  ; H func, size~6
6F2D  017f      AJMP 0x687F            ;H 
6F2F  .db 28 12 55 EB

sub_6F33:  ; H func, size~57
6F33  90a18f    MOV DPTR,# #0xA18F     ;H dptr win: win-Ax (0xA18F)
6F36  ef        MOV A,R7               ;H 
6F37  f0        MOVX @DPTR,A           ;H 
6F38  bf010a    CJNE R7,# #0x01, 0x6F45 ;H 
6F3B  909edf    MOV DPTR,# #0x9EDF     ;H dptr win: win-9x (0x9EDF)
6F3E  f100      ACALL 0x6F00           ;H 
6F40  1280ad    LCALL 0x80AD           ;H 
6F43  8022      SJMP 0x6F67            ;H 
6F45  90a18f    MOV DPTR,# #0xA18F     ;H dptr win: win-Ax (0xA18F)
6F48  e0        MOVX A,@DPTR           ;H 
6F49  ff        MOV R7,A               ;H 
6F4A  b4020f    CJNE A,# #0x02, 0x6F5C ;H 
6F4D  90a18c    MOV DPTR,# #0xA18C     ;H dptr win: win-Ax (0xA18C)
6F50  1248ff    LCALL 0x48FF           ;H 
6F53  120689    LCALL 0x0689           ;H 
6F56  909ee2    MOV DPTR,# #0x9EE2     ;H dptr win: win-9x (0x9EE2)
6F59  f0        MOVX @DPTR,A           ;H 
6F5A  800b      SJMP 0x6F67            ;H 
6F5C  ef        MOV A,R7               ;H 
6F5D  b40407    CJNE A,# #0x04, 0x6F67 ;H 
6F60  909edf    MOV DPTR,# #0x9EDF     ;H dptr win: win-9x (0x9EDF)
6F63  e0        MOVX A,@DPTR           ;H 
6F64  54fe      ANL A,# #0xFE          ;H 
6F66  f0        MOVX @DPTR,A           ;H 
6F67  d0d0      POP dir PSW            ;H 
6F69  92af      MOV bit,C IE.7         ;H 
6F6B  22        RET                    ;H 

sub_6F6C:  ; M func, size~52
6F6C  90a184    MOV DPTR,# #0xA184     ;M dptr win: win-Ax (0xA184)
6F6F  128fcb    LCALL 0x8FCB           ;M 
6F72  5401      ANL A,# #0x01          ;M 
6F74  c4        SWAP A                 ;M 
6F75  54f0      ANL A,# #0xF0          ;M 
6F77  ff        MOV R7,A               ;M 
6F78  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6F7B  e0        MOVX A,@DPTR           ;M 
6F7C  54ef      ANL A,# #0xEF          ;M 
6F7E  4f        ORL A,R7               ;M 
6F7F  f0        MOVX @DPTR,A           ;M 
6F80  900001    MOV DPTR,# #0x0001     ;M dptr win: MAC/reg-low (0x0001)
6F83  e4        CLR A                  ;M 
6F84  1206e1    LCALL 0x06E1           ;M 
6F87  1255e7    LCALL 0x55E7           ;M 
6F8A  90a187    MOV DPTR,# #0xA187     ;M dptr win: win-Ax (0xA187)
6F8D  ef        MOV A,R7               ;M 
6F8E  f0        MOVX @DPTR,A           ;M 
6F8F  bf010e    CJNE R7,# #0x01, 0x6FA0 ;M 
6F92  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6F95  e0        MOVX A,@DPTR           ;M 
6F96  54ef      ANL A,# #0xEF          ;M 
6F98  f0        MOVX @DPTR,A           ;M 
6F99  4420      ORL A,# #0x20          ;M 
6F9B  f106      ACALL 0x6F06           ;M 
6F9D  0280ad    LJMP 0x80AD            ;M 

sub_6FA0:  ; M func, size~21
6FA0  90a187    MOV DPTR,# #0xA187     ;M dptr win: win-Ax (0xA187)
6FA3  e0        MOVX A,@DPTR           ;M 
6FA4  ff        MOV R7,A               ;M 
6FA5  b4020e    CJNE A,# #0x02, 0x6FB6 ;M 
6FA8  90a184    MOV DPTR,# #0xA184     ;M dptr win: win-Ax (0xA184)
6FAB  1248ff    LCALL 0x48FF           ;M 
6FAE  120689    LCALL 0x0689           ;M 
6FB1  909ee1    MOV DPTR,# #0x9EE1     ;M dptr win: win-9x (0x9EE1)
6FB4  f0        MOVX @DPTR,A           ;M 

sub_6FB5:  ; H func, size~1
6FB5  22        RET                    ;H 

sub_6FB6:  ; M func, size~12
6FB6  ef        MOV A,R7               ;M 
6FB7  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
6FBA  b40405    CJNE A,# #0x04, 0x6FC2 ;M 
6FBD  e0        MOVX A,@DPTR           ;M 
6FBE  54ef      ANL A,# #0xEF          ;M 
6FC0  f0        MOVX @DPTR,A           ;M 
6FC1  22        RET                    ;M 

sub_6FC2:  ; M func, size~11
6FC2  e0        MOVX A,@DPTR           ;M 
6FC3  4410      ORL A,# #0x10          ;M 
6FC5  f0        MOVX @DPTR,A           ;M 
6FC6  22        RET                    ;M 
6FC7  .db 7D 03 7F 11 02 55

sub_6FCD:  ; H func, size~23
6FCD  eb        MOV A,R3               ;H 
6FCE  909e58    MOV DPTR,# #0x9E58     ;H dptr win: win-9x (0x9E58)
6FD1  e0        MOVX A,@DPTR           ;H 
6FD2  900573    MOV DPTR,# #0x0573     ;H dptr win: RAM/table (0x0573)
6FD5  22        RET                    ;H 
6FD6  .db 90 A0 5C 12 49 08 90 04 24 E0 F5 51 E4 FF 12 56
6FE6  .db C5 8F 82 12 57 B0 25 51 FE 75

irq_03:  ; H func, size~1
6FF0  f0        MOVX @DPTR,A           ;H 

irq_43:  ; H func, size~16
6FF1  1b        DEC R3                 ;H 
6FF2  ef        MOV A,R7               ;H 
6FF3  909f23    MOV DPTR,# #0x9F23     ;H dptr win: win-9x (0x9F23)
6FF6  1248f3    LCALL 0x48F3           ;H 
6FF9  ee        MOV A,R6               ;H 
6FFA  f0        MOVX @DPTR,A           ;H 
6FFB  0f        INC R7                 ;H 
6FFC  ef        MOV A,R7               ;H 
6FFD  b403e4    CJNE A,# #0x03, 0x6FE4 ;H 
7000  22        RET                    ;H 

sub_7001:  ; M func, size~19
7001  120689    LCALL 0x0689           ;M 
7004  ff        MOV R7,A               ;M 
7005  909e36    MOV DPTR,# #0x9E36     ;M dptr win: win-9x (0x9E36)
7008  f0        MOVX @DPTR,A           ;M 
7009  bf0107    CJNE R7,# #0x01, 0x7013 ;M 
700C  1114      ACALL 0x7014           ;M 
700E  e4        CLR A                  ;M 
700F  909e36    MOV DPTR,# #0x9E36     ;M dptr win: win-9x (0x9E36)
7012  f0        MOVX @DPTR,A           ;M 
7013  22        RET                    ;M 

sub_7014:  ; M func, size~24
7014  127f69    LCALL 0x7F69           ;M 
7017  7ff5      MOV R7,# #0xF5         ;M 
7019  7e01      MOV R6,# #0x01         ;M 
701B  1234bc    LCALL 0x34BC           ;M 
701E  bf0106    CJNE R7,# #0x01, 0x7027 ;M 
7021  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
7024  e0        MOVX A,@DPTR           ;M 
7025  a3        INC DPTR               ;M 
7026  f0        MOVX @DPTR,A           ;M 
7027  127f69    LCALL 0x7F69           ;M 
702A  7ff6      MOV R7,# #0xF6         ;M 

irq_13:  ; H func, size~107
702C  7e01      MOV R6,# #0x01         ;H 
702E  1234bc    LCALL 0x34BC           ;H 
7031  bf0108    CJNE R7,# #0x01, 0x703C ;H 
7034  90a05c    MOV DPTR,# #0xA05C     ;H dptr win: win-Ax (0xA05C)
7037  e0        MOVX A,@DPTR           ;H 
7038  90a05e    MOV DPTR,# #0xA05E     ;H dptr win: win-Ax (0xA05E)
703B  f0        MOVX @DPTR,A           ;H 
703C  127f69    LCALL 0x7F69           ;H 
703F  7ff4      MOV R7,# #0xF4         ;H 
7041  7e01      MOV R6,# #0x01         ;H 
7043  1234bc    LCALL 0x34BC           ;H 
7046  bf0108    CJNE R7,# #0x01, 0x7051 ;H 
7049  90a05c    MOV DPTR,# #0xA05C     ;H dptr win: win-Ax (0xA05C)
704C  e0        MOVX A,@DPTR           ;H 
704D  90a05f    MOV DPTR,# #0xA05F     ;H dptr win: win-Ax (0xA05F)
7050  f0        MOVX @DPTR,A           ;H 
7051  127f69    LCALL 0x7F69           ;H 
7054  7ff3      MOV R7,# #0xF3         ;H 
7056  7e01      MOV R6,# #0x01         ;H 
7058  1234bc    LCALL 0x34BC           ;H 
705B  bf0108    CJNE R7,# #0x01, 0x7066 ;H 
705E  90a05c    MOV DPTR,# #0xA05C     ;H dptr win: win-Ax (0xA05C)
7061  e0        MOVX A,@DPTR           ;H 
7062  90a060    MOV DPTR,# #0xA060     ;H dptr win: win-Ax (0xA060)
7065  f0        MOVX @DPTR,A           ;H 
7066  127f69    LCALL 0x7F69           ;H 
7069  7ff2      MOV R7,# #0xF2         ;H 
706B  7e01      MOV R6,# #0x01         ;H 
706D  1234bc    LCALL 0x34BC           ;H 
7070  bf0108    CJNE R7,# #0x01, 0x707B ;H 
7073  90a05c    MOV DPTR,# #0xA05C     ;H dptr win: win-Ax (0xA05C)
7076  e0        MOVX A,@DPTR           ;H 
7077  90a061    MOV DPTR,# #0xA061     ;H dptr win: win-Ax (0xA061)
707A  f0        MOVX @DPTR,A           ;H 
707B  90a05d    MOV DPTR,# #0xA05D     ;H dptr win: win-Ax (0xA05D)
707E  e0        MOVX A,@DPTR           ;H 
707F  ff        MOV R7,A               ;H 
7080  a3        INC DPTR               ;H 
7081  e0        MOVX A,@DPTR           ;H 
7082  fd        MOV R5,A               ;H 
7083  a3        INC DPTR               ;H 
7084  e0        MOVX A,@DPTR           ;H 
7085  fb        MOV R3,A               ;H 
7086  a3        INC DPTR               ;H 
7087  e0        MOVX A,@DPTR           ;H 
7088  90a065    MOV DPTR,# #0xA065     ;H dptr win: win-Ax (0xA065)
708B  f0        MOVX @DPTR,A           ;H 
708C  90a061    MOV DPTR,# #0xA061     ;H dptr win: win-Ax (0xA061)
708F  e0        MOVX A,@DPTR           ;H 
7090  90a066    MOV DPTR,# #0xA066     ;H dptr win: win-Ax (0xA066)
7093  f0        MOVX @DPTR,A           ;H 
7094  02a775    LJMP 0xA775            ;H 

sub_7097:  ; M func, size~32
7097  120689    LCALL 0x0689           ;M 
709A  5401      ANL A,# #0x01          ;M 
709C  ff        MOV R7,A               ;M 
709D  909fad    MOV DPTR,# #0x9FAD     ;M dptr win: win-9x (0x9FAD)
70A0  e0        MOVX A,@DPTR           ;M 
70A1  54fe      ANL A,# #0xFE          ;M 
70A3  4f        ORL A,R7               ;M 
70A4  f0        MOVX @DPTR,A           ;M 
70A5  30e019    JNB ACC.0, 0x70C1      ;M 
70A8  909d07    MOV DPTR,# #0x9D07     ;M dptr win: win-9x (0x9D07)
70AB  e0        MOVX A,@DPTR           ;M 
70AC  ff        MOV R7,A               ;M 
70AD  b40107    CJNE A,# #0x01, 0x70B7 ;M 
70B0  909e5d    MOV DPTR,# #0x9E5D     ;M dptr win: win-9x (0x9E5D)
70B3  74dc      MOV A,# #0xDC          ;M 
70B5  f0        MOVX @DPTR,A           ;M 
70B6  22        RET                    ;M 

sub_70B7:  ; M func, size~11
70B7  ef        MOV A,R7               ;M 
70B8  b40306    CJNE A,# #0x03, 0x70C1 ;M 
70BB  909e5d    MOV DPTR,# #0x9E5D     ;M dptr win: win-9x (0x9E5D)
70BE  74d4      MOV A,# #0xD4          ;M 
70C0  f0        MOVX @DPTR,A           ;M 
70C1  22        RET                    ;M 

sub_70C2:  ; M func, size~72
70C2  120689    LCALL 0x0689           ;M 
70C5  12572f    LCALL 0x572F           ;M 
70C8  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
70CB  f0        MOVX @DPTR,A           ;M 
70CC  600e      JZ 0x70DC              ;M 
70CE  310a      ACALL 0x710A           ;M 
70D0  3112      ACALL 0x7112           ;M 
70D2  90a06c    MOV DPTR,# #0xA06C     ;M dptr win: win-Ax (0xA06C)
70D5  310a      ACALL 0x710A           ;M 
70D7  7b57      MOV R3,# #0x57         ;M 
70D9  1258a7    LCALL 0x58A7           ;M 
70DC  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
70DF  7420      MOV A,# #0x20          ;M 
70E1  f0        MOVX @DPTR,A           ;M 
70E2  90a06a    MOV DPTR,# #0xA06A     ;M dptr win: win-Ax (0xA06A)
70E5  7403      MOV A,# #0x03          ;M 
70E7  f0        MOVX @DPTR,A           ;M 
70E8  900522    MOV DPTR,# #0x0522     ;M dptr win: RAM/table (0x0522)
70EB  e0        MOVX A,@DPTR           ;M 
70EC  90a05e    MOV DPTR,# #0xA05E     ;M dptr win: win-Ax (0xA05E)
70EF  f0        MOVX @DPTR,A           ;M 
70F0  909fae    MOV DPTR,# #0x9FAE     ;M dptr win: win-9x (0x9FAE)
70F3  e0        MOVX A,@DPTR           ;M 
70F4  90a05f    MOV DPTR,# #0xA05F     ;M dptr win: win-Ax (0xA05F)
70F7  f0        MOVX @DPTR,A           ;M 
70F8  909faf    MOV DPTR,# #0x9FAF     ;M dptr win: win-9x (0x9FAF)
70FB  e0        MOVX A,@DPTR           ;M 
70FC  90a060    MOV DPTR,# #0xA060     ;M dptr win: win-Ax (0xA060)
70FF  127f68    LCALL 0x7F68           ;M 
7102  125575    LCALL 0x5575           ;M 
7105  7f04      MOV R7,# #0x04         ;M 
7107  028ffc    LJMP 0x8FFC            ;M 

sub_710A:  ; M func, size~8
710A  e0        MOVX A,@DPTR           ;M 
710B  ff        MOV R7,A               ;M 
710C  90a06b    MOV DPTR,# #0xA06B     ;M dptr win: win-Ax (0xA06B)
710F  e0        MOVX A,@DPTR           ;M 
7110  fd        MOV R5,A               ;M 
7111  22        RET                    ;M 

sub_7112:  ; M func, size~10
7112  ef        MOV A,R7               ;M 
7113  b4ff06    CJNE A,# #0xFF, 0x711C ;M 
7116  909fae    MOV DPTR,# #0x9FAE     ;M dptr win: win-9x (0x9FAE)
7119  ed        MOV A,R5               ;M 
711A  f0        MOVX @DPTR,A           ;M 
711B  22        RET                    ;M 

sub_711C:  ; M func, size~14
711C  ef        MOV A,R7               ;M 
711D  f4        CPL A                  ;M 
711E  fe        MOV R6,A               ;M 
711F  909fae    MOV DPTR,# #0x9FAE     ;M dptr win: win-9x (0x9FAE)
7122  e0        MOVX A,@DPTR           ;M 
7123  5e        ANL A,R6               ;M 
7124  fe        MOV R6,A               ;M 
7125  ed        MOV A,R5               ;M 
7126  5f        ANL A,R7               ;M 
7127  4e        ORL A,R6               ;M 
7128  f0        MOVX @DPTR,A           ;M 
7129  22        RET                    ;M 

sub_712A:  ; M func, size~10
712A  ef        MOV A,R7               ;M 
712B  b4ff06    CJNE A,# #0xFF, 0x7134 ;M 
712E  909faf    MOV DPTR,# #0x9FAF     ;M dptr win: win-9x (0x9FAF)
7131  ed        MOV A,R5               ;M 
7132  f0        MOVX @DPTR,A           ;M 
7133  22        RET                    ;M 

sub_7134:  ; M func, size~24
7134  ef        MOV A,R7               ;M 
7135  f4        CPL A                  ;M 
7136  fe        MOV R6,A               ;M 
7137  909faf    MOV DPTR,# #0x9FAF     ;M dptr win: win-9x (0x9FAF)
713A  80e6      SJMP 0x7122            ;M 
713C  909e5d    MOV DPTR,# #0x9E5D     ;M dptr win: win-9x (0x9E5D)
713F  e0        MOVX A,@DPTR           ;M 
7140  ff        MOV R7,A               ;M 
7141  120689    LCALL 0x0689           ;M 
7144  fe        MOV R6,A               ;M 
7145  ef        MOV A,R7               ;M 
7146  4e        ORL A,R6               ;M 
7147  909e5d    MOV DPTR,# #0x9E5D     ;M dptr win: win-9x (0x9E5D)
714A  f0        MOVX @DPTR,A           ;M 
714B  22        RET                    ;M 

sub_714C:  ; M func, size~27
714C  120689    LCALL 0x0689           ;M 
714F  909eb5    MOV DPTR,# #0x9EB5     ;M dptr win: win-9x (0x9EB5)
7152  f0        MOVX @DPTR,A           ;M 
7153  600c      JZ 0x7161              ;M 
7155  a3        INC DPTR               ;M 
7156  e0        MOVX A,@DPTR           ;M 
7157  20e007    JB ACC.0, 0x7161       ;M 
715A  e4        CLR A                  ;M 
715B  fd        MOV R5,A               ;M 
715C  7f04      MOV R7,# #0x04         ;M 
715E  12607e    LCALL 0x607E           ;M 
7161  22        RET                    ;M 
7162  .db 7D 01 7F 17 02

sub_7167:  ; M func, size~86
7167  55eb      ANL A,dir 0xEB         ;M 
7169  90a05c    MOV DPTR,# #0xA05C     ;M dptr win: win-Ax (0xA05C)
716C  124908    LCALL 0x4908           ;M 
716F  90a1b9    MOV DPTR,# #0xA1B9     ;M dptr win: win-Ax (0xA1B9)
7172  e0        MOVX A,@DPTR           ;M 
7173  7008      JNZ 0x717D             ;M 
7175  31bd      ACALL 0x71BD           ;M 
7177  90a1b9    MOV DPTR,# #0xA1B9     ;M dptr win: win-Ax (0xA1B9)
717A  7401      MOV A,# #0x01          ;M 
717C  f0        MOVX @DPTR,A           ;M 
717D  1256c5    LCALL 0x56C5           ;M 
7180  120689    LCALL 0x0689           ;M 
7183  ff        MOV R7,A               ;M 
7184  e4        CLR A                  ;M 
7185  8f54      MOV dir,R7 0x54        ;M 
7187  f553      MOV dir,A 0x53         ;M 
7189  f552      MOV dir,A 0x52         ;M 
718B  f551      MOV dir,A 0x51         ;M 
718D  909eef    MOV DPTR,# #0x9EEF     ;M dptr win: win-9x (0x9EEF)
7190  1248db    LCALL 0x48DB           ;M 
7193  ec        MOV A,R4               ;M 
7194  54c1      ANL A,# #0xC1          ;M 
7196  fc        MOV R4,A               ;M 
7197  c004      PUSH dir 0x04          ;M 
7199  c005      PUSH dir 0x05          ;M 
719B  c006      PUSH dir 0x06          ;M 
719D  c007      PUSH dir 0x07          ;M 
719F  af54      MOV R7,dir 0x54        ;M 
71A1  ae53      MOV R6,dir 0x53        ;M 
71A3  ad52      MOV R5,dir 0x52        ;M 
71A5  ac51      MOV R4,dir 0x51        ;M 
71A7  7819      MOV R0,# #0x19         ;M 
71A9  12085a    LCALL 0x085A           ;M 
71AC  d003      POP dir 0x03           ;M 
71AE  d002      POP dir 0x02           ;M 
71B0  d001      POP dir 0x01           ;M 
71B2  d000      POP dir 0x00           ;M 
71B4  1248bd    LCALL 0x48BD           ;M 
71B7  909eeb    MOV DPTR,# #0x9EEB     ;M dptr win: win-9x (0x9EEB)
71BA  02086d    LJMP 0x086D            ;M 

sub_71BD:  ; M func, size~13
71BD  7f80      MOV R7,# #0x80         ;M 
71BF  7e08      MOV R6,# #0x08         ;M 
71C1  1237ad    LCALL 0x37AD           ;M 
71C4  909eef    MOV DPTR,# #0x9EEF     ;M dptr win: win-9x (0x9EEF)
71C7  02086d    LJMP 0x086D            ;M 

sub_71CA:  ; M func, size~14
71CA  120689    LCALL 0x0689           ;M 
71CD  909ef7    MOV DPTR,# #0x9EF7     ;M dptr win: win-9x (0x9EF7)
71D0  125732    LCALL 0x5732           ;M 
71D3  909ef8    MOV DPTR,# #0x9EF8     ;M dptr win: win-9x (0x9EF8)
71D6  f0        MOVX @DPTR,A           ;M 
71D7  22        RET                    ;M 

sub_71D8:  ; M func, size~138
71D8  d3        SETB C                 ;M 
71D9  10af01    JBC IE.7, 0x71DD       ;M 
71DC  c3        CLR C                  ;M 
71DD  c0d0      PUSH dir PSW           ;M 
71DF  90a14d    MOV DPTR,# #0xA14D     ;M dptr win: win-Ax (0xA14D)
71E2  128fcb    LCALL 0x8FCB           ;M 
71E5  90a150    MOV DPTR,# #0xA150     ;M dptr win: win-Ax (0xA150)
71E8  125732    LCALL 0x5732           ;M 
71EB  90a151    MOV DPTR,# #0xA151     ;M dptr win: win-Ax (0xA151)
71EE  124fb8    LCALL 0x4FB8           ;M 
71F1  90a152    MOV DPTR,# #0xA152     ;M dptr win: win-Ax (0xA152)
71F4  f0        MOVX @DPTR,A           ;M 
71F5  1286f2    LCALL 0x86F2           ;M 
71F8  90a153    MOV DPTR,# #0xA153     ;M dptr win: win-Ax (0xA153)
71FB  128c6f    LCALL 0x8C6F           ;M 
71FE  90a154    MOV DPTR,# #0xA154     ;M dptr win: win-Ax (0xA154)
7201  129dbd    LCALL 0x9DBD           ;M 
7204  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
7207  e0        MOVX A,@DPTR           ;M 
7208  4440      ORL A,# #0x40          ;M 
720A  f0        MOVX @DPTR,A           ;M 
720B  7b01      MOV R3,# #0x01         ;M 
720D  7aa1      MOV R2,# #0xA1         ;M 
720F  7950      MOV R1,# #0x50         ;M 
7211  7d07      MOV R5,# #0x07         ;M 
7213  7f30      MOV R7,# #0x30         ;M 
7215  1255eb    LCALL 0x55EB           ;M 
7218  8f6c      MOV dir,R7 0x6C        ;M 
721A  e56c      MOV A,dir 0x6C         ;M 
721C  b4010c    CJNE A,# #0x01, 0x722B ;M 
721F  5162      ACALL 0x7262           ;M 
7221  4480      ORL A,# #0x80          ;M 
7223  12af06    LCALL 0xAF06           ;M 
7226  1280ad    LCALL 0x80AD           ;M 
7229  8032      SJMP 0x725D            ;M 
722B  e56c      MOV A,dir 0x6C         ;M 
722D  b40216    CJNE A,# #0x02, 0x7246 ;M 
7230  90a14d    MOV DPTR,# #0xA14D     ;M dptr win: win-Ax (0xA14D)
7233  1248ff    LCALL 0x48FF           ;M 
7236  516a      ACALL 0x726A           ;M 
7238  754305    MOV dir,# 0x43, #0x05  ;M 
723B  7b01      MOV R3,# #0x01         ;M 
723D  7a9e      MOV R2,# #0x9E         ;M 
723F  79e3      MOV R1,# #0xE3         ;M 
7241  123585    LCALL 0x3585           ;M 
7244  8017      SJMP 0x725D            ;M 
7246  e56c      MOV A,dir 0x6C         ;M 
7248  b40412    CJNE A,# #0x04, 0x725D ;M 
724B  5162      ACALL 0x7262           ;M 
724D  90a150    MOV DPTR,# #0xA150     ;M dptr win: win-Ax (0xA150)
7250  e0        MOVX A,@DPTR           ;M 
7251  fb        MOV R3,A               ;M 
7252  e4        CLR A                  ;M 
7253  fd        MOV R5,A               ;M 
7254  ff        MOV R7,A               ;M 
7255  12573f    LCALL 0x573F           ;M 
7258  7f04      MOV R7,# #0x04         ;M 
725A  128ffc    LCALL 0x8FFC           ;M 
725D  d0d0      POP dir PSW            ;M 
725F  92af      MOV bit,C IE.7         ;M 
7261  22        RET                    ;M 

sub_7262:  ; M func, size~8
7262  909ede    MOV DPTR,# #0x9EDE     ;M dptr win: win-9x (0x9EDE)
7265  e0        MOVX A,@DPTR           ;M 
7266  54bf      ANL A,# #0xBF          ;M 
7268  f0        MOVX @DPTR,A           ;M 
7269  22        RET                    ;M 

sub_726A:  ; M func, size~7
726A  8b40      MOV dir,R3 0x40        ;M 
726C  8a41      MOV dir,R2 0x41        ;M 
726E  8942      MOV dir,R1 0x42        ;M 
7270  22        RET                    ;M 

sub_7271:  ; M func, size~111
7271  90a194    MOV DPTR,# #0xA194     ;M dptr win: win-Ax (0xA194)
7274  ef        MOV A,R7               ;M 
7275  f0        MOVX @DPTR,A           ;M 
7276  a3        INC DPTR               ;M 
7277  124908    LCALL 0x4908           ;M 
727A  90a1bb    MOV DPTR,# #0xA1BB     ;M dptr win: win-Ax (0xA1BB)
727D  e0        MOVX A,@DPTR           ;M 
727E  fe        MOV R6,A               ;M 
727F  04        INC A                  ;M 
7280  f0        MOVX @DPTR,A           ;M 
7281  900001    MOV DPTR,# #0x0001     ;M dptr win: MAC/reg-low (0x0001)
7284  ee        MOV A,R6               ;M 
7285  1206e1    LCALL 0x06E1           ;M 
7288  7400      MOV A,# #0x00          ;M 
728A  2f        ADD A,R7               ;M 
728B  f9        MOV R1,A               ;M 
728C  e4        CLR A                  ;M 
728D  34fb      ADDC A,# #0xFB         ;M 
728F  fa        MOV R2,A               ;M 
7290  7b01      MOV R3,# #0x01         ;M 
7292  c003      PUSH dir 0x03          ;M 
7294  c002      PUSH dir 0x02          ;M 
7296  c001      PUSH dir 0x01          ;M 
7298  90a195    MOV DPTR,# #0xA195     ;M dptr win: win-Ax (0xA195)
729B  1248ff    LCALL 0x48FF           ;M 
729E  516a      ACALL 0x726A           ;M 
72A0  754302    MOV dir,# 0x43, #0x02  ;M 
72A3  d001      POP dir 0x01           ;M 
72A5  d002      POP dir 0x02           ;M 
72A7  d003      POP dir 0x03           ;M 
72A9  123585    LCALL 0x3585           ;M 
72AC  90a194    MOV DPTR,# #0xA194     ;M dptr win: win-Ax (0xA194)
72AF  e0        MOVX A,@DPTR           ;M 
72B0  2402      ADD A,# #0x02          ;M 
72B2  f9        MOV R1,A               ;M 
72B3  e4        CLR A                  ;M 
72B4  34fb      ADDC A,# #0xFB         ;M 
72B6  fa        MOV R2,A               ;M 
72B7  7b01      MOV R3,# #0x01         ;M 
72B9  c003      PUSH dir 0x03          ;M 
72BB  c002      PUSH dir 0x02          ;M 
72BD  c001      PUSH dir 0x01          ;M 
72BF  a3        INC DPTR               ;M 
72C0  1248ff    LCALL 0x48FF           ;M 
72C3  e9        MOV A,R1               ;M 
72C4  2402      ADD A,# #0x02          ;M 
72C6  f9        MOV R1,A               ;M 
72C7  e4        CLR A                  ;M 
72C8  3a        ADDC A,R2              ;M 
72C9  8b40      MOV dir,R3 0x40        ;M 
72CB  f541      MOV dir,A 0x41         ;M 
72CD  8942      MOV dir,R1 0x42        ;M 
72CF  90a195    MOV DPTR,# #0xA195     ;M dptr win: win-Ax (0xA195)
72D2  129f6f    LCALL 0x9F6F           ;M 
72D5  f543      MOV dir,A 0x43         ;M 
72D7  d001      POP dir 0x01           ;M 
72D9  d002      POP dir 0x02           ;M 
72DB  d003      POP dir 0x03           ;M 
72DD  023585    LJMP 0x3585            ;M 

sub_72E0:  ; M func, size~29
72E0  120689    LCALL 0x0689           ;M 
72E3  5401      ANL A,# #0x01          ;M 
72E5  25e0      ADD A,dir ACC          ;M 
72E7  710c      ACALL 0x730C           ;M 
72E9  54fb      ANL A,# #0xFB          ;M 
72EB  4f        ORL A,R7               ;M 
72EC  f0        MOVX @DPTR,A           ;M 
72ED  e0        MOVX A,@DPTR           ;M 
72EE  13        RRC A                  ;M 
72EF  13        RRC A                  ;M 
72F0  543f      ANL A,# #0x3F          ;M 
72F2  30e008    JNB ACC.0, 0x72FD      ;M 
72F5  900765    MOV DPTR,# #0x0765     ;M dptr win: RAM/table (0x0765)
72F8  e0        MOVX A,@DPTR           ;M 
72F9  4418      ORL A,# #0x18          ;M 
72FB  f0        MOVX @DPTR,A           ;M 
72FC  22        RET                    ;M 

sub_72FD:  ; M func, size~15
72FD  909efe    MOV DPTR,# #0x9EFE     ;M dptr win: win-9x (0x9EFE)
7300  e0        MOVX A,@DPTR           ;M 
7301  20e007    JB ACC.0, 0x730B       ;M 
7304  900765    MOV DPTR,# #0x0765     ;M dptr win: RAM/table (0x0765)
7307  e0        MOVX A,@DPTR           ;M 
7308  54e7      ANL A,# #0xE7          ;M 
730A  f0        MOVX @DPTR,A           ;M 
730B  22        RET                    ;M 

sub_730C:  ; M func, size~8
730C  25e0      ADD A,dir ACC          ;M 
730E  ff        MOV R7,A               ;M 
730F  909edb    MOV DPTR,# #0x9EDB     ;M dptr win: win-9x (0x9EDB)
7312  e0        MOVX A,@DPTR           ;M 
7313  22        RET                    ;M 

sub_7314:  ; M func, size~35
7314  120689    LCALL 0x0689           ;M 
7317  5401      ANL A,# #0x01          ;M 
7319  33        RLC A                  ;M 
731A  33        RLC A                  ;M 
731B  33        RLC A                  ;M 
731C  54f8      ANL A,# #0xF8          ;M 
731E  ff        MOV R7,A               ;M 
731F  909edb    MOV DPTR,# #0x9EDB     ;M dptr win: win-9x (0x9EDB)
7322  e0        MOVX A,@DPTR           ;M 
7323  54f7      ANL A,# #0xF7          ;M 
7325  4f        ORL A,R7               ;M 
7326  f0        MOVX @DPTR,A           ;M 
7327  1287a7    LCALL 0x87A7           ;M 
732A  900765    MOV DPTR,# #0x0765     ;M dptr win: RAM/table (0x0765)
732D  30e004    JNB ACC.0, 0x7334      ;M 
7330  7418      MOV A,# #0x18          ;M 
7332  f0        MOVX @DPTR,A           ;M 
7333  22        RET                    ;M 
7334  .db E4 F0 22

sub_7337:  ; M func, size~97
7337  d3        SETB C                 ;M 
7338  10af01    JBC IE.7, 0x733C       ;M 
733B  c3        CLR C                  ;M 
733C  c0d0      PUSH dir PSW           ;M 
733E  909d9b    MOV DPTR,# #0x9D9B     ;M dptr win: win-9x (0x9D9B)
7341  e0        MOVX A,@DPTR           ;M 
7342  ff        MOV R7,A               ;M 
7343  909d9a    MOV DPTR,# #0x9D9A     ;M dptr win: win-9x (0x9D9A)
7346  e0        MOVX A,@DPTR           ;M 
7347  b50704    CJNE A,dir 0x07, 0x734E ;M 
734A  7f01      MOV R7,# #0x01         ;M 
734C  8002      SJMP 0x7350            ;M 
734E  7f00      MOV R7,# #0x00         ;M 
7350  ef        MOV A,R7               ;M 
7351  7040      JNZ 0x7393             ;M 
7353  909d9a    MOV DPTR,# #0x9D9A     ;M dptr win: win-9x (0x9D9A)
7356  e0        MOVX A,@DPTR           ;M 
7357  fe        MOV R6,A               ;M 
7358  75f008    MOV dir,# B, #0x08     ;M 
735B  909d4a    MOV DPTR,# #0x9D4A     ;M dptr win: win-9x (0x9D4A)
735E  1248f3    LCALL 0x48F3           ;M 
7361  e0        MOVX A,@DPTR           ;M 
7362  fd        MOV R5,A               ;M 
7363  ee        MOV A,R6               ;M 
7364  75f008    MOV dir,# B, #0x08     ;M 
7367  a4        MUL AB                 ;M 
7368  244b      ADD A,# #0x4B          ;M 
736A  f9        MOV R1,A               ;M 
736B  749d      MOV A,# #0x9D          ;M 
736D  35f0      ADDC A,dir B           ;M 
736F  fa        MOV R2,A               ;M 
7370  7b01      MOV R3,# #0x01         ;M 
7372  af05      MOV R7,dir 0x05        ;M 
7374  124d94    LCALL 0x4D94           ;M 
7377  909d9a    MOV DPTR,# #0x9D9A     ;M dptr win: win-9x (0x9D9A)
737A  7198      ACALL 0x7398           ;M 
737C  b40a02    CJNE A,# #0x0A, 0x7381 ;M 
737F  7f01      MOV R7,# #0x01         ;M 
7381  ef        MOV A,R7               ;M 
7382  6005      JZ 0x7389              ;M 
7384  e4        CLR A                  ;M 
7385  909d9a    MOV DPTR,# #0x9D9A     ;M dptr win: win-9x (0x9D9A)
7388  f0        MOVX @DPTR,A           ;M 
7389  1271c1    LCALL 0x71C1           ;M 
738C  909d01    MOV DPTR,# #0x9D01     ;M dptr win: win-9x (0x9D01)
738F  e0        MOVX A,@DPTR           ;M 
7390  4402      ORL A,# #0x02          ;M 
7392  f0        MOVX @DPTR,A           ;M 
7393  d0d0      POP dir PSW            ;M 
7395  92af      MOV bit,C IE.7         ;M 
7397  22        RET                    ;M 

sub_7398:  ; M func, size~7
7398  e0        MOVX A,@DPTR           ;M 
7399  04        INC A                  ;M 
739A  f0        MOVX @DPTR,A           ;M 
739B  e0        MOVX A,@DPTR           ;M 
739C  7f00      MOV R7,# #0x00         ;M 
739E  22        RET                    ;M 

sub_739F:  ; M func, size~14
739F  e4        CLR A                  ;M 
73A0  909e32    MOV DPTR,# #0x9E32     ;M dptr win: win-9x (0x9E32)
73A3  f0        MOVX @DPTR,A           ;M 
73A4  a3        INC DPTR               ;M 
73A5  f0        MOVX @DPTR,A           ;M 
73A6  909d9a    MOV DPTR,# #0x9D9A     ;M dptr win: win-9x (0x9D9A)
73A9  f0        MOVX @DPTR,A           ;M 
73AA  a3        INC DPTR               ;M 
73AB  f0        MOVX @DPTR,A           ;M 
73AC  22        RET                    ;M 

sub_73AD:  ; M func, size~31
73AD  751512    MOV dir,# 0x15, #0x12  ;M 
73B0  e4        CLR A                  ;M 
73B1  f516      MOV dir,A 0x16         ;M 
73B3  751707    MOV dir,# 0x17, #0x07  ;M 
73B6  751872    MOV dir,# 0x18, #0x72  ;M 
73B9  900130    MOV DPTR,# #0x0130     ;M dptr win: MAC/reg-low (0x0130)
73BC  e515      MOV A,dir 0x15         ;M 
73BE  f0        MOVX @DPTR,A           ;M 
73BF  a3        INC DPTR               ;M 
73C0  e516      MOV A,dir 0x16         ;M 
73C2  f0        MOVX @DPTR,A           ;M 
73C3  a3        INC DPTR               ;M 
73C4  e517      MOV A,dir 0x17         ;M 
73C6  f0        MOVX @DPTR,A           ;M 
73C7  a3        INC DPTR               ;M 
73C8  e518      MOV A,dir 0x18         ;M 
73CA  f0        MOVX @DPTR,A           ;M 
73CB  22        RET                    ;M 

sub_73CC:  ; M func, size~40
73CC  751d0f    MOV dir,# 0x1D, #0x0F  ;M 
73CF  431d10    ORL dir,# 0x1D, #0x10  ;M 
73D2  751e01    MOV dir,# 0x1E, #0x01  ;M 
73D5  431e08    ORL dir,# 0x1E, #0x08  ;M 
73D8  751f13    MOV dir,# 0x1F, #0x13  ;M 
73DB  752062    MOV dir,# 0x20, #0x62  ;M 
73DE  432080    ORL dir,# 0x20, #0x80  ;M 
73E1  900138    MOV DPTR,# #0x0138     ;M dptr win: MAC/reg-low (0x0138)
73E4  e51d      MOV A,dir 0x1D         ;M 
73E6  f0        MOVX @DPTR,A           ;M 
73E7  a3        INC DPTR               ;M 
73E8  e51e      MOV A,dir 0x1E         ;M 
73EA  f0        MOVX @DPTR,A           ;M 
73EB  a3        INC DPTR               ;M 
73EC  e51f      MOV A,dir 0x1F         ;M 
73EE  f0        MOVX @DPTR,A           ;M 
73EF  a3        INC DPTR               ;M 
73F0  e520      MOV A,dir 0x20         ;M 
73F2  f0        MOVX @DPTR,A           ;M 
73F3  22        RET                    ;M 

sub_73F4:  ; M func, size~13
73F4  900194    MOV DPTR,# #0x0194     ;M dptr win: MAC/reg-low (0x0194)
73F7  e0        MOVX A,@DPTR           ;M 
73F8  4401      ORL A,# #0x01          ;M 
73FA  f0        MOVX @DPTR,A           ;M 
73FB  9001c7    MOV DPTR,# #0x01C7     ;M dptr win: MAC/reg-low (0x01C7)
73FE  e4        CLR A                  ;M 
73FF  f0        MOVX @DPTR,A           ;M 
7400  22        RET                    ;M 

sub_7401:  ; M func, size~89
7401  e4        CLR A                  ;M 
7402  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
7405  f0        MOVX @DPTR,A           ;M 
7406  a3        INC DPTR               ;M 
7407  f0        MOVX @DPTR,A           ;M 
7408  129fa0    LCALL 0x9FA0           ;M 
740B  ef        MOV A,R7               ;M 
740C  6401      XRL A,# #0x01          ;M 
740E  603c      JZ 0x744C              ;M 
7410  c3        CLR C                  ;M 
7411  90a055    MOV DPTR,# #0xA055     ;M dptr win: win-Ax (0xA055)
7414  e0        MOVX A,@DPTR           ;M 
7415  9488      SUBB A,# #0x88         ;M 
7417  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
741A  e0        MOVX A,@DPTR           ;M 
741B  9413      SUBB A,# #0x13         ;M 
741D  400f      JC 0x742E              ;M 
741F  9001c1    MOV DPTR,# #0x01C1     ;M dptr win: MAC/reg-low (0x01C1)
7422  e0        MOVX A,@DPTR           ;M 
7423  4410      ORL A,# #0x10          ;M 
7425  f0        MOVX @DPTR,A           ;M 
7426  9001c7    MOV DPTR,# #0x01C7     ;M dptr win: MAC/reg-low (0x01C7)
7429  74fd      MOV A,# #0xFD          ;M 
742B  f0        MOVX @DPTR,A           ;M 
742C  801e      SJMP 0x744C            ;M 
742E  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
7431  125816    LCALL 0x5816           ;M 
7434  9153      ACALL 0x7453           ;M 
7436  d3        SETB C                 ;M 
7437  90a055    MOV DPTR,# #0xA055     ;M dptr win: win-Ax (0xA055)
743A  e0        MOVX A,@DPTR           ;M 
743B  9432      SUBB A,# #0x32         ;M 
743D  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
7440  e0        MOVX A,@DPTR           ;M 
7441  9400      SUBB A,# #0x00         ;M 
7443  40c3      JC 0x7408              ;M 
7445  9001c6    MOV DPTR,# #0x01C6     ;M dptr win: MAC/reg-low (0x01C6)
7448  e0        MOVX A,@DPTR           ;M 
7449  30e3bc    JNB ACC.3, 0x7408      ;M 
744C  9001c7    MOV DPTR,# #0x01C7     ;M dptr win: MAC/reg-low (0x01C7)
744F  74fe      MOV A,# #0xFE          ;M 
7451  f0        MOVX @DPTR,A           ;M 
7452  22        RET                    ;M 
7453  .db 7F 14 7E 00 02 3E 87

sub_745A:  ; M func, size~25
745A  7f02      MOV R7,# #0x02         ;M 
745C  909f16    MOV DPTR,# #0x9F16     ;M dptr win: win-9x (0x9F16)
745F  e0        MOVX A,@DPTR           ;M 
7460  fe        MOV R6,A               ;M 
7461  ef        MOV A,R7               ;M 
7462  c3        CLR C                  ;M 
7463  9e        SUBB A,R6              ;M 
7464  5010      JNC 0x7476             ;M 
7466  ef        MOV A,R7               ;M 
7467  25e0      ADD A,dir ACC          ;M 
7469  2481      ADD A,# #0x81          ;M 
746B  f8        MOV R0,A               ;M 
746C  e6        MOV A,@R0              ;M 
746D  30e403    JNB ACC.4, 0x7473      ;M 
7470  7f00      MOV R7,# #0x00         ;M 
7472  22        RET                    ;M 

sub_7473:  ; M func, size~6
7473  0f        INC R7                 ;M 
7474  80e6      SJMP 0x745C            ;M 
7476  7f01      MOV R7,# #0x01         ;M 
7478  22        RET                    ;M 

sub_7479:  ; M func, size~51
7479  e4        CLR A                  ;M 
747A  909d01    MOV DPTR,# #0x9D01     ;M dptr win: win-9x (0x9D01)
747D  f0        MOVX @DPTR,A           ;M 
747E  125207    LCALL 0x5207           ;M 
7481  909fae    MOV DPTR,# #0x9FAE     ;M dptr win: win-9x (0x9FAE)
7484  f0        MOVX @DPTR,A           ;M 
7485  a3        INC DPTR               ;M 
7486  f0        MOVX @DPTR,A           ;M 
7487  ff        MOV R7,A               ;M 
7488  fe        MOV R6,A               ;M 
7489  ad07      MOV R5,dir 0x07        ;M 
748B  74b0      MOV A,# #0xB0          ;M 
748D  2d        ADD A,R5               ;M 
748E  127ee7    LCALL 0x7EE7           ;M 
7491  e4        CLR A                  ;M 
7492  f0        MOVX @DPTR,A           ;M 
7493  74c0      MOV A,# #0xC0          ;M 
7495  2d        ADD A,R5               ;M 
7496  127d3b    LCALL 0x7D3B           ;M 
7499  e4        CLR A                  ;M 
749A  f0        MOVX @DPTR,A           ;M 
749B  0f        INC R7                 ;M 
749C  bf0001    CJNE R7,# #0x00, 0x74A0 ;M 
749F  0e        INC R6                 ;M 
74A0  ef        MOV A,R7               ;M 
74A1  6410      XRL A,# #0x10          ;M 
74A3  4e        ORL A,R6               ;M 
74A4  70e3      JNZ 0x7489             ;M 
74A6  e4        CLR A                  ;M 
74A7  909fd0    MOV DPTR,# #0x9FD0     ;M dptr win: win-9x (0x9FD0)
74AA  f0        MOVX @DPTR,A           ;M 
74AB  22        RET                    ;M 

sub_74AC:  ; M func, size~11
74AC  9001e4    MOV DPTR,# #0x01E4     ;M dptr win: MAC/reg-low (0x01E4)
74AF  7423      MOV A,# #0x23          ;M 
74B1  f0        MOVX @DPTR,A           ;M 
74B2  a3        INC DPTR               ;M 
74B3  7407      MOV A,# #0x07          ;M 
74B5  f0        MOVX @DPTR,A           ;M 
74B6  22        RET                    ;M 

sub_74B7:  ; M func, size~54
74B7  900134    MOV DPTR,# #0x0134     ;M dptr win: MAC/reg-low (0x0134)
74BA  e0        MOVX A,@DPTR           ;M 
74BB  5515      ANL A,dir 0x15         ;M 
74BD  f519      MOV dir,A 0x19         ;M 
74BF  a3        INC DPTR               ;M 
74C0  e0        MOVX A,@DPTR           ;M 
74C1  5516      ANL A,dir 0x16         ;M 
74C3  f51a      MOV dir,A 0x1A         ;M 
74C5  a3        INC DPTR               ;M 
74C6  e0        MOVX A,@DPTR           ;M 
74C7  5517      ANL A,dir 0x17         ;M 
74C9  f51b      MOV dir,A 0x1B         ;M 
74CB  a3        INC DPTR               ;M 
74CC  e0        MOVX A,@DPTR           ;M 
74CD  5518      ANL A,dir 0x18         ;M 
74CF  f51c      MOV dir,A 0x1C         ;M 
74D1  900134    MOV DPTR,# #0x0134     ;M dptr win: MAC/reg-low (0x0134)
74D4  e519      MOV A,dir 0x19         ;M 
74D6  f0        MOVX @DPTR,A           ;M 
74D7  a3        INC DPTR               ;M 
74D8  e51a      MOV A,dir 0x1A         ;M 
74DA  f0        MOVX @DPTR,A           ;M 
74DB  a3        INC DPTR               ;M 
74DC  e51b      MOV A,dir 0x1B         ;M 
74DE  f0        MOVX @DPTR,A           ;M 
74DF  a3        INC DPTR               ;M 
74E0  e51c      MOV A,dir 0x1C         ;M 
74E2  f0        MOVX @DPTR,A           ;M 
74E3  900124    MOV DPTR,# #0x0124     ;M dptr win: MAC/reg-low (0x0124)
74E6  e0        MOVX A,@DPTR           ;M 
74E7  5525      ANL A,dir 0x25         ;M 
74E9  f526      MOV dir,A 0x26         ;M 
74EB  f0        MOVX @DPTR,A           ;M 
74EC  22        RET                    ;M 

sub_74ED:  ; M func, size~48
74ED  90013c    MOV DPTR,# #0x013C     ;M dptr win: MAC/reg-low (0x013C)
74F0  e0        MOVX A,@DPTR           ;M 
74F1  551d      ANL A,dir 0x1D         ;M 
74F3  f521      MOV dir,A 0x21         ;M 
74F5  a3        INC DPTR               ;M 
74F6  e0        MOVX A,@DPTR           ;M 
74F7  551e      ANL A,dir 0x1E         ;M 
74F9  f522      MOV dir,A 0x22         ;M 
74FB  a3        INC DPTR               ;M 
74FC  e0        MOVX A,@DPTR           ;M 
74FD  551f      ANL A,dir 0x1F         ;M 
74FF  f523      MOV dir,A 0x23         ;M 
7501  a3        INC DPTR               ;M 
7502  e0        MOVX A,@DPTR           ;M 
7503  5520      ANL A,dir 0x20         ;M 
7505  f524      MOV dir,A 0x24         ;M 
7507  90013c    MOV DPTR,# #0x013C     ;M dptr win: MAC/reg-low (0x013C)
750A  e521      MOV A,dir 0x21         ;M 
750C  f0        MOVX @DPTR,A           ;M 
750D  a3        INC DPTR               ;M 
750E  e522      MOV A,dir 0x22         ;M 
7510  f0        MOVX @DPTR,A           ;M 
7511  a3        INC DPTR               ;M 
7512  e523      MOV A,dir 0x23         ;M 
7514  f0        MOVX @DPTR,A           ;M 
7515  a3        INC DPTR               ;M 
7516  e524      MOV A,dir 0x24         ;M 
7518  f0        MOVX @DPTR,A           ;M 
7519  5391df    ANL dir,# 0x91, #0xDF  ;M 
751C  22        RET                    ;M 

sub_751D:  ; M func, size~60
751D  9001cf    MOV DPTR,# #0x01CF     ;M dptr win: MAC/reg-low (0x01CF)
7520  e0        MOVX A,@DPTR           ;M 
7521  90a083    MOV DPTR,# #0xA083     ;M dptr win: win-Ax (0xA083)
7524  f0        MOVX @DPTR,A           ;M 
7525  e0        MOVX A,@DPTR           ;M 
7526  ff        MOV R7,A               ;M 
7527  30e007    JNB ACC.0, 0x7531      ;M 
752A  9001cf    MOV DPTR,# #0x01CF     ;M dptr win: MAC/reg-low (0x01CF)
752D  e0        MOVX A,@DPTR           ;M 
752E  54fe      ANL A,# #0xFE          ;M 
7530  f0        MOVX @DPTR,A           ;M 
7531  ef        MOV A,R7               ;M 
7532  30e523    JNB ACC.5, 0x7558      ;M 
7535  9001cf    MOV DPTR,# #0x01CF     ;M dptr win: MAC/reg-low (0x01CF)
7538  e0        MOVX A,@DPTR           ;M 
7539  54df      ANL A,# #0xDF          ;M 
753B  f0        MOVX @DPTR,A           ;M 
753C  900134    MOV DPTR,# #0x0134     ;M dptr win: MAC/reg-low (0x0134)
753F  7420      MOV A,# #0x20          ;M 
7541  f0        MOVX @DPTR,A           ;M 
7542  e4        CLR A                  ;M 
7543  f5a8      MOV dir,A IE           ;M 
7545  f5e8      MOV dir,A 0xE8         ;M 
7547  1251c0    LCALL 0x51C0           ;M 
754A  900003    MOV DPTR,# #0x0003     ;M dptr win: MAC/reg-low (0x0003)
754D  e0        MOVX A,@DPTR           ;M 
754E  54fb      ANL A,# #0xFB          ;M 
7550  fd        MOV R5,A               ;M 
7551  7f03      MOV R7,# #0x03         ;M 
7553  1250a0    LCALL 0x50A0           ;M 
7556  80fe      SJMP 0x7556            ;M 
7558  22        RET                    ;M 

sub_7559:  ; M func, size~13
7559  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
755C  e0        MOVX A,@DPTR           ;M 
755D  30e005    JNB ACC.0, 0x7565      ;M 
7560  e4        CLR A                  ;M 
7561  a3        INC DPTR               ;M 
7562  f0        MOVX @DPTR,A           ;M 
7563  a3        INC DPTR               ;M 
7564  f0        MOVX @DPTR,A           ;M 
7565  22        RET                    ;M 

sub_7566:  ; M func, size~38
7566  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
7569  e0        MOVX A,@DPTR           ;M 
756A  ff        MOV R7,A               ;M 
756B  30e005    JNB ACC.0, 0x7573      ;M 
756E  12826f    LCALL 0x826F           ;M 
7571  6015      JZ 0x7588              ;M 
7573  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
7576  e0        MOVX A,@DPTR           ;M 
7577  7004      JNZ 0x757D             ;M 
7579  ef        MOV A,R7               ;M 
757A  30e00b    JNB ACC.0, 0x7588      ;M 
757D  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
7580  e0        MOVX A,@DPTR           ;M 
7581  6402      XRL A,# #0x02          ;M 
7583  6003      JZ 0x7588              ;M 
7585  12742e    LCALL 0x742E           ;M 
7588  22        RET                    ;M 
7589  .db E4 FF 02

sub_758C:  ; M func, size~21
758C  68        XRL A,R0               ;M 
758D  4f        ORL A,R7               ;M 
758E  909f17    MOV DPTR,# #0x9F17     ;M dptr win: win-9x (0x9F17)
7591  e0        MOVX A,@DPTR           ;M 
7592  30e00b    JNB ACC.0, 0x75A0      ;M 
7595  909f97    MOV DPTR,# #0x9F97     ;M dptr win: win-9x (0x9F97)
7598  e0        MOVX A,@DPTR           ;M 
7599  6005      JZ 0x75A0              ;M 
759B  7f07      MOV R7,# #0x07         ;M 
759D  128e33    LCALL 0x8E33           ;M 
75A0  22        RET                    ;M 

sub_75A1:  ; M func, size~39
75A1  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
75A4  e0        MOVX A,@DPTR           ;M 
75A5  30e01f    JNB ACC.0, 0x75C7      ;M 
75A8  b1c8      ACALL 0x75C8           ;M 
75AA  30e01a    JNB ACC.0, 0x75C7      ;M 
75AD  909edb    MOV DPTR,# #0x9EDB     ;M dptr win: win-9x (0x9EDB)
75B0  e0        MOVX A,@DPTR           ;M 
75B1  c4        SWAP A                 ;M 
75B2  13        RRC A                  ;M 
75B3  5407      ANL A,# #0x07          ;M 
75B5  30e00f    JNB ACC.0, 0x75C7      ;M 
75B8  e4        CLR A                  ;M 
75B9  ff        MOV R7,A               ;M 
75BA  1282bd    LCALL 0x82BD           ;M 
75BD  909edb    MOV DPTR,# #0x9EDB     ;M dptr win: win-9x (0x9EDB)
75C0  e0        MOVX A,@DPTR           ;M 
75C1  54df      ANL A,# #0xDF          ;M 
75C3  f0        MOVX @DPTR,A           ;M 
75C4  54ef      ANL A,# #0xEF          ;M 
75C6  f0        MOVX @DPTR,A           ;M 
75C7  22        RET                    ;M 

sub_75C8:  ; M func, size~9
75C8  909eba    MOV DPTR,# #0x9EBA     ;M dptr win: win-9x (0x9EBA)
75CB  e0        MOVX A,@DPTR           ;M 
75CC  13        RRC A                  ;M 
75CD  13        RRC A                  ;M 
75CE  543f      ANL A,# #0x3F          ;M 
75D0  22        RET                    ;M 

sub_75D1:  ; M func, size~71
75D1  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
75D4  e0        MOVX A,@DPTR           ;M 
75D5  ff        MOV R7,A               ;M 
75D6  30e03e    JNB ACC.0, 0x7617      ;M 
75D9  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
75DC  e0        MOVX A,@DPTR           ;M 
75DD  7e00      MOV R6,# #0x00         ;M 
75DF  b40202    CJNE A,# #0x02, 0x75E4 ;M 
75E2  7e01      MOV R6,# #0x01         ;M 
75E4  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
75E7  e0        MOVX A,@DPTR           ;M 
75E8  7d00      MOV R5,# #0x00         ;M 
75EA  b40402    CJNE A,# #0x04, 0x75EF ;M 
75ED  7d01      MOV R5,# #0x01         ;M 
75EF  ed        MOV A,R5               ;M 
75F0  4e        ORL A,R6               ;M 
75F1  7024      JNZ 0x7617             ;M 
75F3  ef        MOV A,R7               ;M 
75F4  c3        CLR C                  ;M 
75F5  13        RRC A                  ;M 
75F6  30e002    JNB ACC.0, 0x75FB      ;M 
75F9  801d      SJMP 0x7618            ;M 
75FB  128253    LCALL 0x8253           ;M 
75FE  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
7601  e0        MOVX A,@DPTR           ;M 
7602  b40806    CJNE A,# #0x08, 0x760B ;M 
7605  e4        CLR A                  ;M 
7606  fd        MOV R5,A               ;M 
7607  7f0c      MOV R7,# #0x0C         ;M 
7609  8009      SJMP 0x7614            ;M 
760B  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
760E  e0        MOVX A,@DPTR           ;M 
760F  7006      JNZ 0x7617             ;M 
7611  fd        MOV R5,A               ;M 
7612  7f04      MOV R7,# #0x04         ;M 
7614  12607e    LCALL 0x607E           ;M 
7617  22        RET                    ;M 

sub_7618:  ; M func, size~27
7618  d3        SETB C                 ;M 
7619  10af01    JBC IE.7, 0x761D       ;M 
761C  c3        CLR C                  ;M 
761D  c0d0      PUSH dir PSW           ;M 
761F  126678    LCALL 0x6678           ;M 
7622  bf0104    CJNE R7,# #0x01, 0x7629 ;M 
7625  7f01      MOV R7,# #0x01         ;M 
7627  8002      SJMP 0x762B            ;M 
7629  7f02      MOV R7,# #0x02         ;M 
762B  126465    LCALL 0x6465           ;M 
762E  d0d0      POP dir PSW            ;M 
7630  92af      MOV bit,C IE.7         ;M 
7632  22        RET                    ;M 

sub_7633:  ; M func, size~72
7633  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
7636  e0        MOVX A,@DPTR           ;M 
7637  ff        MOV R7,A               ;M 
7638  30e03f    JNB ACC.0, 0x767A      ;M 
763B  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
763E  e0        MOVX A,@DPTR           ;M 
763F  7e00      MOV R6,# #0x00         ;M 
7641  b40202    CJNE A,# #0x02, 0x7646 ;M 
7644  7e01      MOV R6,# #0x01         ;M 
7646  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
7649  e0        MOVX A,@DPTR           ;M 
764A  7d00      MOV R5,# #0x00         ;M 
764C  b40402    CJNE A,# #0x04, 0x7651 ;M 
764F  7d01      MOV R5,# #0x01         ;M 
7651  ed        MOV A,R5               ;M 
7652  4e        ORL A,R6               ;M 
7653  7025      JNZ 0x767A             ;M 
7655  ef        MOV A,R7               ;M 
7656  c3        CLR C                  ;M 
7657  13        RRC A                  ;M 
7658  30e002    JNB ACC.0, 0x765D      ;M 
765B  80bb      SJMP 0x7618            ;M 
765D  12758d    LCALL 0x758D           ;M 
7660  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
7663  e0        MOVX A,@DPTR           ;M 
7664  b40c06    CJNE A,# #0x0C, 0x766D ;M 
7667  e4        CLR A                  ;M 
7668  fd        MOV R5,A               ;M 
7669  7f08      MOV R7,# #0x08         ;M 
766B  800a      SJMP 0x7677            ;M 
766D  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
7670  e0        MOVX A,@DPTR           ;M 
7671  b40406    CJNE A,# #0x04, 0x767A ;M 
7674  e4        CLR A                  ;M 
7675  fd        MOV R5,A               ;M 
7676  ff        MOV R7,A               ;M 
7677  12607e    LCALL 0x607E           ;M 
767A  22        RET                    ;M 

sub_767B:  ; M func, size~93
767B  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
767E  e0        MOVX A,@DPTR           ;M 
767F  ff        MOV R7,A               ;M 
7680  124fd8    LCALL 0x4FD8           ;M 
7683  30e01b    JNB ACC.0, 0x76A1      ;M 
7686  ef        MOV A,R7               ;M 
7687  547f      ANL A,# #0x7F          ;M 
7689  d1d8      ACALL 0x76D8           ;M 
768B  30e106    JNB ACC.1, 0x7694      ;M 
768E  e0        MOVX A,@DPTR           ;M 
768F  4402      ORL A,# #0x02          ;M 
7691  f0        MOVX @DPTR,A           ;M 
7692  8004      SJMP 0x7698            ;M 
7694  e0        MOVX A,@DPTR           ;M 
7695  54fd      ANL A,# #0xFD          ;M 
7697  f0        MOVX @DPTR,A           ;M 
7698  909e52    MOV DPTR,# #0x9E52     ;M dptr win: win-9x (0x9E52)
769B  e0        MOVX A,@DPTR           ;M 
769C  6003      JZ 0x76A1              ;M 
769E  126063    LCALL 0x6063           ;M 
76A1  909eba    MOV DPTR,# #0x9EBA     ;M dptr win: win-9x (0x9EBA)
76A4  e0        MOVX A,@DPTR           ;M 
76A5  1265f4    LCALL 0x65F4           ;M 
76A8  30e022    JNB ACC.0, 0x76CD      ;M 
76AB  909ebd    MOV DPTR,# #0x9EBD     ;M dptr win: win-9x (0x9EBD)
76AE  e0        MOVX A,@DPTR           ;M 
76AF  ff        MOV R7,A               ;M 
76B0  c3        CLR C                  ;M 
76B1  13        RRC A                  ;M 
76B2  30e018    JNB ACC.0, 0x76CD      ;M 
76B5  ef        MOV A,R7               ;M 
76B6  54fd      ANL A,# #0xFD          ;M 
76B8  f0        MOVX @DPTR,A           ;M 
76B9  9004e0    MOV DPTR,# #0x04E0     ;M dptr win: RAM/table (0x04E0)
76BC  e0        MOVX A,@DPTR           ;M 
76BD  909ebd    MOV DPTR,# #0x9EBD     ;M dptr win: win-9x (0x9EBD)
76C0  30e106    JNB ACC.1, 0x76C9      ;M 
76C3  e0        MOVX A,@DPTR           ;M 
76C4  4404      ORL A,# #0x04          ;M 
76C6  f0        MOVX @DPTR,A           ;M 
76C7  8004      SJMP 0x76CD            ;M 
76C9  e0        MOVX A,@DPTR           ;M 
76CA  54fb      ANL A,# #0xFB          ;M 
76CC  f0        MOVX @DPTR,A           ;M 
76CD  9004e0    MOV DPTR,# #0x04E0     ;M dptr win: RAM/table (0x04E0)
76D0  e0        MOVX A,@DPTR           ;M 
76D1  30e103    JNB ACC.1, 0x76D7      ;M 
76D4  1275c5    LCALL 0x75C5           ;M 
76D7  22        RET                    ;M 

sub_76D8:  ; M func, size~9
76D8  f0        MOVX @DPTR,A           ;M 
76D9  9004e0    MOV DPTR,# #0x04E0     ;M dptr win: RAM/table (0x04E0)
76DC  e0        MOVX A,@DPTR           ;M 
76DD  909e4e    MOV DPTR,# #0x9E4E     ;M dptr win: win-9x (0x9E4E)
76E0  22        RET                    ;M 

sub_76E1:  ; M func, size~33
76E1  e4        CLR A                  ;M 
76E2  90a095    MOV DPTR,# #0xA095     ;M dptr win: win-Ax (0xA095)
76E5  f0        MOVX @DPTR,A           ;M 
76E6  a3        INC DPTR               ;M 
76E7  f0        MOVX @DPTR,A           ;M 
76E8  7f83      MOV R7,# #0x83         ;M 
76EA  12500f    LCALL 0x500F           ;M 
76ED  90a094    MOV DPTR,# #0xA094     ;M dptr win: win-Ax (0xA094)
76F0  ef        MOV A,R7               ;M 
76F1  f0        MOVX @DPTR,A           ;M 
76F2  7f83      MOV R7,# #0x83         ;M 
76F4  12500f    LCALL 0x500F           ;M 
76F7  ae07      MOV R6,dir 0x07        ;M 
76F9  90a094    MOV DPTR,# #0xA094     ;M dptr win: win-Ax (0xA094)
76FC  e0        MOVX A,@DPTR           ;M 
76FD  ff        MOV R7,A               ;M 
76FE  b50601    CJNE A,dir 0x06, 0x7702 ;M 
7701  22        RET                    ;M 

sub_7702:  ; M func, size~28
7702  c3        CLR C                  ;M 
7703  90a096    MOV DPTR,# #0xA096     ;M dptr win: win-Ax (0xA096)
7706  e0        MOVX A,@DPTR           ;M 
7707  9464      SUBB A,# #0x64         ;M 
7709  90a095    MOV DPTR,# #0xA095     ;M dptr win: win-Ax (0xA095)
770C  e0        MOVX A,@DPTR           ;M 
770D  9400      SUBB A,# #0x00         ;M 
770F  400d      JC 0x771E              ;M 
7711  9001c0    MOV DPTR,# #0x01C0     ;M dptr win: MAC/reg-low (0x01C0)
7714  e0        MOVX A,@DPTR           ;M 
7715  4440      ORL A,# #0x40          ;M 
7717  f0        MOVX @DPTR,A           ;M 
7718  90a094    MOV DPTR,# #0xA094     ;M dptr win: win-Ax (0xA094)
771B  e0        MOVX A,@DPTR           ;M 
771C  ff        MOV R7,A               ;M 
771D  22        RET                    ;M 

sub_771E:  ; M func, size~39
771E  90a095    MOV DPTR,# #0xA095     ;M dptr win: win-Ax (0xA095)
7721  125816    LCALL 0x5816           ;M 
7724  80c2      SJMP 0x76E8            ;M 
7726  9001c4    MOV DPTR,# #0x01C4     ;M dptr win: MAC/reg-low (0x01C4)
7729  7426      MOV A,# #0x26          ;M 
772B  f0        MOVX @DPTR,A           ;M 
772C  74b7      MOV A,# #0xB7          ;M 
772E  a3        INC DPTR               ;M 
772F  f0        MOVX @DPTR,A           ;M 
7730  7f90      MOV R7,# #0x90         ;M 
7732  12500f    LCALL 0x500F           ;M 
7735  ef        MOV A,R7               ;M 
7736  20e0f7    JB ACC.0, 0x7730       ;M 
7739  7426      MOV A,# #0x26          ;M 
773B  04        INC A                  ;M 
773C  9001c4    MOV DPTR,# #0x01C4     ;M dptr win: MAC/reg-low (0x01C4)
773F  f0        MOVX @DPTR,A           ;M 
7740  74b7      MOV A,# #0xB7          ;M 
7742  a3        INC DPTR               ;M 
7743  f0        MOVX @DPTR,A           ;M 
7744  22        RET                    ;M 

sub_7745:  ; M func, size~12
7745  75f010    MOV dir,# B, #0x10     ;M 
7748  ef        MOV A,R7               ;M 
7749  1269c5    LCALL 0x69C5           ;M 
774C  e0        MOVX A,@DPTR           ;M 
774D  4440      ORL A,# #0x40          ;M 
774F  f0        MOVX @DPTR,A           ;M 
7750  22        RET                    ;M 

sub_7751:  ; M func, size~18
7751  900584    MOV DPTR,# #0x0584     ;M dptr win: RAM/table (0x0584)
7754  ef        MOV A,R7               ;M 
7755  f0        MOVX @DPTR,A           ;M 
7756  7d20      MOV R5,# #0x20         ;M 
7758  e4        CLR A                  ;M 
7759  ff        MOV R7,A               ;M 
775A  741d      MOV A,# #0x1D          ;M 
775C  2f        ADD A,R7               ;M 
775D  f8        MOV R0,A               ;M 
775E  e6        MOV A,@R0              ;M 
775F  4d        ORL A,R5               ;M 
7760  0277aa    LJMP 0x77AA            ;M 

sub_7763:  ; M func, size~40
7763  d3        SETB C                 ;M 
7764  10af01    JBC IE.7, 0x7768       ;M 
7767  c3        CLR C                  ;M 
7768  c0d0      PUSH dir PSW           ;M 
776A  e4        CLR A                  ;M 
776B  fe        MOV R6,A               ;M 
776C  fd        MOV R5,A               ;M 
776D  ef        MOV A,R7               ;M 
776E  b4010d    CJNE A,# #0x01, 0x777E ;M 
7771  eb        MOV A,R3               ;M 
7772  b40203    CJNE A,# #0x02, 0x7778 ;M 
7775  0d        INC R5                 ;M 
7776  8006      SJMP 0x777E            ;M 
7778  eb        MOV A,R3               ;M 
7779  b40102    CJNE A,# #0x01, 0x777E ;M 
777C  7d02      MOV R5,# #0x02         ;M 
777E  af06      MOV R7,dir 0x06        ;M 
7780  ef        MOV A,R7               ;M 
7781  c4        SWAP A                 ;M 
7782  54f0      ANL A,# #0xF0          ;M 
7784  4d        ORL A,R5               ;M 
7785  ff        MOV R7,A               ;M 
7786  d0d0      POP dir PSW            ;M 
7788  92af      MOV bit,C IE.7         ;M 
778A  22        RET                    ;M 

sub_778B:  ; M func, size~15
778B  7e00      MOV R6,# #0x00         ;M 
778D  7f8e      MOV R7,# #0x8E         ;M 
778F  7d00      MOV R5,# #0x00         ;M 
7791  7b01      MOV R3,# #0x01         ;M 
7793  7a9f      MOV R2,# #0x9F         ;M 
7795  7917      MOV R1,# #0x17         ;M 
7797  0208aa    LJMP 0x08AA            ;M 

sub_779A:  ; M func, size~15
779A  12762f    LCALL 0x762F           ;M 
779D  e0        MOVX A,@DPTR           ;M 
779E  20e008    JB ACC.0, 0x77A9       ;M 
77A1  c3        CLR C                  ;M 
77A2  13        RRC A                  ;M 
77A3  30e00a    JNB ACC.0, 0x77B0      ;M 
77A6  027f8a    LJMP 0x7F8A            ;M 

sub_77A9:  ; M func, size~8
77A9  12762f    LCALL 0x762F           ;M 
77AC  e0        MOVX A,@DPTR           ;M 
77AD  4404      ORL A,# #0x04          ;M 
77AF  f0        MOVX @DPTR,A           ;M 
77B0  22        RET                    ;M 

sub_77B1:  ; M func, size~44
77B1  d3        SETB C                 ;M 
77B2  10af01    JBC IE.7, 0x77B6       ;M 
77B5  c3        CLR C                  ;M 
77B6  c0d0      PUSH dir PSW           ;M 
77B8  90a1cb    MOV DPTR,# #0xA1CB     ;M dptr win: win-Ax (0xA1CB)
77BB  124908    LCALL 0x4908           ;M 
77BE  e4        CLR A                  ;M 
77BF  ff        MOV R7,A               ;M 
77C0  90a1cb    MOV DPTR,# #0xA1CB     ;M dptr win: win-Ax (0xA1CB)
77C3  1248ff    LCALL 0x48FF           ;M 
77C6  8f82      MOV dir,R7 DPL         ;M 
77C8  1257b0    LCALL 0x57B0           ;M 
77CB  fe        MOV R6,A               ;M 
77CC  7430      MOV A,# #0x30          ;M 
77CE  127e9f    LCALL 0x7E9F           ;M 
77D1  ee        MOV A,R6               ;M 
77D2  f0        MOVX @DPTR,A           ;M 
77D3  0f        INC R7                 ;M 
77D4  ef        MOV A,R7               ;M 
77D5  b408e8    CJNE A,# #0x08, 0x77C0 ;M 
77D8  d0d0      POP dir PSW            ;M 
77DA  92af      MOV bit,C IE.7         ;M 
77DC  22        RET                    ;M 

sub_77DD:  ; M func, size~7
77DD  d3        SETB C                 ;M 
77DE  10af01    JBC IE.7, 0x77E2       ;M 
77E1  c3        CLR C                  ;M 
77E2  c0d0      PUSH dir PSW           ;M 

sub_77E4:  ; H func, size~9
77E4  7bff      MOV R3,# #0xFF         ;H 
77E6  7a40      MOV R2,# #0x40         ;H 
77E8  7996      MOV R1,# #0x96         ;H 
77EA  ef        MOV A,R7               ;H 
77EB  7021      JNZ 0x780E             ;H 

irq_4B:  ; H func, size~38
77ED  ed        MOV A,R5               ;H 
77EE  547f      ANL A,# #0x7F          ;H 
77F0  fd        MOV R5,A               ;H 
77F1  c3        CLR C                  ;H 
77F2  9414      SUBB A,# #0x14         ;H 
77F4  4015      JC 0x780B              ;H 
77F6  ed        MOV A,R5               ;H 
77F7  d3        SETB C                 ;H 
77F8  941b      SUBB A,# #0x1B         ;H 
77FA  500f      JNC 0x780B             ;H 
77FC  ed        MOV A,R5               ;H 
77FD  75f008    MOV dir,# B, #0x08     ;H 
7800  a4        MUL AB                 ;H 
7801  24b6      ADD A,# #0xB6          ;H 
7803  f9        MOV R1,A               ;H 
7804  743f      MOV A,# #0x3F          ;H 
7806  35f0      ADDC A,dir B           ;H 
7808  fa        MOV R2,A               ;H 
7809  7bff      MOV R3,# #0xFF         ;H 
780B  12b7b1    LCALL 0xB7B1           ;H 
780E  d0d0      POP dir PSW            ;H 
7810  92af      MOV bit,C IE.7         ;H 
7812  22        RET                    ;H 

sub_7813:  ; M func, size~83
7813  d3        SETB C                 ;M 
7814  10af01    JBC IE.7, 0x7818       ;M 
7817  c3        CLR C                  ;M 
7818  c0d0      PUSH dir PSW           ;M 
781A  90a0e3    MOV DPTR,# #0xA0E3     ;M dptr win: win-Ax (0xA0E3)
781D  ed        MOV A,R5               ;M 
781E  f0        MOVX @DPTR,A           ;M 
781F  a3        INC DPTR               ;M 
7820  ef        MOV A,R7               ;M 
7821  f0        MOVX @DPTR,A           ;M 
7822  a3        INC DPTR               ;M 
7823  eb        MOV A,R3               ;M 
7824  f0        MOVX @DPTR,A           ;M 
7825  90a0e0    MOV DPTR,# #0xA0E0     ;M dptr win: win-Ax (0xA0E0)
7828  e0        MOVX A,@DPTR           ;M 
7829  90a0e6    MOV DPTR,# #0xA0E6     ;M dptr win: win-Ax (0xA0E6)
782C  f0        MOVX @DPTR,A           ;M 
782D  75f012    MOV dir,# B, #0x12     ;M 
7830  ef        MOV A,R7               ;M 
7831  909392    MOV DPTR,# #0x9392     ;M dptr win: win-9x (0x9392)
7834  1248f3    LCALL 0x48F3           ;M 
7837  e0        MOVX A,@DPTR           ;M 
7838  90a0e8    MOV DPTR,# #0xA0E8     ;M dptr win: win-Ax (0xA0E8)
783B  f0        MOVX @DPTR,A           ;M 
783C  75f012    MOV dir,# B, #0x12     ;M 
783F  ef        MOV A,R7               ;M 
7840  124b44    LCALL 0x4B44           ;M 
7843  ff        MOV R7,A               ;M 
7844  13        RRC A                  ;M 
7845  13        RRC A                  ;M 
7846  5403      ANL A,# #0x03          ;M 
7848  90a0e9    MOV DPTR,# #0xA0E9     ;M dptr win: win-Ax (0xA0E9)
784B  f0        MOVX @DPTR,A           ;M 
784C  90a0e1    MOV DPTR,# #0xA0E1     ;M dptr win: win-Ax (0xA0E1)
784F  740c      MOV A,# #0x0C          ;M 
7851  f0        MOVX @DPTR,A           ;M 
7852  90a0ef    MOV DPTR,# #0xA0EF     ;M dptr win: win-Ax (0xA0EF)
7855  7407      MOV A,# #0x07          ;M 
7857  f0        MOVX @DPTR,A           ;M 
7858  7b01      MOV R3,# #0x01         ;M 
785A  7aa0      MOV R2,# #0xA0         ;M 
785C  79e1      MOV R1,# #0xE1         ;M 
785E  128ff7    LCALL 0x8FF7           ;M 
7861  d0d0      POP dir PSW            ;M 
7863  92af      MOV bit,C IE.7         ;M 
7865  22        RET                    ;M 

sub_7866:  ; M func, size~49
7866  e4        CLR A                  ;M 
7867  fe        MOV R6,A               ;M 
7868  128d99    LCALL 0x8D99           ;M 
786B  e0        MOVX A,@DPTR           ;M 
786C  30e125    JNB ACC.1, 0x7894      ;M 
786F  ed        MOV A,R5               ;M 
7870  b41705    CJNE A,# #0x17, 0x7878 ;M 
7873  eb        MOV A,R3               ;M 
7874  6411      XRL A,# #0x11          ;M 
7876  601a      JZ 0x7892              ;M 
7878  ed        MOV A,R5               ;M 
7879  b41605    CJNE A,# #0x16, 0x7881 ;M 
787C  eb        MOV A,R3               ;M 
787D  6410      XRL A,# #0x10          ;M 
787F  6011      JZ 0x7892              ;M 
7881  ed        MOV A,R5               ;M 
7882  b41505    CJNE A,# #0x15, 0x788A ;M 
7885  eb        MOV A,R3               ;M 
7886  640f      XRL A,# #0x0F          ;M 
7888  6008      JZ 0x7892              ;M 
788A  ed        MOV A,R5               ;M 
788B  b41406    CJNE A,# #0x14, 0x7894 ;M 
788E  eb        MOV A,R3               ;M 
788F  b40d02    CJNE A,# #0x0D, 0x7894 ;M 
7892  7e01      MOV R6,# #0x01         ;M 
7894  af06      MOV R7,dir 0x06        ;M 
7896  22        RET                    ;M 

sub_7897:  ; M func, size~31
7897  8e5e      MOV dir,R6 0x5E        ;M 
7899  8f5f      MOV dir,R7 0x5F        ;M 
789B  756000    MOV dir,# 0x60, #0x00  ;M 
789E  756101    MOV dir,# 0x61, #0x01  ;M 
78A1  e4        CLR A                  ;M 
78A2  fb        MOV R3,A               ;M 
78A3  fa        MOV R2,A               ;M 
78A4  e55f      MOV A,dir 0x5F         ;M 
78A6  b5050d    CJNE A,dir 0x05, 0x78B6 ;M 
78A9  e55e      MOV A,dir 0x5E         ;M 
78AB  b50408    CJNE A,dir 0x04, 0x78B6 ;M 
78AE  756000    MOV dir,# 0x60, #0x00  ;M 
78B1  756164    MOV dir,# 0x61, #0x64  ;M 
78B4  219a      AJMP 0x799A            ;M 

sub_78B6:  ; M func, size~22
78B6  e55f      MOV A,dir 0x5F         ;M 
78B8  455e      ORL A,dir 0x5E         ;M 
78BA  6009      JZ 0x78C5              ;M 
78BC  d3        SETB C                 ;M 
78BD  e55f      MOV A,dir 0x5F         ;M 
78BF  9d        SUBB A,R5              ;M 
78C0  e55e      MOV A,dir 0x5E         ;M 
78C2  9c        SUBB A,R4              ;M 
78C3  4007      JC 0x78CC              ;M 
78C5  e4        CLR A                  ;M 
78C6  f560      MOV dir,A 0x60         ;M 
78C8  f561      MOV dir,A 0x61         ;M 
78CA  219a      AJMP 0x799A            ;M 

sub_78CC:  ; M func, size~211
78CC  d3        SETB C                 ;M 
78CD  ed        MOV A,R5               ;M 
78CE  94ff      SUBB A,# #0xFF         ;M 
78D0  ec        MOV A,R4               ;M 
78D1  940f      SUBB A,# #0x0F         ;M 
78D3  5006      JNC 0x78DB             ;M 
78D5  7a00      MOV R2,# #0x00         ;M 
78D7  7b04      MOV R3,# #0x04         ;M 
78D9  802b      SJMP 0x7906            ;M 
78DB  d3        SETB C                 ;M 
78DC  ed        MOV A,R5               ;M 
78DD  94ff      SUBB A,# #0xFF         ;M 
78DF  ec        MOV A,R4               ;M 
78E0  941f      SUBB A,# #0x1F         ;M 
78E2  5006      JNC 0x78EA             ;M 
78E4  7a00      MOV R2,# #0x00         ;M 
78E6  7b03      MOV R3,# #0x03         ;M 
78E8  801c      SJMP 0x7906            ;M 
78EA  d3        SETB C                 ;M 
78EB  ed        MOV A,R5               ;M 
78EC  94ff      SUBB A,# #0xFF         ;M 
78EE  ec        MOV A,R4               ;M 
78EF  943f      SUBB A,# #0x3F         ;M 
78F1  5006      JNC 0x78F9             ;M 
78F3  7a00      MOV R2,# #0x00         ;M 
78F5  7b02      MOV R3,# #0x02         ;M 
78F7  800d      SJMP 0x7906            ;M 
78F9  d3        SETB C                 ;M 
78FA  ed        MOV A,R5               ;M 
78FB  94ff      SUBB A,# #0xFF         ;M 
78FD  ec        MOV A,R4               ;M 
78FE  947f      SUBB A,# #0x7F         ;M 
7900  5004      JNC 0x7906             ;M 
7902  7a00      MOV R2,# #0x00         ;M 
7904  7b01      MOV R3,# #0x01         ;M 
7906  af03      MOV R7,dir 0x03        ;M 
7908  ed        MOV A,R5               ;M 
7909  ae04      MOV R6,dir 0x04        ;M 
790B  a807      MOV R0,dir 0x07        ;M 
790D  08        INC R0                 ;M 
790E  8005      SJMP 0x7915            ;M 
7910  c3        CLR C                  ;M 
7911  33        RLC A                  ;M 
7912  ce        XCH A,R6               ;M 
7913  33        RLC A                  ;M 
7914  ce        XCH A,R6               ;M 
7915  d8f9      DJNZ R0, 0x7910        ;M 
7917  fd        MOV R5,A               ;M 
7918  ac06      MOV R4,dir 0x06        ;M 
791A  af03      MOV R7,dir 0x03        ;M 
791C  e55f      MOV A,dir 0x5F         ;M 
791E  ae5e      MOV R6,dir 0x5E        ;M 
7920  a807      MOV R0,dir 0x07        ;M 
7922  08        INC R0                 ;M 
7923  8005      SJMP 0x792A            ;M 
7925  c3        CLR C                  ;M 
7926  33        RLC A                  ;M 
7927  ce        XCH A,R6               ;M 
7928  33        RLC A                  ;M 
7929  ce        XCH A,R6               ;M 
792A  d8f9      DJNZ R0, 0x7925        ;M 
792C  fb        MOV R3,A               ;M 
792D  aa06      MOV R2,dir 0x06        ;M 
792F  e4        CLR A                  ;M 
7930  f9        MOV R1,A               ;M 
7931  ec        MOV A,R4               ;M 
7932  c3        CLR C                  ;M 
7933  13        RRC A                  ;M 
7934  fc        MOV R4,A               ;M 
7935  ed        MOV A,R5               ;M 
7936  13        RRC A                  ;M 
7937  fd        MOV R5,A               ;M 
7938  d3        SETB C                 ;M 
7939  eb        MOV A,R3               ;M 
793A  9d        SUBB A,R5              ;M 
793B  ea        MOV A,R2               ;M 
793C  9c        SUBB A,R4              ;M 
793D  4046      JC 0x7985              ;M 
793F  7480      MOV A,# #0x80          ;M 
7941  7e0c      MOV R6,# #0x0C         ;M 
7943  a801      MOV R0,dir 0x01        ;M 
7945  08        INC R0                 ;M 
7946  8006      SJMP 0x794E            ;M 
7948  ce        XCH A,R6               ;M 
7949  a2e7      MOV C,bit ACC.7        ;M 
794B  13        RRC A                  ;M 
794C  ce        XCH A,R6               ;M 
794D  13        RRC A                  ;M 
794E  d8f8      DJNZ R0, 0x7948        ;M 
7950  2561      ADD A,dir 0x61         ;M 
7952  f561      MOV dir,A 0x61         ;M 
7954  ee        MOV A,R6               ;M 
7955  3560      ADDC A,dir 0x60        ;M 
7957  f560      MOV dir,A 0x60         ;M 
7959  c3        CLR C                  ;M 
795A  eb        MOV A,R3               ;M 
795B  9d        SUBB A,R5              ;M 
795C  fb        MOV R3,A               ;M 
795D  ea        MOV A,R2               ;M 
795E  9c        SUBB A,R4              ;M 
795F  fa        MOV R2,A               ;M 
7960  ed        MOV A,R5               ;M 
7961  6401      XRL A,# #0x01          ;M 
7963  4c        ORL A,R4               ;M 
7964  700f      JNZ 0x7975             ;M 
7966  c3        CLR C                  ;M 
7967  eb        MOV A,R3               ;M 
7968  9402      SUBB A,# #0x02         ;M 
796A  ea        MOV A,R2               ;M 
796B  9400      SUBB A,# #0x00         ;M 
796D  4006      JC 0x7975              ;M 
796F  7c00      MOV R4,# #0x00         ;M 
7971  7d02      MOV R5,# #0x02         ;M 
7973  8010      SJMP 0x7985            ;M 
7975  ed        MOV A,R5               ;M 
7976  6401      XRL A,# #0x01          ;M 
7978  4c        ORL A,R4               ;M 
7979  7006      JNZ 0x7981             ;M 
797B  eb        MOV A,R3               ;M 
797C  6401      XRL A,# #0x01          ;M 
797E  4a        ORL A,R2               ;M 
797F  6008      JZ 0x7989              ;M 
7981  eb        MOV A,R3               ;M 
7982  4a        ORL A,R2               ;M 
7983  6004      JZ 0x7989              ;M 
7985  09        INC R1                 ;M 
7986  b90ca8    CJNE R1,# #0x0C, 0x7931 ;M 
7989  e561      MOV A,dir 0x61         ;M 
798B  ae60      MOV R6,dir 0x60        ;M 
798D  7806      MOV R0,# #0x06         ;M 
798F  ce        XCH A,R6               ;M 
7990  c3        CLR C                  ;M 
7991  13        RRC A                  ;M 
7992  ce        XCH A,R6               ;M 
7993  13        RRC A                  ;M 
7994  d8f9      DJNZ R0, 0x798F        ;M 
7996  f561      MOV dir,A 0x61         ;M 
7998  8e60      MOV dir,R6 0x60        ;M 
799A  ae60      MOV R6,dir 0x60        ;M 
799C  af61      MOV R7,dir 0x61        ;M 
799E  22        RET                    ;M 

sub_799F:  ; M func, size~31
799F  7e00      MOV R6,# #0x00         ;M 
79A1  7f01      MOV R7,# #0x01         ;M 
79A3  7d00      MOV R5,# #0x00         ;M 
79A5  7b01      MOV R3,# #0x01         ;M 
79A7  7a9e      MOV R2,# #0x9E         ;M 
79A9  7948      MOV R1,# #0x48         ;M 
79AB  1208aa    LCALL 0x08AA           ;M 
79AE  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
79B1  e0        MOVX A,@DPTR           ;M 
79B2  54fd      ANL A,# #0xFD          ;M 
79B4  f0        MOVX @DPTR,A           ;M 
79B5  e4        CLR A                  ;M 
79B6  125209    LCALL 0x5209           ;M 
79B9  a3        INC DPTR               ;M 
79BA  740c      MOV A,# #0x0C          ;M 
79BC  f0        MOVX @DPTR,A           ;M 
79BD  22        RET                    ;M 

sub_79BE:  ; M func, size~13
79BE  900527    MOV DPTR,# #0x0527     ;M dptr win: RAM/table (0x0527)
79C1  e0        MOVX A,@DPTR           ;M 
79C2  54bf      ANL A,# #0xBF          ;M 
79C4  f0        MOVX @DPTR,A           ;M 
79C5  e4        CLR A                  ;M 
79C6  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
79C9  f0        MOVX @DPTR,A           ;M 
79CA  22        RET                    ;M 

sub_79CB:  ; M func, size~23
79CB  31d9      ACALL 0x79D9           ;M 
79CD  80ef      SJMP 0x79BE            ;M 
79CF  125fe2    LCALL 0x5FE2           ;M 
79D2  80ea      SJMP 0x79BE            ;M 
79D4  125fd9    LCALL 0x5FD9           ;M 
79D7  80e5      SJMP 0x79BE            ;M 
79D9  125499    LCALL 0x5499           ;M 
79DC  1258a2    LCALL 0x58A2           ;M 
79DF  025fdb    LJMP 0x5FDB            ;M 

sub_79E2:  ; M func, size~15
79E2  7b20      MOV R3,# #0x20         ;M 
79E4  1287d1    LCALL 0x87D1           ;M 
79E7  12502c    LCALL 0x502C           ;M 
79EA  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
79ED  7402      MOV A,# #0x02          ;M 
79EF  f0        MOVX @DPTR,A           ;M 
79F0  22        RET                    ;M 

sub_79F1:  ; M func, size~24
79F1  5101      ACALL 0x7A01           ;M 
79F3  7b23      MOV R3,# #0x23         ;M 
79F5  1287d1    LCALL 0x87D1           ;M 
79F8  80ed      SJMP 0x79E7            ;M 
79FA  80eb      SJMP 0x79E7            ;M 
79FC  1267ed    LCALL 0x67ED           ;M 
79FF  80e1      SJMP 0x79E2            ;M 
7A01  900527    MOV DPTR,# #0x0527     ;M dptr win: RAM/table (0x0527)
7A04  e0        MOVX A,@DPTR           ;M 
7A05  4440      ORL A,# #0x40          ;M 
7A07  f0        MOVX @DPTR,A           ;M 
7A08  22        RET                    ;M 

sub_7A09:  ; M func, size~14
7A09  7b22      MOV R3,# #0x22         ;M 
7A0B  1287d1    LCALL 0x87D1           ;M 
7A0E  5101      ACALL 0x7A01           ;M 
7A10  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
7A13  7403      MOV A,# #0x03          ;M 
7A15  f0        MOVX @DPTR,A           ;M 
7A16  22        RET                    ;M 

sub_7A17:  ; M func, size~26
7A17  125499    LCALL 0x5499           ;M 
7A1A  80f4      SJMP 0x7A10            ;M 
7A1C  7b21      MOV R3,# #0x21         ;M 
7A1E  1287d1    LCALL 0x87D1           ;M 
7A21  80ed      SJMP 0x7A10            ;M 
7A23  1267ed    LCALL 0x67ED           ;M 
7A26  80f4      SJMP 0x7A1C            ;M 
7A28  125499    LCALL 0x5499           ;M 
7A2B  7b24      MOV R3,# #0x24         ;M 
7A2D  5131      ACALL 0x7A31           ;M 
7A2F  f0        MOVX @DPTR,A           ;M 
7A30  22        RET                    ;M 

sub_7A31:  ; M func, size~20
7A31  7d6f      MOV R5,# #0x6F         ;M 
7A33  7fff      MOV R7,# #0xFF         ;M 
7A35  1258a7    LCALL 0x58A7           ;M 
7A38  900527    MOV DPTR,# #0x0527     ;M dptr win: RAM/table (0x0527)
7A3B  e0        MOVX A,@DPTR           ;M 
7A3C  54bf      ANL A,# #0xBF          ;M 
7A3E  f0        MOVX @DPTR,A           ;M 
7A3F  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
7A42  7404      MOV A,# #0x04          ;M 
7A44  22        RET                    ;M 

sub_7A45:  ; M func, size~6
7A45  7b25      MOV R3,# #0x25         ;M 
7A47  5131      ACALL 0x7A31           ;M 
7A49  f0        MOVX @DPTR,A           ;M 
7A4A  22        RET                    ;M 

sub_7A4B:  ; M func, size~13
7A4B  909e4b    MOV DPTR,# #0x9E4B     ;M dptr win: win-9x (0x9E4B)
7A4E  e0        MOVX A,@DPTR           ;M 
7A4F  6402      XRL A,# #0x02          ;M 
7A51  7f01      MOV R7,# #0x01         ;M 
7A53  6002      JZ 0x7A57              ;M 
7A55  7f00      MOV R7,# #0x00         ;M 
7A57  22        RET                    ;M 

sub_7A58:  ; M func, size~32
7A58  909e4d    MOV DPTR,# #0x9E4D     ;M dptr win: win-9x (0x9E4D)
7A5B  e0        MOVX A,@DPTR           ;M 
7A5C  30e018    JNB ACC.0, 0x7A77      ;M 
7A5F  909e48    MOV DPTR,# #0x9E48     ;M dptr win: win-9x (0x9E48)
7A62  e0        MOVX A,@DPTR           ;M 
7A63  ff        MOV R7,A               ;M 
7A64  30e00e    JNB ACC.0, 0x7A75      ;M 
7A67  c3        CLR C                  ;M 
7A68  13        RRC A                  ;M 
7A69  30e007    JNB ACC.0, 0x7A73      ;M 
7A6C  514b      ACALL 0x7A4B           ;M 
7A6E  bf0106    CJNE R7,# #0x01, 0x7A77 ;M 
7A71  8002      SJMP 0x7A75            ;M 
7A73  8000      SJMP 0x7A75            ;M 
7A75  5178      ACALL 0x7A78           ;M 
7A77  22        RET                    ;M 

sub_7A78:  ; M func, size~18
7A78  909e55    MOV DPTR,# #0x9E55     ;M dptr win: win-9x (0x9E55)
7A7B  e0        MOVX A,@DPTR           ;M 
7A7C  ff        MOV R7,A               ;M 
7A7D  6003      JZ 0x7A82              ;M 
7A7F  b40807    CJNE A,# #0x08, 0x7A89 ;M 
7A82  519c      ACALL 0x7A9C           ;M 
7A84  bf0102    CJNE R7,# #0x01, 0x7A89 ;M 
7A87  518a      ACALL 0x7A8A           ;M 
7A89  22        RET                    ;M 

sub_7A8A:  ; M func, size~18
7A8A  d3        SETB C                 ;M 
7A8B  10af01    JBC IE.7, 0x7A8F       ;M 
7A8E  c3        CLR C                  ;M 
7A8F  c0d0      PUSH dir PSW           ;M 
7A91  12517c    LCALL 0x517C           ;M 
7A94  1257b6    LCALL 0x57B6           ;M 
7A97  d0d0      POP dir PSW            ;M 
7A99  92af      MOV bit,C IE.7         ;M 
7A9B  22        RET                    ;M 

sub_7A9C:  ; M func, size~40
7A9C  900287    MOV DPTR,# #0x0287     ;M dptr win: MAC/reg-low (0x0287)
7A9F  e0        MOVX A,@DPTR           ;M 
7AA0  701f      JNZ 0x7AC1             ;M 
7AA2  900100    MOV DPTR,# #0x0100     ;M dptr win: MAC/reg-low (0x0100)
7AA5  e0        MOVX A,@DPTR           ;M 
7AA6  643f      XRL A,# #0x3F          ;M 
7AA8  7017      JNZ 0x7AC1             ;M 
7AAA  900296    MOV DPTR,# #0x0296     ;M dptr win: MAC/reg-low (0x0296)
7AAD  e0        MOVX A,@DPTR           ;M 
7AAE  7011      JNZ 0x7AC1             ;M 
7AB0  900286    MOV DPTR,# #0x0286     ;M dptr win: MAC/reg-low (0x0286)
7AB3  e0        MOVX A,@DPTR           ;M 
7AB4  30e10a    JNB ACC.1, 0x7AC1      ;M 
7AB7  900286    MOV DPTR,# #0x0286     ;M dptr win: MAC/reg-low (0x0286)
7ABA  e0        MOVX A,@DPTR           ;M 
7ABB  20e303    JB ACC.3, 0x7AC1       ;M 
7ABE  7f01      MOV R7,# #0x01         ;M 
7AC0  22        RET                    ;M 
7AC1  .db 7F 00 22

sub_7AC4:  ; M func, size~45
7AC4  ef        MOV A,R7               ;M 
7AC5  24fe      ADD A,# #0xFE          ;M 
7AC7  600b      JZ 0x7AD4              ;M 
7AC9  04        INC A                  ;M 
7ACA  7024      JNZ 0x7AF0             ;M 
7ACC  909e58    MOV DPTR,# #0x9E58     ;M dptr win: win-9x (0x9E58)
7ACF  7402      MOV A,# #0x02          ;M 
7AD1  f0        MOVX @DPTR,A           ;M 
7AD2  8013      SJMP 0x7AE7            ;M 
7AD4  ed        MOV A,R5               ;M 
7AD5  7006      JNZ 0x7ADD             ;M 
7AD7  909eb2    MOV DPTR,# #0x9EB2     ;M dptr win: win-9x (0x9EB2)
7ADA  e0        MOVX A,@DPTR           ;M 
7ADB  8002      SJMP 0x7ADF            ;M 
7ADD  ed        MOV A,R5               ;M 
7ADE  14        DEC A                  ;M 
7ADF  909e58    MOV DPTR,# #0x9E58     ;M dptr win: win-9x (0x9E58)
7AE2  f0        MOVX @DPTR,A           ;M 
7AE3  909e58    MOV DPTR,# #0x9E58     ;M dptr win: win-9x (0x9E58)
7AE6  e0        MOVX A,@DPTR           ;M 
7AE7  a3        INC DPTR               ;M 
7AE8  f0        MOVX @DPTR,A           ;M 
7AE9  909e4e    MOV DPTR,# #0x9E4E     ;M dptr win: win-9x (0x9E4E)
7AEC  e0        MOVX A,@DPTR           ;M 
7AED  4408      ORL A,# #0x08          ;M 
7AEF  f0        MOVX @DPTR,A           ;M 
7AF0  22        RET                    ;M 

sub_7AF1:  ; M func, size~12
7AF1  909e54    MOV DPTR,# #0x9E54     ;M dptr win: win-9x (0x9E54)
7AF4  e0        MOVX A,@DPTR           ;M 
7AF5  d3        SETB C                 ;M 
7AF6  9400      SUBB A,# #0x00         ;M 
7AF8  4003      JC 0x7AFD              ;M 
7AFA  7fff      MOV R7,# #0xFF         ;M 
7AFC  22        RET                    ;M 

sub_7AFD:  ; M func, size~9
7AFD  909eb5    MOV DPTR,# #0x9EB5     ;M dptr win: win-9x (0x9EB5)
7B00  e0        MOVX A,@DPTR           ;M 
7B01  6003      JZ 0x7B06              ;M 
7B03  7fff      MOV R7,# #0xFF         ;M 
7B05  22        RET                    ;M 

sub_7B06:  ; M func, size~10
7B06  900662    MOV DPTR,# #0x0662     ;M dptr win: RAM/table (0x0662)
7B09  e0        MOVX A,@DPTR           ;M 
7B0A  30e103    JNB ACC.1, 0x7B10      ;M 
7B0D  7fff      MOV R7,# #0xFF         ;M 
7B0F  22        RET                    ;M 

sub_7B10:  ; M func, size~20
7B10  900662    MOV DPTR,# #0x0662     ;M dptr win: RAM/table (0x0662)
7B13  e0        MOVX A,@DPTR           ;M 
7B14  30e00a    JNB ACC.0, 0x7B21      ;M 
7B17  e0        MOVX A,@DPTR           ;M 
7B18  54fc      ANL A,# #0xFC          ;M 
7B1A  ff        MOV R7,A               ;M 
7B1B  bf8003    CJNE R7,# #0x80, 0x7B21 ;M 
7B1E  7fff      MOV R7,# #0xFF         ;M 
7B20  22        RET                    ;M 
7B21  .db 7F 01 22

sub_7B24:  ; M func, size~78
7B24  d3        SETB C                 ;M 
7B25  10af01    JBC IE.7, 0x7B29       ;M 
7B28  c3        CLR C                  ;M 
7B29  c0d0      PUSH dir PSW           ;M 
7B2B  909eb6    MOV DPTR,# #0x9EB6     ;M dptr win: win-9x (0x9EB6)
7B2E  e0        MOVX A,@DPTR           ;M 
7B2F  30e00e    JNB ACC.0, 0x7B40      ;M 
7B32  909ec8    MOV DPTR,# #0x9EC8     ;M dptr win: win-9x (0x9EC8)
7B35  e0        MOVX A,@DPTR           ;M 
7B36  7033      JNZ 0x7B6B             ;M 
7B38  7172      ACALL 0x7B72           ;M 
7B3A  6401      XRL A,# #0x01          ;M 
7B3C  6029      JZ 0x7B67              ;M 
7B3E  802b      SJMP 0x7B6B            ;M 
7B40  12823a    LCALL 0x823A           ;M 
7B43  ef        MOV A,R7               ;M 
7B44  6401      XRL A,# #0x01          ;M 
7B46  7023      JNZ 0x7B6B             ;M 
7B48  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
7B4B  e0        MOVX A,@DPTR           ;M 
7B4C  ff        MOV R7,A               ;M 
7B4D  5403      ANL A,# #0x03          ;M 
7B4F  701a      JNZ 0x7B6B             ;M 
7B51  ef        MOV A,R7               ;M 
7B52  20e216    JB ACC.2, 0x7B6B       ;M 
7B55  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
7B58  e0        MOVX A,@DPTR           ;M 
7B59  20e40f    JB ACC.4, 0x7B6B       ;M 
7B5C  1275b0    LCALL 0x75B0           ;M 
7B5F  30e009    JNB ACC.0, 0x7B6B      ;M 
7B62  7172      ACALL 0x7B72           ;M 
7B64  b40104    CJNE A,# #0x01, 0x7B6B ;M 
7B67  7f01      MOV R7,# #0x01         ;M 
7B69  8002      SJMP 0x7B6D            ;M 
7B6B  7f00      MOV R7,# #0x00         ;M 
7B6D  d0d0      POP dir PSW            ;M 
7B6F  92af      MOV bit,C IE.7         ;M 
7B71  22        RET                    ;M 

sub_7B72:  ; M func, size~7
7B72  51f1      ACALL 0x7AF1           ;M 
7B74  8f70      MOV dir,R7 0x70        ;M 
7B76  e570      MOV A,dir 0x70         ;M 
7B78  22        RET                    ;M 

sub_7B79:  ; M func, size~36
7B79  7b2d      MOV R3,# #0x2D         ;M 
7B7B  1287d1    LCALL 0x87D1           ;M 
7B7E  125823    LCALL 0x5823           ;M 
7B81  900137    MOV DPTR,# #0x0137     ;M dptr win: MAC/reg-low (0x0137)
7B84  7402      MOV A,# #0x02          ;M 
7B86  f0        MOVX @DPTR,A           ;M 
7B87  fd        MOV R5,A               ;M 
7B88  7f03      MOV R7,# #0x03         ;M 
7B8A  12750c    LCALL 0x750C           ;M 
7B8D  12502c    LCALL 0x502C           ;M 
7B90  e4        CLR A                  ;M 
7B91  fd        MOV R5,A               ;M 
7B92  7f01      MOV R7,# #0x01         ;M 
7B94  126296    LCALL 0x6296           ;M 
7B97  e4        CLR A                  ;M 
7B98  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
7B9B  f0        MOVX @DPTR,A           ;M 
7B9C  22        RET                    ;M 

sub_7B9D:  ; M func, size~25
7B9D  909ea9    MOV DPTR,# #0x9EA9     ;M dptr win: win-9x (0x9EA9)
7BA0  7404      MOV A,# #0x04          ;M 
7BA2  f0        MOVX @DPTR,A           ;M 
7BA3  a3        INC DPTR               ;M 
7BA4  14        DEC A                  ;M 
7BA5  f0        MOVX @DPTR,A           ;M 
7BA6  a3        INC DPTR               ;M 
7BA7  e4        CLR A                  ;M 
7BA8  f0        MOVX @DPTR,A           ;M 
7BA9  a3        INC DPTR               ;M 
7BAA  7464      MOV A,# #0x64          ;M 
7BAC  f0        MOVX @DPTR,A           ;M 
7BAD  a3        INC DPTR               ;M 
7BAE  7401      MOV A,# #0x01          ;M 
7BB0  f0        MOVX @DPTR,A           ;M 
7BB1  a3        INC DPTR               ;M 
7BB2  7405      MOV A,# #0x05          ;M 
7BB4  f0        MOVX @DPTR,A           ;M 
7BB5  22        RET                    ;M 

sub_7BB6:  ; M func, size~61
7BB6  d3        SETB C                 ;M 
7BB7  10af01    JBC IE.7, 0x7BBB       ;M 
7BBA  c3        CLR C                  ;M 
7BBB  c0d0      PUSH dir PSW           ;M 
7BBD  90a1e2    MOV DPTR,# #0xA1E2     ;M dptr win: win-Ax (0xA1E2)
7BC0  ef        MOV A,R7               ;M 
7BC1  f0        MOVX @DPTR,A           ;M 
7BC2  7e00      MOV R6,# #0x00         ;M 
7BC4  7f2d      MOV R7,# #0x2D         ;M 
7BC6  7d00      MOV R5,# #0x00         ;M 
7BC8  7b01      MOV R3,# #0x01         ;M 
7BCA  7a9e      MOV R2,# #0x9E         ;M 
7BCC  7970      MOV R1,# #0x70         ;M 
7BCE  1208aa    LCALL 0x08AA           ;M 
7BD1  e4        CLR A                  ;M 
7BD2  909e69    MOV DPTR,# #0x9E69     ;M dptr win: win-9x (0x9E69)
7BD5  f0        MOVX @DPTR,A           ;M 
7BD6  909e68    MOV DPTR,# #0x9E68     ;M dptr win: win-9x (0x9E68)
7BD9  f0        MOVX @DPTR,A           ;M 
7BDA  909e6c    MOV DPTR,# #0x9E6C     ;M dptr win: win-9x (0x9E6C)
7BDD  f0        MOVX @DPTR,A           ;M 
7BDE  90a1e2    MOV DPTR,# #0xA1E2     ;M dptr win: win-Ax (0xA1E2)
7BE1  e0        MOVX A,@DPTR           ;M 
7BE2  b40109    CJNE A,# #0x01, 0x7BEE ;M 
7BE5  909e6d    MOV DPTR,# #0x9E6D     ;M dptr win: win-9x (0x9E6D)
7BE8  742d      MOV A,# #0x2D          ;M 
7BEA  f0        MOVX @DPTR,A           ;M 
7BEB  e4        CLR A                  ;M 
7BEC  a3        INC DPTR               ;M 
7BED  f0        MOVX @DPTR,A           ;M 
7BEE  d0d0      POP dir PSW            ;M 
7BF0  92af      MOV bit,C IE.7         ;M 
7BF2  22        RET                    ;M 

sub_7BF3:  ; M func, size~22
7BF3  7b2f      MOV R3,# #0x2F         ;M 
7BF5  1287d1    LCALL 0x87D1           ;M 
7BF8  12502c    LCALL 0x502C           ;M 
7BFB  7d08      MOV R5,# #0x08         ;M 
7BFD  7f01      MOV R7,# #0x01         ;M 
7BFF  126296    LCALL 0x6296           ;M 
7C02  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
7C05  7408      MOV A,# #0x08          ;M 
7C07  f0        MOVX @DPTR,A           ;M 
7C08  22        RET                    ;M 

sub_7C09:  ; M func, size~16
7C09  125499    LCALL 0x5499           ;M 
7C0C  1258a2    LCALL 0x58A2           ;M 
7C0F  126292    LCALL 0x6292           ;M 
7C12  909e4c    MOV DPTR,# #0x9E4C     ;M dptr win: win-9x (0x9E4C)
7C15  740c      MOV A,# #0x0C          ;M 
7C17  f0        MOVX @DPTR,A           ;M 
7C18  22        RET                    ;M 

sub_7C19:  ; M func, size~53
7C19  90a0b3    MOV DPTR,# #0xA0B3     ;M dptr win: win-Ax (0xA0B3)
7C1C  e559      MOV A,dir 0x59         ;M 
7C1E  f0        MOVX @DPTR,A           ;M 
7C1F  a3        INC DPTR               ;M 
7C20  e55a      MOV A,dir 0x5A         ;M 
7C22  f0        MOVX @DPTR,A           ;M 
7C23  e559      MOV A,dir 0x59         ;M 
7C25  13        RRC A                  ;M 
7C26  a3        INC DPTR               ;M 
7C27  f0        MOVX @DPTR,A           ;M 
7C28  e55a      MOV A,dir 0x5A         ;M 
7C2A  13        RRC A                  ;M 
7C2B  a3        INC DPTR               ;M 
7C2C  f0        MOVX @DPTR,A           ;M 
7C2D  900006    MOV DPTR,# #0x0006     ;M dptr win: MAC/reg-low (0x0006)
7C30  1207ab    LCALL 0x07AB           ;M 
7C33  ff        MOV R7,A               ;M 
7C34  aef0      MOV R6,dir B           ;M 
7C36  900008    MOV DPTR,# #0x0008     ;M dptr win: MAC/reg-low (0x0008)
7C39  1207ab    LCALL 0x07AB           ;M 
7C3C  2f        ADD A,R7               ;M 
7C3D  ff        MOV R7,A               ;M 
7C3E  e5f0      MOV A,dir B            ;M 
7C40  3e        ADDC A,R6              ;M 
7C41  fe        MOV R6,A               ;M 
7C42  900004    MOV DPTR,# #0x0004     ;M dptr win: MAC/reg-low (0x0004)
7C45  1207ab    LCALL 0x07AB           ;M 
7C48  2f        ADD A,R7               ;M 
7C49  ff        MOV R7,A               ;M 
7C4A  ee        MOV A,R6               ;M 
7C4B  35f0      ADDC A,dir B           ;M 
7C4D  22        RET                    ;M 

sub_7C4E:  ; M func, size~11
7C4E  75f012    MOV dir,# B, #0x12     ;M 
7C51  e551      MOV A,dir 0x51         ;M 
7C53  90938a    MOV DPTR,# #0x938A     ;M dptr win: win-9x (0x938A)
7C56  0248f3    LJMP 0x48F3            ;M 

sub_7C59:  ; M func, size~25
7C59  909e5b    MOV DPTR,# #0x9E5B     ;M dptr win: win-9x (0x9E5B)
7C5C  e0        MOVX A,@DPTR           ;M 
7C5D  04        INC A                  ;M 
7C5E  f0        MOVX @DPTR,A           ;M 
7C5F  909e56    MOV DPTR,# #0x9E56     ;M dptr win: win-9x (0x9E56)
7C62  e0        MOVX A,@DPTR           ;M 
7C63  54ef      ANL A,# #0xEF          ;M 
7C65  f0        MOVX @DPTR,A           ;M 
7C66  909eaf    MOV DPTR,# #0x9EAF     ;M dptr win: win-9x (0x9EAF)
7C69  e0        MOVX A,@DPTR           ;M 
7C6A  ff        MOV R7,A               ;M 
7C6B  909e5b    MOV DPTR,# #0x9E5B     ;M dptr win: win-9x (0x9E5B)
7C6E  e0        MOVX A,@DPTR           ;M 
7C6F  d3        SETB C                 ;M 
7C70  9f        SUBB A,R7              ;M 
7C71  22        RET                    ;M 

sub_7C72:  ; M func, size~11
7C72  e0        MOVX A,@DPTR           ;M 
7C73  240a      ADD A,# #0x0A          ;M 
7C75  f582      MOV dir,A DPL          ;M 
7C77  e4        CLR A                  ;M 
7C78  349d      ADDC A,# #0x9D         ;M 
7C7A  f583      MOV dir,A DPH          ;M 
7C7C  22        RET                    ;M 

sub_7C7D:  ; M func, size~12
7C7D  25e0      ADD A,dir ACC          ;M 
7C7F  2401      ADD A,# #0x01          ;M 
7C81  f582      MOV dir,A DPL          ;M 
7C83  e4        CLR A                  ;M 
7C84  3492      ADDC A,# #0x92         ;M 
7C86  f583      MOV dir,A DPH          ;M 
7C88  22        RET                    ;M 

sub_7C89:  ; M func, size~19
7C89  90a06b    MOV DPTR,# #0xA06B     ;M dptr win: win-Ax (0xA06B)
7C8C  e0        MOVX A,@DPTR           ;M 
7C8D  75f002    MOV dir,# B, #0x02     ;M 
7C90  a4        MUL AB                 ;M 
7C91  f582      MOV dir,A DPL          ;M 
7C93  85f083    MOV dir,dir DPH,B      ;M 
7C96  22        RET                    ;M 
7C97  .db 90 00 04 02 07

sub_7C9C:  ; M func, size~17
7C9C  abf0      MOV R3,dir B           ;M 
7C9E  909e6f    MOV DPTR,# #0x9E6F     ;M dptr win: win-9x (0x9E6F)
7CA1  e0        MOVX A,@DPTR           ;M 
7CA2  2404      ADD A,# #0x04          ;M 
7CA4  909e6a    MOV DPTR,# #0x9E6A     ;M dptr win: win-9x (0x9E6A)
7CA7  f0        MOVX @DPTR,A           ;M 
7CA8  a3        INC DPTR               ;M 
7CA9  7410      MOV A,# #0x10          ;M 
7CAB  f0        MOVX @DPTR,A           ;M 
7CAC  22        RET                    ;M 

sub_7CAD:  ; M func, size~12
7CAD  f0        MOVX @DPTR,A           ;M 
7CAE  75f012    MOV dir,# B, #0x12     ;M 
7CB1  e551      MOV A,dir 0x51         ;M 
7CB3  909391    MOV DPTR,# #0x9391     ;M dptr win: win-9x (0x9391)
7CB6  0248f3    LJMP 0x48F3            ;M 

sub_7CB9:  ; M func, size~16
7CB9  900134    MOV DPTR,# #0x0134     ;M dptr win: MAC/reg-low (0x0134)
7CBC  7440      MOV A,# #0x40          ;M 
7CBE  f0        MOVX @DPTR,A           ;M 
7CBF  fd        MOV R5,A               ;M 
7CC0  e4        CLR A                  ;M 
7CC1  ff        MOV R7,A               ;M 
7CC2  12750c    LCALL 0x750C           ;M 
7CC5  435408    ORL dir,# 0x54, #0x08  ;M 
7CC8  22        RET                    ;M 

sub_7CC9:  ; M func, size~9
7CC9  900002    MOV DPTR,# #0x0002     ;M dptr win: MAC/reg-low (0x0002)
7CCC  1207ab    LCALL 0x07AB           ;M 
7CCF  45f0      ORL A,dir B            ;M 
7CD1  22        RET                    ;M 

sub_7CD2:  ; M func, size~7
7CD2  e4        CLR A                  ;M 
7CD3  90a179    MOV DPTR,# #0xA179     ;M dptr win: win-Ax (0xA179)
7CD6  f0        MOVX @DPTR,A           ;M 
7CD7  a3        INC DPTR               ;M 
7CD8  22        RET                    ;M 

sub_7CD9:  ; M func, size~13
7CD9  9001c0    MOV DPTR,# #0x01C0     ;M dptr win: MAC/reg-low (0x01C0)
7CDC  e0        MOVX A,@DPTR           ;M 
7CDD  4420      ORL A,# #0x20          ;M 
7CDF  f0        MOVX @DPTR,A           ;M 
7CE0  90a1c4    MOV DPTR,# #0xA1C4     ;M dptr win: win-Ax (0xA1C4)
7CE3  e0        MOVX A,@DPTR           ;M 
7CE4  fd        MOV R5,A               ;M 
7CE5  22        RET                    ;M 

sub_7CE6:  ; M func, size~12
7CE6  900604    MOV DPTR,# #0x0604     ;M dptr win: RAM/table (0x0604)
7CE9  e0        MOVX A,@DPTR           ;M 
7CEA  4440      ORL A,# #0x40          ;M 
7CEC  f0        MOVX @DPTR,A           ;M 
7CED  e0        MOVX A,@DPTR           ;M 
7CEE  4480      ORL A,# #0x80          ;M 
7CF0  f0        MOVX @DPTR,A           ;M 
7CF1  22        RET                    ;M 

sub_7CF2:  ; M func, size~11
7CF2  75f012    MOV dir,# B, #0x12     ;M 
7CF5  e551      MOV A,dir 0x51         ;M 
7CF7  90938f    MOV DPTR,# #0x938F     ;M dptr win: win-9x (0x938F)
7CFA  0248f3    LJMP 0x48F3            ;M 

sub_7CFD:  ; M func, size~12
7CFD  909f96    MOV DPTR,# #0x9F96     ;M dptr win: win-9x (0x9F96)
7D00  e0        MOVX A,@DPTR           ;M 
7D01  ff        MOV R7,A               ;M 
7D02  909f99    MOV DPTR,# #0x9F99     ;M dptr win: win-9x (0x9F99)
7D05  e0        MOVX A,@DPTR           ;M 
7D06  d3        SETB C                 ;M 
7D07  9f        SUBB A,R7              ;M 
7D08  22        RET                    ;M 

sub_7D09:  ; M func, size~11
7D09  f0        MOVX @DPTR,A           ;M 
7D0A  90013f    MOV DPTR,# #0x013F     ;M dptr win: MAC/reg-low (0x013F)
7D0D  7410      MOV A,# #0x10          ;M 
7D0F  f0        MOVX @DPTR,A           ;M 
7D10  fd        MOV R5,A               ;M 
7D11  7f03      MOV R7,# #0x03         ;M 
7D13  22        RET                    ;M 

sub_7D14:  ; M func, size~18
7D14  1207ab    LCALL 0x07AB           ;M 
7D17  ff        MOV R7,A               ;M 
7D18  aef0      MOV R6,dir B           ;M 
7D1A  22        RET                    ;M 
7D1B  .db 90 00 08 02 07 AB 90 00 06 02 07

sub_7D26:  ; M func, size~8
7D26  ab90      MOV R3,dir P1          ;M 
7D28  a058      ORL C,/bit 0x58.0      ;M 
7D2A  e0        MOVX A,@DPTR           ;M 
7D2B  6401      XRL A,# #0x01          ;M 
7D2D  22        RET                    ;M 

sub_7D2E:  ; M func, size~10
7D2E  fd        MOV R5,A               ;M 
7D2F  90a0b7    MOV DPTR,# #0xA0B7     ;M dptr win: win-Ax (0xA0B7)
7D32  e4        CLR A                  ;M 
7D33  f0        MOVX @DPTR,A           ;M 
7D34  a3        INC DPTR               ;M 
7D35  ed        MOV A,R5               ;M 
7D36  f0        MOVX @DPTR,A           ;M 
7D37  22        RET                    ;M 

sub_7D38:  ; M func, size~10
7D38  90a062    MOV DPTR,# #0xA062     ;M dptr win: win-Ax (0xA062)
7D3B  e0        MOVX A,@DPTR           ;M 
7D3C  fe        MOV R6,A               ;M 
7D3D  a3        INC DPTR               ;M 
7D3E  e0        MOVX A,@DPTR           ;M 
7D3F  7803      MOV R0,# #0x03         ;M 
7D41  22        RET                    ;M 

sub_7D42:  ; M func, size~10
7D42  90a054    MOV DPTR,# #0xA054     ;M dptr win: win-Ax (0xA054)
7D45  e0        MOVX A,@DPTR           ;M 
7D46  04        INC A                  ;M 
7D47  f0        MOVX @DPTR,A           ;M 
7D48  e0        MOVX A,@DPTR           ;M 
7D49  6480      XRL A,# #0x80          ;M 
7D4B  22        RET                    ;M 

sub_7D4C:  ; M func, size~9
7D4C  7818      MOV R0,# #0x18         ;M 
7D4E  120847    LCALL 0x0847           ;M 
7D51  90058b    MOV DPTR,# #0x058B     ;M dptr win: RAM/table (0x058B)
7D54  22        RET                    ;M 

sub_7D55:  ; M func, size~9
7D55  7810      MOV R0,# #0x10         ;M 
7D57  120847    LCALL 0x0847           ;M 
7D5A  90058a    MOV DPTR,# #0x058A     ;M dptr win: RAM/table (0x058A)
7D5D  22        RET                    ;M 

sub_7D5E:  ; M func, size~9
7D5E  7808      MOV R0,# #0x08         ;M 
7D60  120847    LCALL 0x0847           ;M 
7D63  900589    MOV DPTR,# #0x0589     ;M dptr win: RAM/table (0x0589)
7D66  22        RET                    ;M 

sub_7D67:  ; M func, size~9
7D67  7818      MOV R0,# #0x18         ;M 
7D69  120847    LCALL 0x0847           ;M 
7D6C  900587    MOV DPTR,# #0x0587     ;M dptr win: RAM/table (0x0587)
7D6F  22        RET                    ;M 

sub_7D70:  ; M func, size~9
7D70  7810      MOV R0,# #0x10         ;M 
7D72  120847    LCALL 0x0847           ;M 
7D75  900586    MOV DPTR,# #0x0586     ;M dptr win: RAM/table (0x0586)
7D78  22        RET                    ;M 

sub_7D79:  ; M func, size~9
7D79  7808      MOV R0,# #0x08         ;M 
7D7B  120847    LCALL 0x0847           ;M 
7D7E  900585    MOV DPTR,# #0x0585     ;M dptr win: RAM/table (0x0585)
7D81  22        RET                    ;M 

sub_7D82:  ; M func, size~9
7D82  1248f3    LCALL 0x48F3           ;M 
7D85  e0        MOVX A,@DPTR           ;M 
7D86  fb        MOV R3,A               ;M 
7D87  e4        CLR A                  ;M 
7D88  fd        MOV R5,A               ;M 
7D89  0f        INC R7                 ;M 
7D8A  22        RET                    ;M 

sub_7D8B:  ; M func, size~8
7D8B  fb        MOV R3,A               ;M 
7D8C  7a04      MOV R2,# #0x04         ;M 
7D8E  f9        MOV R1,A               ;M 
7D8F  f8        MOV R0,A               ;M 
7D90  024861    LJMP 0x4861            ;M 

sub_7D93:  ; M func, size~9
7D93  909e50    MOV DPTR,# #0x9E50     ;M dptr win: win-9x (0x9E50)
7D96  e0        MOVX A,@DPTR           ;M 
7D97  ff        MOV R7,A               ;M 
7D98  c4        SWAP A                 ;M 
7D99  540f      ANL A,# #0x0F          ;M 
7D9B  22        RET                    ;M 

sub_7D9C:  ; M func, size~9
7D9C  f0        MOVX @DPTR,A           ;M 
7D9D  e4        CLR A                  ;M 
7D9E  fb        MOV R3,A               ;M 
7D9F  fd        MOV R5,A               ;M 
7DA0  7f58      MOV R7,# #0x58         ;M 
7DA2  7e01      MOV R6,# #0x01         ;M 
7DA4  22        RET                    ;M 

sub_7DA5:  ; M func, size~9
7DA5  ff        MOV R7,A               ;M 
7DA6  90a062    MOV DPTR,# #0xA062     ;M dptr win: win-Ax (0xA062)
7DA9  e0        MOVX A,@DPTR           ;M 
7DAA  fb        MOV R3,A               ;M 
7DAB  ef        MOV A,R7               ;M 
7DAC  5b        ANL A,R3               ;M 
7DAD  22        RET                    ;M 

sub_7DAE:  ; M func, size~9
7DAE  909ef3    MOV DPTR,# #0x9EF3     ;M dptr win: win-9x (0x9EF3)
7DB1  e0        MOVX A,@DPTR           ;M 
7DB2  13        RRC A                  ;M 
7DB3  13        RRC A                  ;M 
7DB4  543f      ANL A,# #0x3F          ;M 
7DB6  22        RET                    ;M 

sub_7DB7:  ; M func, size~8
7DB7  f0        MOVX @DPTR,A           ;M 
7DB8  7f10      MOV R7,# #0x10         ;M 
7DBA  7e00      MOV R6,# #0x00         ;M 
7DBC  023e87    LJMP 0x3E87            ;M 

sub_7DBF:  ; M func, size~13
7DBF  90060a    MOV DPTR,# #0x060A     ;M dptr win: RAM/table (0x060A)
7DC2  e0        MOVX A,@DPTR           ;M 
7DC3  54f8      ANL A,# #0xF8          ;M 
7DC5  f0        MOVX @DPTR,A           ;M 
7DC6  22        RET                    ;M 
7DC7  .db 7D 01 7F 01 02

sub_7DCC:  ; M func, size~15
7DCC  901d90    MOV DPTR,# #0x1D90     ;M dptr win: RAM/table (0x1D90)
7DCF  a068      ORL C,/bit 0x68.0      ;M 
7DD1  e0        MOVX A,@DPTR           ;M 
7DD2  d3        SETB C                 ;M 
7DD3  9402      SUBB A,# #0x02         ;M 
7DD5  22        RET                    ;M 
7DD6  .db 7D 03 7F 01 02

sub_7DDB:  ; M func, size~15
7DDB  901d12    MOV DPTR,# #0x1D12     ;M dptr win: RAM/table (0x1D12)
7DDE  48        ORL A,R0               ;M 
7DDF  e7        MOV A,@R1              ;M 
7DE0  d3        SETB C                 ;M 
7DE1  0248ca    LJMP 0x48CA            ;M 
7DE4  .db 7E 00 7F 08 02 06

sub_7DEA:  ; M func, size~9
7DEA  639001    XRL dir,# P1, #0x01    ;M 
7DED  e7        MOV A,@R1              ;M 
7DEE  e0        MOVX A,@DPTR           ;M 
7DEF  4401      ORL A,# #0x01          ;M 
7DF1  f0        MOVX @DPTR,A           ;M 
7DF2  22        RET                    ;M 

sub_7DF3:  ; M func, size~11
7DF3  90a0ac    MOV DPTR,# #0xA0AC     ;M dptr win: win-Ax (0xA0AC)
7DF6  f0        MOVX @DPTR,A           ;M 
7DF7  d3        SETB C                 ;M 
7DF8  943f      SUBB A,# #0x3F         ;M 
7DFA  22        RET                    ;M 
7DFB  .db 00 DE 98
