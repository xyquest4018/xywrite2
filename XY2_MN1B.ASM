;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_MN1B.ASM
; SEGMENT:   seg000 (CODE)
; ZONE:      Gap -- Non-relocating code, part 2
; LINES:     4027
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC byte_321D, loc_220D, loc_2C49, sub_2117, sub_2160, sub_2166
        PUBLIC sub_2196, sub_21ED, sub_21F8, sub_2214, sub_2260, sub_2262
        PUBLIC sub_2503, sub_254D, sub_27D3, sub_27F5, sub_2802, sub_2836
        PUBLIC sub_2875, sub_28F7, sub_29CE, sub_2A9F, sub_2AAA, sub_2AE7
        PUBLIC sub_2AEA, sub_2B87, sub_2B8B, sub_2B8E, sub_2C4C, sub_2D90
        PUBLIC sub_2E22, sub_2EBC, sub_2EDC, sub_2F61, sub_3130, sub_3264
        PUBLIC sub_3450, sub_3457, sub_34D7, sub_383B

seg000      segment byte public 'CODE'
        assume cs:seg000




; --- NEAR EXTRNs (same segment) ---
        EXTRN loc_989E:NEAR
        EXTRN sub_1270:NEAR
        EXTRN sub_13F7:NEAR
        EXTRN sub_16A7:NEAR
        EXTRN sub_1992:NEAR
        EXTRN sub_1AFC:NEAR
        EXTRN sub_1B54:NEAR
        EXTRN sub_1C25:NEAR
        EXTRN sub_1F34:NEAR
        EXTRN sub_1FD2:NEAR
        EXTRN sub_20F3:NEAR
        EXTRN sub_3D15:NEAR
        EXTRN sub_421:NEAR
        EXTRN sub_47C4:NEAR
        EXTRN sub_4ED:NEAR
        EXTRN sub_5865:NEAR
        EXTRN sub_6709:NEAR
        EXTRN sub_6736:NEAR
        EXTRN sub_6801:NEAR
        EXTRN sub_6E0A:NEAR
        EXTRN sub_6FE3:NEAR
        EXTRN sub_7018:NEAR
        EXTRN sub_705B:NEAR
        EXTRN sub_7219:NEAR
        EXTRN sub_7368:NEAR
        EXTRN sub_73F0:NEAR
        EXTRN sub_764:NEAR
        EXTRN sub_769:NEAR
        EXTRN sub_782:NEAR
        EXTRN sub_787:NEAR
        EXTRN sub_813A:NEAR
        EXTRN sub_83E2:NEAR
        EXTRN sub_847F:NEAR
        EXTRN sub_8574:NEAR
        EXTRN sub_8615:NEAR
        EXTRN sub_8683:NEAR
        EXTRN sub_86A8:NEAR
        EXTRN sub_8A92:NEAR
        EXTRN sub_8E7A:NEAR
        EXTRN sub_8F07:NEAR
        EXTRN sub_A07B:NEAR
        EXTRN sub_A54E:NEAR
        EXTRN sub_A5D3:NEAR
        EXTRN sub_AA8:NEAR
        EXTRN sub_BD37:NEAR
        EXTRN sub_BD6E:NEAR
        EXTRN sub_BF90:NEAR
        EXTRN sub_CB4F:NEAR
        EXTRN sub_CB6A:NEAR
        EXTRN sub_CCA1:NEAR
        EXTRN sub_CCAF:NEAR
        EXTRN sub_CF5B:NEAR
        EXTRN sub_CF98:NEAR
        EXTRN sub_D02B:NEAR
        EXTRN sub_D099:NEAR
        EXTRN sub_D0CE:NEAR
        EXTRN sub_D157:NEAR
        EXTRN sub_D19C:NEAR
        EXTRN sub_D4BA:NEAR
        EXTRN sub_D4E9:NEAR
        EXTRN sub_D783:NEAR
        EXTRN sub_D7FE:NEAR
        EXTRN sub_EE6C:NEAR
        EXTRN sub_EE7F:NEAR
        EXTRN sub_F04F:NEAR
        EXTRN sub_F078:NEAR
        EXTRN sub_F205:NEAR
        EXTRN sub_F26A:NEAR
        EXTRN word_7A7:WORD

; ---------- S U B  R O U T I N E --------------------------


sub_2117        proc near
        mov        word ptr ds:8, 4
        test        word ptr ds:0, 1
        jnz        loc_212A
        dec        byte ptr ds:5
        ret
; --------------------------------------------------

loc_212A:
        mov        byte ptr ds:4, 2
        ret
sub_2117        endp

; --------------------------------------------------
        test        word ptr ds:0, 1
        jnz        sub_20F3
        call        sub_214A
        cmp        al, ds:4
        jz        sub_20F3
        jmp        short sub_2196
; --------------------------------------------------
        db 90h              ; EVEN (1 byte NOP)
        call        sub_214A
        jmp        short sub_2196
; --------------------------------------------------
        db 90h              ; EVEN -> sub_214A (1 byte NOP)
; ---------- S U B  R O U T I N E --------------------------


sub_214A        proc near
        test        word ptr ds:0, 1
        jnz        locret_215F
        push        word ptr ds:4
        xor        ax, ax
        mov        ds:4, al
        call        sub_28F7
        pop        ax

locret_215F:
        ret
sub_214A        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2160        proc near
        call        sub_2166
        jmp        short sub_2196
sub_2160        endp

; --------------------------------------------------
        db 90h              ; EVEN -> sub_2166 (1 byte NOP)
; ---------- S U B  R O U T I N E --------------------------


sub_2166        proc near
        mov        word ptr ds:8, 8
        test        word ptr ds:0, 1
        jnz        loc_2179
        inc        byte ptr ds:5
        ret
; --------------------------------------------------

loc_2179:
        mov        cl, ds:0Ah
        xor        ch, ch
        mov        di, cx
        dec        di
        shl        di, 1
        std
        mov        al, 20h        ; ' '
        call        sub_787
        mov        bx, di
        add        bx, 4
        sar        bx, 1
        mov        ds:4, bl
        ret
sub_2166        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2196        proc near
        call        sub_28F7
        test        word ptr ds:0, 1
        jnz        locret_21EC
        mov        ax, ds:66h
        cmp        ds:0C2h, ax
        jb        loc_21B0
        mov        ds:0C2h, ax
        call        sub_2AEA

loc_21B0:
        call        sub_21F8
        test        word ptr ds:0, 10h
        jz        locret_21EC
        test        word ptr ds:0, 1
        jnz        locret_21EC
        mov        bl, ds:5
        xor        bh, bh
        db 81h, 0EBh, 3, 0  ; sub        bx, 3
        shl        bx, 1
        xor        ax, ax
        mov        [bx+2754h], ax
        add        bx, 2
        test        word ptr ds:8, 4
        jnz        loc_21E5
        sub        bx, 4
        jle        loc_21E9

loc_21E5:
        mov        [bx+2754h], ax

loc_21E9:
        call        sub_EE7F

locret_21EC:
        ret
sub_2196        endp


; ---------- S U B  R O U T I N E --------------------------


sub_21ED        proc near
        test        word ptr ds:0, 1
        jnz        locret_2213
        call        sub_2AEA
sub_21ED        endp


; ---------- S U B  R O U T I N E --------------------------


sub_21F8        proc near
        mov        si, ds:0C2h
        test        word ptr ds:0, 2000h
        jnz        loc_220D
        push        ax
        mov        ax, ds:971h
        cmp        [si], al
        pop        ax
        jnz        locret_2213

loc_220D:
        call        sub_27F5
        call        sub_EE7F

locret_2213:
        ret
sub_21F8        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2214        proc near
        cmp        word ptr ds:0C2h, 0FFFFh
        jz        loc_2224
        cmp        byte ptr ds:4, 0FFh
        jz        loc_2224
        jmp        short loc_2252
; --------------------------------------------------

loc_2224:
        mov        ds:0C2h, si
        push        bx
        mov        bx, di
        sub        bx, ds:1A06h
        shr        bx, 1
        cmp        byte ptr ds:4, 0FFh
        jz        loc_223F
        cmp        byte ptr ds:0D60h, 0
        jnz        loc_2243

loc_223F:
        mov        ds:4, bl

loc_2243:
        sub        bl, ds:4
        jbe        loc_224B
        xor        bl, bl

loc_224B:
        neg        bl
        mov        ds:6, bl
        pop        bx

loc_2252:
        mov        word ptr ds:19F0h, 0
        mov        word ptr ds:19F6h, 0
        ret
sub_2214        endp

; --------------------------------------------------
        db 0                ; EVEN -> sub_2260 (1 byte 00)
; ---------- S U B  R O U T I N E --------------------------


sub_2260        proc near
        sar        ax, 1
sub_2260        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2262        proc near
        test        word ptr ds:2, 1
        jz        loc_2272
        cmp        al, 9
        jnz        loc_2272
        call        sub_1B54
        ret
; --------------------------------------------------

loc_2272:
        mov        ah, ds:96Dh
        call        sub_26D0
        jb        loc_227E
        ret
; --------------------------------------------------

loc_227C:
        pop        ax
        ret
; --------------------------------------------------

loc_227E:
        mov        word ptr ds:934h, 1
        push        ax
        cmp        byte ptr ds:0D4h, 0
        jz        loc_22F3
        mov        si, ds:0C2h
        mov        bl, [si]
        or        bl, bl
        jz        loc_22F3
        call        sub_6801
        mov        al, ds:0D4h
        cmp        al, ds:21Ah
        jz        loc_22F3
        mov        si, ds:0C2h
        dec        si
        std
        lodsb
        xor        ah, ah
        cmp        ax, ds:973h
        jnz        loc_22D0
        call        sub_705B
        jb        loc_22D0
        mov        ax, [si+2]
        call        sub_BF90
        xchg        ah, al
        call        sub_BF90
        xchg        ah, al
        cmp        ax, ds:0DF7h
        jnz        loc_22D0
        inc        si
        mov        ds:0C2h, si
        jmp        short loc_22DC
; --------------------------------------------------

loc_22D0:
        mov        al, ds:21Ah
        call        sub_3130
        jb        loc_227C
        sub        ds:0C2h, ax

loc_22DC:
        mov        si, ds:0C2h
        dec        si
        call        sub_6801
        inc        si
        mov        al, ds:0D4h
        cmp        al, ds:21Ah
        jz        loc_22F3
        call        sub_3130
        jb        loc_227C

loc_22F3:
        call        sub_2875
        pop        ax
sub_2262        endp


; ---------- S U B  R O U T I N E --------------------------


sub_22F7        proc near
        mov        si, ds:0C2h
        test        word ptr ds:0, 100h
        jz        loc_2343
        push        ax
        std
        call        sub_2836

loc_2308:
        dec        si

loc_2309:
        std
        cmp        si, ds:0C0h
        jb        loc_233F
        lodsb
        cmp        al, 20h        ; ' '
        jz        loc_2309
        cmp        al, 9
        jz        loc_2309
        cmp        al, 2Eh        ; '.'
        jz        loc_233F
        cmp        al, 21h        ; '!'
        jz        loc_233F
        cmp        al, 3Fh        ; '?'
        jz        loc_233F
        cmp        al, 0Ah
        jz        loc_233F
        inc        si
        inc        si
        xor        ah, ah
        cmp        ax, ds:973h
        jnz        loc_233C
        push        si
        call        sub_2836
        pop        ax
        cmp        ax, si
        jnz        loc_2308

loc_233C:
        pop        ax
        jmp        short loc_2343
; --------------------------------------------------

loc_233F:
        pop        ax
        call        sub_BF90

