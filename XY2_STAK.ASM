;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_STAK.ASM
; SEGMENT:   seg003 (STACK)
; ZONE:      Stack segment (2,816 bytes)
; LINES:     2818
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC word_FAAE, word_FAB0

; --- EXTRNs from seg000 ---
seg000      segment byte public 'CODE'
        EXTRN sub_421:NEAR
seg000      ends

seg003      segment byte stack 'STACK'

        db    0 ;
        db    0 ;
        db 0E8h ; ?
        db    3 ;
        dw 0Eh
        dw 1Ah
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
word_FAAE   dw 1Eh
word_FAB0   dw 78Eh
        dw 7AAh
        db 0C6h,7,0CAh,7,0CEh,7,0D2h,7,0
        db 0                ; EVEN (1 byte 00, stack alignment)
        db    4 ;
        db    0 ;
        db  70h ; p
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
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    4 ;
        db    0 ;
        db  1Ch ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    4 ;
        db    0 ;
        db  1Ch ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db    4 ;
        db    0 ;
        db    4 ;
        db    0 ;
        db    4 ;
        db    0 ;
        db    4 ;
        db    0 ;
        db    4 ;
        db    0 ;
        db    4 ;
        db    0 ;
        db    4 ;
        db    0 ;
        db    4 ;
        db    0 ;
        db    0 ;
        db    0 ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;
        db  53h ; S
        db  54h ; T
        db  41h ; A
        db  43h ; C
        db  4Bh ; K
        db  20h ;
        db  20h ;
        db  20h ;

seg003      ends

        end
