;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_SEG2.ASM
; SEGMENT:   seg002 (UNK)
; ZONE:      Unknown data block 2 (1,600 bytes)
; LINES:     1617
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC unk_F460

seg002      segment byte public 'UNK'
        assume cs:seg002
        assume es:nothing, ss:nothing, ds:nothing

unk_F460    db    0 ;
        db  40h ; @
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db 0F8h ; ?
        db 0FFh ;
        db 0ABh ; ?
        db  0Fh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  1Bh ;
        db  31h ; 1
        db  32h ; 2
        db  33h ; 3
        db  34h ; 4
        db  35h ; 5
        db  36h ; 6
        db  37h ; 7
        db  38h ; 8
        db  39h ; 9
        db  30h ; 0
        db  2Dh ; -
        db  3Dh ; =
        db    0 ;
        db    9 ;
        db  71h ; q
        db  77h ; w
        db  65h ; e
        db  72h ; r
        db  74h ; t
        db  79h ; y
        db  75h ; u
        db  69h ; i
        db  6Fh ; o
        db  70h ; p
        db  5Bh ; [
        db  5Dh ; ]
        db  0Dh ;
        db    0 ;
        db  61h ; a
        db  73h ; s
        db  64h ; d
        db  66h ; f
        db  67h ; g
        db  68h ; h
        db  6Ah ; j
        db  6Bh ; k
        db  6Ch ; l
        db  3Bh ; ;
        db  27h ; '
        db  60h ; `
        db    0 ;
        db  5Ch ; \
        db  7Ah ; z
        db  78h ; x
        db  63h ; c
        db  76h ; v
        db  62h ; b
        db  6Eh ; n
        db  6Dh ; m
        db    1 ;
        db  2Eh ; .
        db  2Fh ; /
        db    0 ;
        db  2Ah ; *
        db    0 ;
        db  20h ;
        db    0 ;
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
        db  2Dh ; -
        db  11h ;
        db    0 ;
        db  12h ;
        db  2Bh ; +
        db  13h ;
        db  14h ;
        db  15h ;
        db  16h ;
        db  17h ;
        db    4 ;
        db    0 ;
        db  2Ah ; *
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  2Ch ; ,
        db    0 ;
        db    4 ;
        db    0 ;
        db  6Ah ; j
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0EEh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  0Ah ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  6Eh ; n
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  60h ; `
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  96h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db    8 ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  52h ; R
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  9Ch ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F6h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  7Eh ; ~
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  66h ; f
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0B6h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  5Ah ; Z
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  62h ; b
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  50h ; P
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  54h ; T
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0AAh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F2h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0CEh ; ?
        db  80h ; ?
        db 0FCh ; ?
        db  8Bh ; ?
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db 0F8h ; ?
        db 0FFh ;
        db 0ABh ; ?
        db  0Fh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0AFh ; ?
        db    0 ;
        db    1 ;
        db    2 ;
        db    3 ;
        db    4 ;
        db    5 ;
        db    6 ;
        db    7 ;
        db  39h ; 9
        db    8 ;
        db  2Dh ; -
        db  3Dh ; =
        db  7Fh ; 
        db    9 ;
        db  11h ;
        db  17h ;
        db    5 ;
        db  12h ;
        db  14h ;
        db  19h ;
        db  15h ;
        db    9 ;
        db  0Fh ;
        db  10h ;
        db  1Bh ;
        db  1Dh ;
        db  0Ah ;
        db    0 ;
        db    1 ;
        db  13h ;
        db    4 ;
        db    6 ;
        db    7 ;
        db    8 ;
        db  0Ah ;
        db  0Bh ;
        db  0Ch ;
        db  3Bh ; ;
        db  27h ; '
        db  60h ; `
        db    0 ;
        db  1Ch ;
        db  7Ah ; z
        db  18h ;
        db    3 ;
        db  16h ;
        db    2 ;
        db  0Eh ;
        db  0Dh ;
        db  0Ah ;
        db  2Eh ; .
        db  2Fh ; /
        db    0 ;
        db  2Ah ; *
        db    0 ;
        db  20h ;
        db    0 ;
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
        db  2Dh ; -
        db  1Ah ;
        db    0 ;
        db  1Bh ;
        db  2Bh ; +
        db  1Ch ;
        db  1Dh ;
        db  1Eh ;
        db  1Fh ;
        db  20h ;
        db    4 ;
        db    0 ;
        db  82h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  84h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  86h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  88h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  8Ah ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  8Ch ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  8Eh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  90h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  80h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0A4h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  2Ch ; ,
        db    0 ;
        db    4 ;
        db    0 ;
        db  6Ah ; j
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0E4h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  0Ah ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  72h ; r
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  60h ; `
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  96h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0A0h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  5Ch ; \
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  9Ch ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  4Eh ; N
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F0h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  66h ; f
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  92h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  76h ; v
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  78h ; x
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  4Ch ; L
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  54h ; T
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  94h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F2h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0D2h ; ?
        db  80h ; ?
        db    0 ;
        db  40h ; @
        db    2 ;
        db 0C0h ; ?
        db  40h ; @
        db  20h ;
        db  0Ah ;
        db 0F8h ; ?
        db 0FFh ;
        db 0BBh ; ?
        db  0Fh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  1Bh ;
        db  31h ; 1
        db  32h ; 2
        db  33h ; 3
        db  34h ; 4
        db  35h ; 5
        db  36h ; 6
        db  37h ; 7
        db  38h ; 8
        db  39h ; 9
        db  30h ; 0
        db  2Dh ; -
        db  3Dh ; =
        db    0 ;
        db    9 ;
        db  71h ; q
        db    1 ;
        db  65h ; e
        db  72h ; r
        db  74h ; t
        db  79h ; y
        db  75h ; u
        db  69h ; i
        db  6Fh ; o
        db  70h ; p
        db  5Bh ; [
        db  5Dh ; ]
        db  0Dh ;
        db    0 ;
        db    2 ;
        db    3 ;
        db  64h ; d
        db  66h ; f
        db  67h ; g
        db  68h ; h
        db  6Ah ; j
        db  6Bh ; k
        db    4 ;
        db  3Bh ; ;
        db  27h ; '
        db  60h ; `
        db    0 ;
        db  5Ch ; \
        db  7Ah ; z
        db    5 ;
        db  63h ; c
        db  76h ; v
        db  62h ; b
        db    6 ;
        db  6Dh ; m
        db    7 ;
        db  2Eh ; .
        db  2Fh ; /
        db    0 ;
        db  2Ah ; *
        db    0 ;
        db  20h ;
        db    0 ;
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
        db  2Dh ; -
        db  17h ;
        db  18h ;
        db  19h ;
        db  2Bh ; +
        db  1Ah ;
        db  1Bh ;
        db  1Ch ;
        db  1Dh ;
        db  1Eh ;
        db    4 ;
        db    0 ;
        db  2Ah ; *
        db  81h ; ?
        db    4 ;
        db    0 ;
        db    6 ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db 0FAh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db    2 ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db 0FEh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db    4 ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db    0 ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  2Ch ; ,
        db    0 ;
        db    4 ;
        db    0 ;
        db  6Ah ; j
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0EEh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  0Ah ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  6Eh ; n
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  60h ; `
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  96h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db    8 ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  1Ch ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  9Ch ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F6h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0C8h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0CAh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0CCh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0C2h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0C4h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0C6h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0BCh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0BEh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0C0h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0BAh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  7Ah ; z
        db  80h ; ?
        db    0 ;
        db 0C0h ; ?
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  80h ; ?
        db 0F8h ; ?
        db  7Fh ; 
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0AEh ; ?
        db  21h ; !
        db  40h ; @
        db  23h ; #
        db  24h ; $
        db  25h ; %
        db  5Eh ; ^
        db  26h ; &
        db  2Ah ; *
        db  28h ; (
        db  29h ; )
        db  5Fh ; _
        db  2Bh ; +
        db    0 ;
        db    1 ;
        db  51h ; Q
        db  57h ; W
        db  45h ; E
        db  52h ; R
        db  54h ; T
        db  59h ; Y
        db  55h ; U
        db  49h ; I
        db  4Fh ; O
        db  50h ; P
        db  7Bh ; {
        db  7Dh ; }
        db  0Dh ;
        db    0 ;
        db  41h ; A
        db  53h ; S
        db  44h ; D
        db  46h ; F
        db  47h ; G
        db  48h ; H
        db  4Ah ; J
        db  4Bh ; K
        db  4Ch ; L
        db  3Ah ; :
        db  22h ; "
        db  7Eh ; ~
        db    0 ;
        db  7Ch ; |
        db  5Ah ; Z
        db  58h ; X
        db  43h ; C
        db  56h ; V
        db  42h ; B
        db  4Eh ; N
        db  4Dh ; M
        db  3Ch ; <
        db  3Eh ; >
        db  3Fh ; ?
        db    0 ;
        db    2 ;
        db    0 ;
        db  20h ;
        db    0 ;
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
        db  37h ; 7
        db  38h ; 8
        db  39h ; 9
        db  2Dh ; -
        db  34h ; 4
        db  35h ; 5
        db  36h ; 6
        db  2Bh ; +
        db  31h ; 1
        db  32h ; 2
        db  33h ; 3
        db  30h ; 0
        db  2Eh ; .
        db    4 ;
        db    0 ;
        db  2Ah ; *
        db  81h ; ?
        db    4 ;
        db    0 ;
        db 0B4h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0B0h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  68h ; h
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  48h ; H
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  0Ah ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  70h ; p
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  60h ; `
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  96h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Ch ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db 0DAh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  9Ch ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F6h ; ?
        db  80h ; ?
        db    0 ;
        db  40h ; @
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    8 ;
        db 0F8h ; ?
        db 0FFh ;
        db 0ABh ; ?
        db  0Fh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  1Bh ;
        db  31h ; 1
        db  32h ; 2
        db  33h ; 3
        db  34h ; 4
        db  35h ; 5
        db  36h ; 6
        db  37h ; 7
        db  38h ; 8
        db  39h ; 9
        db  30h ; 0
        db  2Dh ; -
        db  3Dh ; =
        db    0 ;
        db    9 ;
        db  51h ; Q
        db  57h ; W
        db  45h ; E
        db  52h ; R
        db  54h ; T
        db  59h ; Y
        db  55h ; U
        db  49h ; I
        db  4Fh ; O
        db  50h ; P
        db  5Bh ; [
        db  5Dh ; ]
        db  0Dh ;
        db    0 ;
        db  41h ; A
        db  53h ; S
        db  44h ; D
        db  46h ; F
        db  47h ; G
        db  48h ; H
        db  4Ah ; J
        db  4Bh ; K
        db  4Ch ; L
        db  3Bh ; ;
        db  27h ; '
        db  60h ; `
        db    0 ;
        db  5Ch ; \
        db  5Ah ; Z
        db  58h ; X
        db  43h ; C
        db  56h ; V
        db  42h ; B
        db  4Eh ; N
        db  4Dh ; M
        db    1 ;
        db  2Eh ; .
        db  2Fh ; /
        db    0 ;
        db  2Ah ; *
        db    0 ;
        db  20h ;
        db    0 ;
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
        db  2Dh ; -
        db  11h ;
        db    0 ;
        db  12h ;
        db  2Bh ; +
        db  13h ;
        db  14h ;
        db  15h ;
        db  16h ;
        db  17h ;
        db    4 ;
        db    0 ;
        db  2Ah ; *
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  2Ch ; ,
        db    0 ;
        db    4 ;
        db    0 ;
        db  6Ah ; j
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0EEh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  0Ah ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  6Eh ; n
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  60h ; `
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  96h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db    8 ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  52h ; R
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F4h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F6h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  7Eh ; ~
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  66h ; f
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0B6h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  5Ah ; Z
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  62h ; b
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  50h ; P
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  54h ; T
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0AAh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F2h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0CEh ; ?
        db  80h ; ?
        db    0 ;
        db 0C0h ; ?
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  80h ; ?
        db 0F8h ; ?
        db  7Fh ; 
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db 0AEh ; ?
        db  21h ; !
        db  40h ; @
        db  23h ; #
        db  24h ; $
        db  25h ; %
        db  5Eh ; ^
        db  26h ; &
        db  2Ah ; *
        db  28h ; (
        db  29h ; )
        db  5Fh ; _
        db  2Bh ; +
        db    0 ;
        db    1 ;
        db  71h ; q
        db  77h ; w
        db  65h ; e
        db  72h ; r
        db  74h ; t
        db  79h ; y
        db  75h ; u
        db  69h ; i
        db  6Fh ; o
        db  70h ; p
        db  7Bh ; {
        db  7Dh ; }
        db  0Dh ;
        db    0 ;
        db  61h ; a
        db  73h ; s
        db  64h ; d
        db  66h ; f
        db  67h ; g
        db  68h ; h
        db  6Ah ; j
        db  6Bh ; k
        db  6Ch ; l
        db  3Ah ; :
        db  22h ; "
        db  7Eh ; ~
        db    0 ;
        db  7Ch ; |
        db  7Ah ; z
        db  78h ; x
        db  63h ; c
        db  76h ; v
        db  62h ; b
        db  6Eh ; n
        db  6Dh ; m
        db  3Ch ; <
        db  3Eh ; >
        db  3Fh ; ?
        db    0 ;
        db    2 ;
        db    0 ;
        db  20h ;
        db    0 ;
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
        db  37h ; 7
        db  38h ; 8
        db  39h ; 9
        db  2Dh ; -
        db  34h ; 4
        db  35h ; 5
        db  36h ; 6
        db  2Bh ; +
        db  31h ; 1
        db  32h ; 2
        db  33h ; 3
        db  30h ; 0
        db  2Eh ; .
        db    4 ;
        db    0 ;
        db  2Ah ; *
        db  81h ; ?
        db    4 ;
        db    0 ;
        db 0B4h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0B0h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  68h ; h
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  48h ; H
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  0Ah ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  70h ; p
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db  60h ; `
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  96h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Ch ;
        db  81h ; ?
        db    4 ;
        db    0 ;
        db 0DAh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  9Ch ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F6h ; ?
        db  80h ; ?
        db 0FCh ; ?
        db  6Fh ; o
        db 0FFh ;
        db 0C3h ; ?
        db  7Fh ; 
        db 0F0h ; ?
        db  0Fh ;
        db 0F8h ; ?
        db 0FFh ;
        db 0EFh ; ?
        db  0Fh ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  1Bh ;
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
        db  2Dh ; -
        db  0Ah ;
        db  0Bh ;
        db    9 ;
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
        db  5Bh ; [
        db  5Dh ; ]
        db  0Dh ;
        db    0 ;
        db  16h ;
        db  17h ;
        db  18h ;
        db  19h ;
        db  1Ah ;
        db  1Bh ;
        db  1Ch ;
        db  1Dh ;
        db  1Eh ;
        db  3Bh ; ;
        db  27h ; '
        db  60h ; `
        db    0 ;
        db  5Ch ; \
        db  1Fh ;
        db  20h ;
        db  21h ; !
        db  22h ; "
        db  23h ; #
        db  24h ; $
        db  25h ; %
        db  26h ; &
        db  2Eh ; .
        db  2Fh ; /
        db    0 ;
        db  2Ah ; *
        db    0 ;
        db  20h ;
        db    0 ;
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
        db    0 ;
        db  38h ; 8
        db  39h ; 9
        db  3Ah ; :
        db  3Bh ; ;
        db  3Ch ; <
        db  3Dh ; =
        db  3Eh ; >
        db    4 ;
        db    0 ;
        db    2 ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db    4 ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db    6 ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db    8 ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  0Ah ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  0Ch ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  0Eh ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  10h ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  12h ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db    0 ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  0Ch ;
        db  81h ; ?
        db    6 ;
        db    0 ;
        db 0B8h ; ?
        db  80h ; ?
        db 0DCh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  34h ; 4
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  40h ; @
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Ch ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  36h ; 6
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  3Ah ; :
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  44h ; D
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  3Ch ; <
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  24h ; $
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  30h ; 0
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  32h ; 2
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  14h ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  38h ; 8
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Ah ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  1Eh ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  20h ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  22h ; "
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  26h ; &
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  28h ; (
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  2Ah ; *
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  46h ; F
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  42h ; B
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  18h ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  3Eh ; >
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  16h ;
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  2Eh ; .
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  2Ch ; ,
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  2Ch ; ,
        db    0 ;
        db    4 ;
        db    0 ;
        db  68h ; h
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0DEh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F8h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  74h ; t
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0D4h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0D0h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  60h ; `
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  96h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0E0h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  4Ah ; J
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  9Ch ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0F6h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  7Eh ; ~
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  66h ; f
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  26h ; &
        db  81h ; ?
        db    4 ;
        db    0 ;
        db 0ECh ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0B8h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0A6h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0E6h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  50h ; P
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  54h ; T
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  24h ; $
        db  81h ; ?
        db    4 ;
        db    0 ;
        db 0F2h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0DCh ; ?
        db  80h ; ?
        db 0F8h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  74h ; t
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0D4h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db 0D0h ; ?
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  60h ; `
        db  80h ; ?
        db    4 ;
        db    0 ;
        db  96h ; ?
        db  80h ; ?
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;

seg002      ends

        end