loc_2343:
        mov        si, ds:0C2h
        call        sub_24C0
        jnb        loc_23C2
        mov        bx, 0FFh
        cmp        [si], bl
        jnz        loc_2364
        push        ax
        push        si
        mov        ax, si
        mov        cx, ax
        add        cx, 2
        call        sub_2540
        pop        si
        pop        ax
        jmp        loc_243B
; --------------------------------------------------

loc_2364:
        mov        bx, ds:971h
        cmp        [si], bl
        jnz        loc_23B0
        push        ax
        push        word ptr ds:0C2h
        pop        word ptr ds:0D72h

loc_2375:
        call        sub_7018
        jb        loc_2388
        mov        ds:0C2h, cx
        mov        si, cx
        mov        bx, ds:971h
        cmp        [si], bl
        jz        loc_2375

loc_2388:
        mov        cx, ds:0D72h
        xchg        cx, ds:0C2h
        pop        ax
        cmp        cx, ds:0C2h
        jbe        loc_23B0
        mov        di, cx
        mov        si, cx
        call        sub_24C0
        mov        si, ds:0C2h
        jnb        loc_23C2
        sub        cx, si
        add        si, cx
        dec        si
        std
        push        es
        push        ds
        pop        es
        assume es:nothing
        repe movsb
        pop        es
        assume es:nothing

loc_23B0:
        mov        si, ds:0C2h
        mov        bl, [si]
        or        bl, bl
        jnz        loc_23BF
        call        sub_2516
        jmp        short loc_2343
; --------------------------------------------------

loc_23BF:
        jmp        short loc_243B
; --------------------------------------------------
        db 90h              ; EVEN -> loc_23C2 (1 byte NOP)
loc_23C2:
        cmp        si, ds:66h
        jnb        loc_23CE
        mov        bl, [si]
        or        bl, bl
        jz        loc_243B

loc_23CE:
        mov        cx, ds:66h
        add        cx, ds:0D70h
        jb        loc_23E4
        cmp        cx, ds:8F8h
        jnb        loc_23E4
        cmp        cx, ds:0C8h
        jb        loc_23F5

loc_23E4:
        push        ax
        call        sub_D0CE
        pop        ax
        jb        loc_23EE
        jmp        loc_2343
; --------------------------------------------------

loc_23EE:
        mov        ax, 6
        call        sub_CB4F
        ret
; --------------------------------------------------

loc_23F5:
        push        ax
        push        si
        push        word ptr ds:0Eh
        push        word ptr ds:64h
        call        sub_F205
        push        word ptr [bx+2754h]
        push        bx
        mov        cx, si
        mov        ax, si
        add        ax, ds:0D70h
        call        sub_D7FE
        pop        bx
        pop        word ptr [bx+2754h]
        pop        word ptr ds:64h
        pop        ax
        pop        si
        cmp        ax, si
        jnz        loc_2425
        mov        ds:0Eh,        si

loc_2425:
        push        cx
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        di, si
        mov        cx, ds:0D70h
        xor        ax, ax
        cld
        repe stosb
        pop        es
        assume es:nothing
        pop        cx
        mov        ds:0C2h, si
        pop        ax

loc_243B:
        mov        [si], al
        mov        bl, ds:5
        xor        bh, bh
        db 81h, 0EBh, 3, 0  ; sub        bx, 3
        shl        bx, 1
        cmp        al, 0Dh
        jnz        loc_2461
        inc        si
        xor        ax, ax

loc_2450:
        mov        [bx+2754h], ax
        add        bx, 2
        cmp        bx, 32h        ; '2'
        jb        loc_2450
        mov        al, 0Ah
        jmp        loc_23C2
; --------------------------------------------------

loc_2461:
        mov        bx, 18F0h
        xlat
        or        al, al
        jz        loc_24B9
        inc        si
        push        word ptr ds:0C2h
        mov        ds:0C2h, si
        call        sub_F205
        jb        loc_24B4
        dec        ax
        cmp        ax, [bx+2754h]
        jbe        loc_24B4
        test        word ptr ds:0, 2000h
        jnz        loc_24B4
        push        bx
        mov        byte ptr ds:4, 0FFh
        call        sub_F04F
        call        sub_29CE
        call        sub_F205
        pop        ax
        pop        dx
        jnb        loc_24A5
        or        bx, bx
        jz        loc_24B5
        mov        ax, ds:2756h
        mov        ds:64h,        ax
        jmp        short loc_24B5
; --------------------------------------------------

loc_24A5:
        mov        cx, dx
        inc        cx
        cmp        cx, ds:0C2h
        jnz        loc_24B5
        cmp        ax, bx
        jnz        loc_24B5
        clc
        ret
; --------------------------------------------------

loc_24B4:
                        ; sub_22F7+185j ...
        pop        dx

loc_24B5:
                        ; sub_22F7+1ACj ...
        mov        ds:0C2h, dx

loc_24B9:
        call        sub_EE7F
        call        sub_1F34
        ret
sub_22F7        endp ; sp =  2


; ---------- S U B  R O U T I N E --------------------------


sub_24C0        proc near
        mov        bl, [si]
        cmp        bl, 0Dh
        jz        locret_2502
        xor        bh, bh
        cmp        bx, 1Ah
        jz        locret_2502
        cmp        si, ds:66h
        jnb        locret_2502
        test        word ptr ds:0, 2
        jnz        locret_2502
        cmp        bl, 0
        jnz        loc_2501
        push        ax
        push        cx
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        di, si
        mov        cx, ds:0D70h
        xor        ax, ax
        cld
        repe scasb
        mov        bl, [di-1]
        pop        es
        assume es:nothing
        pop        cx
        pop        ax
        cmp        bl, 0Dh
        jz        locret_2502
        cmp        bx, 1Ah
        jz        locret_2502

loc_2501:
        stc

locret_2502:
        ret
sub_24C0        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2503        proc near
        test        word ptr ds:0, 4
        jnz        locret_2515
        push        ax
        push        si
        call        sub_2516
        call        sub_27F5
        pop        si
        pop        ax

locret_2515:
        ret
sub_2503        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2516        proc near
        push        ax
        push        si
        mov        di, ds:0C2h
        mov        cx, ds:66h
        inc        cx
        cmp        di, ds:0C0h
        jb        loc_253D
        cld
        sub        cx, di
        jbe        loc_253D
        xor        ax, ax
        push        es
        push        ds
        pop        es
        assume es:nothing
        repe scasb
        pop        es
        assume es:nothing
        dec        di
        mov        ax, ds:0C2h
        mov        cx, di
        call        sub_2540

loc_253D:
        pop        si
        pop        ax
        ret
sub_2516        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2540        proc near
        mov        bx, cx
        sub        bx, ax
        jbe        locret_2549
        call        sub_D7FE

locret_2549:
        ret
sub_2540        endp

; --------------------------------------------------

loc_254A:
        jmp        short loc_25C2
; --------------------------------------------------
        db 90h

; ---------- S U B  R O U T I N E --------------------------


sub_254D        proc near
        test        word ptr ds:0, 1
        jz        loc_254A
        mov        cl, ds:0Ah
        sub        cl, ds:4
        xor        ch, ch
        mov        al, ds:4
        cbw
        shl        al, 1
        mov        si, ax
        mov        di, ax
        add        si, 2
        cmp        cx, 0
        jle        loc_2581
        push        ds
        push        es
        pop        ds
        cld
        call        sub_782
        pop        ds
        assume ds:nothing
        mov        al, ds:0Ah
        cbw
        mov        di, ax
        shl        di, 1

loc_2581:
        mov        ax, 20h        ; ' '
        mov        ah, ds:96Dh
        call        sub_764
        ret
; --------------------------------------------------

loc_258C:
        mov        si, ds:0C2h
        lodsb
        cmp        al, 0Dh
        jz        loc_25C0
        call        sub_26A0
        jb        loc_25D0
        cmp        byte ptr [si-1], 0Dh
        jz        loc_25D0
        dec        si
        mov        cx, si
        mov        di, ds:0C2h
        mov        si, di
        inc        si
        cld
        sub        cx, si
        jz        loc_25B7
        jb        loc_25BA
        push        es
        push        ds
        pop        es
        assume es:nothing
        repe movsb
        pop        es
        assume es:nothing

loc_25B7:
        mov        byte ptr [di], 20h ; ' '

loc_25BA:
        call        sub_EE7F
        call        sub_2AEA

loc_25C0:
        clc
        ret
; --------------------------------------------------

loc_25C2:
        mov        word ptr ds:934h, 1
        test        word ptr ds:2, 1
        jnz        loc_258C

loc_25D0:
        call        sub_6FE3
        mov        cx, ds:66h
        mov        ax, ds:0C2h
        cmp        ax, cx
        jnb        loc_264E
        mov        cx, ax
        inc        cx
        mov        bx, ax
        mov        dl, [bx]
        xor        dh, dh
        cmp        dx, 1Ah
        jz        loc_264E
        cmp        dx, 0FFh
        jnz        loc_25F6
        inc        cx
        inc        cx
        jmp        short loc_2601
; --------------------------------------------------

loc_25F6:
        mov        bx, [bx]
        cmp        bx, 0A0Dh
        jnz        loc_2601
        inc        cx
        jmp        short loc_2620
; --------------------------------------------------

loc_2601:
        cmp        word ptr ds:15Fh, 1
        jb        loc_2620
        xor        bh, bh
        cmp        bx, ds:971h
        jnz        loc_2620
        call        sub_7018
        mov        bx, 0A0Dh
        jnb        loc_2620
        xor        bx, bx
        mov        ax, ds:0C2h
        mov        cx, ax
        inc        cx

loc_2620:
        push        bx
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        di, ax
        sub        cx, ax
        xor        ax, ax
        cld
        repe stosb
        pop        es
        assume es:nothing
        pop        bx
        cmp        bx, 0A0Dh
        jz        loc_2652
        mov        ax, ds:0C2h
        cmp        ax, ds:66h
        jb        loc_2648
        mov        ax, 0A20h
        xor        bx, bx
        mov        cx, 1
        int        10h                ; - VIDEO - WRITE CHARACTERS ONLY AT CURSOR POSITION
                        ; AL = character, BH = display page - alpha mode
                        ; BL = color of        character (graphics mode, PCjr only)
                        ; CX = number of times to write        character

loc_2648:
        call        sub_EE7F

loc_264B:
        call        sub_2AEA

loc_264E:
        call        sub_2732
        ret
; --------------------------------------------------

loc_2652:
        call        sub_EE6C
        jmp        short loc_264B
sub_254D        endp

; --------------------------------------------------

loc_2657:
        call        sub_26A0
        jb        loc_2662
        cmp        byte ptr [si-1], 0Dh
        jnz        loc_266A

loc_2662:
        call        sub_22F7
        call        sub_2503
        clc
        ret
; --------------------------------------------------

loc_266A:
        test        word ptr ds:0, 2
        jz        loc_2688
        dec        si
        dec        si
        mov        di, si
        mov        cx, di
        sub        cx, ds:0C2h
        jb        loc_2698
        jz        loc_2688
        dec        si
        std
        push        es
        push        ds
        pop        es
        assume es:nothing
        repe movsb
        pop        es
        assume es:nothing

loc_2688:
        mov        si, ds:0C2h
        mov        bl, [si]
        xor        bh, bh
        cmp        bx, ds:971h
        jz        loc_2698
        mov        [si], al

loc_2698:
        call        sub_EE7F
        call        sub_1F34
        clc
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_26A0        proc near
        mov        si, ds:0C2h
        mov        cx, ds:66h
        sub        cx, si
        mov        bx, ds:971h
        mov        bh, 0Dh
        cld
        push        ax

loc_26B2:
        lodsb
        cmp        al, bl
        jz        loc_26C4
        cmp        al, bh
        jz        loc_26C4
        loop        loc_26B2
        call        sub_D4E9
        pop        ax
        jnb        sub_26A0
        ret
