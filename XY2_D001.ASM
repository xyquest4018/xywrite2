;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_D001.ASM
; SEGMENT:   seg004 (DATA)
; ZONE:      Zone 1 -- Data segment first portion, relocs 16-18
; LINES:     5189
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC byte_105A4, byte_105A5, byte_105AA, byte_105AB, byte_105AC, byte_105AD
        PUBLIC byte_106D8, byte_10E0D, byte_10E9A, byte_10F0D, byte_1134F, word_105A0
        PUBLIC word_105A2, word_105AE, word_10606, word_1065E, word_10660, word_10662
        PUBLIC word_10664, word_10666, word_10670, word_10687, word_10689, word_106FF
        PUBLIC word_10764, word_10766, word_107B4, word_107B6, word_10804, word_10E07
        PUBLIC word_10E09, word_10E0E, word_10E67, word_10E98, word_10E9B, word_10EAE
        PUBLIC word_10EE3, word_113BB, word_113C5

; --- EXTRNs from seg000 ---
seg000      segment byte public 'CODE'
        EXTRN sub_419:NEAR
        EXTRN sub_421:NEAR
        EXTRN sub_4FF:NEAR
        EXTRN sub_511:NEAR
        EXTRN sub_58C:NEAR
        EXTRN sub_5AD:NEAR
        EXTRN sub_5E6:NEAR
        EXTRN sub_63A:NEAR
seg000      ends

seg004      segment para public 'DATA'

word_105A0  dw 6
word_105A2  dw 0
byte_105A4  db 0
byte_105A5  db 0
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
byte_105AA  db 0
byte_105AB  db 0
byte_105AC  db 0
byte_105AD  db 0
word_105AE  dw 0
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_10606  dw 0
aW      db 'W',9,'[',9,0
        db 0                ; EVEN (1 byte 00, data alignment)
aTopTmp     db 'TOP     TMP',0
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  42h ; B
        db  4Fh ; O
        db  54h ; T
        db  54h ; T
        db  4Fh ; O
        db  4Dh ; M
        db  20h ;
        db  20h ;
        db  54h ; T
        db  4Dh ; M
        db  50h ; P
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_1065E  dw 0
word_10660  dw 0
word_10662  dw 0
word_10664  dw 0
word_10666  dw 0
        db 0FFh ;
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  50h ; P
        db    0 ;
