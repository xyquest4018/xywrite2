;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_D002.ASM
; SEGMENT:   seg004 (DATA)
; ZONE:      Zone 3 -- Data segment remainder, reloc 23
; LINES:     7078
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC byte_12650, byte_129B0, word_11FC6, word_122B9, word_12638, word_128F9
        PUBLIC word_12B00, word_12B7C

; --- EXTRNs from seg000 ---
seg000      segment byte public 'CODE'
        EXTRN sub_4ED:NEAR
        EXTRN sub_57D:NEAR
seg000      ends

; --- EXTRNs from seg002 ---
seg002      segment byte public 'UNK'
        EXTRN unk_F460:BYTE
seg002      ends

seg004      segment para public 'DATA'

        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  45h ; E
        db  4Eh ; N
        db  54h ; T
        db  45h ; E
        db  52h ; R
        db  49h ; I
        db  4Eh ; N
        db  47h ; G
        db  20h ;
        db  44h ; D
        db  4Fh ; O
        db  53h ; S
        db  3Ah ; :
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  52h ; R
        db  53h ; S
        db  46h ; F
        db  53h ; S
        db  43h ; C
        db  4Fh ; O
        db  52h ; R
        db  4Ch ; L
        db  4Ch ; L
        db  45h ; E
        db  50h ; P
        db  45h ; E
        db  43h ; C
        db  57h ; W
        db  53h ; S
        db  43h ; C
        db  53h ; S
        db  46h ; F
        db  4Ah ; J
        db  54h ; T
        db  4Ah ; J
        db  55h ; U
        db  4Ch ; L
        db  50h ; P
        db  43h ; C
        db  50h ; P
        db  4Dh ; M
        db  42h ; B
        db  46h ; F
        db  42h ; B
        db  46h ; F
        db  45h ; E
        db  48h ; H
        db  52h ; R
        db  48h ; H
        db  4Eh ; N
        db  4Ch ; L
        db  43h ; C
        db  44h ; D
        db  46h ; F
        db  44h ; D
        db  4Dh ; M
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  20h ;
        db  2Bh ; +
        db  0Dh ;
        db  0Ah ;
        db  2Dh ; -
        db  2Ah ; *
        db  2Fh ; /
        db  28h ; (
        db  29h ; )
        db  21h ; !
        db  26h ; &
        db 0EEh ; ?
        db  3Ch ; <
        db  3Dh ; =
        db  3Eh ; >
        db  40h ; @
        db  3Ch ; <
        db  3Dh ; =
        db  3Ch ; <
        db  3Eh ; >
        db  3Dh ; =
        db  3Dh ; =
        db  3Dh ; =
        db  3Eh ; >
        db  58h ; X
        db  4Fh ; O
        db  52h ; R
        db  4Eh ; N
        db  4Fh ; O
        db  54h ; T
        db  49h ; I
        db  4Eh ; N
        db  54h ; T
        db  52h ; R
        db  45h ; E
        db  4Dh ; M
        db  52h ; R
        db  4Eh ; N
        db  44h ; D
        db  4Ch ; L
        db  53h ; S
        db  56h ; V
        db  41h ; A
        db  42h ; B
        db  53h ; S
        db  55h ; U
        db  50h ; P
        db  52h ; R
        db  43h ; C
        db  4Eh ; N
        db  56h ; V
        db  53h ; S
        db  49h ; I
        db  5Ah ; Z
        db  1Eh ;
        db  1Eh ;
        db  1Eh ;
        db  1Eh ;
        db  1Eh ;
        db  28h ; (
        db  28h ; (
        db  32h ; 2
        db  14h ;
        db  15h ;
        db  16h ;
        db  2Ch ; ,
        db  18h ;
        db  14h ;
        db  18h ;
        db  18h ;
        db  18h ;
        db  18h ;
        db  18h ;
        db  15h ;
        db  17h ;
        db  2Dh ; -
        db  2Dh ; -
        db  2Dh ; -
        db  2Dh ; -
        db  2Dh ; -
        db  2Dh ; -
        db  2Dh ; -
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  59h ; Y
        db  48h ; H
        db  59h ; Y
        db  48h ; H
        db  59h ; Y
        db  48h ; H
        db  59h ; Y
        db  48h ; H
        db  30h ; 0
        db  48h ; H
        db 0EAh ; ?
        db  51h ; Q
        db    9 ;
        db  51h ; Q
        db  18h ;
        db  54h ; T
        db  18h ;
        db  54h ; T
        db 0C9h ; ?
        db  53h ; S
        db 0CAh ; ?
        db  53h ; S
        db 0DBh ; ?
        db  49h ; I
        db  35h ; 5
        db  53h ; S
        db 0DDh ; ?
        db  51h ; Q
        db  36h ; 6
        db  53h ; S
        db  37h ; 7
        db  53h ; S
        db  38h ; 8
        db  53h ; S
        db  39h ; 9
        db  53h ; S
        db  3Ah ; :
        db  53h ; S
        db 0C8h ; ?
        db  53h ; S
        db  18h ;
        db  54h ; T
        db  18h ;
        db  54h ; T
        db  18h ;
        db  54h ; T
        db  18h ;
        db  54h ; T
        db  18h ;
        db  54h ; T
        db  18h ;
        db  54h ; T
        db 0DDh ; ?
        db  51h ; Q
        db  3Eh ; >
        db  54h ; T
        db  85h ; ?
        db  54h ; T
        db  85h ; ?
        db  54h ; T
        db  85h ; ?
        db  54h ; T
        db  85h ; ?
        db  54h ; T
        db  43h ; C
        db  54h ; T
        db  48h ; H
        db  54h ; T
        db  8Ch ; ?
        db  54h ; T
        db  63h ; c
        db  54h ; T
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  54h ; T
        db  52h ; R
        db  55h ; U
        db  45h ; E
        db  46h ; F
        db  41h ; A
        db  4Ch ; L
        db  53h ; S
        db  45h ; E
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0AEh ; ?
        db  46h ; F
        db  43h ; C
        db 0AFh ; ?
        db  0Dh ;
        db  0Ah ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  52h ; R
        db  56h ; V
        db 0AFh ; ?
        db  20h ;
        db  54h ; T
        db  6Fh ; o
        db  20h ;
        db  4Fh ; O
        db  70h ; p
        db  65h ; e
        db  6Eh ; n
        db  20h ;
        db  61h ; a
        db  20h ;
        db  53h ; S
        db  65h ; e
        db  63h ; c
        db  6Fh ; o
        db  6Eh ; n
        db  64h ; d
        db  20h ;
        db  57h ; W
        db  69h ; i
        db  6Eh ; n
        db  64h ; d
        db  6Fh ; o
        db  77h ; w
        db  20h ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  4Eh ; N
        db  4Dh ; M
        db 0AFh ; ?
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db 0DAh ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C2h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0BFh ; ?
        db  20h ;
        db  20h ;
        db 0DAh ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0BFh ; ?
        db 0DAh ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0BFh ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db 0DAh ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0BFh ; ?
        db  0Dh ;
        db  0Ah ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  31h ; 1
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  0Dh ;
        db  0Ah ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  31h ; 1
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  32h ; 2
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  31h ; 1
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  32h ; 2
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db 0C3h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0B4h ; ?
        db  0Dh ;
        db  0Ah ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  32h ; 2
        db  20h ;
        db  20h ;
        db  20h ;
        db 0B3h ; ?
        db  0Dh ;
        db  0Ah ;
        db 0C0h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C1h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0D9h ; ?
        db  20h ;
        db  20h ;
        db 0C0h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0D9h ; ?
        db 0C0h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0D9h ; ?
        db  20h ;
        db  20h ;
        db  20h ;
        db 0C0h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0D9h ; ?
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  52h ; R
        db  56h ; V
        db 0AFh ; ?
        db  20h ;
        db  56h ; V
        db  23h ; #
        db  23h ; #
        db  20h ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  4Eh ; N
        db  4Dh ; M
        db 0AFh ; ?
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
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  52h ; R
        db  56h ; V
        db 0AFh ; ?
        db  20h ;
        db  4Eh ; N
        db  20h ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  4Eh ; N
        db  4Dh ; M
        db 0AFh ; ?
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
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  52h ; R
        db  56h ; V
        db 0AFh ; ?
        db  20h ;
        db  48h ; H
        db  23h ; #
        db  23h ; #
        db  20h ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  4Eh ; N
        db  4Dh ; M
        db 0AFh ; ?
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  53h ; S
        db  74h ; t
        db  72h ; r
        db  69h ; i
        db  6Bh ; k
        db  65h ; e
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
        db  53h ; S
        db  74h ; t
        db  72h ; r
        db  69h ; i
        db  6Bh ; k
        db  65h ; e
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
        db  53h ; S
        db  74h ; t
        db  72h ; r
        db  69h ; i
        db  6Bh ; k
        db  65h ; e
        db  0Dh ;
        db  0Ah ;
        db  56h ; V
        db  20h ;
        db  61h ; a
        db  6Eh ; n
        db  64h ; d
        db  20h ;
        db  32h ; 2
        db  20h ;
        db  23h ; #
        db  27h ; '
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
        db  4Eh ; N
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
        db  48h ; H
        db  20h ;
        db  61h ; a
        db  6Eh ; n
        db  64h ; d
        db  20h ;
        db  32h ; 2
        db  20h ;
        db  23h ; #
        db  27h ; '
        db  73h ; s
        db  0Dh ;
        db  0Ah ;
        db  30h ; 0
        db  31h ; 1
        db  2Dh ; -
        db  37h ; 7
        db  37h ; 7
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
        db  30h ; 0
        db  31h ; 1
        db  2Dh ; -
        db  32h ; 2
        db  31h ; 1
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  52h ; R
        db  56h ; V
        db 0AFh ; ?
        db  43h ; C
        db  4Dh ; M
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  4Eh ; N
        db  4Dh ; M
        db 0AFh ; ?
        db  72h ; r
        db  73h ; s
        db  20h ;
        db  20h ;
        db  20h ;
        db  52h ; R
        db  65h ; e
        db  74h ; t
        db  75h ; u
        db  72h ; r
        db  6Eh ; n
        db  73h ; s
        db  20h ;
        db  74h ; t
        db  6Fh ; o
        db  20h ;
        db  53h ; S
        db  69h ; i
        db  6Eh ; n
        db  67h ; g
        db  6Ch ; l
        db  65h ; e
        db  20h ;
        db  57h ; W
        db  69h ; i
        db  6Eh ; n
        db  64h ; d
        db  6Fh ; o
        db  77h ; w
        db  0Dh ;
        db  0Ah ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  4Eh ; N
        db  4Dh ; M
        db 0AFh ; ?
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  52h ; R
        db  56h ; V
        db 0AFh ; ?
        db  20h ;
        db  53h ; S
        db  74h ; t
        db  72h ; r
        db  69h ; i
        db  6Bh ; k
        db  65h ; e
        db  20h ;
        db  22h ; "
        db  41h ; A
        db  22h ; "
        db  20h ;
        db  66h ; f
        db  6Fh ; o
        db  72h ; r
        db  20h ;
        db  6Eh ; n
        db  6Fh ; o
        db  20h ;
        db  61h ; a
        db  63h ; c
        db  74h ; t
        db  69h ; i
        db  6Fh ; o
        db  6Eh ; n
        db  20h ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  4Eh ; N
        db  4Dh ; M
        db 0AFh ; ?
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db    0 ;
        db  0Ah ;
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
        db    0 ;
        db    0 ;
        db  0Bh ;
        db  0Ch ;
        db    0 ;
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
        db    0 ;
        db    0 ;
        db  1Ch ;
        db  1Dh ;
        db  1Eh ;
        db  1Fh ;
        db    0 ;
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
        db    0 ;
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
        db  61h ; a
        db  62h ; b
        db  63h ; c
        db  64h ; d
        db  65h ; e
        db  66h ; f
        db  67h ; g
        db  68h ; h
        db  69h ; i
        db  6Ah ; j
        db  6Bh ; k
        db  6Ch ; l
        db  6Dh ; m
        db  6Eh ; n
        db  6Fh ; o
        db  70h ; p
        db  71h ; q
        db  72h ; r
        db  73h ; s
        db  74h ; t
        db  75h ; u
        db  76h ; v
        db  77h ; w
        db  78h ; x
        db  79h ; y
        db  7Ah ; z
        db  7Bh ; {
        db  7Ch ; |
        db  7Dh ; }
        db    0 ;
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
        db    0 ;
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
        db    0 ;
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  0Ch ;
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_11FC6  dw 50h
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  46h ; F
        db  33h ; 3
        db  20h ;
        db  28h ; (
        db  52h ; R
        db  45h ; E
        db  4Ch ; L
        db  45h ; E
        db  41h ; A
        db  53h ; S
        db  45h ; E
        db  20h ;
        db  44h ; D
        db  45h ; E
        db  46h ; F
        db  49h ; I
        db  4Eh ; N
        db  45h ; E
        db  29h ; )
        db  20h ;
        db  54h ; T
        db  45h ; E
        db  52h ; R
        db  4Dh ; M
        db  49h ; I
        db  4Eh ; N
        db  41h ; A
        db  54h ; T
        db  45h ; E
        db  53h ; S
        db  20h ;
        db  54h ; T
        db  45h ; E
        db  58h ; X
        db  54h ; T
        db  20h ;
        db  49h ; I
        db  4Eh ; N
        db  50h ; P
        db  55h ; U
        db  54h ; T
        db  3Ah ; :
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  0Ah ;
        db    8 ;
        db  4Ah ; J
        db  41h ; A
        db  4Eh ; N
        db  55h ; U
        db  41h ; A
        db  52h ; R
        db  59h ; Y
        db    9 ;
        db  46h ; F
        db  45h ; E
        db  42h ; B
        db  52h ; R
        db  55h ; U
        db  41h ; A
        db  52h ; R
        db  59h ; Y
        db    6 ;
        db  4Dh ; M
        db  41h ; A
        db  52h ; R
        db  43h ; C
        db  48h ; H
        db    6 ;
        db  41h ; A
        db  50h ; P
        db  52h ; R
        db  49h ; I
        db  4Ch ; L
        db    4 ;
        db  4Dh ; M
        db  41h ; A
        db  59h ; Y
        db    5 ;
        db  4Ah ; J
        db  55h ; U
        db  4Eh ; N
        db  45h ; E
        db    5 ;
        db  4Ah ; J
        db  55h ; U
        db  4Ch ; L
        db  59h ; Y
        db    7 ;
        db  41h ; A
        db  55h ; U
        db  47h ; G
        db  55h ; U
        db  53h ; S
        db  54h ; T
        db  0Ah ;
        db  53h ; S
        db  45h ; E
        db  50h ; P
        db  54h ; T
        db  45h ; E
        db  4Dh ; M
        db  42h ; B
        db  45h ; E
        db  52h ; R
        db    8 ;
        db  4Fh ; O
        db  43h ; C
        db  54h ; T
        db  4Fh ; O
        db  42h ; B
        db  45h ; E
        db  52h ; R
        db    9 ;
        db  4Eh ; N
        db  4Fh ; O
        db  56h ; V
        db  45h ; E
        db  4Dh ; M
        db  42h ; B
        db  45h ; E
        db  52h ; R
        db    9 ;
        db  44h ; D
        db  45h ; E
        db  43h ; C
        db  45h ; E
        db  4Dh ; M
        db  42h ; B
        db  45h ; E
        db  52h ; R
        db    0 ;
        db    0 ;
        db  4Dh ; M
        db  3Ah ; :
        db  44h ; D
        db  44h ; D
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
word_122B9  dw 0
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
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
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
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
        db  0Dh ;
        db  0Ah ;
        db  53h ; S
        db  41h ; A
        db  56h ; V
        db  45h ; E
        db  20h ;
        db  47h ; G
        db  45h ; E
        db  54h ; T
        db  20h ;
        db  22h ; "
        db    0 ;
        db  22h ; "
        db  20h ;
        db  43h ; C
        db  4Fh ; O
        db  4Eh ; N
        db  54h ; T
        db  41h ; A
        db  49h ; I
        db  4Eh ; N
        db  53h ; S
        db  3Ah ; :
        db  0Dh ;
        db  0Ah ;
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
        db 0C4h ; ?
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  0Dh ;
        db  0Ah ;
        db  1Ah ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_12638  dw 4E46h
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
byte_12650  db 0
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
        db  52h ; R
        db  49h ; I
        db  4Eh ; N
        db  54h ; T
        db  2Eh ; .
        db  51h ; Q
        db  55h ; U
        db  45h ; E
        db  4Dh ; M
        db  45h ; E
        db  52h ; R
        db  47h ; G
        db  45h ; E
        db  2Eh ; .
        db  54h ; T
        db  4Dh ; M
        db  50h ; P
        db    0 ;
        db  52h ; R
        db  45h ; E
        db  56h ; V
        db  49h ; I
        db  45h ; E
        db  57h ; W
        db  2Eh ; .
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
        db 0FFh ;
        db  50h ; P
        db  52h ; R
        db  49h ; I
        db  4Eh ; N
        db  54h ; T
        db  2Eh ; .
        db  54h ; T
        db  4Dh ; M
        db  50h ; P
        db  20h ;
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0E8h ; ?
        db    3 ;
        db  2Ch ; ,
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  46h ; F
        db  4Fh ; O
        db  2Eh ; .
        db  54h ; T
        db  4Dh ; M
        db  50h ; P
        db  20h ;
        db  49h ; I
        db  4Eh ; N
        db  44h ; D
        db  45h ; E
        db  58h ; X
        db  31h ; 1
        db  20h ;
        db  54h ; T
        db  41h ; A
        db  42h ; B
        db  4Ch ; L
        db  45h ; E
        db  31h ; 1
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  0Dh ;
        db  0Ah ;
        db  1Ah ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  51h ; Q
        db  0Eh ;
        db  53h ; S
        db  0Eh ;
        db  55h ; U
        db  0Eh ;
        db  57h ; W
        db  0Eh ;
        db  59h ; Y
        db  0Eh ;
        db  5Bh ; [
        db  0Eh ;
        db  5Dh ; ]
        db  0Eh ;
        db  5Fh ; _
        db  0Eh ;
        db  61h ; a
        db  0Eh ;
        db  3Fh ; ?
        db  0Eh ;
        db  41h ; A
        db  0Eh ;
        db  43h ; C
        db  0Eh ;
        db  45h ; E
        db  0Eh ;
        db  47h ; G
        db  0Eh ;
        db  49h ; I
        db  0Eh ;
        db  4Bh ; K
        db  0Eh ;
        db  4Dh ; M
        db  0Eh ;
        db  4Fh ; O
        db  0Eh ;
        db  2Dh ; -
        db  0Eh ;
        db  2Fh ; /
        db  0Eh ;
        db  31h ; 1
        db  0Eh ;
        db  33h ; 3
        db  0Eh ;
        db  35h ; 5
        db  0Eh ;
        db  37h ; 7
        db  0Eh ;
        db  39h ; 9
        db  0Eh ;
        db  3Bh ; ;
        db  0Eh ;
        db  3Dh ; =
        db  0Eh ;
        db  15h ;
        db  0Eh ;
        db  17h ;
        db  0Eh ;
        db  19h ;
        db  0Eh ;
        db  1Dh ;
        db  0Eh ;
        db  1Bh ;
        db  0Eh ;
        db  6Bh ; k
        db  0Eh ;
        db  71h ; q
        db  0Eh ;
        db  41h ; A
        db 0B2h ; ?
        db  41h ; A
        db 0B2h ; ?
        db  41h ; A
        db 0B2h ; ?
        db  41h ; A
        db 0B2h ; ?
        db  41h ; A
        db 0B2h ; ?
        db  41h ; A
        db 0B2h ; ?
        db  41h ; A
        db 0B2h ; ?
        db  41h ; A
        db 0B2h ; ?
        db  41h ; A
        db 0B2h ; ?
        db  55h ; U
        db 0B2h ; ?
        db  55h ; U
        db 0B2h ; ?
        db  55h ; U
        db 0B2h ; ?
        db  55h ; U
        db 0B2h ; ?
        db  55h ; U
        db 0B2h ; ?
        db  55h ; U
        db 0B2h ; ?
        db  55h ; U
        db 0B2h ; ?
        db  55h ; U
        db 0B2h ; ?
        db  55h ; U
        db 0B2h ; ?
        db  80h ; ?
        db 0B0h ; ?
        db  80h ; ?
        db 0B0h ; ?
        db  80h ; ?
        db 0B0h ; ?
        db  80h ; ?
        db 0B0h ; ?
        db  80h ; ?
        db 0B0h ; ?
        db  80h ; ?
        db 0B0h ; ?
        db  80h ; ?
        db 0B0h ; ?
        db  80h ; ?
        db 0B0h ; ?
        db  80h ; ?
        db 0B0h ; ?
        db  8Ch ; ?
        db  96h ; ?
        db  91h ; ?
        db  96h ; ?
        db  7Ah ; z
        db  96h ; ?
        db  87h ; ?
        db  96h ; ?
        db 0E1h ; ?
        db  96h ; ?
        db 0A2h ; ?
        db 0A9h ; ?
        db 0AEh ; ?
        db 0A9h ; ?
        db    0 ;
word_128F9  dw 5349h
        db    0 ;
        db    0 ;
        db  2Ch ; ,
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
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
        db  90h ; ?
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  49h ; I
        db  4Eh ; N
        db  44h ; D
        db  45h ; E
        db  58h ; X
        db  31h ; 1
        db  2Eh ; .
        db  54h ; T
        db  4Dh ; M
        db  50h ; P
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
byte_129B0  db 0
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
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
        db  46h ; F
        db  43h ; C
        db 0AFh ; ?
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  58h ; X
        db  79h ; y
        db  57h ; W
        db  72h ; r
        db  69h ; i
        db  74h ; t
        db  65h ; e
        db  20h ;
        db  49h ; I
        db  49h ; I
        db  20h ;
        db  50h ; P
        db  6Ch ; l
        db  75h ; u
        db  73h ; s
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  20h ;
        db  56h ; V
        db  65h ; e
        db  72h ; r
        db  73h ; s
        db  69h ; i
        db  6Fh ; o
        db  6Eh ; n
        db  20h ;
        db  31h ; 1
        db  2Eh ; .
        db  31h ; 1
        db  30h ; 0
        db  20h ;
        db  0Dh ;
        db  0Ah ;
        db  28h ; (
        db  63h ; c
        db  29h ; )
        db  20h ;
        db  43h ; C
        db  6Fh ; o
        db  70h ; p
        db  79h ; y
        db  72h ; r
        db  69h ; i
        db  67h ; g
        db  68h ; h
        db  74h ; t
        db  20h ;
        db  31h ; 1
        db  39h ; 9
        db  38h ; 8
        db  33h ; 3
        db  20h ;
        db  62h ; b
        db  79h ; y
        db  20h ;
        db  58h ; X
        db  79h ; y
        db  51h ; Q
        db  75h ; u
        db  65h ; e
        db  73h ; s
        db  74h ; t
        db  20h ;
        db  49h ; I
        db  6Eh ; n
        db  63h ; c
        db  2Eh ; .
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  58h ; X
        db  79h ; y
        db  51h ; Q
        db  75h ; u
        db  65h ; e
        db  73h ; s
        db  74h ; t
        db  20h ;
        db  49h ; I
        db  6Eh ; n
        db  63h ; c
        db  2Eh ; .
        db  0Dh ;
        db  0Ah ;
        db  50h ; P
        db  2Eh ; .
        db  20h ;
        db  4Fh ; O
        db  2Eh ; .
        db  20h ;
        db  42h ; B
        db  6Fh ; o
        db  78h ; x
        db  20h ;
        db  33h ; 3
        db  37h ; 7
        db  32h ; 2
        db  20h ;
        db  0Dh ;
        db  0Ah ;
        db  42h ; B
        db  65h ; e
        db  64h ; d
        db  66h ; f
        db  6Fh ; o
        db  72h ; r
        db  64h ; d
        db  2Ch ; ,
        db  20h ;
        db  4Dh ; M
        db  61h ; a
        db  73h ; s
        db  73h ; s
        db  20h ;
        db  30h ; 0
        db  31h ; 1
        db  37h ; 7
        db  33h ; 3
        db  30h ; 0
        db  20h ;
        db  0Dh ;
        db  0Ah ;
        db  28h ; (
        db  36h ; 6
        db  31h ; 1
        db  37h ; 7
        db  29h ; )
        db  2Dh ; -
        db  32h ; 2
        db  37h ; 7
        db  35h ; 5
        db  2Dh ; -
        db  34h ; 4
        db  34h ; 4
        db  33h ; 3
        db  39h ; 9
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  20h ;
        db  39h ; 9
        db  33h ; 3
        db  31h ; 1
        db  39h ; 9
        db  30h ; 0
        db  36h ; 6
        db  20h ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  52h ; R
        db  56h ; V
        db 0AFh ; ?
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
        db  55h ; U
        db  53h ; S
        db  45h ; E
        db  20h ;
        db  41h ; A
        db  4Ch ; L
        db  54h ; T
        db  2Dh ; -
        db  46h ; F
        db  39h ; 9
        db  20h ;
        db  54h ; T
        db  4Fh ; O
        db  20h ;
        db  47h ; G
        db  45h ; E
        db  54h ; T
        db  20h ;
        db  48h ; H
        db  45h ; E
        db  4Ch ; L
        db  50h ; P
        db  20h ;
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
        db  0Dh ;
        db  0Ah ;
        db 0AEh ; ?
        db  4Dh ; M
        db  44h ; D
        db  4Eh ; N
        db  4Dh ; M
        db 0AFh ; ?
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  0Dh ;
        db  0Ah ;
        db  48h ; H
        db  45h ; E
        db  4Ch ; L
        db  50h ; P
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_12B00  dw 0
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0FFh ;
        db 0FFh ;
        db  6Eh ; n
        db  25h ; %
        db  6Eh ; n
        db  25h ; %
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        dd unk_F460
        db  37h ; 7
        db    6 ;
        db    0 ;
        db    0 ;
        db    2 ;
        db    0 ;
        db  49h ; I
        db  3Eh ; >
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    1 ;
        db  41h ; A
        db  3Ch ; <
        db    1 ;
        db    0 ;
        db  60h ; `
        db  25h ; %
        db  80h ; ?
        db    0 ;
        db  4Eh ; N
        db  3Ah ; :
        db    1 ;
        db    0 ;
        db  60h ; `
        db  25h ; %
word_12B7C  dw 40h
        db  53h ; S
        db  38h ; 8
        db    1 ;
        db    0 ;
        db  60h ; `
        db  25h ; %
        db    1 ;
        db    0 ;
        db  43h ; C
        db  36h ; 6
        db    1 ;
        db    0 ;
        db  60h ; `
        db  25h ; %
        db    0 ;
        db    0 ;
        db  20h ;
        db  34h ; 4
        db    1 ;
        db    0 ;
        db  60h ; `
        db  25h ; %
        db    0 ;
        db    0 ;
        db  20h ;
        db  32h ; 2
        db    1 ;
        db    0 ;
        db  60h ; `
        db  25h ; %
        db    0 ;
        db    0 ;
        db  20h ;
        db  30h ; 0
        db    1 ;
        db    0 ;
        db  64h ; d
        db    0 ;
        db    2 ;
        db    0 ;
        db  0Fh ;
        db    0 ;
        db    5 ;
        db    0 ;
        db    1 ;
        db    0 ;
        db  1Dh ;
        db  38h ; 8
        db  2Ah ; *
        db  36h ; 6
        db  3Ah ; :
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db    4 ;
        db    2 ;
        db    2 ;
        db    1 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  3Ah ; :
        db    0 ;
        db    0 ;
        db    0 ;
        db  0Ah ;
        db    0 ;
        db    0 ;
        db    8 ;
        db  0Eh ;
        db  0Ch ;
        db  0Ah ;
        db    6 ;
        db    2 ;
        db    1 ;
        db    3 ;
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
        db 0C4h ; ?
        db    0 ;
        db 0ACh ; ?
        db    1 ;
        db 0ACh ; ?
        db    1 ;
        db 0ACh ; ?
        db    1 ;
        db 0ACh ; ?
        db    1 ;
        db  8Ch ; ?
        db    2 ;
        db  2Ch ; ,
        db    3 ;
        db 0F0h ; ?
        db    3 ;
        db  90h ; ?
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  52h ; R
        db  4Fh ; O
        db  50h ; P
        db  51h ; Q
        db  4Bh ; K
        db  4Ch ; L
        db  4Dh ; M
        db  47h ; G
        db  48h ; H
        db  49h ; I
        db  53h ; S
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
        db  2Eh ; .
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  54h ; T
        db  41h ; A
        db  42h ; B
        db  4Ch ; L
        db  45h ; E
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db  32h ; 2
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0B5h ; ?
        db  10h ;
        db 0CAh ; ?
        db  56h ; V
        db  4Eh ; N
        db  11h ;
        db 0CAh ; ?
        db  56h ; V
        db  8Bh ; ?
        db  10h ;
        db  96h ; ?
        db  57h ; W
        db 0A2h ; ?
        db  11h ;
        db  96h ; ?
        db  57h ; W
        db 0A3h ; ?
        db  10h ;
        db  96h ; ?
        db  57h ; W
        db 0A7h ; ?
        db  11h ;
        db  96h ; ?
        db  57h ; W
        db 0D0h ; ?
        db  10h ;
        db  80h ; ?
        db  34h ; 4
        db    4 ;
        db  12h ;
        db  80h ; ?
        db  34h ; 4
        db 0BBh ; ?
        db  11h ;
        db 0E6h ; ?
        db    5 ;
        db 0D4h ; ?
        db  11h ;
        db  50h ; P
        db  34h ; 4
        db  85h ; ?
        db  10h ;
        db  50h ; P
        db  34h ; 4
        db 0DFh ; ?
        db  10h ;
        db 0D6h ; ?
        db  2Dh ; -
        db 0AFh ; ?
        db  10h ;
        db 0FCh ; ?
        db 0CEh ; ?
        db 0CAh ; ?
        db  11h ;
        db  43h ; C
        db  99h ; ?
        db 0D6h ; ?
        db  10h ;
        db  43h ; C
        db  99h ; ?
        db  94h ; ?
        db  10h ;
        db  30h ; 0
        db 0BEh ; ?
        db  97h ; ?
        db  10h ;
        db 0EEh ; ?
        db 0BDh ; ?
        db 0EFh ; ?
        db  10h ;
        db 0FCh ; ?
        db 0BDh ; ?
        db  9Dh ; ?
        db  10h ;
        db  16h ;
        db 0BEh ; ?
        db 0EBh ; ?
        db  10h ;
        db  1Dh ;
        db 0BEh ; ?
        db 0F3h ; ?
        db  10h ;
        db  0Ah ;
        db 0BEh ; ?
        db  81h ; ?
        db  10h ;
        db  43h ; C
        db 0CCh ; ?
        db 0B6h ; ?
        db  11h ;
        db    2 ;
        db 0CDh ; ?
        db 0CDh ; ?
        db  10h ;
        db  27h ; '
        db 0BBh ; ?
        db  76h ; v
        db  11h ;
        db  0Dh ;
        db 0BBh ; ?
        db  5Ch ; \
        db  12h ;
        db  27h ; '
        db 0BBh ; ?
        db  83h ; ?
        db  12h ;
        db  0Dh ;
        db 0BBh ; ?
        db  72h ; r
        db  11h ;
        db  1Ah ;
        db 0BBh ; ?
        db 0C5h ; ?
        db  11h ;
        db    0 ;
        db 0BBh ; ?
        db  7Bh ; {
        db  12h ;
        db  1Ah ;
        db 0BBh ; ?
        db  8Bh ; ?
        db  12h ;
        db    0 ;
        db 0BBh ; ?
        db  47h ; G
        db  12h ;
        db 0FCh ; ?
        db 0CEh ; ?
        db 0ECh ; ?
        db  11h ;
        db  3Ch ; <
        db  57h ; W
        db 0B2h ; ?
        db  10h ;
        db  3Ch ; <
        db  57h ; W
        db  8Eh ; ?
        db  10h ;
        db 0C2h ; ?
        db 0BFh ; ?
        db 0D9h ; ?
        db  10h ;
        db 0C9h ; ?
        db 0BFh ; ?
        db  88h ; ?
        db  10h ;
        db 0C7h ; ?
        db 0E1h ; ?
        db 0ACh ; ?
        db  10h ;
        db 0BBh ; ?
        db 0BFh ; ?
        db 0C0h ; ?
        db  11h ;
        db  35h ; 5
        db  37h ; 7
        db 0CAh ; ?
        db  10h ;
        db  35h ; 5
        db  37h ; 7
        db 0E0h ; ?
        db  11h ;
        db 0DBh ; ?
        db  2Dh ; -
        db  2Bh ; +
        db  12h ;
        db  9Eh ; ?
        db  98h ; ?
        db 0A6h ; ?
        db  10h ;
        db  9Eh ; ?
        db  98h ; ?
        db 0E6h ; ?
        db  11h ;
        db 0CEh ; ?
        db  8Ch ; ?
        db  0Ah ;
        db  12h ;
        db  4Fh ; O
        db  8Ch ; ?
        db  32h ; 2
        db  12h ;
        db 0D2h ; ?
        db  9Dh ; ?
        db 0A9h ; ?
        db  10h ;
        db 0D2h ; ?
        db  9Dh ; ?
        db  1Dh ;
        db  12h ;
        db 0E0h ; ?
        db  8Dh ; ?
        db  24h ; $
        db  12h ;
        db  71h ; q
        db  56h ; V
        db  9Ah ; ?
        db  10h ;
        db  71h ; q
        db  56h ; V
        db 0ACh ; ?
        db  11h ;
        db  98h ; ?
        db  5Ah ; Z
        db  55h ; U
        db  12h ;
        db 0FAh ; ?
        db  5Bh ; [
        db 0C4h ; ?
        db  10h ;
        db 0FAh ; ?
        db  5Bh ; [
        db 0CFh ; ?
        db  0Dh ;
        db  6Bh ; k
        db  2Eh ; .
        db 0D1h ; ?
        db  0Dh ;
        db  8Ch ; ?
        db  2Eh ; .
        db 0D3h ; ?
        db  0Dh ;
        db  8Ch ; ?
        db  2Eh ; .
        db 0D5h ; ?
        db  0Dh ;
        db  8Ch ; ?
        db  2Eh ; .
        db 0D7h ; ?
        db  0Dh ;
        db  8Ch ; ?
        db  2Eh ; .
        db 0D9h ; ?
        db  0Dh ;
        db  8Ch ; ?
        db  2Eh ; .
        db 0DBh ; ?
        db  0Dh ;
        db  8Ch ; ?
        db  2Eh ; .
        db 0DDh ; ?
        db  0Dh ;
        db  8Ch ; ?
        db  2Eh ; .
        db    5 ;
        db  0Eh ;
        db 0EBh ; ?
        db  2Eh ; .
        db 0EFh ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db 0E9h ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db 0EBh ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db 0EDh ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db 0F1h ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db 0F7h ; ?
        db  0Dh ;
        db 0E1h ; ?
        db  30h ; 0
        db 0F9h ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db 0FBh ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db    3 ;
        db  0Eh ;
        db  0Ch ;
        db  2Fh ; /
        db    7 ;
        db  0Eh ;
        db    2 ;
        db  2Fh ; /
        db  15h ;
        db  0Eh ;
        db 0EAh ; ?
        db  2Fh ; /
        db  17h ;
        db  0Eh ;
        db 0EAh ; ?
        db  2Fh ; /
        db  25h ; %
        db  0Eh ;
        db  9Fh ; ?
        db  30h ; 0
        db  1Bh ;
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  27h ; '
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  29h ; )
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  2Bh ; +
        db  0Eh ;
        db 0BBh ; ?
        db  30h ; 0
        db  2Dh ; -
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  2Fh ; /
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  31h ; 1
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  33h ; 3
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  35h ; 5
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  37h ; 7
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  39h ; 9
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  3Bh ; ;
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  3Dh ; =
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  3Fh ; ?
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  41h ; A
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  43h ; C
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  45h ; E
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  47h ; G
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  49h ; I
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  4Bh ; K
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  4Dh ; M
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  4Fh ; O
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  51h ; Q
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  53h ; S
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  55h ; U
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  57h ; W
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  59h ; Y
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  5Bh ; [
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  5Dh ; ]
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  5Fh ; _
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  61h ; a
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db    9 ;
        db  0Eh ;
        db  54h ; T
        db  2Eh ; .
        db  5Eh ; ^
        db  11h ;
        db 0EAh ; ?
        db  2Fh ; /
        db  52h ; R
        db  11h ;
        db 0EAh ; ?
        db  2Fh ; /
        db  62h ; b
        db  11h ;
        db 0E8h ; ?
        db  2Fh ; /
        db  56h ; V
        db  11h ;
        db 0E8h ; ?
        db  2Fh ; /
        db  66h ; f
        db  11h ;
        db 0E9h ; ?
        db  2Fh ; /
        db  5Ah ; Z
        db  11h ;
        db 0E9h ; ?
        db  2Fh ; /
        db  19h ;
        db  0Eh ;
        db 0EAh ; ?
        db  2Fh ; /
        db    3 ;
        db  11h ;
        db 0EAh ; ?
        db  2Fh ; /
        db    7 ;
        db  11h ;
        db 0E8h ; ?
        db  2Fh ; /
        db  0Bh ;
        db  11h ;
        db 0E9h ; ?
        db  2Fh ; /
        db  0Fh ;
        db  11h ;
        db 0EAh ; ?
        db  2Fh ; /
        db  13h ;
        db  11h ;
        db 0E8h ; ?
        db  2Fh ; /
        db  17h ;
        db  11h ;
        db 0E9h ; ?
        db  2Fh ; /
        db  63h ; c
        db  0Eh ;
        db 0AAh ; ?
        db  30h ; 0
        db  1Fh ;
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  6Bh ; k
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db 0B8h ; ?
        db  10h ;
        db 0F6h ; ?
        db  14h ;
        db  6Bh ; k
        db  12h ;
        db 0F6h ; ?
        db  14h ;
        db  4Ah ; J
        db  11h ;
        db 0F6h ; ?
        db  14h ;
        db 0C1h ; ?
        db  10h ;
        db    9 ;
        db  15h ;
        db  6Ah ; j
        db  11h ;
        db    9 ;
        db  15h ;
        db 0D3h ; ?
        db  10h ;
        db  1Dh ;
        db  99h ; ?
        db  10h ;
        db  12h ;
        db  1Dh ;
        db  99h ; ?
        db 0DCh ; ?
        db  10h ;
        db 0C2h ; ?
        db  31h ; 1
        db 0CFh ; ?
        db  11h ;
        db 0C2h ; ?
        db  31h ; 1
        db  83h ; ?
        db  10h ;
        db 0DAh ; ?
        db  31h ; 1
        db 0C7h ; ?
        db  10h ;
        db 0E0h ; ?
        db  97h ; ?
        db  4Eh ; N
        db  12h ;
        db 0E0h ; ?
        db  97h ; ?
        db  16h ;
        db  12h ;
        db 0BAh ; ?
        db  8Dh ; ?
        db  65h ; e
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  67h ; g
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  39h ; 9
        db  12h ;
        db 0E5h ; ?
        db  31h ; 1
        db  6Dh ; m
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  6Fh ; o
        db  0Eh ;
        db 0E3h ; ?
        db  2Fh ; /
        db  7Eh ; ~
        db  11h ;
        db  7Fh ; 
        db  2Eh ; .
        db  82h ; ?
        db  11h ;
        db  7Eh ; ~
        db  2Eh ; .
        db  86h ; ?
        db  11h ;
        db  7Dh ; }
        db  2Eh ; .
        db  8Ah ; ?
        db  11h ;
        db  7Ch ; |
        db  2Eh ; .
        db  8Eh ; ?
        db  11h ;
        db  7Bh ; {
        db  2Eh ; .
        db  92h ; ?
        db  11h ;
        db  7Ah ; z
        db  2Eh ; .
        db  96h ; ?
        db  11h ;
        db  79h ; y
        db  2Eh ; .
        db  9Ah ; ?
        db  11h ;
        db  78h ; x
        db  2Eh ; .
        db  9Eh ; ?
        db  11h ;
        db  77h ; w
        db  2Eh ; .
        db  1Bh ;
        db  11h ;
        db  88h ; ?
        db  2Eh ; .
        db  1Fh ;
        db  11h ;
        db  87h ; ?
        db  2Eh ; .
        db  23h ; #
        db  11h ;
        db  86h ; ?
        db  2Eh ; .
        db  27h ; '
        db  11h ;
        db  85h ; ?
        db  2Eh ; .
        db  2Bh ; +
        db  11h ;
        db  84h ; ?
        db  2Eh ; .
        db  2Fh ; /
        db  11h ;
        db  83h ; ?
        db  2Eh ; .
        db  33h ; 3
        db  11h ;
        db  82h ; ?
        db  2Eh ; .
        db  37h ; 7
        db  11h ;
        db  81h ; ?
        db  2Eh ; .
        db  3Bh ; ;
        db  11h ;
        db  80h ; ?
        db  2Eh ; .
        db 0C9h ; ?
        db  0Dh ;
        db  8Ch ; ?
        db  2Eh ; .
        db 0CBh ; ?
        db  0Dh ;
        db  8Ch ; ?
        db  2Eh ; .
        db 0CDh ; ?
        db  0Dh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  40h ; @
        db  12h ;
        db  5Ah ; Z
        db  8Dh ; ?
        db 0DAh ; ?
        db  11h ;
        db  23h ; #
        db  32h ; 2
        db 0BBh ; ?
        db  10h ;
        db  23h ; #
        db  32h ; 2
        db 0F2h ; ?
        db  11h ;
        db  25h ; %
        db  32h ; 2
        db 0FEh ; ?
        db  11h ;
        db  24h ; $
        db  32h ; 2
        db 0F7h ; ?
        db  10h ;
        db 0DBh ; ?
        db  2Dh ; -
        db 0E7h ; ?
        db  10h ;
        db    2 ;
        db  15h ;
        db 0FFh ;
        db  10h ;
        db    2 ;
        db  15h ;
        db  63h ; c
        db  12h ;
        db 0E1h ; ?
        db  71h ; q
        db 0B1h ; ?
        db  11h ;
        db 0B5h ; ?
        db  56h ; V
        db  43h ; C
        db  11h ;
        db 0B5h ; ?
        db  56h ; V
        db  47h ; G
        db  11h ;
        db 0B5h ; ?
        db  56h ; V
        db  91h ; ?
        db  10h ;
        db  23h ; #
        db  32h ; 2
        db 0BEh ; ?
        db  10h ;
        db  24h ; $
        db  32h ; 2
        db 0E3h ; ?
        db  10h ;
        db 0B0h ; ?
        db  56h ; V
        db 0FBh ; ?
        db  10h ;
        db 0B0h ; ?
        db  56h ; V
        db 0A0h ; ?
        db  10h ;
        db  54h ; T
        db  32h ; 2
        db  7Dh ; }
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  7Fh ; 
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  81h ; ?
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  83h ; ?
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  85h ; ?
        db  0Eh ;
        db 0AEh ; ?
        db  30h ; 0
        db  87h ; ?
        db  0Eh ;
        db 0AEh ; ?
        db  30h ; 0
        db  89h ; ?
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  8Bh ; ?
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  8Dh ; ?
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  8Fh ; ?
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  91h ; ?
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  93h ; ?
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  99h ; ?
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  3Fh ; ?
        db  11h ;
        db  7Dh ; }
        db  32h ; 2
        db  95h ; ?
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  97h ; ?
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  9Bh ; ?
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  71h ; q
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  73h ; s
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  75h ; u
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  77h ; w
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  79h ; y
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db 0F3h ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db 0F5h ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db 0FDh ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db 0FFh ;
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db    1 ;
        db  0Eh ;
        db 0FEh ; ?
        db  2Eh ; .
        db  94h ; ?
        db  12h ;
        db 0C7h ; ?
        db  3Ah ; :
        db  98h ; ?
        db  12h ;
        db  50h ; P
        db  3Ah ; :
        db 0A0h ; ?
        db  12h ;
        db  7Fh ; 
        db  3Eh ; >
        db  9Dh ; ?
        db  12h ;
        db  59h ; Y
        db  3Dh ; =
        db 0A4h ; ?
        db  12h ;
        db 0F0h ; ?
        db  41h ; A
        db 0A7h ; ?
        db  12h ;
        db  2Ah ; *
        db  43h ; C
        db 0AAh ; ?
        db  12h ;
        db  2Ah ; *
        db  43h ; C
        db 0B2h ; ?
        db  12h ;
        db 0B4h ; ?
        db  82h ; ?
        db 0B5h ; ?
        db  12h ;
        db  80h ; ?
        db 0E5h ; ?
        db  0Bh ;
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  0Dh ;
        db  0Eh ;
        db 0EEh ; ?
        db  2Fh ; /
        db  0Fh ;
        db  0Eh ;
        db 0AEh ; ?
        db  30h ; 0
        db  11h ;
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  13h ;
        db  0Eh ;
        db 0FEh ; ?
        db  2Eh ; .
        db  7Ah ; z
        db  11h ;
        db 0D2h ; ?
        db  9Dh ; ?
        db 0F8h ; ?
        db  11h ;
        db  43h ; C
        db  99h ; ?
        db  6Eh ; n
        db  11h ;
        db  89h ; ?
        db  37h ; 7
        db  73h ; s
        db  12h ;
        db  89h ; ?
        db  37h ; 7
        db  21h ; !
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db  23h ; #
        db  0Eh ;
        db  8Ch ; ?
        db  2Eh ; .
        db 0E7h ; ?
        db  0Dh ;
        db 0FEh ; ?
        db  2Eh ; .
        db  1Dh ;
        db  0Eh ;
        db 0EAh ; ?
        db  2Fh ; /
        db  7Bh ; {
        db  0Eh ;
        db 0FEh ; ?
        db  2Eh ; .

seg004      ends

        end