; --------------------------------------------------

loc_26C4:
        pop        ax
        ret
sub_26A0        endp

; --------------------------------------------------

loc_26C6:
        test        word ptr ds:2, 1
        jnz        loc_2657
        stc
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_26D0        proc near
        test        word ptr ds:0, 1
        jz        loc_26C6
        push        ax
        test        word ptr ds:0, 2
        jz        loc_2704
        mov        cl, ds:0Ah
        sub        cl, ds:4
        xor        ch, ch
        mov        al, ds:4
        cbw
        shl        ax, 1
        add        ax, cx
        add        ax, cx
        mov        si, ax
        mov        di, ax
        sub        si, 2
        push        ds
        push        es
        pop        ds
        assume ds:nothing
        std
        call        sub_782
        pop        ds
        assume ds:nothing

loc_2704:
        call        sub_28F7
        pop        ax
        xor        bx, bx
        mov        bl, ah
        mov        ah, 9
        mov        cx, 1
        int        10h                ; - VIDEO - WRITE ATTRIBUTES/CHARACTERS        AT CURSOR POSITION
                        ; AL = character, BH = display page
                        ; BL = attributes of character (alpha modes) or        color (graphics        modes)
                        ; CX = number of times to write        character
        mov        al, ds:4
        cmp        al, ds:0Ah
        jb        loc_2721
        sub        byte ptr ds:4, 1

loc_2721:
        add        byte ptr ds:4, 1
        call        sub_28F7
        clc
        ret
sub_26D0        endp

; --------------------------------------------------

loc_272B:
        call        sub_2516
        call        sub_27F5

locret_2731:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_2732        proc near
                        ; sub_2732+9Ej
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp        word ptr ds:15Fh, 1
        jb        locret_2731
        mov        di, ds:0C2h
        xor        ax, ax
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        cx, ds:66h
        sub        cx, di
        inc        cx
        cld
        repe scasb
        dec        di
        mov        al, [di]
        mov        si, di
        pop        es
        assume es:nothing
        cmp        ax, ds:971h
        jnz        locret_2731
        call        sub_27D3
        jb        locret_2731
        mov        si, ds:0C2h
        mov        al, [si-1]
        cmp        ax, ds:973h
        jnz        loc_272B
        dec        si
        dec        si
        call        sub_705B
        jb        loc_272B
        inc        si
        call        sub_27D3
        jb        loc_272B
        mov        ax, si
        mov        cx, ds:0C2h
        call        sub_2540
        call        sub_EE7F
        mov        si, ds:0C2h
        dec        si
        call        sub_6801
        cld
        mov        di, ds:0C2h
        xor        ax, ax
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        cx, ds:66h
        sub        cx, di
        cld
        repe scasb
        pop        es
        assume es:nothing
        mov        si, di
        add        si, 2

loc_27A5:
        lodsb
        cmp        al, 20h        ; ' '
        jz        loc_27A5
        dec        si
        mov        bx, si
        lodsw
        call        sub_47C4
        jnb        loc_27B6
        call        sub_CF5B

loc_27B6:
        cmp        al, ds:21Ah
        jnz        loc_27D0
        lodsb
        xor        ah, ah
        cmp        ax, ds:973h
        jnz        loc_27D0
        mov        cx, si
        mov        ax, ds:0C2h
        call        sub_2540
        call        sub_EE7F

loc_27D0:
        jmp        sub_2732
sub_2732        endp


; ---------- S U B  R O U T I N E --------------------------


sub_27D3        proc near
        push        ax
        mov        ax, si
        add        ax, 4
        cmp        ax, ds:66h
        jnb        loc_27F2
        mov        ax, [si+1]
        call        sub_BF90
        xchg        ah, al
        call        sub_BF90
        xchg        ah, al
        cmp        ax, ds:0DF7h
        jz        loc_27F3

loc_27F2:
        stc

loc_27F3:
        pop        ax
        ret
sub_27D3        endp


; ---------- S U B  R O U T I N E --------------------------


sub_27F5        proc near
        mov        si, ds:0C2h
        call        sub_2802
        mov        ds:0C2h, si
        ret
sub_27F5        endp

; --------------------------------------------------

loc_2801:
        pop        ax

; ---------- S U B  R O U T I N E --------------------------


sub_2802        proc near
        cld
        push        si
        lodsb
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp        word ptr ds:15Fh, 1
        jb        loc_2834
        xor        ah, ah
        cmp        ax, ds:971h
        jnz        loc_2834
        lodsw
        call        sub_BF90
        xchg        ah, al
        call        sub_BF90
        xchg        ah, al
        cmp        ax, ds:0DF7h
        jnz        loc_2834
        xor        ah, ah
        mov        cx, 0Ah

loc_282B:
        lodsb
        cmp        ax, ds:973h
        jz        loc_2801
        loop        loc_282B

loc_2834:
        pop        si
        ret
sub_2802        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2836        proc near
        std
        push        si
        dec        si
        lodsb
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp        word ptr ds:15Fh, 1
        jb        loc_2834
        xor        ah, ah
        cmp        ax, ds:973h
        jnz        loc_2834
        mov        cx, 0Ah

loc_284D:
        lodsb
        cmp        ax, ds:971h
        jz        loc_285E
        cmp        ax, ds:973h
        jz        loc_2834
        loop        loc_284D
        jmp        short loc_2834
; --------------------------------------------------

loc_285E:
        inc        si
        mov        ax, [si+1]
        call        sub_BF90
        xchg        ah, al
        call        sub_BF90
        xchg        ah, al
        cmp        ax, ds:0DF7h
        jnz        loc_2834
        pop        ax
        jmp        short sub_2836
sub_2836        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2875        proc near
        mov        ax, ds:6
        or        ax, ax
        ja        loc_287D
        ret
; --------------------------------------------------

loc_287D:
        mov        cx, ds:66h
        add        cx, ax
        jb        loc_28AF
        cmp        cx, ds:8F8h
        jnb        loc_28AF
        cmp        cx, ds:0C8h
        jnb        loc_28AF
        mov        cx, ds:0C2h
        push        ax
        push        cx
        add        ax, cx
        call        sub_D7FE
        pop        di
        pop        cx
        mov        ax, 20h        ; ' '
        push        es
        push        ds
        pop        es
        assume es:nothing
        cld
        repe stosb
        mov        word ptr ds:6, 0
        pop        es
        assume es:nothing
        ret
; --------------------------------------------------

loc_28AF:
        call        sub_D0CE
        jnb        loc_287D
        ret
sub_2875        endp

; --------------------------------------------------

loc_28B5:
        test        word ptr ds:0, 1
        jnz        loc_28CD
        mov        si, ds:0C2h
        cmp        si, ds:0C0h
        ja        loc_28DC
        call        sub_D4BA
        jnb        loc_28B5
        ret
; --------------------------------------------------

loc_28CD:
        cmp        byte ptr ds:4, 2
        ja        loc_28D5
        ret
; --------------------------------------------------

loc_28D5:
        call        sub_1FD2
        call        sub_254D
        ret
; --------------------------------------------------

loc_28DC:
        xor        ax, ax
        mov        al, [si-1]
        cmp        ax, ds:973h
        jnz        loc_28D5
        call        sub_2503
        jmp        short loc_28D5
; --------------------------------------------------
        db 4 dup(0)         ; CALIGN 8 -> sub_28F0 (4 bytes 00)
; ---------- S U B  R O U T I N E --------------------------


sub_28F0        proc near
        mov        byte ptr ds:4, 0FFh
        jmp        short loc_290D
sub_28F0        endp


; ---------- S U B  R O U T I N E --------------------------


sub_28F7        proc near
        test        word ptr ds:0, 1
        jnz        loc_290D
        push        word ptr ds:0C2h
        pop        word ptr ds:0D86h
        mov        word ptr ds:0C2h, 0FFFFh

loc_290D:
        test        word ptr ds:0, 1
        jz        loc_291D

loc_2915:
        mov        byte ptr ds:5, 0
        jmp        sub_29CE
; --------------------------------------------------

loc_291D:
        mov        ax, ds:0C0h
        cmp        ax, ds:66h
        jb        loc_2939
        mov        ax, 3
        mov        ds:5, al
        mov        al, ds:226h
        mov        ds:4, al
        mov        si, ds:0C0h
        jmp        loc_29CA
; --------------------------------------------------

loc_2939:
        mov        al, ds:5
        cbw
        sub        ax, 3
        jl        loc_296B
        cmp        ax, ds:0D0h
        jb        loc_2999
        sub        ax, ds:0D0h
        inc        ax
        cmp        ax, ds:0D0h
        jbe        loc_2957
        mov        ax, ds:0D0h
        dec        ax

loc_2957:
        mov        bx, ax
        sub        ds:5, al
        shl        bx, 1
        mov        ax, [bx+2754h]
        mov        ds:64h,        ax
        call        sub_2D67
        jmp        short loc_291D
; --------------------------------------------------

loc_296B:
        neg        ax
        mov        cx, ax
        add        ds:5, cl
        mov        ax, ds:2754h
        push        word ptr ds:0C2h
        push        word ptr ds:4
        mov        dx, ds:2A84h
        call        sub_2B8E
        mov        ds:64h,        ax
        mov        ds:2A84h, dx
        pop        ax
        mov        ds:4, al
        pop        word ptr ds:0C2h
        call        sub_2D67
        jmp        short loc_291D
; --------------------------------------------------

loc_2999:
        shl        ax, 1
        mov        bx, ax
        mov        bp, bx
        mov        si, [bx+2754h]
        push        bx
        call        sub_6709
        pop        bx
        inc        bx
        inc        bx
        mov        si, ds:0C2h
        cmp        si, [bx+2754h]
        jb        sub_29CE
        cmp        byte ptr [si], 1Ah
        jz        sub_29CE
        cmp        si, ds:66h
        jnb        sub_29CE
        mov        si, [bx+2754h]
        dec        si
        cmp        byte ptr [si], 0Ah
        jnz        loc_29CA
        dec        si

loc_29CA:
        mov        ds:0C2h, si
sub_28F7        endp


; ---------- S U B  R O U T I N E --------------------------


sub_29CE        proc near
                        ; sub_28F7+23j        ...
        mov        dl, ds:4
        cmp        dl, 0FFh
        jb        loc_29DD
        dec        byte ptr ds:4
        jmp        short sub_29CE
; --------------------------------------------------

loc_29DD:
        mov        dh, ds:5
        test        word ptr ds:0, 1
        jnz        loc_2A24
        add        dh, ds:0D2h
        mov        ax, ds:0CEh
        shr        ax, 1
        cmp        dl, al
        ja        loc_2A05
        cmp        byte ptr ds:0CDh, 0
        jz        loc_2A20
        mov        dl, ds:0CDh
        neg        dl
        jmp        short loc_2A17
; --------------------------------------------------

loc_2A05:
        sub        dl, ds:0CDh
        jb        loc_2A17
        cmp        dl, ds:0CEh
        jb        loc_2A20
        sub        dl, ds:0CEh
        inc        dl

loc_2A17:
        add        ds:0CDh, dl
        call        sub_EE6C
        jmp        short sub_29CE
; --------------------------------------------------

loc_2A20:
        add        dl, ds:0CCh

loc_2A24:
        test        word ptr ds:2, 1
        jz        loc_2A60
        mov        si, ds:0C2h
        cmp        si, ds:66h
        jnb        loc_2A5A
        lodsb
        xor        ah, ah
        cmp        ax, ds:971h
        jz        loc_2A5A
        cmp        ax, ds:973h
        jz        loc_2A5D
        mov        si, ds:0C2h
        push        dx
        call        sub_6801
        mov        ax, ds:0D93h
        call        sub_47C4
        pop        dx
        cmp        al, ds:21Ah
        jz        loc_2A60