word_10670  dw 16h
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_10687  dw 0
word_10689  dw 1
        db 0                ; EVEN (1 byte 00, data alignment)
        db    8 ;
        db    7 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  4Eh ; N
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db  10h ;
        db  18h ;
        db  20h ;
        db  28h ; (
        db  30h ; 0
        db  38h ; 8
        db  40h ; @
        db  48h ; H
        db  50h ; P
        db  58h ; X
        db  60h ; `
        db  68h ; h
        db  70h ; p
        db  78h ; x
        db  80h ; ?
        db  88h ; ?
        db  90h ; ?
        db  98h ; ?
        db 0A0h ; ?
        db 0A8h ; ?
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  37h ; 7
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
byte_106D8  db 0
        db    0 ;
        db    0 ;
        db  42h ; B
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_106FF  dw 0
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    6 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_10764  dw 0FFFFh
word_10766  dw 0FFFFh
        db    0 ;
        db    8 ;
        db    7 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  4Eh ; N
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db  10h ;
        db  18h ;
        db  20h ;
        db  28h ; (
        db  30h ; 0
        db  38h ; 8
        db  40h ; @
        db  48h ; H
        db  50h ; P
        db  58h ; X
        db  60h ; `
        db  68h ; h
        db  70h ; p
        db  78h ; x
        db  80h ; ?
        db  88h ; ?
        db  90h ; ?
        db  98h ; ?
        db 0A0h ; ?
        db 0A8h ; ?
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  37h ; 7
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_107B4  dw 0FFFFh
word_107B6  dw 0FFFFh
        db    0 ;
        db    8 ;
        db    7 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  4Eh ; N
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db  10h ;
        db  18h ;
        db  20h ;
        db  28h ; (
        db  30h ; 0
        db  38h ; 8
        db  40h ; @
        db  48h ; H
        db  50h ; P
        db  58h ; X
        db  60h ; `
        db  68h ; h
        db  70h ; p
        db  78h ; x
        db  80h ; ?
        db  88h ; ?
        db  90h ; ?
        db  98h ; ?
        db 0A0h ; ?
        db 0A8h ; ?
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  37h ; 7
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_10804  dw 6
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  5Fh ; _
        db    9 ;
        db  63h ; c
        db    9 ;
        db    0 ;
        db    0 ;
        db  54h ; T
        db  4Fh ; O
        db  50h ; P
        db  31h ; 1
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  54h ; T
        db  4Dh ; M
        db  50h ; P
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  42h ; B
        db  4Fh ; O
        db  54h ; T
        db  54h ; T
        db  4Fh ; O
        db  4Dh ; M
        db  31h ; 1
        db  20h ;
        db  54h ; T
        db  4Dh ; M
        db  50h ; P
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0FFh ;
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  50h ; P
        db    0 ;
        db  16h ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db    7 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  4Eh ; N
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db  10h ;
        db  18h ;
        db  20h ;
        db  28h ; (
        db  30h ; 0
        db  38h ; 8
        db  40h ; @
        db  48h ; H
        db  50h ; P
        db  58h ; X
        db  60h ; `
        db  68h ; h
        db  70h ; p
        db  78h ; x
        db  80h ; ?
        db  88h ; ?
        db  90h ; ?
        db  98h ; ?
        db 0A0h ; ?
        db 0A8h ; ?
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  37h ; 7
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    2 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  42h ; B
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    6 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db    7 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  4Eh ; N
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db  10h ;
        db  18h ;
        db  20h ;
        db  28h ; (
        db  30h ; 0
        db  38h ; 8
        db  40h ; @
        db  48h ; H
        db  50h ; P
        db  58h ; X
        db  60h ; `
        db  68h ; h
        db  70h ; p
        db  78h ; x
        db  80h ; ?
        db  88h ; ?
        db  90h ; ?
        db  98h ; ?
        db 0A0h ; ?
        db 0A8h ; ?
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  37h ; 7
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    3 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  42h ; B
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    6 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db    7 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  4Eh ; N
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db  10h ;
        db  18h ;
        db  20h ;
        db  28h ; (
        db  30h ; 0
        db  38h ; 8
        db  40h ; @
        db  48h ; H
        db  50h ; P
        db  58h ; X
        db  60h ; `
        db  68h ; h
        db  70h ; p
        db  78h ; x
        db  80h ; ?
        db  88h ; ?
        db  90h ; ?
        db  98h ; ?
        db 0A0h ; ?
        db 0A8h ; ?
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  37h ; 7
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    3 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  42h ; B
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    3 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    6 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db    7 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  4Eh ; N
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db  10h ;
        db  18h ;
        db  20h ;
        db  28h ; (
        db  30h ; 0
        db  38h ; 8
        db  40h ; @
        db  48h ; H
        db  50h ; P
        db  58h ; X
        db  60h ; `
        db  68h ; h
        db  70h ; p
        db  78h ; x
        db  80h ; ?
        db  88h ; ?
        db  90h ; ?
        db  98h ; ?
        db 0A0h ; ?
        db 0A8h ; ?
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  37h ; 7
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  32h ; 2
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  33h ; 3
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  34h ; 4
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  35h ; 5
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  36h ; 6
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  37h ; 7
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  38h ; 8
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  39h ; 9
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db  30h ; 0
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db  31h ; 1
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db  32h ; 2
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db  33h ; 3
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db  34h ; 4
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db  35h ; 5
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db  36h ; 6
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db  37h ; 7
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db  38h ; 8
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  31h ; 1
        db  39h ; 9
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  32h ; 2
        db  30h ; 0
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  32h ; 2
        db  31h ; 1
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  32h ; 2
        db  32h ; 2
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  32h ; 2
        db  33h ; 3
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  32h ; 2
        db  34h ; 4
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db  32h ; 2
        db  35h ; 5
        db 0F9h ; ?
        db 0F9h ; ?
        db 0F9h ; ?
        db    7 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    2 ;
        db    0 ;
        db    9 ;
        db    0 ;
        db  0Ah ;
        db    0 ;
        db  0Bh ;
        db    0 ;
        db  13h ;
        db    0 ;
        db  14h ;
        db    0 ;
        db  15h ;
        db    0 ;
        db  16h ;
        db    0 ;
        db  17h ;
        db    0 ;
        db  18h ;
        db    0 ;
        db  19h ;
        db    0 ;
        db  1Ah ;
        db    0 ;
        db  19h ;
        db    0 ;
        db 0A2h ; ?
        db    0 ;
        db 0A3h ; ?
        db    0 ;
        db  90h ; ?
        db    1 ;
        db    0 ;
        db  20h ;
        db    0 ;
        db  36h ; 6
        db    0 ;
        db  40h ; @
        db    1 ;
        db  40h ; @
        db    0 ;
        db  60h ; `
        db    0 ;
        db 0F0h ; ?
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0B3h ; ?
        db 0C4h ; ?
        db  16h ;
        db    0 ;
        db  1Eh ;
word_10E07  dw 0
word_10E09  dw 0
        db 0C1h ; ?
        db  0Ah ;
byte_10E0D  db 0
word_10E0E  dw 0
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_10E67  dw 0
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_10E98  dw 0
byte_10E9A  db 0
word_10E9B  dw 0
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_10EAE  dw 0
        db    4 ;
        db    0 ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    2 ;
        db    0 ;
        db  0Dh ;
        db  0Ah ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db  3Bh ; ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db  0Ah ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_10EE3  dw 0
        db    8 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
byte_10F0D  db 7
        db    0 ;
        db  70h ; p
        db    0 ;
        db 0AEh ; ?
        db    0 ;
        db 0AFh ; ?
        db    0 ;
        db 0C4h ; ?
        db    0 ;
        db  1Bh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  52h ; R
        db  55h ; U
        db  4Eh ; N
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  52h ; R
        db  54h ; T
        db  55h ; U
        db  50h ; P
        db  2Eh ; .
        db  49h ; I
        db  4Eh ; N
        db  54h ; T
        db  20h ;
        db  28h ; (
        db    1 ;
        db  1Ch ;
        db    4 ;
        db  4Eh ; N
        db  70h ; p
        db  4Dh ; M
        db  70h ; p
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  38h ; 8
        db    1 ;
        db  0Eh ;
        db  0Ch ;
        db  50h ; P
        db  70h ; p
        db  47h ; G
        db  70h ; p
        db  2Dh ; -
        db  70h ; p
        db  4Ch ; L
        db  70h ; p
        db  4Eh ; N
        db  70h ; p
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  20h ;
        db    7 ;
        db  31h ; 1
        db  20h ;
        db  42h ; B
        db  2Fh ; /
        db  45h ; E
        db  44h ; D
        db  45h ; E
        db  46h ; F
        db  20h ;
        db  32h ; 2
        db  20h ;
        db  53h ; S
        db  41h ; A
        db  56h ; V
        db  20h ;
        db  33h ; 3
        db  20h ;
        db  52h ; R
        db  53h ; S
        db  44h ; D
        db  46h ; F
        db  20h ;
        db  34h ; 4
        db  20h ;
        db  44h ; D
        db  46h ; F
        db  4Ch ; L
        db  4Eh ; N
        db  20h ;
        db  41h ; A
        db  35h ; 5
        db  20h ;
        db  44h ; D
        db  45h ; E
        db  4Ch ; L
        db  4Ch ; L
        db  4Eh ; N
        db  20h ;
        db  41h ; A
        db  36h ; 6
        db  20h ;
        db  44h ; D
        db  4Ch ; L
        db  44h ; D
        db  46h ; F
        db  20h ;
        db  37h ; 7
        db  20h ;
        db  43h ; C
        db  50h ; P
        db  59h ; Y
        db  20h ;
        db  38h ; 8
        db  20h ;
        db  4Dh ; M
        db  4Fh ; O
        db  56h ; V
        db  20h ;
        db  39h ; 9
        db  20h ;
        db  45h ; E
        db  58h ; X
        db  20h ;
        db  41h ; A
        db  39h ; 9
        db  20h ;
        db  48h ; H
        db  45h ; E
        db  4Ch ; L
        db  50h ; P
        db  20h ;
        db  31h ; 1
        db  30h ; 0
        db  20h ;
        db  48h ; H
        db  44h ; D
        db  2Fh ; /
        db  54h ; T
        db  58h ; X
        db  54h ; T
        db  41h ; A
        db  31h ; 1
        db  20h ;
        db  43h ; C
        db  4Fh ; O
        db  4Ch ; L
        db 0FFh ;
        db  44h ; D
        db  45h ; E
        db  46h ; F
        db  20h ;
        db  41h ; A
        db  32h ; 2
        db  20h ;
        db  53h ; S
        db  47h ; G
        db  54h ; T
        db 0FFh ;
        db  44h ; D
        db  49h ; I
        db  52h ; R
        db  20h ;
        db  43h ; C
        db  32h ; 2
        db  20h ;
        db  53h ; S
        db  48h ; H
        db  53h ; S
        db  47h ; G
        db  54h ; T
        db  20h ;
        db  41h ; A
        db  34h ; 4
        db  20h ;
        db  44h ; D
        db  45h ; E
        db  46h ; F
        db  57h ; W
        db  44h ; D
        db  20h ;
        db  43h ; C
        db  34h ; 4
        db  20h ;
        db  44h ; D
        db  45h ; E
        db  46h ; F
        db  53h ; S
        db  45h ; E
        db  4Eh ; N
        db  54h ; T
        db  20h ;
        db  53h ; S
        db  34h ; 4
        db  20h ;
        db  44h ; D
        db  45h ; E
        db  46h ; F
        db  50h ; P
        db  47h ; G
        db  52h ; R
        db  46h ; F
        db  20h ;
        db  35h ; 5
        db  26h ; &
        db  36h ; 6
        db  20h ;
        db  43h ; C
        db  4Ch ; L
        db  52h ; R
        db 0FFh ;
        db  43h ; C
        db  4Dh ; M
        db  20h ;
        db  41h ; A
        db  39h ; 9
        db  20h ;
        db  48h ; H
        db  45h ; E
        db  4Ch ; L
        db  50h ; P
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db  43h ; C
        db  39h ; 9
        db  20h ;
        db  48h ; H
        db  45h ; E
        db  4Ch ; L
        db  50h ; P
        db 0FFh ;
        db  4Ch ; L
        db  49h ; I
        db  4Eh ; N
        db  45h ; E
        db  20h ;
        db  41h ; A
        db  31h ; 1
        db  30h ; 0
        db  20h ;
        db  46h ; F
        db  49h ; I
        db  4Ch ; L
        db  45h ; E
        db  31h ; 1
        db  2Fh ; /
        db  46h ; F
        db  49h ; I
        db  4Ch ; L
        db  45h ; E
        db  32h ; 2
        db  20h ;
        db  43h ; C
        db  31h ; 1
        db  30h ; 0
        db  20h ;
        db  46h ; F
        db  4Dh ; M
        db  54h ; T
        db  2Fh ; /
        db  45h ; E
        db  58h ; X
        db  50h ; P
        db  4Eh ; N
        db  44h ; D
        db  20h ;
        db  53h ; S
        db  31h ; 1
        db  30h ; 0
        db  20h ;
        db  50h ; P
        db  47h ; G
        db 0FFh ;
        db  52h ; R
        db  45h ; E
        db  56h ; V
        db  20h ;
        db  41h ; A
        db  39h ; 9
        db  20h ;
        db  48h ; H
        db  45h ; E
        db  4Ch ; L
        db  50h ; P
        db  20h ;
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db    0 ;
        db  41h ; A
        db  4Fh ; O
        db  45h ; E
        db  44h ; D
        db  4Ch ; L
        db  52h ; R
        db  43h ; C
        db  59h ; Y
        db  4Eh ; N
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  5Fh ; _
        db  0Dh ;
        db  0Ah ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  0Dh ;
        db  0Ah ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  46h ; F
        db  69h ; i
        db  6Ch ; l
        db  65h ; e
        db  73h ; s
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  43h ; C
        db  68h ; h
        db  61h ; a
        db  72h ; r
        db  61h ; a
        db  63h ; c
        db  74h ; t
        db  65h ; e
        db  72h ; r
        db  73h ; s
        db  44h ; D
        db  49h ; I
        db  52h ; R
        db  45h ; E
        db  43h ; C
        db  54h ; T
        db  52h ; R
        db  59h ; Y
        db  2Eh ; .
        db  54h ; T
        db  4Dh ; M
        db  50h ; P
        db  3Ch ; <
        db  44h ; D
        db  49h ; I
        db  52h ; R
        db  3Eh ; >
        db  61h ; a
        db  70h ; p
        db  57h ; W
        db  58h ; X
        db  53h ; S
        db  4Eh ; N
        db  4Ch ; L
        db  0Ah ;
        db  41h ; A
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0AEh ; ?
        db 0AFh ; ?
        db 0DAh ; ?
        db 0C4h ; ?
        db 0BFh ; ?
        db 0B3h ; ?
        db 0C2h ; ?
        db 0C1h ; ?
        db 0C3h ; ?
        db 0B4h ; ?
        db 0C0h ; ?
        db 0D9h ; ?
        db 0ABh ; ?
        db 0BBh ; ?
        db  15h ;
        db  12h ;
        db  0Ch ;
        db  19h ;
        db  18h ;
        db  17h ;
        db  15h ;
        db  16h ;
        db  0Eh ;
        db  0Bh ;
        db    0 ;
        db  1Ah ;
        db    8 ;
        db    9 ;
        db  20h ;
        db 0FFh ;
        db 0ABh ; ?
        db 0BBh ; ?
        db 0B6h ; ?
        db  0Dh ;
        db  0Ah ;
        db  7Eh ; ~
        db  1Bh ;
        db  5Bh ; [
        db  3Fh ; ?
        db  33h ; 3
        db  6Ch ; l
        db  1Bh ;
        db  5Bh ; [
        db  30h ; 0
        db  30h ; 0
        db  3Bh ; ;
        db  30h ; 0
        db  30h ; 0
        db  66h ; f
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db  0Bh ;
        db  0Ch ;
        db  30h ; 0
        db  4Ch ; L
        db  52h ; R
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  32h ; 2
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  33h ; 3
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  34h ; 4
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  35h ; 5
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  36h ; 6
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  37h ; 7
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  38h ; 8
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  39h ; 9
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  30h ; 0
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  31h ; 1
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  32h ; 2
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  33h ; 3
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  34h ; 4
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  35h ; 5
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  36h ; 6
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  37h ; 7
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  38h ; 8
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  31h ; 1
        db  39h ; 9
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  32h ; 2
        db  30h ; 0
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  32h ; 2
        db  31h ; 1
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  32h ; 2
        db  32h ; 2
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  32h ; 2
        db  33h ; 3
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  32h ; 2
        db  34h ; 4
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  32h ; 2
        db  35h ; 5
        db  1Fh ;
        db  1Fh ;
        db  1Fh ;
        db  2Bh ; +
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  43h ; C
        db  39h ; 9
        db  20h ;
        db  48h ; H
        db  45h ; E
        db  4Ch ; L
        db  50h ; P
        db 0FFh ;
        db  4Ch ; L
        db  49h ; I
        db  4Eh ; N
        db  45h ; E
        db  20h ;
        db  41h ; A
        db  31h ; 1
        db  30h ; 0
        db  20h ;
        db  46h ; F
        db  49h ; I
        db  4Ch ; L
        db  45h ; E
        db  31h ; 1
        db  2Fh ; /
        db  46h ; F
        db  49h ; I
        db  4Ch ; L
        db  45h ; E
        db  32h ; 2
        db  20h ;
        db  43h ; C
        db  31h ; 1
        db  30h ; 0
        db  20h ;
        db  46h ; F
        db  4Dh ; M
        db  54h ; T
        db  2Fh ; /
        db  45h ; E
        db  58h ; X
        db  50h ; P
        db  4Eh ; N
        db  44h ; D
        db  20h ;
        db  53h ; S
        db  31h ; 1
        db  30h ; 0
        db  20h ;
        db  50h ; P
        db  47h ; G
        db 0FFh ;
        db  52h ; R
        db  45h ; E
        db  56h ; V
        db  20h ;
        db  41h ; A
        db  39h ; 9
        db  20h ;
        db  48h ; H
        db  45h ; E
        db  4Ch ; L
        db  50h ; P
        db  20h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db  12h ;
        db    0 ;
        db  2Ch ; ,
        db  0Ch ;
        db  1Ch ;
        db  0Fh ;
        db  2Fh ; /
        db  1Fh ;
        db  8Ch ; ?
        db 0ACh ; ?
        db  9Ch ; ?
        db  8Fh ; ?
        db  0Eh ;
        db  0Dh ;
        db  0Dh ;
        db    6 ;
        db  0Eh ;
        db  0Fh ;
        db  0Ch ;
        db    4 ;
        db  0Dh ;
        db  0Ah ;
        db    2 ;
        db  0Bh ;
        db    8 ;
        db  0Ch ;
        db    4 ;
        db    4 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  10h ;
        db  11h ;
        db  1Fh ;
        db  7Fh ; 
        db 0C0h ; ?
        db 0BFh ; ?
        db 0B0h ; ?
        db 0C7h ; ?
        db 0B6h ; ?
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  25h ; %
        db  0Dh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  50h ; P
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  55h ; U
        db  4Ch ; L
        db  4Eh ; N
        db  4Dh ; M
        db  52h ; R
        db  56h ; V
        db  42h ; B
        db  4Fh ; O
        db  42h ; B
        db  55h ; U
        db  42h ; B
        db  52h ; R
        db  46h ; F
        db  4Ch ; L
        db  46h ; F
        db  55h ; U
        db  46h ; F
        db  52h ; R
        db  53h ; S
        db  4Fh ; O
        db  53h ; S
        db  55h ; U
        db  53h ; S
        db  44h ; D
        db  53h ; S
        db  42h ; B
        db  46h ; F
        db  4Eh ; N
        db    1 ;
        db    0 ;
byte_1134F  db 7
        db    0 ;
        db  70h ; p
        db    0 ;
        db  0Fh ;
        db    0 ;
        db    9 ;
        db    0 ;
        db  78h ; x
        db    0 ;
        db  87h ; ?
        db    0 ;
        db  81h ; ?
        db    0 ;
        db 0F0h ; ?
        db    0 ;
        db  8Fh ; ?
        db    0 ;
        db  7Ah ; z
        db    0 ;
        db  79h ; y
        db    0 ;
        db  79h ; y
        db    0 ;
        db  7Ah ; z
        db    0 ;
        db  41h ; A
        db  50h ; P
        db  4Eh ; N
        db  50h ; P
        db  4Eh ; N
        db  49h ; I
        db  54h ; T
        db  43h ; C
        db  46h ; F
        db  4Ch ; L
        db  46h ; F
        db  43h ; C
        db  46h ; F
        db  52h ; R
        db  4Ah ; J
        db  55h ; U
        db  4Eh ; N
        db  4Ah ; J
        db  4Eh ; N
        db  42h ; B
        db  42h ; B
        db  42h ; B
        db  46h ; F
        db  46h ; F
        db  54h ; T
        db  42h ; B
        db  42h ; B
        db  4Bh ; K
        db  42h ; B
        db  53h ; S
        db  42h ; B
        db  46h ; F
        db  53h ; S
        db  4Eh ; N
        db  53h ; S
        db  50h ; P
        db  53h ; S
        db  46h ; F
        db  46h ; F
        db  44h ; D
        db  4Ch ; L
        db  53h ; S
        db  57h ; W
        db  44h ; D
        db  4Fh ; O
        db  50h ; P
        db  4Dh ; M
        db  44h ; D
        db  4Ch ; L
        db  4Dh ; M
        db  52h ; R
        db  4Dh ; M
        db  54h ; T
        db  50h ; P
        db  42h ; B
        db  54h ; T
        db  4Fh ; O
        db  46h ; F
        db  49h ; I
        db  50h ; P
        db  50h ; P
        db  4Ch ; L
        db  54h ; T
        db  53h ; S
        db  54h ; T
        db  52h ; R
        db  53h ; S
        db  53h ; S
        db  43h ; C
        db  54h ; T
        db  55h ; U
        db  53h ; S
        db  45h ; E
        db  43h ; C
        db  43h ; C
        db  4Fh ; O
        db  52h ; R
        db  48h ; H
        db  52h ; R
        db  46h ; F
        db  46h ; F
        db  53h ; S
word_113BB  dw 4E46h
        db  46h ; F
        db  57h ; W
        db  4Eh ; N
        db  46h ; F
        db  4Eh ; N
        db  53h ; S
        db  50h ; P
        db  53h ; S
word_113C5  dw 5349h
aPgpnldx1x2x3x4 db 'PGPNLDX1X2X3X4X5X6X7X8X9I1I2I3I4I5I6I7I8I9T1T2T3T4T5T6T7T8T9'
        db 'SRDATMBPDFPAPRFIPFRLDRMFVAXPCPCLERLBGLIFRPSXBREXEIASRCSVPV',0
        db 2 dup(0)         ; DALIGN (2 bytes 00, data alignment)
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    0 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    0 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    1 ;
        db    1 ;
        db    1 ;
        db  30h ; 0
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  3Ah ; :
        db    0 ;
        db  42h ; B
        db    0 ;
        db  46h ; F
        db    0 ;
        db  58h ; X
        db    0 ;
        db  5Ah ; Z
        db    0 ;
        db  61h ; a
        db    1 ;
        db    1 ;
        db    0 ;
        db  61h ; a
        db    1 ;
        db    0 ;
        db    0 ;
        db 0A1h ; ?
        db  20h ;
        db    1 ;
        db    0 ;
        db  2Ch ; ,
        db    2 ;
        db 0FFh ;
        db    0 ;
        db  1Eh ;
        db    2 ;
        db    0 ;
        db    0 ;
        db  1Eh ;
        db    2 ;
        db    1 ;
        db    0 ;
        db  1Eh ;
        db    2 ;
        db    2 ;
        db    0 ;
        db  1Bh ;
        db    2 ;
        db    1 ;
        db    0 ;
        db  1Bh ;
        db    2 ;
        db    0 ;
        db    0 ;
        db  18h ;
        db    2 ;
        db    1 ;
        db    0 ;
        db  18h ;
        db    2 ;
        db    0 ;
        db    0 ;
        db  5Ah ; Z
        db    2 ;
        db    1 ;
        db    0 ;
        db  5Bh ; [
        db    2 ;
        db    1 ;
        db    0 ;
        db 0FFh ;
        db    8 ;
        db    2 ;
        db    0 ;
        db    1 ;
        db    9 ;
        db    1 ;
        db    0 ;
        db  5Ch ; \
        db    2 ;
        db    1 ;
        db    0 ;
        db  3Dh ; =
        db    1 ;
        db 0FFh ;
        db 0FFh ;
        db  3Dh ; =
        db    1 ;
        db 0FFh ;
        db 0FFh ;
        db  20h ;
        db    2 ;
        db 0FFh ;
        db 0FFh ;
        db  3Bh ; ;
        db    1 ;
        db 0FFh ;
        db 0FFh ;
        db  1Ch ;
        db    2 ;
        db  0Ah ;
        db    0 ;
        db  58h ; X
        db    2 ;
        db  0Fh ;
        db    0 ;
        db  59h ; Y
        db    2 ;
        db  0Fh ;
        db    0 ;
        db  1Ah ;
        db    2 ;
        db 0FFh ;
        db    0 ;
        db  26h ; &
        db    2 ;
        db  82h ; ?
        db    0 ;
        db  28h ; (
        db    2 ;
        db 0FFh ;
        db    0 ;
        db  63h ; c
        db    2 ;
        db  42h ; B
        db    0 ;
        db  72h ; r
        db    1 ;
        db  42h ; B
        db    0 ;
        db  70h ; p
        db    1 ;
        db 0FFh ;
        db    0 ;
        db  22h ; "
        db    2 ;
        db  84h ; ?
        db    0 ;
        db  5Dh ; ]
        db    2 ;
        db 0FFh ;
        db 0FFh ;
        db  2Ch ; ,
        db    2 ;
        db  41h ; A
        db    2 ;
        db  82h ; ?
        db  6Fh ; o
        db    0 ;
        db    0 ;
        db 0F8h ; ?
        db  32h ; 2
        db    0 ;
        db    0 ;
        db 0B0h ; ?
        db 0EDh ; ?
        db    0 ;
        db    0 ;
        db 0C2h ; ?
        db  33h ; 3
        db    0 ;
        db    0 ;
        db  58h ; X
        db 0EEh ; ?
        db    0 ;
        db    0 ;
        db  5Dh ; ]
        db 0EEh ; ?
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db 0DBh ; ?
        db  70h ; p
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Fh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db 0FAh ; ?
        db  33h ; 3
        db    0 ;
        db    0 ;
        db  1Bh ;
        db  34h ; 4
        db    0 ;
        db    0 ;
        db  4Dh ; M
        db  71h ; q
        db    0 ;
        db    0 ;
        db  6Dh ; m
        db  6Fh ; o
        db    0 ;
        db    0 ;
        db 0B2h ; ?
        db  6Fh ; o
        db    0 ;
        db    0 ;
        db  5Fh ; _
        db  67h ; g
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  82h ; ?
        db  6Eh ; n
        db    0 ;
        db    0 ;
        db  33h ; 3
        db  6Eh ; n
        db    0 ;
        db    0 ;
        db  7Dh ; }
        db  6Fh ; o
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db 0B0h ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  95h ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  53h ; S
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db  8Dh ; ?
        db  71h ; q
        db    0 ;
        db    0 ;
        db    1 ;
        db  3Fh ; ?
        db    1 ;
        db  50h ; P
        db    2 ;
        db  41h ; A
        db  42h ; B
        db    2 ;
        db  41h ; A
        db  55h ; U
        db    2 ;
        db  43h ; C
        db  41h ; A
        db    2 ;
        db  43h ; C
        db  43h ; C
        db    2 ;
        db  43h ; C
        db  44h ; D
        db    2 ;
        db  43h ; C
        db  48h ; H
        db    2 ;
        db  43h ; C
        db  49h ; I
        db    2 ;
        db  43h ; C
        db  53h ; S
        db    2 ;
        db  43h ; C
        db  56h ; V
        db    2 ;
        db  44h ; D
        db  4Dh ; M
        db    2 ;
        db  45h ; E
        db  44h ; D
        db    2 ;
        db  46h ; F
        db  4Fh ; O
        db    2 ;
        db  4Bh ; K
        db  54h ; T
        db    2 ;
        db  4Ch ; L
        db  43h ; C
        db    2 ;
        db  4Dh ; M
        db  41h ; A
        db    2 ;
        db  4Dh ; M
        db  45h ; E
        db    2 ;
        db  4Eh ; N
        db  45h ; E
        db    2 ;
        db  50h ; P
        db  4Dh ; M
        db    2 ;
        db  51h ; Q
        db  53h ; S
        db    2 ;
        db  52h ; R
        db  44h ; D
        db    2 ;
        db  52h ; R
        db  4Eh ; N
        db    2 ;
        db  52h ; R
        db  53h ; S
        db    2 ;
        db  52h ; R
        db  56h ; V
        db    2 ;
        db  53h ; S
        db  41h ; A
        db    2 ;
        db  53h ; S
        db  45h ; E
        db    2 ;
        db  53h ; S
        db  54h ; T
        db    2 ;
        db  54h ; T
        db  41h ; A
        db    2 ;
        db  54h ; T
        db  59h ; Y
        db    2 ;
        db  55h ; U
        db  43h ; C
        db    2 ;
        db  57h ; W
        db  54h ; T
        db    3 ;
        db  42h ; B
        db  50h ; P
        db  54h ; T
        db    3 ;
        db  43h ; C
        db  41h ; A
        db  46h ; F
        db    3 ;
        db  43h ; C
        db  41h ; A
        db  50h ; P
        db    3 ;
        db  43h ; C
        db  48h ; H
        db  41h ; A
        db    3 ;
        db  43h ; C
        db  49h ; I
        db  41h ; A
        db    3 ;
        db  43h ; C
        db  56h ; V
        db  41h ; A
        db    3 ;
        db  44h ; D
        db  45h ; E
        db  4Ch ; L
        db    3 ;
        db  45h ; E
        db  44h ; D
        db  46h ; F
        db    3 ;
        db  45h ; E
        db  44h ; D
        db  50h ; P
        db    3 ;
        db  46h ; F
        db  53h ; S
        db  41h ; A
        db    3 ;
        db  46h ; F
        db  53h ; S
        db  45h ; E
        db    3 ;
        db  46h ; F
        db  53h ; S
        db  4Fh ; O
        db    3 ;
        db  46h ; F
        db  57h ; W
        db  41h ; A
        db    3 ;
        db  46h ; F
        db  57h ; W
        db  45h ; E
        db    3 ;
        db  46h ; F
        db  57h ; W
        db  4Fh ; O
        db    3 ;
        db  49h ; I
        db  58h ; X
        db  31h ; 1
        db    3 ;
        db  49h ; I
        db  58h ; X
        db  32h ; 2
        db    3 ;
        db  49h ; I
        db  58h ; X
        db  33h ; 3
        db    3 ;
        db  49h ; I
        db  58h ; X
        db  34h ; 4
        db    3 ;
        db  49h ; I
        db  58h ; X
        db  35h ; 5
        db    3 ;
        db  49h ; I
        db  58h ; X
        db  36h ; 6
        db    3 ;
        db  49h ; I
        db  58h ; X
        db  37h ; 7
        db    3 ;
        db  49h ; I
        db  58h ; X
        db  38h ; 8
        db    3 ;
        db  49h ; I
        db  58h ; X
        db  39h ; 9
        db    3 ;
        db  4Ah ; J
        db  4Dh ; M
        db  50h ; P
        db    3 ;
        db  4Eh ; N
        db  45h ; E
        db  46h ; F
        db    2 ;
        db  46h ; F
        db  4Dh ; M
        db    3 ;
        db  4Eh ; N
        db  45h ; E
        db  50h ; P
        db    3 ;
        db  4Eh ; N
        db  45h ; E
        db  57h ; W
        db    3 ;
        db  52h ; R
        db  46h ; F
        db  41h ; A
        db    3 ;
        db  52h ; R
        db  46h ; F
        db  45h ; E
        db    3 ;
        db  52h ; R
        db  46h ; F
        db  4Fh ; O
        db    3 ;
        db  52h ; R
        db  48h ; H
        db  41h ; A
        db    3 ;
        db  52h ; R
        db  48h ; H
        db  45h ; E
        db    3 ;
        db  52h ; R
        db  48h ; H
        db  4Fh ; O
        db    3 ;
        db  52h ; R
        db  55h ; U
        db  4Eh ; N
        db    3 ;
        db  53h ; S
        db  41h ; A
        db  44h ; D
        db    3 ;
        db  53h ; S
        db  45h ; E
        db  41h ; A
        db    3 ;
        db  53h ; S
        db  45h ; E
        db  42h ; B
        db    3 ;
        db  53h ; S
        db  54h ; T
        db  50h ; P
        db    3 ;
        db  54h ; T
        db  58h ; X
        db  31h ; 1
        db    3 ;
        db  54h ; T
        db  58h ; X
        db  32h ; 2
        db    3 ;
        db  54h ; T
        db  58h ; X
        db  33h ; 3
        db    3 ;
        db  54h ; T
        db  58h ; X
        db  34h ; 4
        db    3 ;
        db  54h ; T
        db  58h ; X
        db  35h ; 5
        db    3 ;
        db  54h ; T
        db  58h ; X
        db  36h ; 6
        db    3 ;
        db  54h ; T
        db  58h ; X
        db  37h ; 7
        db    3 ;
        db  54h ; T
        db  58h ; X
        db  38h ; 8
        db    3 ;
        db  54h ; T
        db  58h ; X
        db  39h ; 9
        db    4 ;
        db  43h ; C
        db  41h ; A
        db  4Ch ; L
        db  4Ch ; L
        db    4 ;
        db  45h ; E
        db  44h ; D
        db  49h ; I
        db  54h ; T
        db    4 ;
        db  46h ; F
        db  4Ch ; L
        db  49h ; I
        db  50h ; P
        db    4 ;
        db  46h ; F
        db  4Fh ; O
        db  52h ; R
        db  4Dh ; M
        db    4 ;
        db  48h ; H
        db  45h ; E
        db  4Ch ; L
        db  50h ; P
        db    4 ;
        db  51h ; Q
        db  55h ; U
        db  49h ; I
        db  54h ; T
        db    4 ;
        db  53h ; S
        db  41h ; A
        db  56h ; V
        db  45h ; E
        db    4 ;
        db  53h ; S
        db  45h ; E
        db  42h ; B
        db  41h ; A
        db    4 ;
        db  54h ; T
        db  59h ; Y
        db  50h ; P
        db  45h ; E
        db    4 ;
        db  57h ; W
        db  41h ; A
        db  49h ; I
        db  54h ; T
        db    5 ;
        db  41h ; A
        db  42h ; B
        db  4Fh ; O
        db  52h ; R
        db  54h ; T
        db    5 ;
        db  43h ; C
        db  48h ; H
        db  44h ; D
        db  49h ; I
        db  52h ; R
        db    5 ;
        db  45h ; E
        db  52h ; R
        db  41h ; A
        db  53h ; S
        db  45h ; E
        db    5 ;
        db  4Ch ; L
        db  44h ; D
        db  53h ; S
        db  47h ; G
        db  54h ; T
        db    5 ;
        db  4Dh ; M
        db  45h ; E
        db  52h ; R
        db  47h ; G
        db  45h ; E
        db    5 ;
        db  4Dh ; M
        db  4Bh ; K
        db  44h ; D
        db  49h ; I
        db  52h ; R
        db    5 ;
        db  50h ; P
        db  52h ; R
        db  49h ; I
        db  4Eh ; N
        db  54h ; T
        db    5 ;
        db  52h ; R
        db  4Dh ; M
        db  44h ; D
        db  49h ; I
        db  52h ; R
        db    5 ;
        db  53h ; S
        db  54h ; T
        db  4Fh ; O
        db  52h ; R
        db  45h ; E
        db    5 ;
        db  53h ; S
        db  54h ; T
        db  53h ; S
        db  47h ; G
        db  54h ; T
        db    5 ;
        db  54h ; T
        db  59h ; Y
        db  50h ; P
        db  45h ; E
        db  41h ; A
        db    6 ;
        db  43h ; C
        db  4Ch ; L
        db  52h ; R
        db  41h ; A
        db  53h ; S
        db  47h ; G
        db    6 ;
        db  43h ; C
        db  4Ch ; L
        db  52h ; R
        db  53h ; S
        db  47h ; G
        db  54h ; T
        db    6 ;
        db  43h ; C
        db  4Ch ; L
        db  52h ; R
        db  53h ; S
        db  55h ; U
        db  4Dh ; M
        db    6 ;
        db  46h ; F
        db  4Fh ; O
        db  52h ; R
        db  4Dh ; M
        db  41h ; A
        db  54h ; T
        db    6 ;
        db  4Bh ; K
        db  49h ; I
        db  4Ch ; L
        db  54h ; T
        db  59h ; Y
        db  50h ; P
        db    6 ;
        db  4Ch ; L
        db  44h ; D
        db  48h ; H
        db  45h ; E
        db  4Ch ; L
        db  50h ; P
        db    6 ;
        db  4Ch ; L
        db  44h ; D
        db  4Fh ; O
        db  53h ; S
        db  47h ; G
        db  54h ; T
        db    6 ;
        db  4Dh ; M
        db  41h ; A
        db  52h ; R
        db  47h ; G
        db  49h ; I
        db  4Eh ; N
        db    6 ;
        db  52h ; R
        db  45h ; E
        db  56h ; V
        db  49h ; I
        db  45h ; E
        db  57h ; W
        db    6 ;
        db  52h ; R
        db  4Dh ; M
        db  56h ; V
        db  53h ; S
        db  43h ; C
        db  52h ; R
        db    6 ;
        db  53h ; S
        db  45h ; E
        db  41h ; A
        db  52h ; R
        db  43h ; C
        db  48h ; H
        db    7 ;
        db  44h ; D
        db  45h ; E
        db  46h ; F
        db  41h ; A
        db  55h ; U
        db  4Ch ; L
        db  54h ; T
        db    7 ;
        db  50h ; P
        db  52h ; R
        db  4Fh ; O
        db  47h ; G
        db  52h ; R
        db  41h ; A
        db  4Dh ; M
        db    7 ;
        db  53h ; S
        db  41h ; A
        db  56h ; V
        db  45h ; E
        db  44h ; D
        db  45h ; E
        db  46h ; F
        db    7 ;
        db  53h ; S
        db  45h ; E
        db  41h ; A
        db  52h ; R
        db  43h ; C
        db  48h ; H
        db  41h ; A
        db    7 ;
        db  53h ; S
        db  45h ; E
        db  41h ; A
        db  52h ; R
        db  43h ; C
        db  48h ; H
        db  42h ; B
        db    8 ;
        db  53h ; S
        db  45h ; E
        db  41h ; A
        db  52h ; R
        db  43h ; C
        db  48h ; H
        db  41h ; A
        db  42h ; B
        db    3 ;
        db  44h ; D
        db  49h ; I
        db  52h ; R
        db    4 ;
        db  4Ch ; L
        db  44h ; D
        db  50h ; P
        db  4Dh ; M
        db    2 ;
        db  44h ; D
        db  4Fh ; O
        db    3 ;
        db  44h ; D
        db  4Fh ; O
        db  53h ; S
        db    2 ;
        db  4Ch ; L
        db  4Fh ; O
        db    2 ;
        db  4Ch ; L
        db  50h ; P
        db    7 ;
        db  4Ch ; L
        db  44h ; D
        db  50h ; P
        db  52h ; R
        db  49h ; I
        db  4Eh ; N
        db  54h ; T
        db    2 ;
        db  47h ; G
        db  4Fh ; O
        db    5 ;
        db  4Ch ; L
        db  44h ; D
        db  4Bh ; K
        db  42h ; B
        db  44h ; D
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  58h ; X
        db  2Eh ; .
        db  53h ; S
        db  41h ; A
        db  56h ; V
        db  20h ;
        db    0 ;
        db  67h ; g
        db  24h ; $
        db    6 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  43h ; C
        db  4Ch ; L
        db  4Fh ; O
        db  53h ; S
        db  45h ; E
        db  20h ;
        db  20h ;
        db  20h ;
        db  54h ; T
        db  4Dh ; M
        db  50h ; P
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db    2 ;
        db    3 ;
        db    4 ;
        db    5 ;
        db    6 ;
        db    7 ;
        db    8 ;
        db    9 ;
        db  0Ah ;
        db  0Bh ;
        db  0Ch ;
        db  0Dh ;
        db  0Eh ;
        db  0Fh ;
        db  10h ;
        db  11h ;
        db  12h ;
        db  13h ;
        db  14h ;
        db  15h ;
        db  16h ;
        db  17h ;
        db  18h ;
        db  19h ;
        db  1Ah ;
        db  1Bh ;
        db  1Ch ;
        db  1Dh ;
        db  1Eh ;
        db  1Fh ;
        db  20h ;
        db  21h ; !
        db  22h ; "
        db  23h ; #
        db  24h ; $
        db  25h ; %
        db  26h ; &
        db  27h ; '
        db  28h ; (
        db  29h ; )
        db  2Ah ; *
        db  2Bh ; +
        db  2Ch ; ,
        db  2Dh ; -
        db  2Eh ; .
        db  2Fh ; /
        db  30h ; 0
        db  31h ; 1
        db  32h ; 2
        db  33h ; 3
        db  34h ; 4
        db  35h ; 5
        db  36h ; 6
        db  37h ; 7
        db  38h ; 8
        db  39h ; 9
        db  3Ah ; :
        db  3Bh ; ;
        db  3Ch ; <
        db  3Dh ; =
        db  3Eh ; >
        db  3Fh ; ?
        db  40h ; @
        db  41h ; A
        db  42h ; B
        db  43h ; C
        db  44h ; D
        db  45h ; E
        db  46h ; F
        db  47h ; G
        db  48h ; H
        db  49h ; I
        db  4Ah ; J
        db  4Bh ; K
        db  4Ch ; L
        db  4Dh ; M
        db  4Eh ; N
        db  4Fh ; O
        db  50h ; P
        db  51h ; Q
        db  52h ; R
        db  53h ; S
        db  54h ; T
        db  55h ; U
        db  56h ; V
        db  57h ; W
        db  58h ; X
        db  59h ; Y
        db  5Ah ; Z
        db  5Bh ; [
        db  5Ch ; \
        db  5Dh ; ]
        db  5Eh ; ^
        db  5Fh ; _
        db  60h ; `
        db  41h ; A
        db  42h ; B
        db  43h ; C
        db  44h ; D
        db  45h ; E
        db  46h ; F
        db  47h ; G
        db  48h ; H
        db  49h ; I
        db  4Ah ; J
        db  4Bh ; K
        db  4Ch ; L
        db  4Dh ; M
        db  4Eh ; N
        db  4Fh ; O
        db  50h ; P
        db  51h ; Q
        db  52h ; R
        db  53h ; S
        db  54h ; T
        db  55h ; U
        db  56h ; V
        db  57h ; W
        db  58h ; X
        db  59h ; Y
        db  5Ah ; Z
        db  7Bh ; {
        db  7Ch ; |
        db  7Dh ; }
        db  7Eh ; ~
        db  7Fh ; 
        db  80h ; ?
        db  81h ; ?
        db  82h ; ?
        db  83h ; ?
        db  84h ; ?
        db  85h ; ?
        db  86h ; ?
        db  87h ; ?
        db  88h ; ?
        db  89h ; ?
        db  8Ah ; ?
        db  8Bh ; ?
        db  8Ch ; ?
        db  8Dh ; ?
        db  8Eh ; ?
        db  8Fh ; ?
        db  90h ; ?
        db  91h ; ?
        db  92h ; ?
        db  93h ; ?
        db  94h ; ?
        db  95h ; ?
        db  96h ; ?
        db  97h ; ?
        db  98h ; ?
        db  99h ; ?
        db  9Ah ; ?
        db  9Bh ; ?
        db  9Ch ; ?
        db  9Dh ; ?
        db  9Eh ; ?
        db  9Fh ; ?
        db 0A0h ; ?
        db 0A1h ; ?
        db 0A2h ; ?
        db 0A3h ; ?
        db 0A4h ; ?
        db 0A5h ; ?
        db 0A6h ; ?
        db 0A7h ; ?
        db 0A8h ; ?
        db 0A9h ; ?
        db 0AAh ; ?
        db 0ABh ; ?
        db 0ACh ; ?
        db 0ADh ; ?
        db 0AEh ; ?
        db 0AFh ; ?
        db 0B0h ; ?
        db 0B1h ; ?
        db 0B2h ; ?
        db 0B3h ; ?
        db 0B4h ; ?
        db 0B5h ; ?
        db 0B6h ; ?
        db 0B7h ; ?
        db 0B8h ; ?
        db 0B9h ; ?
        db 0BAh ; ?
        db 0BBh ; ?
        db 0BCh ; ?
        db 0BDh ; ?
        db 0BEh ; ?
        db 0BFh ; ?
        db 0C0h ; ?
        db 0C1h ; ?
        db 0C2h ; ?
        db 0C3h ; ?
        db 0C4h ; ?
        db 0C5h ; ?
        db 0C6h ; ?
        db 0C7h ; ?
        db 0C8h ; ?
        db 0C9h ; ?
        db 0CAh ; ?
        db 0CBh ; ?
        db 0CCh ; ?
        db 0CDh ; ?
        db 0CEh ; ?
        db 0CFh ; ?
        db 0D0h ; ?
        db 0D1h ; ?
        db 0D2h ; ?
        db 0D3h ; ?
        db 0D4h ; ?
        db 0D5h ; ?
        db 0D6h ; ?
        db 0D7h ; ?
        db 0D8h ; ?
        db 0D9h ; ?
        db 0DAh ; ?
        db 0DBh ; ?
        db 0DCh ; ?
        db 0DDh ; ?
        db 0DEh ; ?
        db 0DFh ; ?
        db 0E0h ; ?
        db 0E1h ; ?
        db 0E2h ; ?
        db 0E3h ; ?
        db 0E4h ; ?
        db 0E5h ; ?
        db 0E6h ; ?
        db 0E7h ; ?
        db 0E8h ; ?
        db 0E9h ; ?
        db 0EAh ; ?
        db 0EBh ; ?
        db 0ECh ; ?
        db 0EDh ; ?
        db 0EEh ; ?
        db 0EFh ; ?
        db 0F0h ; ?
        db 0F1h ; ?
        db 0F2h ; ?
        db 0F3h ; ?
        db 0F4h ; ?
        db 0F5h ; ?
        db 0F6h ; ?
        db 0F7h ; ?
        db 0F8h ; ?
        db 0F9h ; ?
        db 0FAh ; ?
        db 0FBh ; ?
        db 0FCh ; ?
        db 0FDh ; ?
        db 0FEh ; ?
        db 0FFh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  2Ah ; *
        db  2Eh ; .
        db  2Ah ; *
        db  20h ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db  43h ; C
        db  4Fh ; O
        db  4Dh ; M
        db  4Dh ; M
        db  41h ; A
        db  4Eh ; N
        db  44h ; D
        db  20h ;
        db  43h ; C
        db  4Fh ; O
        db  4Dh ; M
        db    0 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  43h ; C
        db  4Fh ; O
        db  4Dh ; M
        db  4Dh ; M
        db  41h ; A
        db  4Eh ; N
        db  44h ; D
        db  2Eh ; .
        db  43h ; C
        db  4Fh ; O
        db  4Dh ; M
        db    0 ;
        db  2Eh ; .
        db  45h ; E
        db  58h ; X
        db  45h ; E
        db    0 ;
unk_11A3C   db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
unk_11A4C   db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        dd word_105A0
        dd unk_11A3C
        dd unk_11A4C

seg004      ends

        end