loc_2A5A:
        jmp        sub_1B54
; --------------------------------------------------

loc_2A5D:
        jmp        sub_1AFC
; --------------------------------------------------

loc_2A60:
        mov        ah, 2
        xor        bx, bx
        int        10h                ; - VIDEO - SET        CURSOR POSITION
                        ; DH,DL        = row, column (0,0 = upper left)
                        ; BH = page number
        call        sub_2A75
        call        sub_1992
        mov        si, ds:0C2h
        call        sub_813A
        clc
        ret
sub_29CE        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2A75        proc near
        mov        bx, ds:168h
        or        bx, bx
        jz        locret_2A9E
        inc        bx
        inc        bx
        cmp        bx, ds:0C2h
        ja        loc_2A8F
        mov        bx, ds:166h
        cmp        bx, ds:0C2h
        jnb        locret_2A9E

loc_2A8F:
        mov        ax, 63h        ; 'c'
        push        bx
        call        sub_CB4F
        pop        bx
        mov        ds:0C2h, bx
        call        sub_2AAA

locret_2A9E:
        ret
sub_2A75        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2A9F        proc near
        test        word ptr ds:0, 1
        jz        sub_2AAA
        jmp        loc_2915
sub_2A9F        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2AAA        proc near
        call        sub_2A75
        test        word ptr ds:0, 1
        jz        loc_2AB8
        call        sub_CF98

loc_2AB8:
        call        sub_F205
        jnb        sub_2AEA
        mov        cx, ds:0D0h
        shr        cx, 1
        jnz        loc_2AC8
        mov        cx, 1

loc_2AC8:
        mov        dx, 0FFFFh
        call        sub_2B8E
        mov        ds:64h,        ax
        mov        ds:2A84h, dx
        call        sub_EE6C
        call        sub_F205
        jnb        sub_2AEA
        push        word ptr ds:64h
        pop        word ptr ds:0C2h
        jmp        short sub_2AEA
sub_2AAA        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2AE7        proc near
        call        sub_EE6C
sub_2AE7        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2AEA        proc near
        call        sub_2A75
        call        sub_F205
        mov        ax, [bx+2756h]
        pushf
        push        bx
        shr        bx, 1
        db 81h, 0C3h, 3, 0  ; add        bx, 3
        mov        ds:5, bl
        pop        bx
        popf
        jnb        loc_2B0F
        or        bx, bx
        jnz        loc_2B3D
        dec        byte ptr ds:5
        jmp        short loc_2B83
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_2B0F:
        mov        ax, ds:0C2h
        cmp        word ptr ds:168h, 0
        jz        loc_2B29
        push        ax
        dec        ax
        dec        ax
        cmp        ax, ds:168h
        pop        ax
        jz        loc_2B83
        cmp        ax, ds:166h
        jmp        short loc_2B2D
; --------------------------------------------------

loc_2B29:
        cmp        ax, ds:66h

loc_2B2D:
        jb        loc_2B83
        mov        bx, ax
        cmp        byte ptr [bx-2], 0Dh
        jz        loc_2B83
        dec        byte ptr ds:5
        jmp        short loc_2B83
; --------------------------------------------------

loc_2B3D:
        cmp        ax, ds:66h
        jnb        loc_2B83
        mov        ax, ds:2756h
        cmp        ax, ds:66h
        jnb        loc_2B83
        mov        ax, ds:0C2h
        mov        cx, ds:0D0h
        sub        cx, 2
        mov        dx, 0FFFFh
        call        sub_2B8E
        jb        loc_2B77
        cmp        ax, ds:64h
        ja        loc_2B6D
        mov        ax, ds:2756h
        cmp        ax, ds:66h
        jnb        loc_2B7D

loc_2B6D:
        mov        ds:64h,        ax
        mov        ds:2A84h, dx
        jmp        sub_2AE7
; --------------------------------------------------

loc_2B77:
        mov        ax, ds:0C0h
        mov        ds:64h,        ax

loc_2B7D:
        mov        ds:0C2h, ax
        jmp        sub_2AE7
; --------------------------------------------------

loc_2B83:
        call        sub_28F0
        ret
sub_2AEA        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2B87        proc near
        xor        cx, cx
        jmp        short sub_2B8E
sub_2B87        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2B8B        proc near
        mov        cx, 1
sub_2B8B        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2B8E        proc near
        mov        ds:0D82h, cx
        xor        cx, cx
        mov        ds:0D80h, cx
        mov        ds:0D84h, cx
        call        sub_2C4C
        jnb        loc_2BAF

loc_2BA1:
        push        ax
        call        sub_2C0A
        pop        bx
        jb        locret_2C09
        push        ax
        xor        cx, cx
        call        sub_2CBE
        pop        ax

loc_2BAF:
        add        cx, ds:0D84h
        mov        ds:0D84h, cx
        sub        cx, ds:0D82h
        jnb        loc_2BDC
        cmp        ax, ds:0C0h
        ja        loc_2BD7
        push        ax
        push        word ptr ds:0C2h
        call        sub_D4BA
        mov        dx, ds:0C2h
        pop        bp
        pop        ax
        jb        locret_2C09
        sub        dx, bp
        add        ax, dx

loc_2BD7:
        xor        dx, dx
        dec        dx
        jmp        short loc_2BA1
; --------------------------------------------------

loc_2BDC:
        xor        dx, dx
        or        cx, cx
        jz        loc_2C08
        cmp        word ptr ds:0D82h, 1
        jnz        loc_2BF9
        mov        si, ds:0D8Ch
        or        si, si
        jz        loc_2BF9
        mov        ax, si
        mov        dx, ds:0D8Eh
        jmp        short loc_2C08
; --------------------------------------------------

loc_2BF9:
        neg        cx
        mov        bx, 0FFFFh
        mov        dx, 0FFFEh
        call        sub_2CBE
        mov        dx, ds:0D80h

loc_2C08:
        clc

locret_2C09:
        ret
sub_2B8E        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2C0A        proc near
        cmp        ax, ds:0C0h
        ja        loc_2C12
        stc
        ret
; --------------------------------------------------

loc_2C12:
        cmp        ax, ds:66h
        jbe        loc_2C1A
        stc
        ret
; --------------------------------------------------

loc_2C1A:
        mov        si, ax
        call        sub_2C4C

loc_2C1F:
        mov        bl, ds:973h
        mov        bh, 0Dh
        std

loc_2C26:
        lodsb
        cmp        al, bl
        jz        loc_2C2F
        cmp        al, bh
        jnz        loc_2C26

loc_2C2F:
        cmp        si, ds:0C0h
        ja        loc_2C3A
        mov        ax, ds:0C0h
        clc
        ret
; --------------------------------------------------

loc_2C3A:
        inc        si
        inc        si
        cmp        word ptr [si-1], 0A0Dh
        jnz        loc_2C44
        inc        si

loc_2C44:
        mov        ax, si
        call        sub_2C4C

loc_2C49:
        jb        loc_2C1F
        ret
sub_2C0A        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2C4C        proc near
        cmp        ax, ds:0C0h
        ja        loc_2C59
        mov        ax, ds:0C0h
        mov        si, ax
        clc
        ret
; --------------------------------------------------

loc_2C59:
        push        dx
        mov        si, ax
        mov        bx, [si-2]
        cmp        bh, ds:973h
        jnz        loc_2C9B
        push        ax
        push        cx
        dec        si
        dec        si
        call        sub_705B
        pop        cx
        mov        bp, si
        pop        ax
        mov        si, ax
        jb        loc_2CA7
        mov        si, bp
        mov        bx, [si+2]
        and        bx, 0DFDFh
        cmp        bx, ds:0E13h
        jnz        loc_2CA9
        mov        bx, si
        add        bx, 4
        push        ax
        push        cx
        push        es
        push        ds
        pop        es
        assume es:nothing
        call        sub_6E0A
        pop        es
        assume es:nothing
        pop        cx
        cmp        ax, 1
        pop        ax
        jnz        loc_2CA9
        clc
        pop        dx
        ret
; --------------------------------------------------

loc_2C9B:
        cmp        bx, 0A0Dh
        jz        loc_2CAC
        cmp        bh, 0Dh
        jz        loc_2CAD
        inc        si

loc_2CA7:
        dec        si
        dec        si

loc_2CA9:
        stc
        pop        dx
        ret
; --------------------------------------------------

loc_2CAC:
        dec        si

loc_2CAD:
        dec        si
        dec        si
        push        ax
        call        sub_6801
        pop        ax
        cmp        byte ptr ds:22Ah, 0
        jnz        loc_2CA9
        clc
        pop        dx
        ret
sub_2C4C        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2CBE        proc near
        push        dx
        mov        word ptr ds:0D80h, 0
        mov        word ptr ds:0D88h, 0
        mov        si, ax

loc_2CCD:
        push        cx
        push        bx
        call        sub_6801
        push        word ptr ds:0D88h
        pop        word ptr ds:0D8Ch
        push        word ptr ds:0D8Ah
        pop        word ptr ds:0D8Eh
        mov        ds:0D88h, si
        push        word ptr ds:0D80h
        pop        word ptr ds:0D8Ah
        cmp        byte ptr ds:22Ah, 0
        jnz        loc_2D22
        push        si
        call        sub_6736
        pop        ax
        pop        bx
        pop        cx

loc_2CFC:
        cmp        si, bx
        ja        loc_2D1D
        cmp        si, bx
        jb        loc_2D18
        cmp        si, ds:66h
        jz        loc_2D1D
        or        word ptr ds:166h, 0
        jz        loc_2D18
        cmp        ds:166h, si
        jbe        loc_2D1D

loc_2D18:
        inc        cx
        jcxz        loc_2D1D
        jmp        short loc_2CCD
; --------------------------------------------------

loc_2D1D:
        mov        ax, si
        clc

loc_2D20:
        pop        dx
        ret
; --------------------------------------------------

loc_2D22:
        call        sub_F26A
        mov        cl, ds:22Ah
        xor        ch, ch
        mov        dx, 2
        inc        dh
        mov        ds:2AB4h, si
        pop        bp
        push        bp
        push        word ptr ds:2AB4h
        mov        ax, ds:0D80h
        call        sub_F078
        mov        ds:0D80h, ax
        pop        ax
        pop        bx
        pop        cx
        jb        loc_2D20
        xchg        dl, dh
        mov        si, ds:2AB4h
        test        dx, 4
        jnz        loc_2D1D
        cmp        byte ptr ds:22Ah, 0
        jnz        loc_2D5F
        mov        si, bp
        jmp        short loc_2CFC
; --------------------------------------------------

loc_2D5F:
        pop        bp
        push        bp
        cmp        ax, bp
        ja        loc_2D1D
        jmp        short loc_2D18
sub_2CBE        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2D67        proc near
        mov        al, ds:4
        push        ax
        push        word ptr ds:0C2h
        xor        ax, ax
        mov        ds:4, al
        push        word ptr ds:0D86h
        pop        word ptr ds:0C2h
        call        sub_EE7F
        pop        word ptr ds:0C2h
        pop        ax
        mov        ds:4, al
        ret
sub_2D67        endp

; --------------------------------------------------
        db 8 dup(0)         ; CALIGN 10h -> sub_2D90 (8 bytes 00)
; ---------- S U B  R O U T I N E --------------------------


sub_2D90        proc near
        mov        bx, 2CECh
        mov        bp, 870h
        push        es
        mov        ax, ds
        mov        es, ax
        assume es:nothing
        mov        ax, ds:8C7h
        sub        ax, bp

loc_2DA0:
        mov        si, [bx]
        cmp        si, 0E9Dh
        ja        loc_2DAE
        cmp        al, 2
        jnz        loc_2DBC
        jmp        short loc_2DB3
; --------------------------------------------------

loc_2DAE:
        cmp        al, [si]
        jnz        loc_2DBC
        inc        si

loc_2DB3:
        mov        cx, ax
        mov        di, bp
        cld
        repe cmpsb
        jz        loc_2DC8

loc_2DBC:
        add        bx, 4
        cmp        bx, 3080h
        jb        loc_2DA0
        pop        es
        assume es:nothing
        stc
        ret
; --------------------------------------------------

loc_2DC8:
        mov        ax, ds:[bp+0]
        xchg        ah, al
        mov        si, bx
        add        si, 2
        pop        es
        clc
        ret
sub_2D90        endp

; --------------------------------------------------
        db 0CCh, 0C3h, 0E9h, 4Ah, 4, 0C6h, 6, 90h, 16h,        2, 0BBh
        db 8, 0, 0E8h, 68h, 4, 73h, 0F0h, 0E8h,        4Bh, 2Ah, 0C6h
        db 6, 90h, 16h,        0, 72h,        19h, 0BAh, 0D0h, 8, 0B4h, 13h
        db 0CDh, 21h, 0Ah, 0C0h, 75h, 8, 0B8h, 4Ah, 0, 0E8h, 67h
        db 9Dh,        0F8h, 0C3h, 0B8h, 37h, 0, 0E8h,        44h, 9Dh, 0C3h

; ---------- S U B  R O U T I N E --------------------------


sub_2E0C        proc near
        push        di
        dec        di
        mov        cx, 0Ah

loc_2E11:
        xor        dx, dx
        div        cx
        add        dx, 30h        ; '0'
        mov        [di], dl
        dec        di
        cmp        ax, 0
        jnz        loc_2E11
        pop        di
        ret
sub_2E0C        endp


; ---------- S U B  R O U T I N E --------------------------


sub_2E22        proc near
        cmp        dx, 1388h
        ja        loc_2E52
        push        di
        mov        cx, 2710h
        div        cx
        push        ax
        or        ax, ax
        jz        loc_2E3D
        mov        word ptr [di-2], 3030h
        mov        word ptr [di-4], 3030h

loc_2E3D:
        mov        ax, dx
        xor        dx, dx
        call        sub_2E0C
        pop        ax
        sub        di, 4
        or        ax, ax
        jz        loc_2E4F
        call        sub_2E0C

loc_2E4F:
        pop        di
        clc
        ret
; --------------------------------------------------

loc_2E52:
        stc
        ret
sub_2E22        endp

; --------------------------------------------------
        call        sub_2E8C
        jb        locret_2E6A
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        di, 22Ch
        mov        si, 4D1h
        mov        cx, 16h
        cld
        repe movsw
        pop        es
        assume es:nothing
        clc

locret_2E6A:
        ret
; --------------------------------------------------
        call        sub_2E8C
        jb        locret_2E6A
        mov        byte ptr ds:22Ch, 0FFh
        jmp        short locret_2E6A
; --------------------------------------------------
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        dec        ax
        jmp        loc_989E

; ---------- S U B  R O U T I N E --------------------------


sub_2E8C        proc near
        mov        ax, dx
        xor        bx, bx

loc_2E90:
        push        bx
        push        ax
        mov        cx, 4
        or        bx, bx
        jz        loc_2E9A
        inc        cx

loc_2E9A:
        call        sub_2EDC
        pop        ax
        pop        bx
        jb        locret_2EDB
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        dx, ds:973h
        mov        [di+1],        dl
        or        bx, bx
        jz        loc_2EB2
        mov        [di], bl
        dec        di

loc_2EB2:
        std
        stosb
        mov        [di], ah
        dec        di
        mov        ax, ds:971h
        stosb
        pop        es
sub_2E8C        endp

        assume es:nothing

; ---------- S U B  R O U T I N E --------------------------


sub_2EBC        proc near
        mov        ax, ds:3
        cmp        byte ptr ds:0D90h, 0
        jnz        loc_2ECB
        call        sub_83E2
        jmp        short loc_2ED3
; --------------------------------------------------

loc_2ECB:
        call        sub_8683
        jb        locret_2EDB
        call        sub_847F

loc_2ED3:
        pushf
        mov        ax, ds:3
        call        sub_8A92
        popf

locret_2EDB:
        ret
sub_2EBC        endp ; sp =  2


; ---------- S U B  R O U T I N E --------------------------


sub_2EDC        proc near
        push        cx
        mov        ax, ds:3
        call        sub_8A92
        mov        ax, ds:3
        pop        cx
        call        sub_8E7A
        ret
sub_2EDC        endp

; --------------------------------------------------
        mov        ax, dx
        push        ax
        call        sub_2F61
        jb        loc_2F1C
        dec        cx
        cmp        cx, 2
        jbe        loc_2F2A
        mov        ax, 4
        jmp        short loc_2F1C
; --------------------------------------------------
        mov        ax, dx
        jmp        short loc_2F21
; --------------------------------------------------
        mov        ax, dx
        push        ax
        call        sub_2F61
        jb        loc_2F1C
        jmp        short loc_2F2A
; --------------------------------------------------
        mov        ax, dx
        push        ax
        call        sub_2F61
        jb        loc_2F1C
        cmp        cx, 2
        jbe        loc_2F2A
        mov        ax, 62h        ; 'b'

loc_2F1C:
        call        sub_CB4F
        pop        ax
        ret
; --------------------------------------------------

loc_2F21:
        push        ax
        call        sub_2F61
        jb        loc_2F5C
        dec        cx
        jnz        loc_2F59

loc_2F2A:
        mov        cx, ds:8C7h
        sub        cx, 870h
        add        cx, 4
        call        sub_2EDC
        jb        loc_2F5F
        pop        bx
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        ax, ds:973h
        mov        [di+1],        al
        mov        si, ds:8C7h
        dec        si
        mov        cx, ds:8C7h
        sub        cx, 870h
        std
        repe movsb
        mov        ax, bx
        jmp        loc_2EB2
; --------------------------------------------------

loc_2F59:
        mov        ax, 5Bh        ; '['

loc_2F5C:
        call        sub_CB4F

loc_2F5F:
        pop        ax
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_2F61        proc near
        xchg        ah, al
        mov        bp, ax
        mov        si, ds:8C7h
        sub        si, 870h
        add        si, 3
        shl        si, 1
        cld
        mov        di, 870h
        mov        cx, 46h        ; 'F'
        xor        bx, bx

loc_2F7B:
        db 2Eh, 81h, 3Eh  ; cmp        cs:word_7A7, 4
        dw word_7A7
        dw 4
        jb        loc_2F89
        call        sub_769
        jmp        short loc_2F8E
; --------------------------------------------------

loc_2F89:
        mov        ax, es:[si]
        inc        si
        inc        si

loc_2F8E:
        cmp        al, 20h        ; ' '
        jz        loc_2FDA
        cmp        al, 2Ch        ; ','
        jz        loc_2FC8
        cmp        al, 2Bh        ; '+'
        jz        loc_2FC9
        cmp        al, 2Dh        ; '-'
        jz        loc_2FC9
        cmp        bp, ds:0E07h
        jnz        loc_2FBF
        call        sub_BF90
        cmp        al, ds:0AC5h
        jz        loc_2FC9
        cmp        al, ds:0AC6h
        jz        loc_2FC9
        cmp        al, ds:0AC7h
        jz        loc_2FC9
        cmp        al, ds:0AC8h
        jz        loc_2FC9

loc_2FBF:
        cmp        al, 30h        ; '0'
        jb        loc_2FD4
        cmp        al, 39h        ; '9'
        ja        loc_2FD4
        dec        bx

loc_2FC8:
        inc        bx

loc_2FC9:
        mov        [di], al
        inc        di
        loop        loc_2F7B
        mov        ax, 61h        ; 'a'
        stc
        jmp        short loc_2FDC
; --------------------------------------------------

loc_2FD4:
        mov        ax, 5Ch        ; '\'
        stc
        jmp        short loc_2FDC
; --------------------------------------------------

loc_2FDA:
        inc        bx
        clc

loc_2FDC:
        mov        ds:8C7h, di
        mov        cx, bx
        ret
sub_2F61        endp

; --------------------------------------------------
        mov        ax, dx
        jmp        short loc_3006
; --------------------------------------------------
        nop
        inc        bx
        inc        bx
        mov        ax, dx
        jmp        short loc_3000
; --------------------------------------------------
        mov        ax, dx
        jmp        short loc_3006
; --------------------------------------------------

loc_2FF2:
        mov        ax, 5Dh        ; ']'
        call        sub_CB4F

locret_2FF8:
        ret
; --------------------------------------------------

loc_2FF9:
        mov        ax, 7
        call        sub_CB4F
        ret
; --------------------------------------------------

loc_3000:
        mov        bl, [bx+0AC2h]
        jmp        short loc_3008
; --------------------------------------------------

loc_3006:
        xor        bx, bx

loc_3008:
        test        word ptr ds:0, 80h
        jnz        loc_2FF2
        test        word ptr ds:0, 4
        jnz        loc_2FF9
        push        ax
        push        bx
        push        word ptr ds:23B0h
        mov        byte ptr ds:23B0h, 0
        call        sub_A54E
        pop        bx
        mov        ds:23B0h, bl
        pop        bx
        pop        ax
        jb        loc_305E
        push        es
        push        ds
        pop        es
        or        bl, bl
        mov        si, ds:8C7h
        mov        di, si
        jz        loc_304A
        inc        di
        push        di
        mov        cx, di
        sub        cx, 870h
        std
        repe movsb
        mov        [di], bl
        pop        di

loc_304A:
        mov        si, dx
        push        ax
        dec        si
        call        sub_3D15
        pop        ax
        pop        es
        assume es:nothing
        jb        loc_3056
        inc        di

loc_3056:
        mov        ds:8C7h, di
        push        ax
        jmp        loc_2F2A
; --------------------------------------------------

loc_305E:
        mov        word ptr ds:166h, 1
        call        loc_2E90
        mov        word ptr ds:166h, 0
        jb        locret_2FF8
        push        word ptr ds:0C2h
        pop        word ptr ds:168h
        sub        word ptr ds:168h, 3
        dec        word ptr ds:0C2h
        mov        bx, ds:0C2h
        mov        byte ptr [bx], 1Ah
        mov        ds:166h, bx
        call        sub_EE6C
        call        sub_2AAA
        or        word ptr ds:0, 80h
        ret
; --------------------------------------------------

loc_3098:
        mov        ax, 78h        ; 'x'
        call        sub_CB4F
        ret
; --------------------------------------------------
        push        dx
        call        sub_30AE
        pop        dx
        jb        loc_30A7
        ret
; --------------------------------------------------

loc_30A7:
        jmp        sub_2E8C
; --------------------------------------------------
        mov        ax, dx
        jmp        short $+2

; ---------- S U B  R O U T I N E --------------------------


sub_30AE        proc near
        mov        ax, dx
        push        ax
        call        sub_A54E
        pop        ax
        jb        loc_3098

loc_30B7:
        push        ax
        jmp        loc_2F2A
sub_30AE        endp

; --------------------------------------------------
        push        dx
        call        sub_A54E
        jnb        loc_30D7
        mov        ax, 5Eh        ; '^'
        call        sub_CB6A
        mov        word ptr ds:870h, 20h ;        ' '
        mov        word ptr ds:8C7h, 870h
        inc        word ptr ds:8C7h

loc_30D7:
        pop        ax
        jmp        short loc_30B7
; --------------------------------------------------

loc_30DA:
        mov        ax, 5Fh        ; '_'
        call        sub_CB4F
        ret
; --------------------------------------------------
        call        sub_30EA
        pushf
        call        sub_EE6C
        popf
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_30EA        proc near
        push        word ptr ds:8C7h
        call        sub_A54E
        mov        bx, ds:8C7h
        pop        word ptr ds:8C7h
        jb        loc_30DA
        mov        ax, ds:870h
        push        es
        push        ds
        pop        es
        assume es:nothing
        cld
        mov        di, 0D91h
        mov        cx, 1Ch
        shr        cx, 1
        repne scasw
        mov        ax, ds:0DF7h
        xchg        ah, al
        jz        loc_3128
        mov        byte ptr [bx], 20h ; ' '
        mov        bx, 870h
        call        sub_CF5B
        pop        es
        assume es:nothing
        or        ax, ax
        jnz        loc_312C
        mov        ax, 7Dh        ; '}'
        call        sub_CB4F
        ret
; --------------------------------------------------

loc_3128:
        mov        ax, [di+1Ah]
        pop        es

loc_312C:
        call        sub_3130
        ret
sub_30EA        endp


; ---------- S U B  R O U T I N E --------------------------


sub_3130        proc near
        cmp        word ptr ds:15Fh, 0
        jz        loc_313C
        mov        byte ptr ds:0D90h, 1

loc_313C:
        call        sub_3145
        mov        byte ptr ds:0D90h, 0
        ret
sub_3130        endp


; ---------- S U B  R O U T I N E --------------------------


sub_3145        proc near
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        di, 0DADh
        mov        cx, 0Eh
        xor        ah, ah
        cld
        repne scasw
        pop        es
        assume es:nothing
        jnz        loc_316C
        mov        ax, [di-1Eh]
        mov        ds:870h, ax
        mov        word ptr ds:8C7h, 870h
        add        word ptr ds:8C7h, 2
        call        sub_31B9
        jmp        short loc_3171
; --------------------------------------------------

loc_316C:
        xor        ah, ah
        call        sub_318D

loc_3171:
        mov        ax, ds:8C7h
        sub        ax, 870h
        add        ax, 4
        push        word ptr ds:0C2h
        push        ax
        sub        ds:0C2h, ax
        call        sub_6FE3
        pop        ax
        pop        word ptr ds:0C2h
        clc
        ret
sub_3145        endp


; ---------- S U B  R O U T I N E --------------------------


sub_318D        proc near
        push        es
        push        ds
        pop        es
        assume es:nothing
        cld
        mov        di, 870h
        xor        cx, cx
        mov        bx, 0Ah

loc_3199:
        xor        dx, dx
        div        bx
        add        dx, 30h        ; '0'
        push        dx
        inc        cx
        cmp        ax, 0
        jnz        loc_3199

loc_31A7:
        pop        ax
        stosb
        loop        loc_31A7
        pop        es
        assume es:nothing
        mov        ds:8C7h, di
        mov        ax, ds:0DF7h
        xchg        ah, al
        push        ax
        jmp        loc_2F2A
sub_318D        endp


; ---------- S U B  R O U T I N E --------------------------


sub_31B9        proc near
        mov        ax, ds:0DF7h
        xchg        ah, al
        push        ax
        jmp        loc_2F2A
sub_31B9        endp

; --------------------------------------------------

loc_31C2:
        call        sub_A07B
        cmp        byte ptr ds:8FAh, 0
        jnz        loc_31D4
        test        word ptr ds:867h, 1
        jnz        loc_31C2

loc_31D4:
        mov        byte ptr ds:8FAh, 0
        ret
; --------------------------------------------------
        mov        bx, 4
        xor        cx, cx

loc_31DF:
        loop        loc_31DF
        dec        bx
        jnz        loc_31DF
        ret
; --------------------------------------------------
        mov        ax, 0Bh
        mov        word ptr ds:838h, 13h

loc_31EE:
        push        ax
        mov        byte ptr ds:2410h, 1
        call        sub_CCA1
        mov        byte ptr ds:2410h, 0
        pop        ax
        jb        loc_3206
        inc        ax
        cmp        ax, ds:838h
        jbe        loc_31EE

loc_3206:
        cmp        ax, 0Bh
        jz        loc_3216
        dec        ax
        mov        ds:838h, ax
        mov        ax, 25h        ; '%'
        call        sub_CB6A
        ret
; --------------------------------------------------

loc_3216:
        mov        ax, 79h        ; 'y'
        call        sub_CB4F
        ret
; --------------------------------------------------
byte_321D label byte                    ; offset 0x321D ??? data block (called via byte_321D+31h)
        db 0E9h, 0E5h, 0FBh, 0E9h, 0DAh, 0FBh, 2 dup(43h), 0E8h
        db 26h,        0, 0B8h, 82h, 0, 72h, 1Dh, 53h,        0E8h, 1Dh, 73h
        db 5Bh,        0B8h, 83h, 0, 72h, 13h,        0BAh, 70h, 8, 0B8h, 0
        db 39h,        2, 0E3h, 0CDh, 21h, 73h, 0DDh, 3Ch, 2, 0B8h, 84h
        db 0, 74h, 0D3h, 0E8h, 2, 99h, 0C3h, 0A1h, 0FBh, 8, 3Ch
        db 2, 0C3h, 0BEh, 48h, 5, 0BFh,        0B9h, 4, 0E8h, 0DCh, 0E6h
        db 0B8h, 25h, 0, 0E8h, 7, 99h, 0C3h

; ---------- S U B  R O U T I N E --------------------------


sub_3264        proc near
        push        dx
        push        ax
        call        sub_16A7
        shl        ax, 1
        shl        ax, 1
        shl        ax, 1
        shl        ax, 1
        mov        dx, ax
        pop        ax
        mov        al, ah
        call        sub_16A7
        add        al, dl
        pop        dx
        ret
sub_3264        endp

; --------------------------------------------------
        call        sub_A54E
        jnb        loc_3289

loc_3282:
        mov        ax, 5Bh        ; '['
        call        sub_CB4F
        ret
; --------------------------------------------------

loc_3289:
        xor        ax, ax
        xor        bx, bx
        xor        dx, dx
        mov        cx, 0Ah
        mov        di, 870h

loc_3295:
        mov        bl, [di]
        inc        di
        sub        bl, 30h        ; '0'
        cmp        bl, 9
        ja        loc_3282
        push        ax
        mov        ax, dx
        mul        cl
        mov        bp, ax
        pop        ax
        mul        cx
        add        ax, bx
        adc        dx, bp
        cmp        di, ds:8C7h
        jb        loc_3295
        push        word ptr ds:23B2h
        push        word ptr ds:23B4h
        mov        ds:23B2h, dx
        mov        ds:23B4h, ax
        push        word ptr ds:23B6h
        push        word ptr ds:23B8h
        xor        ax, ax
        mov        dx, ds:64h
        sub        dx, ds:0C0h
        add        dx, ds:0C6h
        adc        ax, ds:0C4h
        mov        ds:23B6h, ax
        mov        ds:23B8h, dx
        call        sub_BD6E
        pop        word ptr ds:23B8h
        pop        word ptr ds:23B6h
        pop        word ptr ds:23B4h
        pop        word ptr ds:23B2h
        ret
; --------------------------------------------------

loc_32F8:
        cmp        byte ptr [bx], 20h ; ' '
        jnz        loc_3300
        inc        bx
        jmp        short loc_32F8
; --------------------------------------------------

loc_3300:
        mov        di, bx
        mov        cx, ds:1C53h
        sub        cx, di
        cmp        cx, 2
        jnb        loc_330F
        clc
        ret
; --------------------------------------------------

loc_330F:
        cld
        mov        ax, 2Ch        ; ','
        repne scasb
        mov        cx, 50h        ; 'P'
        inc        cx
        and        cx, 0FFFEh
        sub        sp, cx
        push        ss
        pop        es
        assume es:seg000
        mov        ax, sp
        push        bx
        push        di
        mov        di, ax
        mov        si, 214h
        repe movsb
        pop        di
        push        di
        push        ds
        pop        es
        assume es:nothing
        cmp        di, ds:1C53h
        jnb        loc_3340
        mov        si, di
        mov        ax, 0FFFFh
        xor        bx, bx
        call        sub_7219

loc_3340:
        pop        di
        pop        si
        jb        loc_3367
        mov        cx, di
        mov        di, si
        sub        cx, si
        cld
        push        cx
        push        si

loc_334D:
        lodsb
        call        sub_BF90
        stosb
        loop        loc_334D
        pop        si
        pop        cx
        push        cx
        push        si
        call        sub_86A8
        pop        si
        pop        cx
        jnb        loc_3364
        call        sub_3426
        jb        loc_3367

loc_3364:
        call        sub_3382

loc_3367:
        mov        di, 214h
        mov        si, sp
        push        ss
        push        ds
        pop        es
        pop        ds
        mov        cx, 50h        ; 'P'
        cld
        repe movsb
        pushf
        inc        si
        and        si, 0FFFEh
        popf
        push        es
        pop        ds
        assume ds:nothing
        mov        sp, si
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_3382        proc near
        dec        si
        push        word ptr ds:2410h
        push        cx
        push        ax
        mov        byte ptr ds:2410h, 1
        call        sub_8574
        pop        ax
        pop        cx
        pop        bx
        mov        ds:2410h, bl
        jnb        loc_33A0
        call        sub_CB4F
        jmp        short locret_33C1
; --------------------------------------------------
        db 90h              ; EVEN -> loc_33A0 (1 byte NOP)
loc_33A0:
        mov        si, ds:8F8h
        mov        [si], cl
        mov        cx, 50h        ; 'P'
        push        cx
        sub        cx, 4
        call        sub_8F07
        pop        cx
        jb        locret_33C1
        dec        di
        mov        si, 214h
        add        si, cx
        dec        si
        std
        sub        cx, 4
        repe movsb
        clc

locret_33C1:
        ret
sub_3382        endp

; --------------------------------------------------

loc_33C2:
        cmp        byte ptr [bx], 20h ; ' '
        jnz        loc_33CA
        inc        bx
        jmp        short loc_33C2
; --------------------------------------------------

loc_33CA:
        mov        si, bx
        mov        di, bx
        cld
        mov        cx, ds:1C53h
        sub        cx, si
        push        cx

loc_33D6:
        lodsb
        call        sub_BF90
        stosb
        loop        loc_33D6
        mov        si, bx
        pop        cx
        call        sub_86A8
        jnb        loc_33EC
        mov        ax, 0A7h ; '???'
        call        sub_CB4F
        ret
; --------------------------------------------------

loc_33EC:
        mov        di, 214h
        add        di, 4
        cld
        repe movsb
        mov        ds:22Bh, al
        clc
        ret
; --------------------------------------------------
        mov        al, ds:22Bh
        inc        al
        jnz        loc_3403

loc_3401:
        clc
        ret
; --------------------------------------------------

loc_3403:
        mov        ah, ds:137h
        add        ax, ds:85Ah
        call        sub_8683
        jb        loc_3401
        cld
        mov        dl, [si]
        xor        dh, dh
        add        si, dx
        sub        cx, dx
        jmp        short loc_33EC
; --------------------------------------------------
        mov        al, ds:22Bh
        or        al, al
        jz        loc_3401
        dec        al
        jmp        short loc_3403

; ---------- S U B  R O U T I N E --------------------------


sub_3426        proc near
        mov        al, ds:138h
        inc        byte ptr ds:138h
        jnz        loc_343A
        dec        byte ptr ds:138h
        mov        ax, 0A8h ; '???'
        call        sub_CB4F
        ret
; --------------------------------------------------

loc_343A:
        mov        ah, ds:137h
        add        ax, ds:85Ah
        ret
sub_3426        endp

; --------------------------------------------------
        db 13 dup(0)        ; CALIGN 10h -> sub_3450 (13 bytes 00)
; ---------- S U B  R O U T I N E --------------------------


sub_3450        proc near
        call        sub_3457
        call        sub_421
        ret
sub_3450        endp


; ---------- S U B  R O U T I N E --------------------------


sub_3457        proc near
        call        sub_8615
        call        sub_D157
        mov        di, ds:0BEh
        mov        word ptr [di], 2
        inc        di
        inc        di
        mov        ds:0C2h, di
        mov        ds:0C0h, di
        mov        ds:66h,        di
        mov        ds:0E7h, di
        mov        ds:0E9h, di
        ret
sub_3457        endp

; --------------------------------------------------

loc_347C:
        pop        es
        assume es:nothing
        jmp        short loc_34C4
; --------------------------------------------------
        db 90h              ; EVEN -> 3480 (1 byte NOP)
        mov        bx, 24BFh
        push        es
        push        ds
        pop        es
        assume es:nothing

loc_3486:
        inc        bx
        cmp        byte ptr [bx], 20h ; ' '
        jz        loc_3486
        push        bx
        call        sub_CF5B
        pop        dx
        push        word ptr [bx-3]
        mov        byte ptr [bx-3], 20h ; ' '
        mov        bx, dx
        call        sub_CF5B
        dec        bx
        pop        word ptr [bx]
        cmp        ax, ds:12CAh
        jnz        loc_347C
        call        sub_CF5B
        cmp        ax, ds:12CCh
        jnz        loc_347C
        pop        es
        assume es:nothing
        call        sub_371E
        jb        locret_34C8
        mov        di, 8D0h
        call        sub_34D7
        jnb        loc_34C4
        call        sub_BD6E
        stc
        jmp        short locret_34C8
; --------------------------------------------------
        db 90h              ; EVEN -> loc_34C4 (1 byte NOP)
loc_34C4:
        call        sub_3450
        clc

locret_34C8:
        ret
; --------------------------------------------------

loc_34C9:
        pop        word ptr ds:2
        pop        word ptr ds:15Fh
        call        sub_13F7
        jmp        loc_370C

; ---------- S U B  R O U T I N E --------------------------


sub_34D7        proc near
        mov        ds:12CEh, di
        mov        ax, ds:15Fh
        push        ax
        mov        ds:12FDh, ax
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp        word ptr ds:15Fh, 2
        jnz        loc_34F0
        mov        word ptr ds:15Fh, 1

loc_34F0:
        push        word ptr ds:2
        push        di
        push        bx
        xor        bx, bx
        mov        ds:12D0h, bx
        call        sub_8615
        mov        ax, 1
        not        ax
        and        ds:2, ax
        call        sub_BD37
        call        sub_D02B
        pop        si
        pop        di
        jb        loc_34C9
        call        sub_3521
        pop        word ptr ds:2
        pop        word ptr ds:15Fh
        call        sub_13F7
        ret
sub_34D7        endp


; ---------- S U B  R O U T I N E --------------------------


sub_3521        proc near
        push        di
        push        si
        call        sub_5865
        pop        si
        pop        dx
        jb        loc_35A4
        cmp        byte ptr ds:979h, 0
        jz        sub_35A7
        mov        di, dx
        mov        al, [di]
        or        al, al
        jz        loc_354D
        mov        di, 979h
        mov        cx, 3

loc_353F:
        cmp        byte ptr [di], 0
        jz        sub_35A7
        cmp        al, [di]
        jz        loc_354D
        inc        di
        loop        loc_353F
        jmp        short sub_35A7
; --------------------------------------------------

loc_354D:
        mov        di, 979h
        mov        byte ptr ds:12C0h, 0
        mov        word ptr ds:12C1h, 0
        push        word ptr ds:0

loc_355F:
        mov        al, [di]
        inc        di
        pop        bp
        or        al, al
        jz        loc_3595
        push        bp
        mov        ds:0, bp
        push        dx
        push        si
        push        di
        push        ax
        call        sub_D02B
        pop        ax
        pop        di
        pop        si
        pop        dx
        push        dx
        push        si
        push        di
        jb        loc_3583
        mov        di, dx
        mov        [di], al
        call        sub_35A7

loc_3583:
        lahf
        or        ds:12C0h, ah
        mov        bp, ds:0
        or        ds:12C1h, bp
        pop        di
        pop        si
        pop        dx
        jmp        short loc_355F
; --------------------------------------------------

loc_3595:
        mov        ax, ds:12C1h
        and        ax, 400h
        or        ds:0, ax
        rcr        byte ptr ds:12C0h, 1
        ret
; --------------------------------------------------

loc_35A4:
        jmp        locret_36FE
sub_3521        endp


; ---------- S U B  R O U T I N E --------------------------


sub_35A7        proc near
        mov        byte ptr ds:1314h, 0
        cmp        si, 870h
        jnz        loc_35CC
        inc        byte ptr ds:1314h
        mov        ax, 0F00h
        int        21h                ; DOS -        OPEN DISK FILE
                        ; DS:DX        -> FCB
                        ; Return: AL = 00h file        found, FFh file        not found
        cmp        al, 0FFh
        jz        loc_35CC
        mov        ax, 1000h
        int        21h                ; DOS -        CLOSE DISK FILE
                        ; DS:DX        -> FCB
                        ; Return: AL = 00h directory update successful
                        ; FFh file not found in        directory
        mov        ax, 7Fh        ; ''
        call        sub_37CE
        jb        loc_35A4

loc_35CC:
        mov        dx, ds:12CEh
        cmp        word ptr ds:8FFh, 1
        jb        loc_35FE
        ja        loc_35EE
        test        word ptr ds:0, 400h
        jnz        loc_35FE
        call        sub_37E9
        jb        loc_35EB
        call        sub_382D
        jmp        short loc_35FE
; --------------------------------------------------

loc_35EB:
        jmp        loc_3706
; --------------------------------------------------

loc_35EE:
        mov        dx, 12D3h
        mov        di, dx
        mov        si, ds:12CEh
        mov        ah, [si]
        xor        al, al
        mov        [di-1],        ax

loc_35FE:
        mov        ds:12D0h, dx
        call        sub_D783
        jb        loc_35A4
        mov        bx, ds:12D0h
        mov        word ptr [bx+0Eh], 1
        xor        ax, ax
        mov        [bx+21h], ax
        mov        [bx+23h], ax
        mov        [bx+20h], al

loc_361B:
        mov        dx, ds:0C2h
        mov        ah, 1Ah
        int        21h                ; DOS -        SET DISK TRANSFER AREA ADDRESS
                        ; DS:DX        -> disk        transfer buffer
        mov        cx, ds:66h
        sub        cx, ds:0C2h
        or        cx, cx
        jz        loc_366B
        push        cx
        mov        cx, ds:66h
        mov        si, ds:0C2h
        call        sub_73F0
        pop        cx
        mov        dx, ds:12D0h
        mov        ah, 28h
        int        21h                ; DOS -        RANDOM BLOCK WRITE
                        ; DS:DX        -> FCB
                        ; CX = number of records to be written
                        ; if zero, truncate file to current random file        position
        push        ax
        mov        cx, ds:66h
        mov        si, ds:0C2h
        push        word ptr ds:15Fh
        push        word ptr ds:12FDh
        pop        word ptr ds:15Fh
        call        sub_7368
        pop        word ptr ds:15Fh
        pop        ax
        or        al, al
        jz        loc_366B
        jmp        loc_3706
; --------------------------------------------------

loc_3668:
        jmp        loc_370C
; --------------------------------------------------

loc_366B:
        call        sub_D099
        push        word ptr ds:66h
        pop        word ptr ds:0C2h
        call        sub_D4E9
        jnb        loc_361B
        or        ax, ax
        jnz        loc_3668
        mov        ds:64h,        ax
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        ax, ds:0C0h
        dec        ax
        mov        cx, 0D0h ; '???'
        add        cx, 2
        mov        di, 2754h
        cld
        repe stosw
        pop        es
        assume es:nothing
        xor        ax, ax
        mov        bp, ds:66h
        mov        byte ptr ds:[bp+0], 1Ah
        mov        dx, ds:66h
        mov        ah, 1Ah
        int        21h                ; DOS -        SET DISK TRANSFER AREA ADDRESS
                        ; DS:DX        -> disk        transfer buffer
        mov        cx, 1
        mov        dx, ds:12D0h
        mov        ah, 28h
        int        21h                ; DOS -        RANDOM BLOCK WRITE
                        ; DS:DX        -> FCB
                        ; CX = number of records to be written
                        ; if zero, truncate file to current random file        position
        or        al, al
        jnz        loc_3706
        call        sub_D19C
        mov        dx, ds:12CEh
        cmp        dx, ds:12D0h
        jz        locret_36FE
        test        word ptr ds:0, 400h
        jnz        loc_36D5
        call        sub_37E9
        jb        locret_36FE
        call        sub_382D

loc_36D5:
        mov        ax, 1300h
        int        21h                ; DOS -        DELETE FILE via        FCB
                        ; DS:DX        -> FCB with filename field filled with
                        ; template for        deletion ('?' wildcard allowed, but not '*')
                        ; Return: AL = 00h file        found, FFh file        not found
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        si, ds:12CEh
        mov        al, [si]
        mov        ds:12D3h, al
        inc        si
        mov        di, 12E4h
        mov        cx, 0Bh
        repe movsb
        mov        dx, 12D3h
        mov        ax, 1700h
        int        21h                ; DOS -        RENAME FILE via        FCB
                        ; DS:DX        -> FCB
                        ; FCB contains new name        starting at byte 17h.
        pop        es
        assume es:nothing
        or        al, al
        stc
        jnz        locret_36FE
        clc

locret_36FE:
                        ; sub_35A7+11Cj ...
        ret
; --------------------------------------------------

loc_36FF:
        mov        ax, 7
        call        sub_CB4F
        ret
; --------------------------------------------------

loc_3706:
        mov        ax, 9

loc_3709:
        call        sub_CB4F

loc_370C:
        mov        dx, ds:12D0h
        or        dx, dx
        jz        loc_3717
        call        sub_D19C

loc_3717:
        stc
        ret
sub_35A7        endp

; --------------------------------------------------
        mov        ax, 8
        jmp        short loc_3709

; ---------- S U B  R O U T I N E --------------------------


sub_371E        proc near
        test        word ptr ds:0, 4
        jnz        loc_36FF

loc_3726:
        call        sub_A54E
        jb        loc_3730
        mov        bx, 870h
        jmp        short loc_3733
; --------------------------------------------------

loc_3730:
        mov        bx, 14h

loc_3733:
        clc
        ret
sub_371E        endp

; --------------------------------------------------
        call        loc_3726
        mov        word ptr ds:12D0h, 0
        cmp        byte ptr [bx], 25h ; '%'
        jnz        loc_375E
        mov        al, [bx+1]
        xor        ah, ah
        mov        ds:12C3h, al
        call        sub_8683
        jnb        loc_3757
        mov        ax, 3Fh        ; '?'
        call        sub_CB4F
        ret
; --------------------------------------------------

loc_3757:
        mov        bx, 12C3h
        call        sub_A5D3
        ret
; --------------------------------------------------

loc_375E:
        test        word ptr ds:0, 4
        jnz        loc_36FF
        mov        di, 220Bh
        call        sub_34D7
        pushf
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp        word ptr ds:15Fh, 2
        jnz        loc_3778
        call        sub_D02B

loc_3778:
        call        sub_BD6E
        popf
        jb        loc_3786

loc_377E:
        mov        ax, 4Ah        ; 'J'
        call        sub_CB6A
        clc

locret_3785:
        ret
; --------------------------------------------------

loc_3786:
        jmp        loc_3706
; --------------------------------------------------
        call        loc_3726
        call        sub_BD37
        mov        word ptr ds:12D0h, 0
        mov        ax, 2Fh        ; '/'
        cmp        bx, 870h
        jnz        loc_37CA
        mov        ax, 7
        test        word ptr ds:0, 4
        jnz        loc_37CA
        mov        si, ds:0Eh
        mov        ax, 2Eh        ; '.'
        test        word ptr ds:0, 20h
        jz        loc_37CA
        mov        cx, ds:10h
        sub        cx, si
        call        sub_A5D3
        pushf
        call        sub_BD6E
        popf
        jb        loc_3786
        jmp        short loc_377E
; --------------------------------------------------

loc_37CA:
        call        sub_CB4F
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_37CE        proc near
        call        sub_CB4F
        call        sub_1270
        call        sub_BF90
        cmp        al, ds:0AC9h
        jz        locret_3785
        cmp        al, ds:0ACAh
        stc
        jz        locret_3785
        mov        ax, 80h        ; '???'
        jmp        short sub_37CE
sub_37CE        endp


; ---------- S U B  R O U T I N E --------------------------


sub_37E9        proc near
                        ; sub_35A7+126p
        push        si
        mov        si, dx
        push        word ptr [si+9]
        push        word ptr [si+0Bh]
        mov        word ptr [si+9], 4142h
        mov        byte ptr [si+0Bh], 4Bh ; 'K'
        mov        ax, 1300h
        int        21h                ; DOS -        DELETE FILE via        FCB
                        ; DS:DX        -> FCB with filename field filled with
                        ; template for        deletion ('?' wildcard allowed, but not '*')
                        ; Return: AL = 00h file        found, FFh file        not found
        push        es
        push        ds
        pop        es
        assume es:nothing
        push        di
        push        cx
        inc        si
        mov        di, si
        add        di, 10h
        cld
        mov        cx, 0Bh
        repe movsb
        pop        cx
        pop        di
        pop        es
        assume es:nothing
        pop        ax
        mov        si, dx
        mov        [si+0Bh], al
        pop        word ptr [si+9]
        mov        ax, 1700h
        int        21h                ; DOS -        RENAME FILE via        FCB
                        ; DS:DX        -> FCB
                        ; FCB contains new name        starting at byte 17h.
        or        al, al
        jz        loc_382B
        cmp        al, 0FFh
        jz        loc_382B
        stc

loc_382B:
        pop        si
        ret
sub_37E9        endp


; ---------- S U B  R O U T I N E --------------------------


sub_382D        proc near
                        ; sub_35A7+12Bp
        cmp        byte ptr ds:1314h, 0
        jnz        locret_383A
        or        word ptr ds:0, 400h

locret_383A:
        ret
sub_382D        endp


; ---------- S U B  R O U T I N E --------------------------


sub_383B        proc near
        mov        ds:130Dh, cx
        mov        cx, ds:8F8h
        mov        ds:1301h, cx
        mov        dx, ds:66h
        cmp        dx, ds:0CAh
        jnb        loc_3855
        mov        dx, ds:0CAh

loc_3855:
        mov        ds:1305h, dx
        jmp        short loc_3874
; --------------------------------------------------

loc_385B:
        mov        ah, 6Bh        ; 'k'

loc_385D:
        call        sub_CB4F
        ret
; --------------------------------------------------

loc_3861:
        pushf
        mov        dx, si
        mov        ah, 10h
        int        21h                ; DOS -        CLOSE DISK FILE
                        ; DS:DX        -> FCB
                        ; Return: AL = 00h directory update successful
                        ; FFh file not found in        directory
        popf
        jb        locret_3873
        or        al, al
        mov        ax, 6Ah        ; 'j'
        jnz        loc_385D
        clc

locret_3873:
        ret
; --------------------------------------------------

loc_3874:
        mov        dx, si
        mov        ah, 0Fh
        int        21h                ; DOS -        OPEN DISK FILE
                        ; DS:DX        -> FCB
                        ; Return: AL = 00h file        found, FFh file        not found
        or        al, al
        jnz        loc_385B
        mov        word ptr [si+0Eh], 1
        mov        ax, [si+10h]
        mov        ds:1307h, ax
        mov        ax, [si+12h]
        mov        ds:1309h, ax
        xor        ax, ax
        mov        [si+21h], ax
        mov        [si+23h], ax
        push        si
        call        sub_38A4
        pop        si
        jb        loc_3861
        call        sub_3A46
        jmp        short loc_3861
sub_383B        endp

; --------------------------------------------------
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_38A4        proc near
        push        es
        push        ds
        pop        es
        assume es:nothing
        mov        dx, ds:1305h
        mov        di, ds:1301h
        std
        dec        di
        dec        di
        xor        ax, ax
        stosw
        mov        ax, [si+23h]
        stosw
        mov        ax, [si+21h]
        stosw
        mov        [di], dx
        mov        ds:1301h, di
        mov        ds:1303h, di

loc_38C7:
        mov        ax, ds:1303h
        sub        ax, dx
        cmp        ax, 200h
        jb        loc_3933
        shr        ax, 1
        mov        cx, ax
        mov        ds:1315h, dx

loc_38D9:
        push        dx
        mov        ah, 1Ah
        int        21h                ; DOS -        SET DISK TRANSFER AREA ADDRESS
                        ; DS:DX        -> disk        transfer buffer
        mov        dx, si
        mov        ah, 27h
        int        21h                ; DOS -        RANDOM BLOCK READ
                        ; DS:DX        -> FCB
                        ; CX = number of records to be read
        or        al, al
        jz        loc_38F8
        inc        byte ptr ds:1313h
        cmp        al, 3
        jz        loc_38F8
        cmp        al, 1
        jz        loc_38F8
        stc
        pop        dx
        pop        es
        assume es:nothing
        ret
; --------------------------------------------------

loc_38F8:
        pop        dx
        add        cx, dx
        push        si
        mov        si, dx
        mov        di, ds:1303h
        dec        di
        dec        di
        std
        mov        si, ds:1315h

loc_3909:
        mov        dx, si
        cmp        word ptr [si], 0
        jz        loc_392F
        mov        ax, si
        mov        ds:1303h, di
        stosw
        add        si, [si]
        cmp        si, di
        ja        loc_3933
        mov        ds:1315h, ax
        cmp        si, cx
        jb        loc_3909
        mov        dx, cx
        xchg        cx, si
        sub        cx, si
        pop        si
        ja        loc_38D9
        jmp        short loc_38C7
; --------------------------------------------------

loc_392F:
        inc        byte ptr ds:1313h

loc_3933:
        cmp        byte ptr ds:1313h, 0
        jnz        loc_3942
        mov        ax, 64h        ; 'd'
        call        sub_CB4F
        pop        es
        ret
; --------------------------------------------------

loc_3942:
        sub        cx, dx
        pop        si
        sub        [si+21h], cx
        sbb        word ptr [si+1Fh], 0
        push        si
        mov        si, ds:1303h
        mov        ax, ds:130Dh
        mov        bx, 131Bh

loc_3957:
        add        [si], ax
        inc        si
        inc        si
        cmp        si, ds:1301h
        jb        loc_3957
        mov        ax, ds:1301h
        sub        ax, 2
        mov        ds:1311h, ax
        push        word ptr ds:1303h
        pop        word ptr ds:1317h
        cld
        xor        ah, ah
        xor        cx, cx

loc_3977:
        mov        word ptr ds:1319h, 0
        mov        bp, ds:1311h
        cmp        bp, ds:1301h
        jb        loc_398E
        mov        bp, ds:1301h
        sub        bp, 2

loc_398E:
                        ; sub_38A4+114j ...
        mov        si, ds:[bp+0]
        dec        bp
        dec        bp
        mov        di, ds:[bp+0]
        cmp        bp, ds:1317h
        jb        loc_39EE
        lodsw
        mov        cx, ax
        mov        ax, [di]
        inc        di
        inc        di
        cmp        cx, ax
        jbe        loc_39AA
        xchg        ax, cx

loc_39AA:
                        ; sub_38A4+112j
        lodsb
        xlat
        mov        dx, ax
        mov        al, [di]
        inc        di
        xlat
        cmp        dl, al
        jnz        loc_39B8
        loop        loc_39AA

loc_39B8:
        jb        loc_398E
        mov        si, ds:[bp+2]
        mov        di, ds:[bp+0]
        ja        loc_39C9
        lodsw
        cmp        ax, [di]
        jbe        loc_398E

loc_39C9:
        xchg        di, ds:[bp+2]
        mov        ds:[bp+0], di
        cmp        word ptr ds:1319h, 0
        jnz        loc_39E1
        mov        ds:1311h, bp
        add        word ptr ds:1311h, 4

loc_39E1:
        mov        ds:1319h, bp
        add        word ptr ds:1319h, 2
        jmp        short loc_398E
; --------------------------------------------------

loc_39EC:
        jmp        short loc_3977
; --------------------------------------------------

loc_39EE:
        push        word ptr ds:1319h
        pop        word ptr ds:1317h
        cmp        word ptr ds:1319h, 0
        jnz        loc_39EC
        mov        si, ds:1303h
        mov        ax, ds:130Dh

loc_3A04:
        sub        [si], ax
        inc        si
        inc        si
        cmp        si, ds:1301h
        jb        loc_3A04
        mov        bx, ds:1301h
        pop        si
        mov        ax, [bx+2]
        mov        [si+21h], ax
        mov        ax, [bx+4]
        mov        [si+23h], ax

loc_3A1F:
        dec        bx
        dec        bx
        mov        dx, [bx]
        mov        di, dx
        mov        ah, 1Ah
        int        21h                ; DOS -        SET DISK TRANSFER AREA ADDRESS
                        ; DS:DX        -> disk        transfer buffer
        mov        dx, si
        mov        cx, [di]
        mov        ah, 28h
        int        21h                ; DOS -        RANDOM BLOCK WRITE
                        ; DS:DX        -> FCB
                        ; CX = number of records to be written
                        ; if zero, truncate file to current random file        position
        or        al, al
        jnz        loc_3A3E
        cmp        bx, ds:1303h
        ja        loc_3A1F
        pop        es
        clc
        ret
; --------------------------------------------------

loc_3A3E:
        mov        ax, 70h        ; 'p'
        call        sub_CB4F
        pop        es
        ret
sub_38A4        endp


; ---------- S U B  R O U T I N E --------------------------


sub_3A46        proc near
        clc
        ret
sub_3A46        endp

; --------------------------------------------------
        db 8 dup(0)         ; CALIGN 10h -> 3A50 (8 bytes 00)
        push        word ptr ds:8C7h
        call        sub_A54E
        call        sub_4ED
        mov        ax, ds:8C7h
        pop        word ptr ds:8C7h
        jb        loc_3AB9
        sub        ax, 870h
        cmp        ax, 1
        jnz        loc_3AB9
        mov        al, ds:870h
        xor        ah, ah
        call        sub_BF90
        cmp        ax, 30h        ; '0'
        jb        loc_3AB9
        cmp        ax, 39h        ; '9'
        jbe        loc_3A87
        cmp        ax, 41h        ; 'A'
        jb        loc_3AB9
        cmp        ax, 5Ah        ; 'Z'
        ja        loc_3AB9

loc_3A87:
        push        ax
        call        sub_A54E
        pop        ax
        jb        loc_3AB9
        push        ax
        mov        bx, 870h
        inc        byte ptr ds:2410h
        call        sub_CCAF
        mov        byte ptr ds:2410h, 0
        pop        bx
        mov        ax, 66h        ; 'f'
        jb        loc_3ABC
        mov        ax, bx
        call        sub_8683
        jb        locret_3ABF
        add        si, cx
        or        word ptr [si], 2
        mov        ax, 25h        ; '%'
        call        sub_CB6A
        clc
        ret
; --------------------------------------------------

loc_3AB9:
        mov        ax, 8Dh        ; '???'

loc_3ABC:
        call        sub_CB4F

locret_3ABF:
        ret
; --------------------------------------------------

seg000      ends

        end
