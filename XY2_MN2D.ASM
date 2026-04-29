;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_MN2D.ASM
; SEGMENT:   seg000 (CODE)
; ZONE:      Zone 2 -- Code + remaining, part 4 (split from XY2_MN02.ASM)
; LINES:     6546
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC sub_BAD1, sub_BD02, sub_BD37, sub_BD6E, sub_BD91, sub_BF90
        PUBLIC sub_BFA3, sub_CAFE, sub_CB4F, sub_CB6A, sub_CBAC, sub_CCA1
        PUBLIC sub_CCAF, sub_CD17, sub_CD28, sub_CDDB, sub_CDE8, sub_CE1D
        PUBLIC sub_CF2C, sub_CF5B, sub_CF7E, sub_CF98, sub_CFBD, sub_D02B
        PUBLIC sub_D099, sub_D0C0, sub_D0CE, sub_D157, sub_D19C, sub_D4BA
        PUBLIC sub_D4E9, sub_D783, sub_D79E, sub_D7FE, sub_D919, sub_DB50
        PUBLIC sub_DD0B, sub_DE15, sub_E4D3, sub_E50B, sub_E570, sub_EB21
        PUBLIC sub_EE6C, sub_EE7F, sub_F04F, sub_F078, sub_F205, sub_F26A

seg000      segment byte public 'CODE'
        assume cs:seg000




; --- NEAR EXTRNs (same segment) ---
        EXTRN byte_1:BYTE
        EXTRN sub_1270:NEAR
        EXTRN sub_13A5:NEAR
        EXTRN sub_1936:NEAR
        EXTRN sub_1B54:NEAR
        EXTRN sub_1F34:NEAR
        EXTRN sub_20F3:NEAR
        EXTRN sub_2262:NEAR
        EXTRN sub_28F7:NEAR
        EXTRN sub_29CE:NEAR
        EXTRN sub_2AAA:NEAR
        EXTRN sub_2B87:NEAR
        EXTRN sub_2B8E:NEAR
        EXTRN sub_2D90:NEAR
        EXTRN sub_409F:NEAR
        EXTRN sub_4199:NEAR
        EXTRN sub_4B4B:NEAR
        EXTRN sub_4ED:NEAR
        EXTRN sub_4FF:NEAR
        EXTRN sub_511:NEAR
        EXTRN sub_57D:NEAR
        EXTRN sub_5A98:NEAR
        EXTRN sub_5CC3:NEAR
        EXTRN sub_5D94:NEAR
        EXTRN sub_5DE0:NEAR
        EXTRN sub_5E6:NEAR
        EXTRN sub_62BE:NEAR
        EXTRN sub_6736:NEAR
        EXTRN sub_67F3:NEAR
        EXTRN sub_6801:NEAR
        EXTRN sub_6E0A:NEAR
        EXTRN sub_6FEC:NEAR
        EXTRN sub_7016:NEAR
        EXTRN sub_7084:NEAR
        EXTRN sub_70B2:NEAR
        EXTRN sub_7368:NEAR
        EXTRN sub_73F0:NEAR
        EXTRN sub_75A:NEAR
        EXTRN sub_764:NEAR
        EXTRN sub_769:NEAR
        EXTRN sub_76E:NEAR
        EXTRN sub_77C4:NEAR
        EXTRN sub_77D:NEAR
        EXTRN sub_79AF:NEAR
        EXTRN sub_79B:NEAR
        EXTRN sub_7A0:NEAR
        EXTRN sub_7A03:NEAR
        EXTRN sub_7AF1:NEAR
        EXTRN sub_7EEB:NEAR
        EXTRN sub_8042:NEAR
        EXTRN sub_8098:NEAR
        EXTRN sub_813A:NEAR
        EXTRN sub_8142:NEAR
        EXTRN sub_8309:NEAR
        EXTRN sub_8574:NEAR
        EXTRN sub_8683:NEAR
        EXTRN sub_8A92:NEAR
        EXTRN sub_8E7A:NEAR
        EXTRN sub_A54E:NEAR
        EXTRN sub_AD48:NEAR
        EXTRN sub_B1CA:NEAR
        EXTRN sub_C77:NEAR
        EXTRN sub_F60:NEAR
        EXTRN word_7A7:WORD

; ---------- S U B  R O U T I N E --------------------------


sub_BAD1    proc near
        call    sub_8683
        jnb loc_BAD7
        ret
; --------------------------------------------------

loc_BAD7:
        mov word ptr [si+2], 200h
        add si, 4
        mov word ptr [si+21h], 0
        mov word ptr [si+23h], 0
        clc
        ret
sub_BAD1    endp

; --------------------------------------------------
        db 5 dup(0)         ; CALIGN 8 -> loc_BAF0 (5 bytes 00)
loc_BAF0:
        mov ax, 26h ; '&'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_BAF7:
        mov ax, 17h
        call    sub_CB4F
        jmp loc_BC18
; --------------------------------------------------
        mov word ptr ds:23A1h, 0FFFFh
        mov byte ptr ds:23B0h, 0
        jmp short loc_BB32
; --------------------------------------------------
        mov word ptr ds:23A1h, 0FFFFh
        mov byte ptr ds:23B0h, 20h ; ' '
        jmp short loc_BB32
; --------------------------------------------------
        mov word ptr ds:23A1h, 1
        mov byte ptr ds:23B0h, 0
        jmp short loc_BB32
; --------------------------------------------------
        mov byte ptr ds:23B0h, 20h ; ' '

; ---------- S U B  R O U T I N E --------------------------


sub_BB2C    proc near
        mov word ptr ds:23A1h, 1

loc_BB32:
        call    sub_BB3B
        mov byte ptr ds:23B0h, 20h ; ' '
        ret
sub_BB2C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BB3B    proc near
        test    word ptr ds:0, 4
        jnz loc_BAF0
        call    sub_BD37
        call    sub_CFBD
        mov dx, ds:8C7h
        sub dx, 870h
        add dx, 4
        mov dh, ds:5
        call    sub_57D
        sub bx, 2
        mov si, bx
        push    dx
        call    sub_769
        pop dx
        mov ds:86Dh, al
        mov ds:23A3h, al
        call    sub_4FF
        jb  loc_BAF7
        mov ds:23A4h, bx
        call    sub_CF7E

loc_BB77:
                    ; sub_BE30+12Dp
        mov bx, ds:0C2h
        mov si, 870h

loc_BB7E:
        mov ax, [si]
        cmp al, 0
        jnz loc_BB9C
        cmp ah, ds:0B50h
        jz  loc_BB90
        cmp ah, ds:0B4Fh
        jnz loc_BB9C

loc_BB90:
        add si, 2
        cmp si, ds:8C7h
        jb  loc_BB7E

loc_BB99:
        jmp loc_BAF7
; --------------------------------------------------

loc_BB9C:
        mov dx, ds:8C7h
        sub dx, si
        mov ds:23AAh, dx
        jbe loc_BB99
        cmp word ptr ds:23A1h, 1
        jnz loc_BBBA
        mov cx, ds:66h
        inc cx
        sub cx, bx
        jbe loc_BBDF
        jmp short loc_BBC4
; --------------------------------------------------

loc_BBBA:
        dec bx
        mov cx, bx
        inc cx
        sub cx, ds:0C0h
        jbe loc_BBDF

loc_BBC4:
        cmp byte ptr [si], 0
        jz  loc_BBD2
        mov ax, [bx]
        call    sub_BFA3
        cmp [si], al
        jnz loc_BBD9

loc_BBD2:
        call    sub_BC7E
        jz  loc_BC21
        jb  loc_BBFE

loc_BBD9:
        add bx, ds:23A1h
        loop    loc_BBC4

loc_BBDF:
        sub bx, ds:23A1h
        mov ds:0C2h, bx
        cmp word ptr ds:23A1h, 1
        jz  loc_BBF6
        call    sub_D081
        call    sub_D4BA
        jmp short loc_BBFC
; --------------------------------------------------

loc_BBF6:
        call    sub_D099
        call    sub_D4E9

loc_BBFC:
        jnb loc_BC1E

loc_BBFE:
        cmp byte ptr ds:23A7h, 0
        jnz loc_BC0B
        mov ax, 0Ah
        call    sub_CB4F

loc_BC0B:
        mov word ptr ds:64h, 0FFFFh
        call    sub_BD6E
        call    sub_2AAA
        stc

loc_BC18:
                    ; sub_BB3B+141j
        mov byte ptr ds:86Dh, 0
        ret
; --------------------------------------------------

loc_BC1E:
        jmp loc_BB77
; --------------------------------------------------

loc_BC21:
        mov dx, bx
        mov ds:23ACh, bx
        inc word ptr ds:23AEh
        mov bx, ds:23AEh
        cmp bx, ds:66h
        ja  loc_BBFE
        mov ds:0C2h, bx
        cmp word ptr ds:23A1h, 0FFFFh
        jnz loc_BC44
        mov ds:0C2h, dx

loc_BC44:
        mov si, ds:0C2h
        push    word ptr [si]
        mov ax, ds:23ACh
        mov ds:0D72h, ax
        sub ds:23AEh, ax
        cmp byte ptr ds:23B1h, 0
        jnz loc_BC5E
        call    sub_2AAA

loc_BC5E:
        mov ax, ds:0D72h
        mov ds:23ACh, ax
        add ds:23AEh, ax
        mov si, ds:0C2h
        pop ax
        cmp ax, [si]
        jz  loc_BC7B
        cmp word ptr ds:23A1h, 1
        jnz loc_BC7B
        call    sub_1F34

loc_BC7B:
                    ; sub_BB3B+13Bj
        clc
        jmp short loc_BC18
sub_BB3B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BC7E    proc near
        push    bx
        push    si
        push    cx

loc_BC81:
        cmp si, ds:8C7h
        jz  loc_BCF9
        cmp byte ptr [si], 0
        jnz loc_BCD1
        inc si
        mov al, [si]
        cmp al, ds:0B50h
        jz  loc_BCDA
        cmp al, ds:0B4Fh
        jnz loc_BCB2
        mov cx, 50h ; 'P'
        inc si

loc_BC9F:
        call    sub_BC7E
        jz  loc_BCFD
        inc bx
        cmp bx, ds:66h
        jnb loc_BCE8
        loop    loc_BC9F
        cmp si, 0
        jmp short loc_BCF9
; --------------------------------------------------

loc_BCB2:
        mov ax, [bx]
        call    sub_BD02
        mov al, [si]
        cmp ah, al
        jz  loc_BCDA
        cmp al, ds:0B55h
        jnz loc_BCF9
        cmp ah, ds:0B53h
        jz  loc_BCDA
        cmp ah, ds:0B52h
        jz  loc_BCDA
        jnz loc_BCF9

loc_BCD1:
        mov ax, [bx]
        call    sub_BFA3
        cmp [si], al
        jnz loc_BCF9

loc_BCDA:
        inc si
        cmp si, ds:8C7h
        jz  loc_BCF9
        inc bx
        cmp bx, ds:66h
        jb  loc_BC81

loc_BCE8:
        cmp word ptr ds:23A1h, 1
        jnz loc_BCF9
        pop cx
        mov cx, 1
        push    cx
        cmp sp, 0
        jmp short loc_BCFD
; --------------------------------------------------

loc_BCF9:
        mov ds:23AEh, bx

loc_BCFD:
        clc
        pop cx
        pop si
        pop bx
        ret
sub_BC7E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BD02    proc near
        mov ah, ds:0B52h
        cmp al, 30h ; '0'
        jb  loc_BD0E
        cmp al, 39h ; '9'
        jbe locret_BD36

loc_BD0E:
        mov ah, ds:0B51h
        cmp al, 41h ; 'A'
        jb  locret_BD36
        cmp al, 5Ah ; 'Z'
        jbe loc_BD32
        cmp al, 61h ; 'a'
        jb  locret_BD36
        cmp al, 7Ah ; 'z'
        jbe loc_BD32
        cmp al, 0A7h ; '?'
        ja  locret_BD36
        cmp al, 0A0h ; '?'
        jnb loc_BD32
        cmp al, 9Ah ; '?'
        ja  locret_BD36
        cmp al, 80h ; '?'
        jb  locret_BD36

loc_BD32:
        mov ah, ds:0B53h

locret_BD36:
        ret
sub_BD02    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BD37    proc near
        push    ax
        push    dx
        xor ax, ax
        mov dx, ds:0C2h
        sub dx, ds:0C0h
        add dx, ds:0C6h
        adc ax, ds:0C4h
        mov ds:23B2h, ax
        mov ds:23B4h, dx
        xor ax, ax
        mov dx, ds:64h
        sub dx, ds:0C0h
        add dx, ds:0C6h
        adc ax, ds:0C4h
        mov ds:23B6h, ax
        mov ds:23B8h, dx
        pop dx
        pop ax
        ret
sub_BD37    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BD6E    proc near
        call    sub_BD91
        mov ax, ds:23B6h
        mov dx, ds:23B8h
        sub dx, ds:0C6h
        sbb ax, ds:0C4h
        jb  loc_BD8D
        add dx, ds:0C0h
        mov ds:64h, dx
        call    sub_EE6C

loc_BD8D:
        call    sub_2AAA
        ret
sub_BD6E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BD91    proc near
        mov ax, ds:0C4h
        mov dx, ds:0C6h
        cmp ax, ds:23B2h
        jnz loc_BDA2
        cmp dx, ds:23B4h

loc_BDA2:
        jbe loc_BDA9
        call    sub_D4BA
        jmp short sub_BD91
; --------------------------------------------------

loc_BDA9:
        mov bx, ds:66h
        sub bx, ds:0C0h
        add dx, bx
        adc ax, 0
        cmp ax, ds:23B2h
        jnz loc_BDC0
        cmp dx, ds:23B4h

loc_BDC0:
        jnb loc_BDD0
        call    sub_D4E9
        jnb sub_BD91
        push    word ptr ds:66h
        pop word ptr ds:0C2h
        ret
; --------------------------------------------------

loc_BDD0:
        sub dx, bx
        mov ax, ds:23B4h
        sub ax, dx
        add ax, ds:0C0h
        mov ds:0C2h, ax
        ret
sub_BD91    endp

; --------------------------------------------------

loc_BDDF:
        mov ax, 27h ; '''
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_BDE6:
        mov ax, 24h ; '$'
        call    sub_CB6A
        jmp short loc_BE4D
; --------------------------------------------------
        mov byte ptr ds:23B1h, 1
        call    sub_BE30
        mov byte ptr ds:23B1h, 0
        ret
; --------------------------------------------------
        mov byte ptr ds:23B1h, 1
        call    sub_BE1D
        mov byte ptr ds:23B1h, 0
        ret
; --------------------------------------------------
        mov byte ptr ds:23B0h, 0
        mov byte ptr ds:23A6h, 0FFh
        jmp short loc_BE27
; --------------------------------------------------
        mov byte ptr ds:23A6h, 0FFh
        jmp short loc_BE35

; ---------- S U B  R O U T I N E --------------------------


sub_BE1D    proc near
        mov byte ptr ds:23B0h, 0
        mov byte ptr ds:23A6h, 0

loc_BE27:
        call    loc_BE3A
        mov byte ptr ds:23B0h, 20h ; ' '
        ret
sub_BE1D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BE30    proc near
        mov byte ptr ds:23A6h, 0

loc_BE35:
        mov byte ptr ds:23B0h, 20h ; ' '

loc_BE3A:
        call    sub_BB2C
        jnb loc_BE40
        ret
; --------------------------------------------------

loc_BE40:
        cmp byte ptr ds:8FAh, 0
        jz  loc_BE55

loc_BE47:
                    ; sub_BE30+141j
        mov ax, 40h ; '@'
        call    sub_CB4F

loc_BE4D:
        call    sub_BD6E
        call    sub_2AAA
        stc
        ret
; --------------------------------------------------

loc_BE55:
        cmp word ptr ds:0Eh, 0
        jnz loc_BDDF
        mov bp, 23BAh
        mov bx, ds:23A4h
        add bx, 2
        mov al, ds:23A3h
        mov ds:86Dh, al
        mov cx, 2409h
        mov dl, ds:23B0h
        push    dx
        mov byte ptr ds:23B0h, 0
        call    sub_511
        pop dx
        mov ds:23B0h, dl
        mov byte ptr ds:86Dh, 0
        jnb loc_BE94
        cmp ax, 0Dh
        jnz loc_BE94
        ret
; --------------------------------------------------

loc_BE8E:
        jmp loc_BF59
; --------------------------------------------------

loc_BE91:
        jmp loc_BDE6
; --------------------------------------------------

loc_BE94:
        sub bp, 23BAh
        mov ds:23A8h, bp

loc_BE9C:
        xor al, al
        test    byte ptr ds:23A6h, 0FFh
        jz  loc_BEDE
        mov ax, 23h ; '#'
        call    sub_CB6A

loc_BEAB:
        call    sub_1270
        cmp byte ptr ds:8FAh, 0
        jnz loc_BED9
        xor ah, ah
        call    sub_BF90
        cmp al, 41h ; 'A'
        jz  loc_BE91
        cmp al, 4Eh ; 'N'
        jz  loc_BE8E
        cmp al, 53h ; 'S'
        jz  loc_BEDE
        cmp al, 59h ; 'Y'
        jz  loc_BEDC
        or  al, al
        jnz loc_BED1
        call    sub_1270

loc_BED1:
        mov ax, 23h ; '#'
        call    sub_CB4F
        jmp short loc_BEAB
; --------------------------------------------------

loc_BED9:
        jmp loc_BE47
; --------------------------------------------------

loc_BEDC:
        xor al, al

loc_BEDE:
        push    ax
        mov ax, ds:23ACh
        mov cx, ds:23AEh
        sub cx, ds:23A8h
        jbe loc_BEF2
        cmp cx, ax
        jz  loc_BF34
        ja  loc_BF31

loc_BEF2:
        sub ax, cx
        mov cx, ds:23ACh
        add ax, cx
        cmp ax, cx
        jbe loc_BF31
        mov dx, ax
        sub dx, cx
        mov ds:0D5h, cx
        add dx, ds:66h
        cmp dx, ds:8F8h
        jnb loc_BF16
        cmp dx, ds:0C8h
        jb  loc_BF31

loc_BF16:
        sub dx, ds:66h
        push    dx
        call    sub_D0C0
        pop dx
        mov cx, ds:0D5h
        mov ds:23ACh, cx
        jnb loc_BF2D
        pop ax
        jmp loc_BE4D
; --------------------------------------------------

loc_BF2D:
        mov ax, cx
        add ax, dx

loc_BF31:
        call    sub_D7FE

loc_BF34:
        push    es
        push    ds
        pop es
        assume es:nothing
        mov cx, ds:23A8h
        mov di, ds:23ACh
        mov si, 23BAh
        or  cx, cx
        jz  loc_BF49
        cld
        repe movsb

loc_BF49:
        pop es
        assume es:nothing
        cmp byte ptr ds:23B1h, 0
        jnz loc_BF54
        call    sub_EE6C

loc_BF54:
        pop ax
        or  al, al
        jnz loc_BF74

loc_BF59:
        inc byte ptr ds:23A7h
        call    loc_BB77
        mov byte ptr ds:23A7h, 0
        jb  loc_BF74
        cmp byte ptr ds:8FAh, 0
        jnz loc_BF71
        jmp loc_BE9C
; --------------------------------------------------

loc_BF71:
        jmp loc_BE47
; --------------------------------------------------

loc_BF74:
                    ; sub_BE30+135j
        mov ax, 25h ; '%'
        call    sub_CB6A
        call    sub_2AAA
        clc
        ret
sub_BE30    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BF7F    proc near
        cmp byte ptr ds:23A0h, 1
        ja  sub_BF90
        jb  loc_BFB0
        cmp al, 61h ; 'a'
        jb  loc_BFB0
        cmp al, 7Ah ; 'z'
        ja  loc_BFB0
sub_BF7F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BF90    proc near
        mov dl, ds:23B0h
        push    dx
        mov byte ptr ds:23B0h, 20h ; ' '
        call    sub_BFA3
        pop dx
        mov ds:23B0h, dl
        ret
sub_BF90    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BFA3    proc near
        cmp al, 61h ; 'a'
        jb  locret_BFAF
        cmp al, 7Ah ; 'z'
        ja  locret_BFAF
        xor al, ds:23B0h

locret_BFAF:
        ret
sub_BFA3    endp

; --------------------------------------------------

loc_BFB0:
        cmp al, 41h ; 'A'
        jb  locret_BFBA
        cmp al, 5Ah ; 'Z'
        ja  locret_BFBA
        xor al, 20h

locret_BFBA:
        ret
; --------------------------------------------------
        mov byte ptr ds:23A0h, 0
        jmp short loc_BFCE
; --------------------------------------------------
        mov byte ptr ds:23A0h, 1
        jmp short loc_BFCE
; --------------------------------------------------
        mov byte ptr ds:23A0h, 2

loc_BFCE:
        test    word ptr ds:0, 4
        jnz loc_C00E
        call    sub_CF7E
        mov si, ds:0C2h
        mov cx, 1
        test    word ptr ds:0, 20h
        jz  loc_BFF6
        mov cx, ds:10h
        sub cx, ds:0Eh
        jbe locret_C00D
        mov si, ds:0Eh

loc_BFF6:
        lodsb
        call    sub_BF7F
        mov [si-1], al
        loop    loc_BFF6
        test    word ptr ds:0, 20h
        jnz loc_C00A
        call    sub_1F34

loc_C00A:
        call    sub_EE6C

locret_C00D:
        ret
; --------------------------------------------------

loc_C00E:
        mov ax, 2Bh ; '+'
        call    sub_CB4F
        ret
; --------------------------------------------------
        db 11 dup(0)        ; CALIGN 10h -> C020 (11 bytes 00)
        db 74h, 0C1h, 76h, 0C1h, 8Ah, 0C1h, 97h, 0C1h, 0A4h, 0C1h
        db 0B8h, 0C1h, 0C9h, 0C1h, 0D5h, 0C1h, 0E2h, 0C1h, 0F2h
        db 0C1h, 0, 0C2h, 0Ah, 0C2h, 15h, 0C2h, 25h, 0C2h, 32h
        db 0C2h, 76h, 0C2h, 32h, 0C2h, 42h, 0C2h, 5Ch, 0C2h, 6Ah
        db 0C2h, 5Ch, 0C2h, 76h, 0C2h, 85h, 0C2h, 94h, 0C2h, 73h
        db 0C3h, 9Fh, 0C2h, 6Ah, 0C2h, 0B3h, 0C2h, 0C9h, 0C2h
        db 0D5h, 0C1h, 0B3h, 0C2h, 0D8h, 0C2h, 0E6h, 0C2h, 0F1h
        db 0C2h, 0D5h, 0C1h, 0, 0C3h, 10h, 0C3h, 1Fh, 0C3h, 0D5h
        db 0C1h, 76h, 0C2h, 32h, 0C2h, 76h, 0C2h, 76h, 0C2h, 0D5h
        db 0C1h, 24h, 0C3h, 0D5h, 0C1h, 32h, 0C2h, 3Bh, 0C3h, 0E6h
        db 0C2h, 0B3h, 0C2h, 0F2h, 0C1h, 0E6h, 0C2h, 54h, 0C3h
        db 8Ah, 0C1h, 5Ch, 0C2h, 97h, 0C1h, 8Eh, 0C3h, 9Ch, 0C3h
        db 0B8h, 0C3h, 0A4h, 0C1h, 0D5h, 0C1h, 1Fh, 0C3h, 0D2h
        db 0C3h, 6Ah, 0C2h, 0DFh, 0C3h, 0DFh, 0C3h, 0E5h, 0C3h
        db 0E2h, 0C1h, 1Fh, 0C3h, 3Bh, 0C3h, 0FAh, 0C3h, 1Fh, 0C3h
        db 0Dh, 0C4h, 1Fh, 0C3h, 1Fh, 0C3h, 17h, 0C4h, 2Dh, 0C4h
        db 3Bh, 0C4h, 4Bh, 0C4h, 64h, 0C4h, 76h, 0C4h, 87h, 0C4h
        db 95h, 0C4h, 8Ah, 0C1h, 0A4h, 0C4h, 0B4h, 0C4h, 0C8h
        db 0C4h, 0D8h, 0C4h, 0E6h, 0C4h, 0F6h, 0C4h, 0Fh, 0C5h
        db 24h, 0C5h, 38h, 0C5h, 45h, 0C5h, 60h, 0C5h, 7Dh, 0C5h
        db 8Ah, 0C5h, 0C8h, 0C4h, 95h, 0C5h, 0A9h, 0C5h, 0C4h
        db 0C5h, 0DEh, 0C5h, 0C9h, 0C2h, 0EDh, 0C5h, 7, 0C6h, 1Dh
        db 0C6h, 37h, 0C6h, 50h, 0C6h, 5Eh, 0C6h, 77h, 0C6h, 85h
        db 0C6h, 92h, 0C6h, 9Ch, 0C6h, 0B5h, 0C6h, 0CFh, 0C6h
        db 0DDh, 0C6h, 0F9h, 0C6h, 14h, 0C7h, 2Bh, 0C7h, 37h, 0C7h
        db 53h, 0C7h, 60h, 0C7h, 78h, 0C7h, 8Ch, 0C7h, 0A1h, 0C7h
        db 0B4h, 0C7h, 0CDh, 0C7h, 0E3h, 0C7h, 0FEh, 0C7h, 0Ah
        db 0C8h, 21h, 0C8h, 39h, 0C8h, 46h, 0C8h, 4Fh, 0C8h, 61h
        db 0C8h, 76h, 0C8h, 88h, 0C8h, 9Eh, 0C8h, 0B6h, 0C8h, 0CCh
        db 0C8h, 0E6h, 0C8h, 0EFh, 0C8h, 7, 0C9h, 1Eh, 0C9h, 32h
        db 0C9h, 47h, 0C9h, 57h, 0C9h, 61h, 0C9h, 76h, 0C9h, 91h
        db 0C9h, 0A8h, 0C9h, 0C4h, 0C9h, 0E1h, 0C9h, 0E1h, 0C9h
        db 0E1h, 0C9h, 0E1h, 0C9h, 0F2h, 0C9h, 0F2h, 0C9h, 0Ah
        db 0CAh, 11h, 0CAh, 2Ah, 0CAh, 42h, 0CAh, 5Fh, 0CAh, 74h
        db 0CAh, 86h, 0CAh, 9Ch, 0CAh, 0B0h, 0CAh, 0C2h, 0CAh
        db 0D2h, 0CAh, 0E2h, 0CAh, 1, 20h, 13h, 46h, 49h, 4Ch
        db 45h, 20h, 41h, 4Ch, 52h, 45h, 41h, 44h, 59h, 20h, 45h
        db 58h, 49h, 53h, 54h, 53h, 0Ch, 50h, 4Ch, 45h, 41h, 53h
        db 45h, 20h, 53h, 54h, 4Fh, 52h, 45h, 0Ch, 4Eh, 4Fh, 20h
        db 53h, 55h, 43h, 48h, 20h, 46h, 49h, 4Ch, 45h, 13h, 43h
        db 4Fh, 2 dup(4Dh), 41h, 4Eh, 44h, 20h, 49h, 4Eh, 50h
        db 55h, 54h, 20h, 45h, 2 dup(52h), 4Fh, 52h, 10h, 55h
        db 4Eh, 45h, 58h, 50h, 45h, 43h, 54h, 45h, 44h, 20h, 45h
        db 2 dup(52h), 4Fh, 52h, 0Bh, 42h, 55h, 2 dup(46h), 45h
        db 52h, 20h, 46h, 55h, 2 dup(4Ch), 0Ch, 4Eh, 4Fh, 20h
        db 46h, 49h, 4Ch, 45h, 20h, 4Fh, 50h, 45h, 4Eh, 0Fh, 45h
        db 2 dup(52h), 4Fh, 52h, 20h, 4Fh, 4Eh, 20h, 4Fh, 55h
        db 54h, 50h, 55h, 54h, 0Dh, 45h, 2 dup(52h), 4Fh, 52h
        db 20h, 57h, 52h, 49h, 54h, 49h, 4Eh, 47h, 9, 4Eh, 4Fh
        db 54h, 20h, 46h, 4Fh, 55h, 4Eh, 44h, 0Ah, 4Eh, 4Fh, 20h
        db 43h, 4Fh, 2 dup(4Dh), 41h, 4Eh, 44h, 0Fh, 49h, 2 dup(4Ch)
        db 45h, 47h, 41h, 4Ch, 20h, 43h, 4Fh, 2 dup(4Dh), 41h
        db 4Eh, 44h, 0Ch, 57h, 4Fh, 52h, 44h
        db 20h, 54h, 2 dup(4Fh), 20h, 42h, 49h, 47h, 0Fh, 4Eh
        db 4Fh, 20h, 44h, 45h, 46h, 49h, 4Eh, 45h, 20h, 42h, 4Ch
        db 4Fh, 43h, 4Bh, 19h, 41h, 4Ch, 50h, 48h, 41h, 4Eh, 55h
        db 4Dh, 45h, 52h, 49h, 43h, 20h, 4Bh, 45h, 59h, 20h, 52h
        db 45h, 51h, 55h, 49h, 52h, 45h, 44h, 0Dh, 4Fh, 55h, 54h
        db 20h, 4Fh, 46h, 20h, 4Dh, 45h, 4Dh, 4Fh, 52h, 59h, 0Bh
        db 4Eh, 4Fh, 20h, 53h, 41h, 56h, 45h, 20h, 47h, 45h, 54h
        db 0Eh, 52h, 45h, 53h, 54h, 4Fh, 52h, 45h, 20h, 44h, 45h
        db 46h, 49h, 4Eh, 45h, 0Eh, 49h, 2 dup(4Ch), 45h, 47h
        db 41h, 4Ch, 20h, 4Dh, 41h, 52h, 47h, 49h, 4Eh, 0Ah, 42h
        db 41h, 44h, 20h, 53h, 54h, 52h, 49h, 4Eh, 47h, 13h, 54h
        db 2 dup(4Fh), 20h, 4Dh, 41h, 4Eh, 59h, 20h, 43h, 48h
        db 41h, 52h, 41h, 43h, 54h, 45h, 52h, 53h, 15h, 43h, 41h
        db 4Eh, 54h, 20h, 43h, 52h, 45h, 41h, 54h, 45h, 20h, 54h
        db 45h, 4Dh, 50h, 20h, 46h, 49h, 4Ch, 45h, 0Eh, 46h, 49h
        db 4Ch, 45h, 20h, 4Eh, 4Fh, 54h, 20h, 46h, 4Fh, 55h, 4Eh
        db 44h, 0Dh, 50h, 52h, 49h, 4Eh, 54h, 45h, 52h, 20h, 45h
        db 2 dup(52h), 4Fh, 52h, 0Ah, 52h, 45h, 41h, 44h, 20h
        db 45h, 2 dup(52h), 4Fh, 52h, 0Eh, 41h, 4Ch, 52h, 45h
        db 41h, 44h, 59h, 20h, 54h, 59h, 50h, 49h, 4Eh, 47h, 0Fh
        db 54h, 59h, 50h, 45h, 20h, 41h, 2Ch, 4Eh, 2Ch, 53h, 2Ch
        db 4Fh, 52h, 20h, 59h, 0Eh, 43h, 48h, 41h, 4Eh, 47h, 45h
        db 20h, 41h, 42h, 4Fh, 52h, 54h, 45h, 44h, 4, 44h, 4Fh
        db 4Eh, 45h, 16h, 54h, 59h, 50h, 45h, 20h, 22h, 2Bh, 22h
        db 20h, 54h, 4Fh, 20h, 43h, 4Fh, 4Eh, 54h, 20h, 50h, 52h
        db 49h, 4Eh, 54h, 18h, 4Eh, 2 dup(45h), 44h, 20h, 4Eh
        db 41h, 4Dh, 45h, 20h, 54h, 4Fh, 20h, 53h, 41h, 56h, 45h
        db 20h, 44h, 45h, 46h, 49h, 4Eh, 45h, 1Eh, 43h, 41h, 4Eh
        db 27h, 54h, 20h, 53h, 43h, 52h, 4Fh, 2 dup(4Ch), 20h
        db 44h, 45h, 46h, 49h, 4Eh, 45h, 20h, 4Fh, 52h, 20h, 44h
        db 49h, 53h, 50h, 4Ch, 41h, 59h, 1Ah, 49h, 4Eh, 56h, 41h
        db 4Ch, 49h, 44h, 20h, 46h, 4Fh, 52h, 4Dh, 41h, 2 dup(54h)
        db 49h, 4Eh, 47h, 20h, 43h, 4Fh, 2 dup(4Dh), 41h, 4Eh
        db 44h, 0Dh, 42h, 41h, 44h, 20h, 44h, 45h, 53h, 54h, 20h
        db 46h, 49h, 4Ch, 45h, 1Bh, 43h, 41h, 4Eh, 27h, 54h, 20h
        db 46h, 4Fh, 52h, 4Dh, 41h, 54h, 20h, 57h, 48h, 49h, 4Ch
        db 45h, 20h, 50h, 52h, 49h, 4Eh, 54h, 49h, 4Eh, 47h, 19h
        db 45h, 2 dup(52h), 4Fh, 52h, 20h, 57h, 52h, 49h, 54h
        db 49h, 4Eh, 47h, 20h, 46h, 4Fh, 52h, 4Dh, 41h, 54h, 20h
        db 46h, 49h, 4Ch, 45h, 0Ch, 43h, 41h, 4Eh, 27h, 54h, 20h
        db 53h, 43h, 52h, 4Fh, 2 dup(4Ch), 5, 42h, 52h, 45h, 41h
        db 4Bh, 14h, 4Eh, 4Fh, 20h, 53h, 41h, 56h, 45h, 20h, 47h
        db 45h, 54h, 53h, 20h, 54h, 4Fh, 20h, 53h, 41h, 56h, 45h
        db 12h, 45h, 2 dup(52h), 4Fh, 52h, 20h, 4Ch, 4Fh, 41h
        db 44h, 49h, 4Eh, 47h, 20h, 53h, 47h, 54h, 73h, 9, 42h
        db 41h, 44h, 20h, 50h, 41h, 52h, 41h, 4Dh, 15h, 4Eh, 4Fh
        db 20h, 4Dh, 45h, 4Dh, 4Fh, 52h, 59h, 20h, 46h, 4Fh, 52h
        db 20h, 4Eh, 55h, 4Dh, 42h, 45h, 52h, 53h, 0Dh, 4Eh, 4Fh
        db 20h, 45h, 51h, 55h, 41h, 4Ch
        db 20h, 53h, 49h, 47h, 4Eh, 0Fh, 50h, 4Fh, 49h, 4Eh, 54h
        db 20h, 54h, 4Fh, 20h, 4Eh, 55h, 4Dh, 42h, 45h, 52h, 18h
        db 4Eh, 4Fh, 20h, 4Dh, 45h, 4Dh, 4Fh, 52h, 59h, 20h, 46h
        db 4Fh, 52h, 20h, 4Eh, 45h, 57h, 20h, 53h, 43h, 52h, 2 dup(45h)
        db 4Eh, 11h, 43h, 41h, 4Eh, 27h, 54h, 20h, 53h, 50h, 4Ch
        db 49h, 54h, 20h, 41h, 47h, 41h, 49h, 4Eh, 10h, 52h, 45h
        db 53h, 55h, 4Ch, 54h, 20h, 54h, 2 dup(4Fh), 20h, 4Ch
        db 41h, 52h, 47h, 45h, 0Dh, 53h, 50h, 4Ch, 49h, 54h, 20h
        db 54h, 2 dup(4Fh), 20h, 42h, 49h, 47h, 0Eh, 4Eh, 2 dup(45h)
        db 44h, 20h, 32h, 20h, 44h, 49h, 47h, 49h, 54h, 20h, 23h
        db 0Fh, 4Eh, 4Fh, 20h, 53h, 50h, 4Ch, 49h, 54h, 20h, 53h
        db 43h, 52h, 2 dup(45h), 4Eh, 13h, 45h, 58h, 54h, 52h
        db 41h, 20h, 53h, 54h, 41h, 52h, 54h, 20h, 43h, 4Fh, 2 dup(4Dh)
        db 41h, 4Eh, 44h, 0Fh, 54h, 2 dup(4Fh), 20h, 4Dh, 41h
        db 4Eh, 59h, 20h, 56h, 41h, 4Ch, 55h, 45h, 53h, 0Dh, 42h
        db 41h, 44h, 20h, 54h, 41h, 42h, 53h, 20h, 43h, 2 dup(4Dh)
        db 44h, 0Fh, 43h, 41h, 4Eh, 27h, 54h, 20h, 4Fh, 50h, 45h
        db 4Eh, 20h, 46h, 49h, 4Ch, 45h, 18h, 45h, 2 dup(52h)
        db 4Fh, 52h, 20h, 57h, 52h, 49h, 54h, 49h, 4Eh, 47h, 20h
        db 49h, 4Eh, 44h, 45h, 58h, 20h, 46h, 49h, 4Ch, 45h, 14h
        db 49h, 4Eh, 44h, 45h, 58h, 20h, 49h, 54h, 45h, 4Dh, 20h
        db 54h, 2 dup(4Fh), 20h, 4Ch, 41h, 52h, 47h, 45h, 13h
        db 4Fh, 4Eh, 45h, 20h, 4Eh, 55h, 4Dh, 42h, 45h, 52h, 20h
        db 52h, 45h, 51h, 55h, 49h, 52h, 45h, 44h, 0Ch, 4Eh, 55h
        db 4Dh, 42h, 45h, 52h, 53h, 20h, 4Fh, 4Eh, 4Ch, 59h, 1Ah
        db 43h, 41h, 4Eh, 27h, 54h, 20h, 4Eh, 45h, 53h, 54h, 20h
        db 58h, 2Ch, 52h, 46h, 2Ch, 52h, 48h, 2Ch, 46h, 4Eh, 20h
        db 43h, 4Dh, 44h, 53h, 1Ch, 4Eh, 4Fh, 20h, 4Ch, 45h, 41h
        db 44h, 45h, 52h, 20h, 43h, 48h, 41h, 52h, 2Eh, 2 dup(2Dh)
        db 55h, 53h, 49h, 4Eh, 47h, 20h, 53h, 50h, 41h, 43h, 45h
        db 0Ch, 53h, 50h, 45h, 43h, 49h, 46h, 59h, 20h, 4Dh, 4Fh
        db 44h, 45h, 0Ah, 54h, 45h, 58h, 54h, 20h, 53h, 41h, 56h
        db 45h, 44h, 13h, 4Eh, 2 dup(45h), 44h, 20h, 31h, 20h
        db 4Fh, 52h, 20h, 32h, 20h, 4Eh, 55h, 4Dh, 42h, 45h, 52h
        db 53h, 1Ah, 43h, 41h, 4Eh, 27h, 54h, 20h, 53h, 43h, 52h
        db 4Fh, 2 dup(4Ch), 20h, 4Fh, 55h, 54h, 20h, 4Fh, 46h
        db 20h, 52h, 45h, 47h, 49h, 4Fh, 4Eh, 19h, 49h, 4Eh, 53h
        db 55h, 46h, 2Eh, 20h, 4Dh, 45h, 4Dh, 4Fh, 52h, 59h, 20h
        db 46h, 4Fh, 52h, 20h, 53h, 4Fh, 52h, 54h, 49h, 4Eh, 47h
        db 0Eh, 4Eh, 4Fh, 20h, 46h, 49h, 4Ch, 45h, 20h, 54h, 4Fh
        db 20h, 52h, 55h, 4Eh, 19h, 4Eh, 4Fh, 54h, 20h, 45h, 4Eh
        db 4Fh, 55h, 47h, 48h, 20h, 4Dh, 45h, 4Dh, 4Fh, 52h, 59h
        db 20h, 46h, 4Fh, 52h, 20h, 44h, 4Fh, 53h, 15h, 43h, 4Fh
        db 2 dup(4Dh), 41h, 4Eh, 44h, 2Eh, 43h, 4Fh, 4Dh, 20h
        db 4Eh, 4Fh, 54h, 20h, 46h, 4Fh, 55h, 4Eh, 44h, 19h, 45h
        db 2 dup(52h), 4Fh, 52h, 20h, 52h, 45h, 41h, 44h, 49h
        db 4Eh, 47h, 20h, 43h, 4Fh, 2 dup(4Dh), 41h, 4Eh, 44h
        db 2Eh, 43h, 4Fh, 4Dh, 18h, 45h, 2 dup(52h), 4Fh, 52h
        db 20h, 43h, 4Ch, 4Fh, 53h, 49h, 4Eh, 47h, 20h, 49h
        db 4Eh, 44h, 45h, 58h, 20h, 46h, 49h, 4Ch, 45h, 0Dh, 4Eh
        db 4Fh, 20h, 49h, 4Eh, 44h, 45h, 58h, 20h, 46h, 49h, 4Ch
        db 45h, 18h, 45h, 2 dup(52h), 4Fh, 52h, 20h, 52h, 45h
        db 41h, 44h, 49h, 4Eh, 47h, 20h, 49h, 4Eh, 44h, 45h, 58h
        db 20h, 46h, 49h, 4Ch, 45h, 0Dh, 4Eh, 4Fh, 20h, 53h, 55h
        db 43h, 48h, 20h, 46h, 49h, 45h, 4Ch, 44h, 0Ch, 4Eh, 4Fh
        db 20h, 44h, 55h, 4Dh, 50h, 20h, 46h, 49h, 4Ch, 45h, 9
        db 42h, 41h, 44h, 20h, 46h, 49h, 45h, 4Ch, 44h, 18h, 45h
        db 2 dup(52h), 4Fh, 52h, 20h, 53h, 4Fh, 52h, 54h, 49h
        db 4Eh, 47h, 20h, 49h, 4Eh, 44h, 45h, 58h, 20h, 46h, 49h
        db 4Ch, 45h, 19h, 44h, 4Fh, 20h, 59h, 4Fh, 55h, 20h, 57h
        db 49h, 53h, 48h, 20h, 54h, 4Fh, 20h, 51h, 55h, 49h, 54h
        db 20h, 28h, 59h, 2Fh, 4Eh, 29h, 0Dh, 42h, 41h, 44h, 20h
        db 46h, 49h, 4Ch, 45h, 20h, 4Eh, 41h, 4Dh, 45h, 1Bh, 43h
        db 41h, 4Eh, 27h, 54h, 20h, 52h, 45h, 56h, 49h, 45h, 57h
        db 20h, 57h, 48h, 49h, 4Ch, 45h, 20h, 50h, 52h, 49h, 4Eh
        db 54h, 49h, 4Eh, 47h, 1Ah, 54h, 2 dup(4Fh), 20h, 4Dh
        db 41h, 4Eh, 59h, 20h, 4Ch, 45h, 56h, 45h, 4Ch, 53h, 20h
        db 4Fh, 46h, 20h, 49h, 4Eh, 53h, 45h, 52h, 54h, 53h, 16h
        db 45h, 2 dup(52h), 4Fh, 52h, 20h, 48h, 41h, 4Eh, 44h
        db 4Ch, 49h, 4Eh, 47h, 20h, 49h, 4Eh, 53h, 45h, 52h, 54h
        db 53h, 0Ah, 44h, 49h, 53h, 4Bh, 20h, 45h, 2 dup(52h)
        db 4Fh, 52h, 6, 1Bh, 42h, 41h, 44h, 3Ah, 17h dup(20h)
        db 0Ch, 41h, 52h, 47h, 20h, 52h, 45h, 51h, 55h, 49h, 52h
        db 45h, 44h, 17h, 45h, 2 dup(52h), 4Fh, 52h, 20h, 4Ch
        db 4Fh, 41h, 44h, 49h, 4Eh, 47h, 20h, 48h, 45h, 4Ch, 50h
        db 20h, 46h, 49h, 4Ch, 45h, 13h, 4Eh, 4Fh, 20h, 53h, 50h
        db 41h, 43h, 45h, 20h, 46h, 4Fh, 52h, 20h, 49h, 4Eh, 53h
        db 45h, 52h, 54h, 14h, 49h, 4Eh, 44h, 45h, 58h, 20h, 49h
        db 54h, 45h, 4Dh, 20h, 54h, 2 dup(4Fh), 20h, 4Ch, 41h
        db 52h, 47h, 45h, 12h, 45h, 2 dup(52h), 4Fh, 52h, 20h
        db 53h, 54h, 4Fh, 52h, 49h, 4Eh, 47h, 20h, 53h, 47h, 54h
        db 53h, 18h, 4Eh, 2 dup(45h), 44h, 20h, 4Eh, 55h, 4Dh
        db 42h, 45h, 52h, 20h, 4Fh, 52h, 20h, 4Dh, 4Fh, 44h, 45h
        db 20h, 41h, 42h, 52h, 2Eh, 15h, 55h, 4Eh, 49h, 4Dh, 50h
        db 4Ch, 45h, 4Dh, 45h, 4Eh, 54h, 45h, 44h, 20h, 43h, 4Fh
        db 2 dup(4Dh), 41h, 4Eh, 44h, 1Ah, 46h, 49h, 4Ch, 45h
        db 20h, 45h, 58h, 49h, 53h, 54h, 53h, 2Ch, 20h, 4Fh, 56h
        db 45h, 52h, 57h, 52h, 49h, 54h, 45h, 20h, 49h, 54h, 3Fh
        db 0Bh, 54h, 59h, 50h, 45h, 20h, 59h, 20h, 4Fh, 52h, 20h
        db 4Eh, 16h, 54h, 45h, 52h, 4Dh, 49h, 4Eh, 41h, 54h, 45h
        db 20h, 42h, 41h, 54h, 43h, 48h, 3Fh, 20h, 28h, 59h, 2Fh
        db 4Eh, 29h, 17h, 4Ch, 45h, 47h, 41h, 4Ch, 20h, 4Fh, 4Eh
        db 4Ch, 59h, 20h, 57h, 49h, 54h, 48h, 20h, 44h, 4Fh, 53h
        db 20h, 32h, 2Eh, 30h, 0Ch, 4Eh, 4Fh, 20h, 50h, 41h, 54h
        db 48h, 20h, 53h, 50h, 45h, 43h, 8, 42h, 41h, 44h, 20h
        db 50h, 41h, 54h, 48h, 11h, 44h, 45h, 46h, 41h, 55h, 4Ch
        db 54h, 20h, 46h, 4Fh, 52h, 20h, 57h, 48h, 41h, 54h, 3Fh
        db 14h, 53h, 50h, 45h, 43h, 49h
        db 46h, 59h, 20h, 50h, 52h, 4Fh, 47h, 52h, 41h, 4Dh, 20h
        db 4Eh, 41h, 4Dh, 45h, 11h, 43h, 41h, 4Eh, 27h, 54h, 20h
        db 52h, 55h, 4Eh, 20h, 43h, 4Fh, 2 dup(4Dh), 41h, 4Eh
        db 44h, 15h, 43h, 41h, 4Eh, 27h, 54h, 20h, 52h, 45h, 41h
        db 2 dup(53h), 49h, 47h, 4Eh, 20h, 4Dh, 45h, 4Dh, 4Fh
        db 52h, 59h, 17h, 43h, 41h, 4Eh, 27h, 54h, 20h, 41h, 2 dup(50h)
        db 45h, 4Eh, 44h, 20h, 54h, 4Fh, 20h, 43h, 4Fh, 4Ch, 20h
        db 44h, 45h, 46h, 15h, 49h, 2 dup(4Ch), 45h, 47h, 41h
        db 4Ch, 20h, 49h, 4Eh, 20h, 46h, 4Fh, 52h, 4Dh, 53h, 20h
        db 4Dh, 4Fh, 44h, 45h, 19h, 54h, 45h, 58h, 54h, 20h, 57h
        db 49h, 4Eh, 44h, 4Fh, 57h, 20h, 57h, 49h, 54h, 48h, 49h
        db 4Eh, 20h, 44h, 45h, 46h, 49h, 4Eh, 45h, 8, 42h, 41h
        db 44h, 20h, 4Ch, 49h, 4Eh, 45h, 17h, 4Eh, 2 dup(45h)
        db 44h, 20h, 46h, 49h, 4Ch, 45h, 20h, 4Eh, 41h, 4Dh, 45h
        db 20h, 26h, 20h, 53h, 47h, 54h, 20h, 49h, 44h, 16h, 54h
        db 2 dup(4Fh), 20h, 4Dh, 41h, 4Eh, 59h, 20h, 50h, 52h
        db 4Fh, 47h, 52h, 41h, 4Dh, 20h, 43h, 41h, 2 dup(4Ch)
        db 53h, 13h, 4Dh, 49h, 53h, 4Dh, 41h, 54h, 43h, 48h, 45h
        db 44h, 20h, 4Fh, 50h, 45h, 52h, 41h, 4Eh, 44h, 53h, 14h
        db 4Dh, 4Fh, 52h, 45h, 20h, 54h, 48h, 41h, 4Eh, 20h, 31h
        db 20h, 55h, 4Eh, 41h, 52h, 59h, 20h, 4Fh, 50h, 0Fh, 4Ch
        db 41h, 42h, 45h, 4Ch, 20h, 4Eh, 4Fh, 54h, 20h, 46h, 4Fh
        db 55h, 4Eh, 44h, 9, 4Eh, 4Fh, 20h, 45h, 4Eh, 44h, 20h
        db 49h, 46h, 14h, 4Eh, 2 dup(45h), 44h, 20h, 49h, 44h
        db 20h, 26h, 20h, 45h, 58h, 50h, 52h, 45h, 2 dup(53h)
        db 49h, 4Fh, 4Eh, 1Ah, 4Fh, 4Eh, 4Ch, 59h, 20h, 31h, 30h
        db 20h, 53h, 48h, 49h, 46h, 54h, 20h, 4Bh, 45h, 59h, 53h
        db 20h, 41h, 2 dup(4Ch), 4Fh, 57h, 45h, 44h, 16h, 4Fh
        db 4Eh, 4Ch, 59h, 20h, 32h, 30h, 20h, 53h, 54h, 41h, 54h
        db 45h, 53h, 20h, 41h, 2 dup(4Ch), 4Fh, 57h, 45h, 44h
        db 1Bh, 36h, 20h, 53h, 54h, 41h, 54h, 45h, 20h, 44h, 45h
        db 46h, 49h, 4Eh, 49h, 54h, 49h, 4Fh, 4Eh, 53h, 20h, 41h
        db 2 dup(4Ch), 4Fh, 57h, 45h, 44h, 1Ch, 34h, 20h, 54h
        db 4Fh, 2 dup(47h), 4Ch, 45h, 20h, 44h, 45h, 46h, 49h
        db 4Eh, 49h, 54h, 49h, 4Fh, 4Eh, 53h, 20h, 41h, 2 dup(4Ch)
        db 4Fh, 57h, 45h, 44h, 10h, 43h, 41h, 4Eh, 27h, 54h, 20h
        db 47h, 45h, 54h, 20h, 4Dh, 45h, 4Dh, 4Fh, 52h, 59h, 17h
        db 46h, 49h, 4Ch, 45h, 20h, 4Fh, 50h, 45h, 4Eh, 2Ch, 20h
        db 51h, 55h, 49h, 54h, 20h, 41h, 4Eh, 59h, 57h, 41h, 59h
        db 3Fh, 6, 51h, 55h, 45h, 55h, 45h, 44h, 18h, 45h, 2 dup(52h)
        db 4Fh, 52h, 20h, 48h, 41h, 4Eh, 44h, 4Ch, 49h, 4Eh, 47h
        db 20h, 50h, 52h, 49h, 4Eh, 54h, 20h, 51h, 55h, 45h, 17h
        db 45h, 2 dup(52h), 4Fh, 52h, 20h, 52h, 45h, 41h, 44h
        db 49h, 4Eh, 47h, 20h, 50h, 52h, 49h, 4Eh, 54h, 20h, 51h
        db 55h, 45h, 1Ch, 50h, 52h, 49h, 4Eh, 54h, 45h, 52h, 20h
        db 41h, 43h, 54h, 49h, 56h, 45h, 2Ch, 20h, 51h, 55h, 49h
        db 54h, 20h, 41h, 4Eh, 59h, 57h, 41h, 59h, 3Fh, 14h, 54h
        db 45h, 52h, 4Dh, 49h, 4Eh, 41h, 54h, 45h, 20h, 54h, 45h
        db 58h, 54h, 20h, 49h, 4Eh, 50h, 55h, 54h, 11h, 4Fh, 56h
        db 45h, 52h, 4Ch, 41h, 59h, 20h, 4Eh, 4Fh, 54h, 20h, 46h
        db 4Fh, 55h, 4Eh, 44h, 15h, 45h, 2 dup(52h), 4Fh, 52h
        db 20h, 4Ch, 4Fh, 41h, 44h, 49h, 4Eh, 47h, 20h, 4Fh, 56h
        db 45h, 52h, 4Ch, 41h, 59h, 13h, 42h, 41h, 44h, 20h, 4Fh
        db 56h, 45h, 52h, 4Ch, 41h, 59h, 20h, 4Ch, 49h, 4Eh, 4Bh
        db 41h, 47h, 45h, 11h, 42h, 41h, 44h, 20h, 43h, 4Fh, 4Ch
        db 55h, 4Dh, 4Eh, 20h, 46h, 4Fh, 52h, 4Dh, 41h, 54h, 0Fh
        db 53h, 54h, 59h, 4Ch, 45h, 20h, 4Eh, 4Fh, 54h, 20h, 46h
        db 4Fh, 55h, 4Eh, 44h, 0Fh, 54h, 2 dup(4Fh), 20h, 4Dh
        db 41h, 4Eh, 59h, 20h, 53h, 54h, 59h, 4Ch, 45h, 53h, 1Bh
        db 43h, 4Fh, 2 dup(4Dh), 41h, 4Eh, 44h, 20h, 54h, 2 dup(4Fh)
        db 20h, 4Ch, 4Fh, 4Eh, 47h, 20h, 46h, 4Fh, 52h, 20h, 49h
        db 4Eh, 53h, 45h, 52h, 54h

; ---------- S U B  R O U T I N E --------------------------


sub_CAFE    proc near
        push    si
        push    cx
        mov di, si
        mov al, 0Dh
        cld
        repne scasb
        dec di
        mov cx, di
        mov ax, 77h ; 'w'
        sub cx, si
        call    sub_CB15
        pop cx
        pop si
        ret
sub_CAFE    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CB15    proc near
        push    ax
        shl ax, 1
        mov bx, ax
        pop ax
        cmp bx, 154h
        jnb sub_CB4F
        mov bx, cs:[bx-3FE0h]
        mov dl, cs:[bx-1]
        cmp dl, cs:[bx]
        jnb sub_CB4F
        mov bp, bx
        xor dh, dh
        add bp, dx
        mov dl, cs:[bx]
        add bx, dx
        cld
        push    ax
        add cx, si

loc_CB3E:
        lodsb
        cmp si, cx
        jbe loc_CB45
        mov al, 20h ; ' '

loc_CB45:
        mov cs:[bp+0], al
        inc bp
        cmp bp, bx
        jb  loc_CB3E
        pop ax
sub_CB15    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CB4F    proc near
        cmp byte ptr ds:2410h, 0
        jnz sub_CB6A
        push    ax
        call    sub_79B
        pop ax
        call    sub_CB6A
        mov dx, 5
        xor cx, cx

loc_CB63:
        loop    loc_CB63
        dec dx
        jnz loc_CB63
        stc
        ret
sub_CB4F    endp ; sp =  2


; ---------- S U B  R O U T I N E --------------------------


sub_CB6A    proc near
        cmp byte ptr ds:2410h, 0
        jz  loc_CB73
        stc
        ret
; --------------------------------------------------

loc_CB73:
        push    ax
        or  word ptr ds:0, 40h
        shl ax, 1
        jnz loc_CB84
        xor word ptr ds:0, 40h

loc_CB84:
        cmp ax, 154h
        jb  loc_CB91
        mov ax, 5
        call    sub_CB4F

loc_CB8F:
        pop ax
        ret
; --------------------------------------------------

loc_CB91:
        mov bx, ax
        mov bx, cs:[bx-3FE0h]
        cmp byte ptr ds:2411h, 0
        jz  loc_CBA5
        cmp bx, 0C31Fh
        jz  loc_CB8F

loc_CBA5:
        mov cl, cs:[bx]
        xor ch, ch
        jmp short loc_CBB7
sub_CB6A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CBAC    proc near
        or  word ptr ds:0, 40h
        push    ax
        mov ax, 0FFFFh
        dec bx

loc_CBB7:
        push    es
        push    word ptr ds:86Eh
        pop es
        mov di, 0AAh ; '?'
        mov bp, 0E8h ; '?'
        cmp word ptr ds:1A26h, 50h ; 'P'
        jz  loc_CBD0
        mov di, 5Ah ; 'Z'
        mov bp, 96h ; '?'

loc_CBD0:
        shl cx, 1
        add cx, di
        cmp cx, bp
        jb  loc_CBDC
        mov cx, bp
        dec cx
        dec cx

loc_CBDC:
        sub cx, di
        shr cx, 1
        cld
        push    ds
        or  ax, ax
        mov dx, cs
        mov ah, ds:96Dh
        jns loc_CBEE
        mov dx, ds

loc_CBEE:
        mov ds, dx
        assume ds:nothing
        call    sub_F60

loc_CBF3:
        inc bx
        mov al, [bx]
        cmp al, 0Dh
        jbe loc_CC0E

loc_CBFA:
        db 2Eh, 81h, 3Eh  ; cmp cs:word_7A7, 4
        dw word_7A7
        dw 4
        jb  loc_CC08
        call    sub_764
        jmp short loc_CC09
; --------------------------------------------------

loc_CC08:
        stosw

loc_CC09:
        loop    loc_CBF3
        pop ds
        assume ds:nothing
        jmp short loc_CC1A
; --------------------------------------------------

loc_CC0E:
        jz  loc_CC16
        cmp al, 0Ah
        jz  loc_CC09
        jmp short loc_CBFA
; --------------------------------------------------

loc_CC16:
        mov al, 1Bh
        jmp short loc_CBFA
; --------------------------------------------------

loc_CC1A:
        mov ax, 20h ; ' '
        mov ah, ds:96Dh
        push    cx
        mov cx, bp
        sub cx, di
        shr cx, 1
        call    sub_75A
        pop cx
        stc
        pop es
        pop ax
        ret
sub_CBAC    endp

; --------------------------------------------------

loc_CC30:
        mov word ptr ds:836h, 0Bh
        cmp ax, 0Bh
        pop ax
        jnz sub_CC43
        mov ax, 79h ; 'y'
        call    sub_CB4F
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_CC43    proc near
        mov ax, ds:836h
        call    sub_8683
        jnb loc_CC69
        push    ax
        mov byte ptr ds:2410h, 1
        call    sub_CCA1
        mov byte ptr ds:2410h, 0
        jb  loc_CC30
        mov word ptr ds:838h, 13h
        call    sub_CC43
        pop ax
        call    sub_8A92
        ret
; --------------------------------------------------

loc_CC69:
        add cx, si
        dec cx
        mov ds:2420h, cx
        call    loc_CD20
        call    sub_CDDB
        test    ax, 8000h
        jz  locret_CCA0
        and ax, 7FFEh
        mov si, ax
        mov ax, cs:word_DFB0
        cmp cs:[si-2130h], ax
        jnz locret_CCA0
        inc word ptr ds:836h
        mov ax, ds:838h
        cmp ds:836h, ax
        jbe sub_CC43
        mov word ptr ds:836h, 0Bh
        jmp short sub_CC43
; --------------------------------------------------

locret_CCA0:
        ret
sub_CC43    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CCA1    proc near
        push    ax
        sub ax, 0Bh
        add ax, 30h ; '0'
        mov ds:2532h, al
        mov bx, 252Eh
        pop ax
sub_CCA1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CCAF    proc near
        push    ax
        mov ax, ds:834h
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_B1CA
        pop es
        assume es:nothing
        pop ax
        jnb loc_CCBE
        ret
; --------------------------------------------------

loc_CCBE:
        push    ax
        call    sub_8A92
        mov ax, ds:834h
        call    sub_8683
        mov cx, [si+14h]
        pop ax
        jb  loc_CCF9
        push    cx
        call    sub_8E7A
        pop cx
        jb  locret_CD01
        sub di, cx
        inc di
        inc di
        mov dx, di
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        push    cx
        mov ax, ds:834h
        call    sub_8683
        pop cx
        jb  loc_CCF9
        mov dx, si
        add dx, 4
        push    cx
        mov ah, 27h
        int 21h     ; DOS - RANDOM BLOCK READ
                    ; DS:DX -> FCB
                    ; CX = number of records to be read
        pop ax
        cmp ax, cx
        jz  loc_CCF9
        stc

loc_CCF9:
        pushf
        mov ax, ds:834h
        call    sub_8A92
        popf

locret_CD01:
        ret
sub_CCAF    endp ; sp =  2

; --------------------------------------------------
        call    sub_CD17
        call    sub_CDDB
        cmp ax, 7000h
        jnz locret_CD16
        mov word ptr ds:836h, 0Bh
        jmp sub_CC43
; --------------------------------------------------

locret_CD16:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_CD17    proc near
        mov si, 2428h
        mov word ptr ds:2420h, 252Eh

loc_CD20:
        mov cx, ds:2420h
        call    sub_CD2F
        ret
sub_CD17    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CD28    proc near
        call    sub_CD2F
        call    sub_CDDB
        ret
sub_CD28    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CD2F    proc near
        mov ax, 3
        mov dh, al
        xor dl, dl
        push    word ptr ds:228h
        push    word ptr ds:1A26h
        pop word ptr ds:228h
        push    word ptr ds:0CEh
        push    word ptr ds:1A26h
        pop word ptr ds:0CEh
        mov al, ds:0CCh
        mov byte ptr ds:0CCh, 0
        mov ah, ds:0CDh
        push    ax
        mov byte ptr ds:0CDh, 0
        call    sub_57D
        mov di, bx
        mov ds:2426h, cx
        mov ds:2424h, si
        mov ds:2422h, di
        call    sub_7084
        mov si, 548h
        call    sub_1936
        mov word ptr ds:228h, 50h ; 'P'
        mov di, ds:2422h
        mov si, ds:2424h
        mov cx, ds:2426h
        mov ds:214h, si
        mov ds:216h, si
        push    word ptr ds:15Fh
        push    word ptr ds:66h
        mov ds:66h, cx
        mov bx, cx
        push    word ptr [bx]
        mov word ptr ds:15Fh, 3
        mov cx, ds:864h

loc_CDAE:
        push    cx
        push    bx
        call    sub_5DE0
        pop bx
        pop cx
        loop    loc_CDB9
        jmp short loc_CDBD
; --------------------------------------------------

loc_CDB9:
        cmp si, bx
        jb  loc_CDAE

loc_CDBD:
        pop word ptr [bx]
        pop word ptr ds:66h
        pop word ptr ds:15Fh
        call    sub_70B2
        pop ax
        mov ds:0CCh, al
        mov ds:0CDh, ah
        pop word ptr ds:0CEh
        pop word ptr ds:228h
        ret
sub_CD2F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CDDB    proc near
        xor ax, ax
        test    word ptr ds:867h, 2000h
        jnz locret_CDFF
        call    sub_1270
sub_CDDB    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CDE8    proc near
        push    ax
        mov ax, ds:864h
        cmp ds:0D0h, ax
        jb  loc_CE00
        mov ax, ds:0CEh
        cmp ax, ds:1A26h
        jb  loc_CE00
        call    sub_EE6C
        pop ax

locret_CDFF:
        ret
; --------------------------------------------------

loc_CE00:
        call    sub_5A98
        call    sub_5A98
        call    sub_5CC3
        pop ax
        ret
sub_CDE8    endp

; --------------------------------------------------

loc_CE0B:
        mov ax, 0Bh
        call    sub_CB4F
        ret
; --------------------------------------------------
        test    word ptr ds:0, 1
        jnz sub_CE1D
        jmp loc_CED5

; ---------- S U B  R O U T I N E --------------------------


sub_CE1D    proc near
        mov dl, 2
        mov dh, 0
        call    sub_4ED
        jb  loc_CE0B
        mov ax, ds:870h
        cmp al, 2Bh ; '+'
        jz  loc_CE45
        cmp al, 40h ; '@'
        jz  loc_CE45
        cmp al, 28h ; '('
        jz  loc_CE45
        cmp al, 2Eh ; '.'
        jz  loc_CE45
        cmp al, 2Dh ; '-'
        jz  loc_CE45
        cmp al, 30h ; '0'
        jb  loc_CE4B
        cmp al, 39h ; '9'
        ja  loc_CE4B

loc_CE45:
        call    sub_4B4B
        jmp loc_CECB
; --------------------------------------------------

loc_CE4B:
        mov dx, ds:8C7h
        sub dx, 870h
        cmp dx, 2
        jnz loc_CEB8
        cmp ah, 3Ah ; ':'
        jnz loc_CEB8
        sub al, 41h ; 'A'
        jb  loc_CEB8
        cmp al, 9
        ja  loc_CEB8
        mov dl, al
        xor ah, ah
        inc ax
        mov ds:979h, ax
        mov ax, 0E00h
        int 21h     ; DOS - SELECT DISK
                    ; DL = new default drive number (0 = A, 1 = B, etc.)
                    ; Return: AL = number of logical drives
        mov cx, 3
        lea di, ds:979h
        mov dx, 2

loc_CE7C:
        add dx, 3
        inc di
        push    dx
        push    di
        push    cx
        call    sub_4ED
        pop cx
        pop di
        pop dx
        mov bx, ds:8C7h
        sub bx, 870h
        cmp bx, 2
        jnz loc_CEAD
        mov ax, ds:870h
        cmp ah, 3Ah ; ':'
        jnz loc_CEAD
        sub al, 41h ; 'A'
        jb  loc_CEAD
        cmp al, 9
        ja  loc_CEAD
        xor ah, ah
        inc ax
        mov [di], ax
        loop    loc_CE7C

loc_CEAD:
        call    sub_E191
        mov ax, 25h ; '%'
        call    sub_CB6A
        clc
        ret
; --------------------------------------------------

loc_CEB8:
        call    sub_2D90
        jb  loc_CEF4
        mov dx, ax
        xor ax, ax
        xor bx, bx
        push    word ptr [si]
        pop word ptr ds:8FDh
        call    word ptr [si]

loc_CECB:
        mov byte ptr ds:90Dh, 0
        rcl byte ptr ds:90Dh, 1
        ret
; --------------------------------------------------

loc_CED5:
        test    word ptr ds:2, 1
        jz  loc_CEEE
        mov si, ds:0C2h
        lodsb
        cmp al, 0Dh
        jz  loc_CEEA
        call    sub_1B54
        ret
; --------------------------------------------------

loc_CEEA:
        call    sub_1F34
        ret
; --------------------------------------------------

loc_CEEE:
        mov al, 0Dh
        call    sub_2262
        ret
; --------------------------------------------------

loc_CEF4:
        mov ax, 0Ch
        call    sub_CB4F
        jmp short loc_CECB
sub_CE1D    endp

; --------------------------------------------------
        call    sub_CFBD
        mov dx, ds:8C7h
        sub dx, 870h
        add dx, 3
        mov dh, ds:5
        call    sub_57D
        call    sub_CF2C
        cmp ax, 0
        jz  loc_CF25
        cmp ax, 0FFh
        ja  loc_CF25
        mov ds:228h, ax
        call    sub_EE6C
        ret
; --------------------------------------------------

loc_CF25:
        mov ax, 16h
        call    sub_CB4F
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_CF2C    proc near
        xor ax, ax
        mov bp, 0Ah
        xor cx, cx
        push    dx
        push    si
        mov si, bx
        cld

loc_CF38:
        push    ax
        call    sub_769
        mov cl, al
        pop ax
        or  cl, cl
        jz  loc_CF38
        cmp cl, 30h ; '0'
        jb  loc_CF56
        cmp cl, 39h ; '9'
        ja  loc_CF56
        mul bp
        sub cl, 30h ; '0'
        add ax, cx
        jmp short loc_CF38
; --------------------------------------------------

loc_CF56:
        mov bx, si
        pop si
        pop dx
        ret
sub_CF2C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CF5B    proc near
        xor ax, ax
        mov bp, 0Ah
        xor cx, cx

loc_CF62:
        mov cl, es:[bx]
        inc bx
        or  cl, cl
        jz  loc_CF62
        cmp cl, 30h ; '0'
        jb  locret_CF7D
        cmp cl, 39h ; '9'
        ja  locret_CF7D
        mul bp
        sub cl, 30h ; '0'
        add ax, cx
        jmp short loc_CF62
; --------------------------------------------------

locret_CF7D:
        ret
sub_CF5B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CF7E    proc near
        test    word ptr ds:0, 4
        jnz loc_CF96
        test    word ptr ds:0, 1
        jz  loc_CF94
        call    sub_CF98
        call    sub_29CE

loc_CF94:
        clc
        ret
; --------------------------------------------------

loc_CF96:
        stc
        ret
sub_CF7E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CF98    proc near
        xor word ptr ds:0, 1
        mov al, ds:4
        xchg    al, ds:0Bh
        mov ds:4, al
        mov al, ds:5
        xchg    al, ds:0Ch
        mov ds:5, al
        mov al, ds:0Ah
        xchg    al, ds:0Dh
        mov ds:0Ah, al
        ret
sub_CF98    endp


; ---------- S U B  R O U T I N E --------------------------


sub_CFBD    proc near
        test    word ptr ds:0, 1
        jnz loc_CFC8
        call    sub_CF98

loc_CFC8:
        mov byte ptr ds:5, 0
        call    sub_28F7
        ret
sub_CFBD    endp

; --------------------------------------------------
        test    word ptr ds:0, 4
        jnz locret_D00D
        call    sub_CF7E
        mov bx, ds:0D0h
        dec bx
        shl bx, 1
        mov ax, [bx+2754h]
        cmp ax, ds:66h
        jnb locret_D00D

loc_CFED:
        mov ds:64h, ax
        call    sub_EE6C
        call    sub_28F7
        mov ax, ds:66h
        cmp ds:0C2h, ax
        jb  loc_D002
        call    sub_2AAA

loc_D002:
        test    word ptr ds:0, 10h
        jz  locret_D00D
        call    sub_EE6C

locret_D00D:
        ret
; --------------------------------------------------
        test    word ptr ds:0, 4
        jnz locret_D00D
        call    sub_CF7E
        mov cx, ds:0D0h
        dec cx
        mov ax, ds:64h
        mov dx, ds:2A84h
        call    sub_2B8E
        jmp short loc_CFED
; --------------------------------------------------
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_D02B    proc near
        call    sub_CF7E
        jb  loc_D05A
        call    sub_D081

loc_D033:
        call    sub_D4BA
        jnb loc_D033
        push    ax
        mov ax, ds:0C0h
        mov ds:64h, ax

loc_D03F:
        mov ds:0C2h, ax
        call    sub_EE6C
        call    sub_2AAA
        test    word ptr ds:0, 10h
        jz  loc_D053
        call    sub_EE6C

loc_D053:
        pop ax
        or  ax, ax
        jnz loc_D05A
        clc
        ret
; --------------------------------------------------

loc_D05A:
        stc
        ret
sub_D02B    endp

; --------------------------------------------------
        call    sub_CF7E
        jb  loc_D05A
        call    sub_D099

loc_D064:
        call    sub_D4E9
        jnb loc_D064
        push    ax
        mov ax, ds:66h
        mov cx, ds:0D0h
        dec cx
        dec cx
        mov dx, 0FFFFh
        call    sub_2B8E
        mov ds:64h, ax
        mov ax, ds:66h
        jmp short loc_D03F

; ---------- S U B  R O U T I N E --------------------------


sub_D081    proc near
        mov ax, ds:0C0h
        mov ds:64h, ax
        push    es
        push    ds
        pop es
        assume es:nothing
        mov cx, ds:0D0h
        add cx, 2
        mov di, 2754h
        cld
        repe stosw
        pop es
        assume es:nothing
        ret
sub_D081    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D099    proc near
        mov ax, ds:66h
        mov ds:64h, ax
        push    es
        push    ds
        pop es
        assume es:nothing
        mov cx, ds:0D0h
        add cx, 2
        mov di, 2754h
        cld
        repe stosw
        pop es
        assume es:nothing
        ret
sub_D099    endp

; --------------------------------------------------
        db 15 dup(0)        ; CALIGN 10h -> sub_D0C0 (15 bytes 00)
; ---------- S U B  R O U T I N E --------------------------


sub_D0C0    proc near
        mov byte ptr ds:2546h, 1
        call    sub_D0CE
        mov byte ptr ds:2546h, 0
        ret
sub_D0C0    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D0CE    proc near
        call    sub_D0E7
        sub ax, ds:0C0h
        sub dx, ds:66h
        neg dx
        cmp ax, dx
        jnb loc_D0E3
        call    sub_D1B0
        ret
; --------------------------------------------------

loc_D0E3:
        call    sub_D1A8
        ret
sub_D0CE    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D0E7    proc near
        mov ax, ds:64h
        or  ax, ax
        jnz loc_D0F6
sub_D0E7    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D0EE    proc near
        mov ax, 0FFFFh
        mov dx, 0
        jmp short loc_D100
; --------------------------------------------------

loc_D0F6:
        mov bx, ds:0D0h
        shl bx, 1
        mov dx, [bx+2754h]

loc_D100:
        cmp byte ptr ds:2546h, 0
        jz  loc_D10C
        mov ax, ds:0C2h
        mov dx, ax

loc_D10C:
        mov cx, ds:0Eh
        or  cx, cx
        jz  loc_D124
        cmp cx, ax
        ja  loc_D11E
        jz  loc_D124
        mov ax, cx
        jmp short loc_D124
; --------------------------------------------------

loc_D11E:
        cmp cx, dx
        jbe loc_D124
        mov dx, cx

loc_D124:
        mov cx, ds:10h
        or  cx, cx
        jz  loc_D13C
        cmp cx, dx
        jb  loc_D136
        jz  loc_D13C
        mov dx, cx
        jmp short loc_D13C
; --------------------------------------------------

loc_D136:
        cmp cx, ax
        jnb loc_D13C
        mov ax, cx

loc_D13C:
        cmp word ptr ds:168h, 0
        jz  locret_D156
        cmp ax, ds:168h
        jbe loc_D14C
        mov ax, ds:168h

loc_D14C:
        cmp dx, ds:166h
        jnb locret_D156
        mov dx, ds:166h

locret_D156:
        ret
sub_D0EE    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D157    proc near
        mov dx, 96h ; '?'
        call    sub_D18C
        mov dx, 6Dh ; 'm'
        call    sub_D18C
        xor ax, ax
        mov ds:95h, al
        mov ds:6Ch, al
        mov ds:0B6h, al
        mov ds:0B7h, ax
        mov ds:0B9h, ax
        mov ds:8Dh, al
        mov ds:8Eh, ax
        mov ds:90h, ax
        mov si, ds:68h
        cld
        lodsw
        mov [si], ax
        mov ax, [si+4]
        mov [si+2], ax
        ret
sub_D157    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D18C    proc near
        mov bx, dx
        cmp byte ptr [bx-1], 0
        jz  locret_D19B
        call    sub_D19C
        mov ah, 13h
        int 21h     ; DOS - DELETE FILE via FCB
                    ; DS:DX -> FCB with filename field filled with
                    ; template for  deletion ('?' wildcard allowed, but not '*')
                    ; Return: AL = 00h file found, FFh file not found

locret_D19B:
        ret
sub_D18C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D19C    proc near
                    ; sub_35A7+16Dp ...
        mov ah, 10h
        int 21h     ; DOS - CLOSE DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h directory update successful
                    ; FFh file not found in directory
        mov bx, dx
        xor ah, ah
        mov [bx-1], ah
        ret
sub_D19C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D1A8    proc near
        mov ax, ds:0BEh
        mov bx, 6Dh ; 'm'
        jmp short sub_D1B6
sub_D1A8    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D1B0    proc near
        mov ax, ds:66h
        mov bx, 96h ; '?'
sub_D1B0    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D1B6    proc near
        test    word ptr ds:0, 4
        jz  loc_D1C0
        stc
        ret
; --------------------------------------------------

loc_D1C0:
        push    ax
        mov ds:2540h, bx
        call    sub_D0EE
        mov bx, ds:66h
        sub bx, ds:0C0h
        cmp bx, 200h
        jbe loc_D207
        shr bx, 1
        pop bp
        push    bp
        cmp byte ptr ds:18EBh, 0
        jnz loc_D1F9
        mov si, ds:8F8h
        sub si, ds:0C0h
        shr si, 1
        mov cx, si
        shr cx, 1
        shr cx, 1
        sub si, cx
        cmp bx, si
        jbe loc_D1F9
        mov bx, si

loc_D1F9:
        cmp bp, ds:0BEh
        jnz loc_D207
        add bx, ds:0C0h
        sub bx, ds:0BEh

loc_D207:
        mov si, ds:2540h
        cmp byte ptr [si-1], 0
        jnz loc_D28C
        push    ax
        call    sub_D9DD
        mov bp, ax
        pop ax
        add bp, 0Fh
        mov cx, 4
        shr bp, cl
        neg bp
        mov di, ds:6Ah
        add bp, [di]
        jnb loc_D25B
        sub bp, [di-2]
        jbe loc_D25B
        cmp bp, 10h
        jbe loc_D25B
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz loc_D242
        cmp bp, 0C8h ; '?'
        jbe loc_D25B

loc_D242:
        cmp bp, 0FFFh
        ja  loc_D28C
        mov cx, 4
        shl bp, cl
        cmp bp, bx
        jnb loc_D28C
        mov bx, bp
        jmp short loc_D28C
; --------------------------------------------------

loc_D255:
        pop si
        pop dx
        pop bx
        pop ax
        jmp short loc_D207
; --------------------------------------------------

loc_D25B:
        push    ax
        push    bx
        push    dx
        push    si
        mov si, ds:68h
        call    sub_D941
        jnb loc_D255
        mov si, ds:6Ah
        call    sub_D97F
        jnb loc_D255
        pop si
        mov dx, si
        mov byte ptr [si], 0
        call    sub_D783
        mov word ptr [bx+0Eh], 1
        pop dx
        pop bx
        pop ax
        jnb loc_D28C
        pop cx
        ret
; --------------------------------------------------

loc_D286:
        jmp loc_D330
; --------------------------------------------------

loc_D289:
        jmp loc_D337
; --------------------------------------------------

loc_D28C:
        pop cx
        cmp cx, ds:0BEh
        ja  loc_D289
        sub ax, cx
        jbe loc_D286
        cmp ax, bx
        jnb loc_D29D
        mov bx, ax

loc_D29D:
        mov ax, cx
        add ax, bx
        push    cx
        call    sub_D4A6
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz loc_D2EC
        call    sub_D9BD
        push    word ptr ds:0C2h
        mov ds:0C2h, ax
        call    sub_8142
        mov ax, ds:0C2h
        pop word ptr ds:0C2h
        mov si, ax
        call    sub_8042
        mov ds:254Dh, dx
        or  dx, dx
        jz  loc_D2D9
        mov si, dx
        mov bp, ss:0Eh
        db 8Bh, 82h, 01h, 00h    ; mov ax, [bp+si+0001h] (mod=10)

loc_D2D9:
        mov ds:2547h, ax
        call    sub_D9D0
        mov dx, ds:0C0h
        cmp ds:2547h, dx
        jbe loc_D32F
        mov ax, ds:2547h

loc_D2EC:
        mov dx, ax
        pop ax
        mov bp, ds:68h
        inc bp
        inc bp
        mov cx, ds:[bp+0]
        mov word ptr ds:254Fh, 0
        mov si, ax
        push    dx
        sub dx, ax
        sub dx, [si]
        add ds:0C6h, dx
        adc word ptr ds:0C4h, 0
        pop dx
        push    ax
        call    sub_D9DD
        mov di, ax
        pop ax
        mov word ptr ds:2542h, 50h ; 'P'
        add di, dx
        sub di, ax
        and di, 0Fh
        jz  loc_D32C
        neg di
        add di, 10h

loc_D32C:
        cld
        jmp short loc_D383
; --------------------------------------------------

loc_D32F:
        pop ax

loc_D330:
                    ; sub_D1B6+185j ...
        mov ax, 34h ; '4'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_D337:
        sub dx, ds:66h
        jnb loc_D330
        neg dx
        cmp dx, bx
        jnb loc_D345
        mov bx, dx

loc_D345:
        mov ax, cx
        sub ax, bx
        push    cx
        mov dx, 0FFFFh
        call    sub_2B87
        mov si, ax
        call    sub_6736
        mov ax, si
        pop dx
        mov bp, ds:6Ah
        mov cx, ds:[bp+0]
        sub cx, 1000h
        mov word ptr ds:254Fh, 1
        mov di, 2
        mov ds:2542h, di
        add di, dx
        sub di, ax
        and di, 0Fh
        jz  loc_D37E
        sub di, 10h

loc_D37E:
        dec di
        mov si, dx
        dec si
        std

loc_D383:
        cmp ax, dx
        jnb loc_D330
        cmp dx, ds:0C0h
        jbe loc_D330
        push    ax
        push    dx
        mov bx, ds:2540h
        mov ds:0E7h, dx
        sub ds:0E7h, ax
        push    word ptr ds:2549h
        pop word ptr ds:0E9h
        cmp byte ptr [bx-1], 0
        jnz loc_D3FD
        push    es
        mov es, cx
        mov cx, dx
        sub cx, ax
        push    di
        repe movsb
        pop ax
        mov cx, ds:2542h
        cmp ax, di
        jb  loc_D3C1
        mov si, cx
        dec si
        jmp short loc_D3DE
; --------------------------------------------------

loc_D3C1:
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz loc_D3DC
        mov si, ss:0Eh
        db 81h, 0C6h, 4, 0  ; add si, 4
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        mov cl, [si]
        xor ch, ch
        repe movsb
        pop ds
        assume ds:nothing

loc_D3DC:
        xor si, si

loc_D3DE:
        add si, 0E7h ; '?'
        mov cx, ds:2542h
        repe movsb
        mov cx, 4
        shr di, cl
        mov ax, es
        add ax, di
        add ax, ds:254Fh
        mov ds:[bp+0], ax
        pop es
        clc
        jmp short loc_D44F
; --------------------------------------------------

loc_D3FD:
        push    ax
        call    sub_D7DF
        pop ax
        jb  loc_D44F
        xor dx, dx
        cmp ax, ds:0BEh
        jnz loc_D42D
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz loc_D42D
        mov si, ss:0Eh
        db 81h, 0C6h, 4, 0  ; add si, 4
        mov dl, ss:[si]
        xor dh, dh
        push    dx
        add dx, si
        mov ax, si
        call    sub_D7D1
        pop dx
        jb  loc_D444

loc_D42D:
                    ; sub_D1B6+25Cj
        push    dx
        mov ax, 0E7h ; '?'
        mov dx, ax
        add dx, ds:2542h
        call    sub_D7DF
        pop dx
        jnb loc_D44F
        sub [bx+21h], dx
        sbb word ptr [bx+23h], 0

loc_D444:
        mov ax, ds:0E7h
        sub [bx+21h], ax
        sbb word ptr [bx+23h], 0
        stc

loc_D44F:
                    ; sub_D1B6+24Cj ...
        pop cx
        pop ax
        jb  loc_D499
        push    ax
        cmp ax, ds:0BEh
        ja  loc_D48A
        push    cx
        mov si, cx
        mov word ptr ds:1C4h, 0FFFFh
        mov word ptr ds:1C6h, 0FFFFh
        call    sub_67F3
        push    es
        push    ds
        pop es
        assume es:nothing
        mov si, 214h
        mov di, 0E7h ; '?'
        mov cx, 50h ; 'P'
        cld
        repe movsb
        call    sub_DA5B
        pop es
        assume es:nothing
        pop cx
        pop ax
        push    word ptr ds:0BEh
        mov ax, ds:0C0h
        jmp short loc_D48C
; --------------------------------------------------

loc_D48A:
        pop ax
        push    ax

loc_D48C:
        mov bp, ds:0C0h
        call    sub_D7FE
        pop ax
        mov bx, ds:2540h
        clc

loc_D499:
        mov bp, ds:0C0h
        mov ds:0E7h, bp
        mov ds:0E9h, bp
        ret
sub_D1B6    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D4A6    proc near
        push    ax
        mov dx, 0FFFFh
        call    sub_2B87
        pop cx
        cmp ax, cx
        ja  loc_D4B3
        ret
; --------------------------------------------------

loc_D4B3:
        mov ax, cx
        sub ax, 1
        jmp short sub_D4A6
sub_D4A6    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D4BA    proc near
        mov cx, 50h ; 'P'
        mov bx, 6Dh ; 'm'
        mov ax, ds:0BEh
        call    sub_D4F5
        jnb loc_D4D4
        mov word ptr ds:0C6h, 0
        mov word ptr ds:0C4h, 0

loc_D4D4:
        push    ax
        mov ax, 0FFFFh
        mov ds:214h, ax
        mov ds:1C4h, ax
        mov ax, ds:0C0h
        mov ds:0E7h, ax
        mov ds:0E9h, ax
        pop ax
        ret
sub_D4BA    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D4E9    proc near
        mov cx, 2
        mov bx, 96h ; '?'
        mov ax, ds:66h
        mov cx, 2
sub_D4E9    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D4F5    proc near
        mov ds:2540h, bx
        push    ax
        mov ax, 638h
        mov word ptr ds:63Ah, 0
        cmp byte ptr [bx-1], 0
        jz  loc_D539
        mov ds:2542h, cx
        push    cx
        call    sub_D72E
        pop bp
        jb  loc_D537
        mov ax, 688h
        mov cx, ds:63Ah
        or  cx, cx
        jz  loc_D52E
        push    bp
        call    sub_D72E
        pop ax
        jnb loc_D52E
        add [bx+21h], ax
        adc word ptr [bx+23h], 0
        stc

loc_D52E:
        pop ax
        jb  loc_D537
        jmp short loc_D591
; --------------------------------------------------
        db 90h              ; EVEN -> loc_D534 (1 byte NOP)
loc_D534:
        xor ax, ax
        stc

loc_D537:
        pop cx
        ret
; --------------------------------------------------

loc_D539:
        mov di, ds:6Ah
        mov ax, [di]
        mov cx, 2
        xor si, si
        cld
        cmp bx, 96h ; '?'
        jz  loc_D560
        mov di, ds:68h
        mov ax, [di+2]
        cmp ax, [di]
        jbe loc_D534
        sub ax, 1000h
        mov cx, 50h ; 'P'
        sub si, cx
        jmp short loc_D565
; --------------------------------------------------

loc_D560:
        cmp ax, [di+2]
        jnb loc_D534

loc_D565:
        push    es
        push    ds
        push    ds
        pop es
        assume es:nothing
        mov ds:2542h, cx
        mov ds, ax
        mov di, 638h
        push    si
        repe movsb
        pop ax
        mov cx, es:63Ah
        or  cx, cx
        jz  loc_D58A
        mov di, 688h
        push    si
        mov si, ax
        sub si, cx
        repe movsb
        pop si

loc_D58A:
        pop ds
        pop es
        assume es:nothing
        mov ds:2544h, si
        pop ax

loc_D591:
        call    sub_D768
        jnb loc_D5D2
        push    bx
        xor ax, ds:0BEh
        xor ax, ds:66h
        xor bx, 6Dh
        xor bx, 96h
        push    word ptr ds:2542h
        call    sub_D1B6
        pop word ptr ds:2542h
        mov cx, ax
        pop bx
        pushf
        xor ax, ds:0BEh
        xor ax, ds:66h
        popf
        jnb loc_D591

loc_D5C1:
        mov dx, ds:2542h
        add dx, ds:63Ah
        add [bx+21h], dx
        adc word ptr [bx+23h], 0
        stc
        ret
; --------------------------------------------------

loc_D5D2:
        mov cx, ax
        add ax, ds:638h
        cmp cx, ds:66h
        jb  loc_D5E5
        mov ds:66h, ax
        mov ax, cx
        jmp short loc_D5F2
; --------------------------------------------------

loc_D5E5:
        push    cx
        push    bx
        mov si, ds:0BEh
        add cx, [si]
        call    sub_D7FE
        pop bx
        pop ax

loc_D5F2:
        mov cx, ds:638h
        db 81h, 0FBh, 06Dh, 0  ; cmp bx, 6Dh ; 'm'
        jnz loc_D605
        sub ds:0C6h, cx
        sbb word ptr ds:0C4h, 0

loc_D605:
        cmp byte ptr [bx-1], 0
        jz  loc_D632
        push    ax
        mov ds:254Bh, ax
        call    sub_D72E
        pop dx
        jnb loc_D626
        push    ax
        mov ax, dx
        mov cx, dx
        add cx, ds:638h
        push    bx
        call    sub_D7FE
        pop bx
        pop ax
        jmp short loc_D5C1
; --------------------------------------------------

loc_D626:
        mov dx, bx
        xor cx, cx
        mov ax, 2800h
        int 21h     ; DOS - RANDOM BLOCK WRITE
                    ; DS:DX -> FCB
                    ; CX = number of records to be written
                    ; if zero, truncate file to current random file position
        jmp short loc_D698
; --------------------------------------------------
        db 90h              ; EVEN -> loc_D632 (1 byte NOP)
loc_D632:
        mov di, ax
        mov si, ds:2544h
        xor ax, ax
        mov bp, ds:6Ah
        db 81h, 0FBh, 06Dh, 0  ; cmp bx, 6Dh ; 'm'
        jnz loc_D659
        mov ax, 0F000h
        mov bp, ds:68h
        inc bp
        inc bp
        sub si, ds:638h
        sub si, ds:2542h
        sub si, ds:63Ah

loc_D659:
        add ax, ds:[bp+0]
        push    es
        push    ds
        push    ds
        pop es
        assume es:nothing
        mov cx, ds:638h
        mov ds, ax
        push    si
        mov es:254Bh, di
        cld
        repe movsb
        pop di
        mov ax, ds
        pop ds
        pop es
        assume es:nothing
        mov cx, 4
        db 81h, 0FBh, 06Dh, 0  ; cmp bx, 6Dh ; 'm'
        jnz loc_D68B
        shr di, cl
        add di, ax
        mov si, ds:68h
        mov [si+2], di
        jmp short loc_D698
; --------------------------------------------------

loc_D68B:
        add si, 0Fh
        shr si, cl
        add si, ax
        mov di, ds:6Ah
        mov [di], si

loc_D698:
                    ; sub_D4F5+194j
        push    es
        push    ds
        pop es
        assume es:nothing
        mov si, 638h
        mov di, 0E7h ; '?'
        mov cx, ds:2542h
        cld
        push    cx
        push    si
        repe movsb
        pop si
        pop cx
        mov di, 214h
        repe movsb
        push    ss
        pop es
        mov di, 4
        mov bp, ss:0Eh
        add di, bp
        mov si, 688h
        mov cx, ds:63Ah
        or  cx, cx
        jz  loc_D6F7
        repe movsb
        sub di, bp
        mov [bp+0], di
        mov di, 4
        mov bp, ss:10h
        mov [bp+0], di
        mov bp, ss:12h
        mov [bp+0], di
        mov di, ds:0BEh
        mov cx, [di]
        sub ds:0C6h, cx
        sbb word ptr ds:0C4h, 0
        add di, [di]
        mov ds:0C0h, di

loc_D6F7:
        pop es
        assume es:nothing
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jz  loc_D70F
        mov cx, ds:638h
        mov si, ds:0C0h
        add cx, si
        call    sub_73F0
        jmp short loc_D723
; --------------------------------------------------

loc_D70F:
        mov si, ds:0C0h
        call    sub_7EEB
        mov cx, ds:638h
        mov si, ds:254Bh
        add cx, si
        call    sub_7368

loc_D723:
        mov ax, ds:0C0h
        mov ds:0E7h, ax
        mov ds:0E9h, ax
        clc
        ret
sub_D4F5    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D72E    proc near
        mov dx, ax
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        mov dx, bx
        sub [bx+21h], cx
        sbb word ptr [bx+23h], 0
        jl  loc_D747
        mov ah, 27h
        int 21h     ; DOS - RANDOM BLOCK READ
                    ; DS:DX -> FCB
                    ; CX = number of records to be read
        or  al, al
        jz  loc_D74E

loc_D747:
        mov dx, bx
        call    sub_D18C
        stc
        ret
; --------------------------------------------------

loc_D74E:
        sub [bx+21h], cx
        sbb word ptr [bx+23h], 0
        js  loc_D761
        jnz loc_D75F
        cmp word ptr [bx+21h], 0
        jz  loc_D761

loc_D75F:
        clc
        ret
; --------------------------------------------------

loc_D761:
        mov dx, bx
        call    sub_D18C
        clc
        ret
sub_D72E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D768    proc near
        mov bp, ds:66h
        inc bp
        add bp, ds:638h
        jb  loc_D781
        cmp bp, ds:8F8h
        jnb loc_D781
        cmp bp, ds:0C8h
        jnb loc_D781
        clc
        ret
; --------------------------------------------------

loc_D781:
        stc
        ret
sub_D768    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D783    proc near
        cmp byte ptr ds:8FAh, 0
        jz  loc_D796
        mov ax, 41h ; 'A'

loc_D78D:
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_D791:
        mov ax, 72h ; 'r'
        jmp short loc_D78D
; --------------------------------------------------

loc_D796:
        mov bx, dx
        cmp byte ptr [bx-1], 0
        jnz loc_D7C6
sub_D783    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D79E    proc near
        mov al, [bx+1]
        or  al, al
        jz  loc_D791
        cmp al, 20h ; ' '
        jz  loc_D791
        mov ah, 16h
        int 21h     ; DOS - CREATE A DISK FILE
                    ; DS:DX -> FCB
        inc al
        cmp al, 1
        ja  loc_D7CA
        inc byte ptr [bx-1]
        mov word ptr [bx+0Eh], 200h
        xor ax, ax
        mov [bx+20h], al
        mov [bx+21h], ax
        mov [bx+23h], ax

loc_D7C6:
        xor ax, ax
        clc
        ret
; --------------------------------------------------

loc_D7CA:
        mov ax, 31h ; '1'
        call    sub_CB4F
        ret
sub_D79E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D7D1    proc near
        push    ax
        push    dx
        mov dx, ax
        mov ah, 1Ah
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        pop ds
        assume ds:nothing
        jmp short loc_D7E7
sub_D7D1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D7DF    proc near
                    ; sub_D1B6+281p
        push    ax
        push    dx
        mov dx, ax
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer

loc_D7E7:
        pop cx
        pop dx
        sub cx, dx
        mov ah, 28h ; '('
        mov dx, bx
        int 21h     ; DOS - RANDOM BLOCK WRITE
                    ; DS:DX -> FCB
                    ; CX = number of records to be written
                    ; if zero, truncate file to current random file position
        or  al, al
        jnz loc_D7F7
        clc
        ret
; --------------------------------------------------

loc_D7F7:
        mov ax, 32h ; '2'
        call    sub_CB4F
        ret
sub_D7DF    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D7FE    proc near
                    ; sub_22F7+118p ...
        push    ax
        push    cx
        mov si, cx
        cmp si, ax
        jbe loc_D808
        mov si, ax

loc_D808:
        call    sub_77C4
        pop cx
        pop ax
        push    ax
        call    sub_6FEC
        mov ax, cx
        call    sub_6FEC
        pop ax
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, ax
        mov si, cx
        mov bx, ds:0C2h
        call    sub_D8CA
        mov ds:0C2h, bx
        mov bx, ds:166h
        call    sub_D8CA
        mov ds:166h, bx
        mov bx, ds:168h
        call    sub_D8CA
        mov ds:168h, bx
        mov bx, ds:0D72h
        call    sub_D8CA
        mov ds:0D72h, bx
        mov bx, ds:0D5h
        call    sub_D8CA
        mov ds:0D5h, bx
        mov bx, ds:64h
        call    sub_D8CA
        mov ds:64h, bx
        mov bx, ds:10h
        call    sub_D8CA
        mov ds:10h, bx
        mov bx, ds:0Eh
        call    sub_D8CA
        mov ds:0Eh, bx
        mov bp, 0
        push    si

loc_D87A:
        xor si, si

loc_D87C:
        mov bx, ds:[bp+si+2754h]
        call    sub_D8CA
        mov ds:[bp+si+2754h], bx
        db 81h, 0C6h, 030h, 0  ; add si, 30h ; '0'
        cmp si, ds:[bp+2A54h]
        jbe loc_D87C
        add bp, 2
        db 81h, 0FDh, 030h, 0  ; cmp bp, 30h ; '0'
        jb  loc_D87A
        pop si
        mov cx, ds:66h
        sub cx, si
        jbe loc_D8BD
        cmp si, di
        ja  loc_D8BA
        jz  loc_D8C1
        add si, cx
        add di, cx
        inc cx
        mov ds:66h, di
        std
        repe movsb
        jmp short loc_D8C1
; --------------------------------------------------

loc_D8BA:
        cld
        repe movsb

loc_D8BD:
        mov ds:66h, di

loc_D8C1:
        mov di, ds:66h
        mov byte ptr [di], 1Ah
        pop es
        assume es:nothing
        ret
sub_D7FE    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D8CA    proc near
        cmp bx, 0FFFFh
        jz  locret_D8F1
        cmp bx, ds:66h
        ja  locret_D8F1
        cmp bx, ds:0C0h
        jb  locret_D8F1
        cmp bx, cx
        jnb loc_D8E9
        cmp bx, ax
        jbe locret_D8F1
        mov dx, ax
        cmp bx, cx
        jbe loc_D8EF

loc_D8E9:
        mov dx, bx
        sub dx, cx
        add dx, ax

loc_D8EF:
        mov bx, dx

locret_D8F1:
        ret
sub_D8CA    endp

; --------------------------------------------------
        mov bx, ds:0Eh
        call    sub_D90D
        jnb loc_D906
        mov bx, ds:10h
        call    sub_D90D
        jnb loc_D906
        clc
        ret
; --------------------------------------------------

loc_D906:
        mov ax, 34h ; '4'
        call    sub_CB4F
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_D90D    proc near
        cmp bx, ax
        jb  loc_D917
        cmp bx, cx
        jnb loc_D917
        clc
        ret
; --------------------------------------------------

loc_D917:
        stc
        ret
sub_D90D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D919    proc near
        or  cx, cx
        jz  locret_D940
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        test    word ptr ds:0, 800h
        jz  loc_D933

loc_D929:
        lodsb
        cmp al, 1Ah
        jz  loc_D93F
        stosb
        loop    loc_D929
        jmp short loc_D93F
; --------------------------------------------------

loc_D933:
        lodsb
        cmp al, 1Ah
        jz  loc_D93F
        or  al, al
        jz  loc_D93D
        stosb

loc_D93D:
        loop    loc_D933

loc_D93F:
        pop es
        assume es:nothing

locret_D940:
        ret
sub_D919    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D941    proc near
        mov bp, si
        mov bx, 957h
        dec bx
        dec bx
        stc
        pushf

loc_D94A:
        mov di, [bx]
        inc bx
        inc bx
        cmp bx, bp
        ja  loc_D97D
        mov ax, [bx]
        sub ax, di
        jbe loc_D979
        popf
        clc
        pushf
        mov cx, [bx+2]
        mov si, [bx]
        or  si, si
        jnz loc_D96B
        mov [bx], di
        mov [bx+2], di
        jmp short loc_D979
; --------------------------------------------------

loc_D96B:
        sub [bx], ax
        sub [bx+2], ax
        sub cx, si
        jbe loc_D979
        push    bp
        call    sub_409F
        pop bp

loc_D979:
        inc bx
        inc bx
        jmp short loc_D94A
; --------------------------------------------------

loc_D97D:
        popf
        ret
sub_D941    endp


; ---------- S U B  R O U T I N E --------------------------


sub_D97F    proc near
        mov bp, si
        mov bx, 96Bh
        stc
        pushf

loc_D986:
        mov di, [bx]
        dec bx
        dec bx
        cmp bx, bp
        jbe loc_D9BB
        mov ax, di
        sub ax, [bx]
        jbe loc_D9B7
        popf
        clc
        pushf
        mov cx, [bx]
        mov si, cx
        or  si, si
        jnz loc_D9A6
        mov [bx], di
        mov [bx-2], di
        jmp short loc_D9B7
; --------------------------------------------------

loc_D9A6:
        add [bx], ax
        sub cx, [bx-2]
        pushf
        add [bx-2], ax
        popf
        jbe loc_D9B7
        push    bp
        call    sub_4199
        pop bp

loc_D9B7:
        dec bx
        dec bx
        jmp short loc_D986
; --------------------------------------------------

loc_D9BB:
        popf
        ret
sub_D97F    endp


; ---------- S U B  R O U T I N E --------------------------

; Attributes: bp-based frame

sub_D9BD    proc near
        push    bx
        push    cx
        push    dx
        push    si
        push    di
        push    bp
        mov bp, sp
        xchg    ax, [bp+0Ch]
        push    ax
        mov ax, [bp+0Ch]
        mov bp, [bp+0]
        ret
sub_D9BD    endp ; sp = -0Eh


; ---------- S U B  R O U T I N E --------------------------

; Attributes: bp-based frame

sub_D9D0    proc near
                    ; seg000:DA57p

arg_A       = word ptr  0Ch

        pop ax
        mov bp, sp
        xchg    ax, [bp+arg_A]
        pop bp
        pop di
        pop si
        pop dx
        pop cx
        pop bx
        ret
sub_D9D0    endp ; sp =  0Eh


; ---------- S U B  R O U T I N E --------------------------


sub_D9DD    proc near
                    ; sub_D1B6+15Bp
        mov ax, 50h ; 'P'
        mov word ptr ds:2549h, 0
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz locret_DA06
        push    si
        mov si, ss:0Eh
        db 36h, 02h, 84h, 04h, 00h    ; add al, ss:[si+4] (mod=10)
        adc ah, 0
        mov ds:2549h, ax
        db 81h, 2Eh, 49h, 25h, 50h, 00h    ; sub word ptr ds:2549h, 50h (81 encoding)
        pop si

locret_DA06:
        ret
sub_D9DD    endp

; --------------------------------------------------
        call    sub_D9BD
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        mov dx, si
        add cx, si
        mov bx, si

loc_DA14:
        mov di, si
        add si, ax
        xor bp, bp
        jmp short loc_DA4A
; --------------------------------------------------

loc_DA1C:
        push    si
        push    di
        mov cx, ax
        repe cmpsb
        pop di
        pop si
        jnb loc_DA46
        or  bp, bp
        jnz loc_DA34
        mov bx, di
        sub bx, ax
        cmp bx, dx
        jnb loc_DA34
        mov bx, dx

loc_DA34:
        mov bp, si
        mov cx, ax
        push    ax

loc_DA39:
        lodsb
        xchg    al, [di]
        mov [si-1], al
        inc di
        loop    loc_DA39
        pop ax
        jmp short loc_DA4A
; --------------------------------------------------
        db 90h              ; EVEN -> loc_DA46 (1 byte NOP)
loc_DA46:
        add si, ax
        add di, ax

loc_DA4A:
        cmp si, cx
        jb  loc_DA1C
        mov si, bx
        mov cx, bp
        or  cx, cx
        jnz loc_DA14
        pop es
        assume es:nothing
        call    sub_D9D0

locret_DA5A:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_DA5B    proc near
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz locret_DA5A
        mov si, ds:254Dh
        mov bx, 8
        mov dx, 1D1Bh
        inc si
        call    sub_79AF
        inc bx
        mov dx, 1D2Fh
        call    sub_79AF
        mov si, 1D1Bh
        mov bx, 8
        call    sub_7AF1
        mov dx, cx
        add dx, si
        mov di, ds:0BEh
        mov bp, ss:0Eh
        mov si, ds:254Dh
        db 8Bh, 82h, 01h, 00h    ; mov ax, [bp+si+0001h] (mod=10)
        cld
        xor si, si
        inc di
        inc di

loc_DA9B:
        mov bx, 1D1Bh
        mov bp, 0FFFFh

loc_DAA1:
        cmp [bx], si
        jbe loc_DAAB
        cmp [bx], bp
        jnb loc_DAAB
        mov bp, [bx]

loc_DAAB:
        inc bx
        inc bx
        cmp bx, dx
        jb  loc_DAA1
        mov si, bp
        cmp si, ax
        jnb loc_DAEE
        push    si
        push    si
        push    bx
        push    ax
        call    sub_7016
        mov cx, si
        pop ax
        pop bx
        pop si
        jb  loc_DACD
        inc cx
        sub cx, si
        jbe loc_DACD
        dec si
        repe movsb

loc_DACD:
        pop bp
        push    bp
        push    di
        push    ax
        sub si, di
        mov ax, bp
        mov cx, dx
        mov di, 1D1Bh
        sub cx, di
        shr cx, 1

loc_DADE:
        repne scasw
        jnz loc_DAE9
        sub [di-2], si
        or  cx, cx
        jnz loc_DADE

loc_DAE9:
        pop ax
        pop di
        pop si
        jmp short loc_DA9B
; --------------------------------------------------

loc_DAEE:
        mov ds:0C0h, di
        mov si, ds:0BEh
        sub di, si
        mov [si], di
        mov si, ds:254Dh
        push    es
        push    ss
        pop es
        assume es:nothing
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        mov bp, ss:0Eh
        mov di, 4
        add si, bp
        add di, bp
        mov cl, [si]
        xor ch, ch
        repe movsb
        sub di, bp
        mov [bp+0], di
        mov di, 4
        mov bp, ss:10h
        mov [bp+0], di
        mov bp, ss:12h
        mov [bp+0], di
        mov bp, ss:0Eh
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        mov ax, ds:0C0h
        db 89h, 83h, 01h, 00h    ; mov [bp+di+0001h], ax (mod=10)
        mov si, di
        mov bx, 8
        mov dx, 1D1Bh
        call    sub_7A03
        inc bx
        mov dx, 1D2Fh
        call    sub_7A03
        ret
sub_DA5B    endp

; --------------------------------------------------
        db 0                ; EVEN -> sub_DB50 (1 byte 00)
; ---------- S U B  R O U T I N E --------------------------


sub_DB50    proc far
        sti
        push    bx
        push    cx
        push    si
        push    di
        push    ds
        push    es
        cld
        mov bx, word ptr cs:byte_1+5Bh
        mov ds, bx
        mov es, bx
        push    ax
        call    sub_DBCC
        pop ax
        or  ah, ah
        jz  loc_DBB3
        dec ah
        jz  loc_DB71
        jmp short loc_DBC5
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_DB71:
        cli
        mov bx, ds:256Ah
        mov ax, [bx]
        push    word ptr ds:256Ah
        push    word ptr ds:2568h
        push    word ptr ds:2564h
        push    word ptr ds:2566h
        call    sub_DBF5
        pop word ptr ds:2566h
        pop word ptr ds:2564h
        pop word ptr ds:2568h
        pop word ptr ds:256Ah
        mov bx, ds:256Ah
        cmp bx, ds:256Ch
        sti
        pop es
        pop ds
        pop di
        pop si
        pop cx
        pop bx
        ret     2
; --------------------------------------------------

loc_DBAD:
        mov word ptr ds:2568h, 0FFFFh

loc_DBB3:
        sti
        nop
        cli
        mov bx, ds:256Ah
        cmp bx, ds:256Ch
        jz  loc_DBAD
        mov ax, [bx]
        call    sub_DBF5

loc_DBC5:
        pop es
        pop ds
        pop di
        pop si
        pop cx
        pop bx
        iret
sub_DB50    endp ; sp =  0Ch


; ---------- S U B  R O U T I N E --------------------------


sub_DBCC    proc near
        mov bx, ds:256Ch
        mov si, bx
        call    sub_DD0B
        cmp bx, ds:256Ah
        jz  locret_DBF4
        mov ax, 100h
        call    sub_77D
        jz  locret_DBF4
        xor ax, ax
        call    sub_77D
        xchg    al, ah
        mov ah, ds:978h
        mov [si], ax
        mov ds:256Ch, bx

locret_DBF4:
        ret
sub_DBCC    endp


; ---------- S U B  R O U T I N E --------------------------


sub_DBF5    proc near
        call    sub_DC4D
        jnz loc_DC0E

loc_DBFA:
        mov dh, [bx+1]
        and dh, 7Fh
        call    sub_DD0B
        mov ds:256Ah, bx
        mov word ptr ds:2568h, 0FFFFh
        ret
; --------------------------------------------------

loc_DC0E:
        cmp ds:2568h, ax
        jz  loc_DC36
        mov si, di
        add si, ds:2602h
        or  al, al
        jz  loc_DC27
        mov cl, al
        xor ch, ch

loc_DC22:
        add si, es:[si]
        loop    loc_DC22

loc_DC27:
        mov ds:2568h, ax
        mov ax, es:[si]
        add ax, si
        inc si
        inc si
        mov ds:2564h, ax
        jmp short loc_DC3A
; --------------------------------------------------

loc_DC36:
        mov si, ds:2566h

loc_DC3A:
        mov ax, es:[si]
        inc si
        inc si
        mov dh, [bx+1]
        mov ds:2566h, si
        cmp si, ds:2564h
        jnb loc_DBFA
        ret
sub_DBF5    endp


; ---------- S U B  R O U T I N E --------------------------


sub_DC4D    proc near
        cmp al, 0FFh
        jnz loc_DC58
        xchg    ah, al
        xor ah, ah
        cmp ax, ax
        ret
; --------------------------------------------------

loc_DC58:
        mov di, 2665h
        mov cx, 0Bh
        repne scasb
        jnz loc_DCD0
        xor cl, cl
        cmp cl, ds:25D4h
        jz  loc_DCD0
        test    ds:25D4h, ah
        jz  loc_DC72
        not cl

loc_DC72:
        mov dl, ds:2604h
        or  dl, 4
        or  dl, cl
        xor dl, ah
        and dl, ds:2606h
        jz  loc_DCD0
        xor dl, dl
        test    ds:2604h, ah
        jz  loc_DCC3
        mov dh, ds:2604h
        or  dh, ds:25D4h
        or  dh, ds:25DCh
        push    di
        mov di, 25E4h

loc_DC9B:
        cmp byte ptr [di+5], 1
        jz  loc_DCA3
        or  dh, [di]

loc_DCA3:
        add di, 8
        cmp di, 2602h
        jl  loc_DC9B
        pop di
        xor dh, ds:2606h
        and dh, ds:2606h
        or  ah, ds:2604h
        xor ah, ds:2604h
        db 84h, 0E6h     ; test dh, ah  (original encoding)
        jnz loc_DCD0
        not dl

loc_DCC3:
        xor cl, dl
        jz  loc_DCD0
        mov al, [di+0Ah]
        xor ah, ah
        cmp ax, ax
        clc
        ret
; --------------------------------------------------

loc_DCD0:
        xchg    ah, al

loc_DCD2:
        and al, ds:2606h
        mov cx, ds:2624h
        mov di, 2626h
        repne scasb
        jz  loc_DCEB
        mov dl, al
        neg dl
        and dl, al
        xor al, dl
        jmp short loc_DCD2
; --------------------------------------------------

loc_DCEB:
        sub di, 2627h
        shl di, 1
        mov di, [di+263Bh]
        mov es, ds:25BEh
        xchg    al, ah
        xor ah, ah
        mov si, di
        add si, ax
        add si, 10h
        call    sub_DEA2
        mov al, es:[si]
        ret
sub_DC4D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_DD0B    proc near
        add bx, 2
        cmp bx, 25BEh
        jnz locret_DD17
        mov bx, 256Eh

locret_DD17:
        ret
sub_DD0B    endp

; --------------------------------------------------
        sti
        push    ax
        push    bx
        push    cx
        push    dx
        push    si
        push    di
        push    ds
        push    es
        cld
        mov ax, word ptr cs:byte_1+5Bh
        mov ds, ax
        call    sub_C77
        jnb loc_DD30
        jmp loc_DE05
; --------------------------------------------------

loc_DD30:
        and al, 7Fh
        push    ds
        pop es
        assume es:nothing
        mov di, 260Ch
        mov cx, ds:2608h
        cld
        repne scasb
        jnz loc_DD98
        dec di
        mov bh, ah
        mov ah, [di+0Ah]
        mov di, 2620h
        mov cx, ds:260Ah
        repne scasb
        jnz loc_DD53
        xor di, di

loc_DD53:
        mov al, bh
        test    al, 80h
        jnz loc_DD83
        test    di, di
        jz  loc_DD64
        or  ds:2560h, ah

loc_DD61:
        jmp short loc_DD9E
; --------------------------------------------------
        db 90h              ; EVEN -> loc_DD64 (1 byte NOP)
loc_DD64:
        test    ds:2562h, ah
        jnz loc_DD61
        or  ds:2562h, ah
        push    ax
        xchg    al, ah
        call    sub_DE0A
        mov al, ds:267Ch
        cmp al, 0
        jz  loc_DD7F
        xor ds:267Bh, al

loc_DD7F:
        pop ax
        jmp short loc_DD9E
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_DD83:
        test    di, di
        jz  loc_DD90
        not ah
        and ds:2560h, ah
        jmp short loc_DD9E
; --------------------------------------------------
        db 90h              ; EVEN -> loc_DD90 (1 byte NOP)
loc_DD90:
        not ah
        and ds:2562h, ah
        jmp short loc_DD9E
; --------------------------------------------------

loc_DD98:
        mov al, ah
        cmp al, 80h ; '?'
        jb  loc_DDAC

loc_DD9E:
        cli
        mov al, 20h ; ' '
        out 20h, al     ; Interrupt controller, 8259A.

loc_DDA3:
        pop es
        assume es:nothing
        pop ds
        pop di
        pop si
        pop dx
        pop cx
        pop bx
        pop ax
        iret
; --------------------------------------------------

loc_DDAC:
        mov ah, ds:2560h
        push    ax
        mov ah, ds:267Bh
        mov cx, 7
        mov al, 1

loc_DDBA:
        cmp ah, 0
        jz  loc_DDD2
        db 84h, 0E0h     ; test al, ah  (original encoding)
        jz  loc_DDCE
        xor ah, al
        push    ax
        push    cx
        push    es
        call    sub_DE0A
        pop es
        pop cx
        pop ax

loc_DDCE:
        rol al, 1
        loop    loc_DDBA

loc_DDD2:
        pop ax
        mov byte ptr ds:267Bh, 0
        mov bx, ds:256Ch
        mov si, bx
        call    sub_DD0B
        push    si
        push    bx
        push    ax
        call    sub_E4D3
        pop ax
        pop bx
        pop si
        jb  loc_DDF7
        pushf
        cli
        mov al, 20h ; ' '
        out 20h, al     ; Interrupt controller, 8259A.
        popf
        call    dx
        jmp short loc_DDA3
; --------------------------------------------------

loc_DDF7:
        cmp bx, ds:256Ah
        jz  loc_DE05
        mov [si], ax
        mov ds:256Ch, bx
        jmp short loc_DD9E
; --------------------------------------------------

loc_DE05:
        call    sub_79B
        jmp short loc_DD9E

; ---------- S U B  R O U T I N E --------------------------


sub_DE0A    proc near
        push    word ptr ds:86Eh
        pop es
        push    bp
        call    loc_DE2C
        pop bp
        ret
sub_DE0A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_DE15    proc near
        mov bx, 25C2h

loc_DE18:
        call    sub_DE25
        add bx, 8
        cmp bx, 2602h
        jl  loc_DE18
        ret
sub_DE15    endp


; ---------- S U B  R O U T I N E --------------------------


sub_DE25    proc near
        mov dx, [bx+2]
        mov bp, [bx]
        jmp short loc_DE55
; --------------------------------------------------

loc_DE2C:
        mov bx, 25D2h

loc_DE2F:
        cmp al, [bx+2]
        jz  loc_DE3E
        add bx, 8
        cmp bx, 2602h
        jl  loc_DE2F
        ret
; --------------------------------------------------

loc_DE3E:
        mov byte ptr ds:267Ch, 0
        cmp byte ptr [bx+7], 1
        jnz loc_DE4C
        mov ds:267Ch, al

loc_DE4C:
        mov dx, [bx+2]
        mov bp, [bx]
        xor ds:[bp+0], dx

loc_DE55:
        push    bx
        push    cx
        mov al, [bx+4]
        mov ah, ds:96Fh
        mov cx, 207h
        test    ds:[bp+0], dx
        jnz loc_DE71
        mov ax, 20h ; ' '
        mov ah, ds:96Dh
        mov cx, 607h

loc_DE71:
        cmp bx, 25C2h
        jnz loc_DE8A
        push    ax
        mov ah, 1
        cmp cs:byte_1+5Dh, 0
        jz  loc_DE87
        shl ch, 1
        add cl, 6

loc_DE87:
        int 10h     ; - VIDEO - SET CURSOR CHARACTERISTICS
                    ; CH bits 0-4 = start line for cursor in character cell
                    ; bits 5-6 = blink attribute
                    ; CL bits 0-4 = end line for cursor in character cell
        pop ax

loc_DE8A:
        pop cx
        mov bx, [bx+5]
        cmp word ptr ds:1A26h, 50h ; 'P'
        jz  loc_DE99
        sub bx, 0A0h ; '?'

loc_DE99:
        push    di
        mov di, bx
        call    sub_764
        pop si
        pop bx
        ret
sub_DE25    endp


; ---------- S U B  R O U T I N E --------------------------


sub_DEA2    proc near
        push    bx
        push    ax
        call    sub_DEAD
        test    es:[bx], al
        pop ax
        pop bx
        ret
sub_DEA2    endp


; ---------- S U B  R O U T I N E --------------------------


sub_DEAD    proc near
        push    cx
        mov bx, 8
        div bl
        mov cl, ah
        xor ah, ah
        mov bx, ax
        add bx, di
        mov al, 1
        shl al, cl
        pop cx
        ret
sub_DEAD    endp

; --------------------------------------------------
        db 15 dup(0)        ; CALIGN 10h -> DED0 (15 bytes 00)
        db 40h, 30h, 40h, 31h, 40h, 32h, 40h, 33h, 40h, 34h, 40h
        db 35h, 40h, 36h, 40h, 37h, 40h, 38h, 40h, 39h, 40h, 41h
        db 40h, 42h, 40h, 43h, 40h, 44h, 40h, 45h, 40h, 46h, 40h
        db 47h, 40h, 48h, 40h, 49h, 40h, 4Ah, 40h, 4Bh, 40h, 4Ch
        db 40h, 4Dh, 40h, 4Eh, 40h, 4Fh, 40h, 50h, 40h, 51h, 40h
        db 52h, 40h, 53h, 40h, 54h, 40h, 55h, 40h, 56h, 40h, 57h
        db 40h, 58h, 40h, 59h, 40h, 5Ah, 41h, 44h, 41h, 53h, 42h
        db 46h, 42h, 4Bh, 42h, 53h, 3 dup(43h), 44h, 43h, 48h
        db 43h, 49h, 43h, 4Ch, 43h, 4Dh, 43h, 4Eh, 43h, 50h, 43h
        db 52h, 43h, 53h, 43h, 55h, 44h, 43h, 44h, 46h, 47h, 48h
        db 44h, 4Ch, 44h, 50h, 44h, 53h, 44h, 57h, 45h, 4Ch, 45h
        db 52h, 45h, 58h, 47h, 54h, 48h, 2 dup(4Dh), 30h, 4Dh
        db 31h, 4Dh, 32h, 4Dh, 33h, 4Dh, 34h, 4Dh, 35h, 4Dh, 36h
        db 4Dh, 37h, 4Dh, 38h, 4Dh, 44h, 4Dh, 55h, 4Dh, 56h, 4Eh
        db 43h, 4Eh, 4Ch, 4Eh, 4Bh, 4Eh, 50h, 4Eh, 52h, 4Eh, 53h
        db 4Eh, 54h, 4Eh, 57h, 50h, 43h, 50h, 44h, 50h, 4Ch, 3 dup(50h)
        db 52h, 50h, 53h, 50h, 54h, 50h, 55h, 50h, 57h, 52h, 30h
        db 52h, 31h, 52h, 32h, 52h, 33h, 52h, 34h, 52h, 35h, 52h
        db 36h, 52h, 37h, 52h, 38h, 52h, 39h, 52h, 43h, 52h, 44h
        db 52h, 45h, 52h, 4Ch, 52h, 50h, 52h, 53h, 52h, 56h, 52h
        db 57h, 53h, 44h
word_DFB0   dw 4853h
        db 53h, 49h, 53h, 4Bh, 53h, 4Dh, 53h, 4Eh, 3 dup(53h)
        db 55h, 53h, 56h, 54h, 46h, 54h, 49h, 54h, 4Eh, 54h, 53h
        db 55h, 44h, 57h, 41h, 57h, 43h, 57h, 4Ch, 57h, 4Eh, 57h
        db 53h, 57h, 58h, 2 dup(57h), 58h, 43h, 58h, 2 dup(44h)
        db 54h, 53h, 31h, 53h, 32h, 53h, 33h, 53h, 34h, 53h, 35h
        db 53h, 36h, 53h, 37h, 53h, 50h, 42h, 43h, 4Ch, 42h, 4Ch
        db 45h, 4Eh, 46h, 50h, 46h, 54h, 50h, 42h, 44h, 4Dh, 4Ch
        db 4Dh, 52h, 4Ch, 44h, 3 dup(4Ch), 52h, 4Ch, 2 dup(55h)
        db 50h, 2 dup(46h), 59h, 44h, 0A6h, 0E4h, 0A7h, 0E4h, 0A8h
        db 0E4h, 0A9h, 0E4h, 0AAh, 0E4h, 0ABh, 0E4h, 0ACh, 0E4h
        db 0ADh, 0E4h, 0AEh, 0E4h, 0AFh, 0E4h, 0B4h, 0E4h, 0B5h
        db 0E4h, 0B6h, 0E4h, 0B7h, 0E4h, 0B8h, 0E4h, 0B9h, 0E4h
        db 0BAh, 0E4h, 0BBh, 0E4h, 0BCh, 0E4h, 0BDh, 0E4h, 0BEh
        db 0E4h, 0BFh, 0E4h, 0C0h, 0E4h, 0C1h, 0E4h, 0C2h, 0E4h
        db 0C3h, 0E4h, 0C4h, 0E4h, 0C5h, 0E4h, 0C6h, 0E4h, 0C7h
        db 0E4h, 0C8h, 0E4h, 0C9h, 0E4h, 0CAh, 0E4h, 0CBh, 0E4h
        db 0CCh, 0E4h, 0CDh, 0E4h, 1Ch, 85h, 98h, 5Ah, 5Ch, 0D0h
        db 46h, 0E5h, 4, 13h, 60h, 12h, 0DAh, 1Dh, 0DCh, 0E2h
        db 0F6h, 0E2h, 0DCh, 1Dh, 76h, 13h, 0F7h, 0E2h, 2Ah, 88h
        db 0DDh, 1Dh, 0F8h, 0E2h, 0DBh, 1Dh, 31h, 87h, 5Fh, 87h
        db 0BDh, 0CFh, 8Ch, 89h, 0D6h, 88h, 0D1h, 88h, 1Bh, 89h
        db 30h, 21h, 0AEh, 20h, 64h, 0E5h, 7Eh, 0CFh, 0F5h, 12h
        db 0A7h, 0E2h, 0B3h, 0E2h, 0B1h, 0E2h, 0B4h, 0E2h, 0B2h
        db 0E2h, 0B0h, 0E2h, 0AFh, 0E2h, 0ACh, 0E2h, 0ABh, 0E2h
        db 27h, 13h, 55h, 13h, 23h, 88h, 0DDh, 1Dh, 57h, 0E4h
        db 22h, 0E3h, 5Eh, 0E4h, 4Dh, 19h, 64h, 0E4h, 7Dh, 1Dh
        db 25h, 1Ch, 0DCh, 1Dh, 0D1h, 0CFh, 8Eh, 0E4h, 76h, 0E4h
        db 0A3h, 0E4h, 7Ch, 0E4h, 5Bh, 1Dh, 0Eh, 0D0h, 10h, 1Ch
        db 5Bh, 0E3h, 5Ah, 0E3h, 59h, 0E3h, 58h, 0E3h, 57h, 0E3h
        db 56h, 0E3h, 55h, 0E3h, 54h, 0E3h, 53h, 0E3h, 52h, 0E3h
        db 4Dh, 25h, 0F2h, 86h, 5, 8Ah, 0Ch, 8Ah, 95h, 0E4h, 9Ch
        db 0E4h, 0D0h, 97h, 0EEh, 88h, 0BAh, 8Ah, 43h, 0CCh, 0Eh
        db 0E3h, 0C4h, 8Bh, 0C7h, 54h, 0Fh, 0E3h, 10h, 0E3h, 0CFh
        db 54h, 4Fh, 85h, 2Bh, 0D0h, 0CEh, 0E1h, 22h, 0E3h, 29h
        db 0E3h, 0ACh, 87h, 45h, 0E4h, 46h, 0E4h, 47h, 0E4h, 48h
        db 0E4h, 49h, 0E4h, 4Ah, 0E4h, 4Bh, 0E4h, 1Dh, 0CEh, 0EBh
        db 85h, 78h, 56h, 0DBh, 0E1h, 0DAh, 0E1h, 0D9h, 0E1h, 0D8h
        db 0E1h, 0D7h, 0E1h, 0D6h, 0E1h, 0D5h, 0E1h, 0A5h, 13h
        db 91h, 0E1h, 44h, 21h, 0DBh, 20h, 9Bh, 0E1h, 0A0h, 0E1h
        db 81h, 0E1h, 0B5h, 28h, 0D9h, 1Dh, 0D8h, 1Dh, 0D6h, 1Dh
        db 0C8h, 1Dh, 0C7h, 1Dh, 0D7h, 1Dh, 4Ch, 0E1h, 6Ch, 0EEh
        db 0F1h, 85h, 8Bh, 3Eh, 0C2h, 0, 8Bh, 0CFh, 4Fh, 2Bh, 0Eh
        db 0C0h, 0, 76h, 27h, 6, 1Eh, 7, 0B0h, 20h, 0FDh, 57h
        db 0F3h, 0AEh, 0Bh, 0C9h, 74h, 6, 80h, 7Dh, 1, 0, 74h
        db 0F4h, 2 dup(47h), 8Bh, 0C7h, 59h, 7, 41h, 3Bh, 0C1h
        db 73h, 3, 0E8h, 84h, 0F6h, 0E8h, 2, 0Dh, 0E8h, 6Ah, 49h
        db 0C3h, 81h, 3Eh, 5Fh, 1, 2, 0, 74h, 4, 0E8h, 19h, 32h
        db 0C3h, 0E8h, 0E6h, 31h, 0C3h

; ---------- S U B  R O U T I N E --------------------------


sub_E191    proc near
        call    sub_CFBD
        call    sub_E2DC
        call    sub_20F3
        ret
sub_E191    endp

; --------------------------------------------------
        mov ax, 1
        jmp short loc_E1A3
; --------------------------------------------------
        mov ax, 0FFFFh

loc_E1A3:
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jz  loc_E1B0
        push    ax
        call    sub_13A5
        pop ax

loc_E1B0:
        add ax, ds:13Dh
        jz  loc_E1B8
        jns loc_E1BB

loc_E1B8:
        mov ax, ds:13Dh

loc_E1BB:
        mov ds:1D9Dh, ax
        xor ax, ax
        mov ds:1D9Fh, ax
        call    sub_8309
        ret
; --------------------------------------------------
        mov bx, 25CAh
        call    loc_DE4C
        ret
; --------------------------------------------------
        mov bx, 25C2h
        call    loc_DE4C
        ret
; --------------------------------------------------
aCccccc_kzT2fss db 'CCCCCC.',8Ah,87h,'(',0E2h,'2',0E4h,'S',0E8h,'|@',0B8h,0
        db 1, 0CDh, 16h, 74h, 0F9h, 5Bh, 0Ah, 0E4h, 75h, 35h, 6
        db 0Eh, 7, 0BFh, 2Fh, 0E2h, 0B9h, 0Fh, 0, 90h, 0FCh, 0F2h
        db 0AEh, 7, 75h, 25h, 0B8h, 0Fh, 0, 0F7h, 0E3h, 81h, 0EFh
        db 30h, 0E2h, 3, 0F8h, 2Eh, 8Ah, 85h, 3Eh, 0E2h, 0Ah, 0C0h
        db 74h, 11h, 32h, 0E4h, 50h, 0E8h, 0B6h, 3Dh, 0E8h, 2Eh
        db 43h, 58h, 0E8h, 3Fh, 40h, 33h, 0C0h, 0CDh, 16h, 0C3h
        db 27h, 60h, 7, 5Eh, 0F8h, 0F7h, 5Fh, 61h, 65h, 69h, 6Fh
        db 75h, 79h, 6Eh, 71h, 41h, 45h, 4Fh, 55h, 4Eh, 49h, 51h
        db 0A0h, 82h, 0A1h, 0A2h, 0A3h, 3 dup(0), 0F0h, 90h, 0E5h
        db 0E9h, 0, 0E2h, 0, 85h, 8Ah, 8Dh, 95h, 97h, 3 dup(0)
        db 0F1h, 0F4h, 0E6h, 0EAh, 0, 0E3h, 0, 84h, 89h, 8Bh, 94h
        db 81h, 98h, 2 dup(0), 8Eh, 0F6h, 99h, 9Ah, 0, 0E0h, 0
        db 83h, 88h, 8Ch, 93h, 96h, 3 dup(0), 0F2h, 0F5h, 0E7h
        db 0EBh, 0, 0E4h, 0, 86h, 7 dup(0), 8Fh, 6 dup(0), 0EFh
        db 2 dup(0), 0EEh, 0EDh, 0, 0A4h, 0EFh, 0F3h, 0, 0E8h
        db 0ECh, 0A5h, 2 dup(0), 0A6h, 2 dup(0), 0A7h, 0Bh dup(0)
        db 33h, 0C0h, 0EBh, 12h, 43h, 83h, 0C3h, 5, 5 dup(43h)
        db 0D1h, 0E3h, 8Bh, 87h, 91h, 0Dh, 0E8h, 7, 65h, 0F7h
        db 6, 2 dup(0), 20h, 0, 75h, 4, 0A2h, 0D4h, 0, 0C3h, 50h
        db 0E8h, 46h, 31h, 58h, 0Bh, 0C0h, 74h, 3, 0E8h, 96h, 31h
        db 0E8h, 94h, 0Bh, 0E8h, 0CFh, 47h, 0C3h

; ---------- S U B  R O U T I N E --------------------------


sub_E2DC    proc near
        mov ax, 20h ; ' '
        mov ah, ds:96Dh
        mov cl, ds:0Ah
        xor ch, ch
        cld
        mov di, 2
        inc cx
        sub cx, di
        shl di, 1
        call    sub_75A
        ret
sub_E2DC    endp

; --------------------------------------------------
        inc bx
        inc bx
        shl bx, 1
        mov bx, cs:[bx-1CD2h]
        mov ax, [bx+2]
        not ax
        mov bp, [bx]
        and ds:[bp+0], ax

loc_E30A:
        call    sub_DE25
        ret
; --------------------------------------------------
        inc bx
        inc bx
        shl bx, 1
        mov bx, cs:[bx-1CD2h]
        mov ax, [bx+2]
        mov bp, [bx]
        or  ds:[bp+0], ax
        jmp short loc_E30A
; --------------------------------------------------
        mov al, ds:25D4h

loc_E325:
        call    loc_DE2C
        ret
; --------------------------------------------------
        mov al, ds:25DCh
        jmp short loc_E325
; --------------------------------------------------
        db 0DAh, 25h            ; fisub dword ptr [di] (MASM 3.1 syntax issue)
        shl byte ptr [di], cl
        ret    5325h
; --------------------------------------------------
        mov bx, 25D2h

loc_E338:
        test    [bx+2], dh
        jz  loc_E346
        cmp byte ptr [bx+7], 1
        jnz loc_E346
        xor dh, [bx+2]

loc_E346:
        db 81h, 0C3h, 8, 0  ; add bx, 8
        cmp bx, 2602h
        jl  loc_E338
        pop bx
        ret
; --------------------------------------------------
        db 9 dup(40h), 0A2h, 82h, 26h, 22h, 36h, 6, 26h, 52h, 0E8h
        db 0CEh, 0FFh, 88h, 36h, 80h, 26h, 58h, 2Ah, 0E6h, 88h
        db 26h, 81h, 26h, 0EBh, 15h, 0E9h, 0C1h, 0, 0E8h, 13h
        db 24h, 8Ah, 0F0h, 0E8h, 0B6h, 0FFh, 22h, 36h, 6, 26h
        db 3Ah, 36h, 80h, 26h, 75h, 4Eh, 0B8h, 0, 1, 0CDh, 16h
        db 74h, 0E7h, 22h, 36h, 6, 26h, 52h, 0E8h, 9Dh, 0FFh, 59h
        db 3Ah, 36h, 80h, 26h, 75h, 38h, 2Ah, 0EEh, 3Ah, 2Eh, 81h
        db 26h, 75h, 30h, 0Ah, 0E4h, 74h, 0C9h, 25h, 0FFh, 7Fh
        db 8Bh, 0F0h, 2Eh, 8Bh, 0B4h, 0Eh, 0E0h, 81h, 0EEh, 52h
        db 0E3h, 72h, 7Dh, 83h, 0FEh, 9, 77h, 78h, 0F7h, 0DEh
        db 83h, 0C6h, 9, 0A0h, 82h, 26h, 0B4h, 0Ah, 0F6h, 0E4h
        db 3, 0C6h, 0A2h, 82h, 26h, 33h, 0C0h, 0CDh, 16h, 0EBh
        db 0B2h, 32h, 0E4h, 0A0h, 82h, 26h, 0BEh, 82h, 26h, 0BFh
        db 38h, 0E4h, 0B9h, 0Dh, 0, 90h, 6, 0Eh, 7, 0FCh, 0F2h
        db 0AEh, 7, 0FAh, 8Bh, 1Eh, 6Ah, 25h, 75h, 16h, 50h, 0B9h
        db 4, 0, 0D2h, 2 dup(0E8h), 0EFh, 63h, 0A2h, 84h, 26h
        db 58h, 2 dup(0E8h), 63h, 0A2h, 85h, 26h, 0BEh, 85h, 26h
        db 83h, 0EBh, 2, 81h, 0FBh, 6Eh, 25h, 73h, 6, 0BBh, 0BEh
        db 25h, 83h, 0EBh, 2, 3Bh, 1Eh, 6Ch, 25h, 74h, 15h, 8Ah
        db 4, 0B4h, 0FFh, 86h, 0E0h, 89h, 7, 4Eh, 81h, 0FEh, 82h
        db 26h, 77h, 0DCh, 89h, 1Eh, 6Ah, 25h, 0FBh, 0C3h, 0E8h
        db 65h, 23h, 0FBh, 0C3h, 0, 1Ah, 8, 9, 20h, 0FFh, 0AEh
        db 0AFh, 1Bh, 0Dh, 0Ah, 7Eh, 2Dh, 6 dup(43h), 8Ah, 87h
        db 4Fh, 0Bh, 8Ah, 26h, 6Fh, 9, 0E8h, 7Ah, 42h, 0C3h, 0E8h
        db 6, 3Dh, 0E8h, 0E7h, 3Ch, 0C3h, 0B8h, 2, 0, 0EBh, 4
        db 90h, 0B8h, 1, 0, 0FFh, 36h, 6Dh, 23h, 0A3h, 6Dh, 23h
        db 0E8h, 0B4h, 37h, 8Fh, 6, 6Dh, 23h, 0C3h, 0B8h, 2, 0
        db 0EBh, 4, 90h, 0B8h, 1, 0, 0FFh, 36h, 6Dh, 23h, 0A3h
        db 6Dh, 23h, 0E8h, 87h, 37h, 8Fh, 6, 6Dh, 23h, 0C3h, 0E8h
        db 62h, 3Ch, 0E8h, 0B0h, 3Ch, 0C3h, 0E8h, 3Eh, 0A4h, 0E8h
        db 57h, 0A2h, 0C3h, 0E8h, 32h, 0A4h, 0E8h, 50h, 0A2h, 0C3h
        db 0CDh, 5, 0C3h, 9 dup(48h), 5, 39h, 0, 0EBh, 1Ch, 19h dup(48h)
        db 5, 5Ah, 0, 0E9h, 0Fh, 9Fh

; ---------- S U B  R O U T I N E --------------------------


sub_E4D3    proc near
        call    sub_DC4D
        stc
        jz  locret_E50A
        mov si, di
        add si, ds:2602h
        or  al, al
        jz  loc_E4EC
        mov cl, al
        xor ch, ch

loc_E4E7:
        add si, es:[si]
        loop    loc_E4E7

loc_E4EC:
        mov bx, es:[si+2]
        or  bh, bh
        jz  loc_E509
        and bx, 7FFFh
        mov dx, cs:[bx-1FF2h]
        cmp dx, 0E546h
        jz  locret_E50A
        cmp dx, 0E564h
        jz  locret_E50A

loc_E509:
        stc

locret_E50A:
        ret
sub_E4D3    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E50B    proc near
        call    sub_CB6A
        mov bx, 256Eh
        mov ds:256Ah, bx
        mov ds:256Ch, bx
        xor ah, ah
        int 16h     ; KEYBOARD - READ CHAR FROM BUFFER, WAIT IF EMPTY
                    ; Return: AH = scan code, AL = character
        call    sub_BF90
        cmp al, ds:0AC9h
        jz  loc_E53D
        cmp al, ds:0ACAh
        jz  loc_E53C
        or  al, al
        jnz loc_E534
        xor ax, ax
        int 16h     ; KEYBOARD - READ CHAR FROM BUFFER, WAIT IF EMPTY
                    ; Return: AH = scan code, AL = character

loc_E534:
        mov ax, 80h ; '?'
        call    sub_CB4F
        jmp short sub_E50B
; --------------------------------------------------

loc_E53C:
        stc

loc_E53D:
        pushf
        mov ax, 0
        call    sub_CB6A
        popf
        ret
sub_E50B    endp

; --------------------------------------------------
        mov bx, 256Eh
        mov ds:256Ah, bx
        mov ds:256Ch, bx
        mov byte ptr ds:8FAh, 1
        mov bx, sp
        mov ax, ds
        cmp ax, ss:[bx+4]
        jnz locret_E563
        call    sub_E570

locret_E563:
        ret
; --------------------------------------------------
        mov ax, 71h ; 'q'
        call    sub_E50B
        jb  locret_E56F
        call    sub_5E6

locret_E56F:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_E570    proc near
        int 3       ; Trap to Debugger
        ret
sub_E570    endp

; --------------------------------------------------
        db 14 dup(0)        ; CALIGN 10h -> E580 (14 bytes 00)
        mov si, 25E2h
        mov cx, 2665h
        mov word ptr ds:2694h, 0
        sub cx, si
        mov ax, 1
        push    word ptr ds:2410h
        mov byte ptr ds:2410h, 1
        call    sub_8574
        pop ax
        mov ds:2410h, al
        call    sub_A54E
        mov bx, 870h
        mov ax, ds:832h
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_CCAF
        jb  loc_E607
        mov ax, ds:832h
        call    sub_8683
        jb  loc_E607
        cmp byte ptr [si], 3Bh ; ';'
        jnz loc_E5C2
        call    sub_EADD

loc_E5C2:
        call    sub_E98C
        jb  loc_E5F0
        call    sub_E9D2
        jb  loc_E5F0
        mov ds:26D7h, al
        add ax, 11h
        mov ds:2602h, ax
        call    sub_EADD
        push    si
        push    cx
        mov byte ptr ds:26DAh, 1
        call    sub_E64B
        pop cx
        pop si
        jb  loc_E5F0
        mov byte ptr ds:26DAh, 0
        call    sub_E64B
        jnb loc_E619

loc_E5F0:
        cmp word ptr ds:2694h, 0
        jz  loc_E600
        mov ax, ds:2694h
        call    sub_CB4F
        jmp short loc_E607
; --------------------------------------------------
        db 90h              ; EVEN -> loc_E600 (1 byte NOP)
loc_E600:
        mov si, ds:2690h
        call    sub_CAFE

loc_E607:
        mov ax, 1
        call    sub_8683
        jb  loc_E63B
        mov di, 25E2h
        cld
        repe movsb
        stc
        jmp short loc_E63B
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_E619:
        push    si
        push    cx
        call    sub_E7BB
        pop cx
        pop si
        jb  loc_E5F0
        mov ax, ds:26DBh
        call    sub_EAFB
        jb  loc_E607
        mov ds:25BEh, ax
        push    ds
        pop es
        call    sub_E7C3
        jb  loc_E5F0
        mov ax, 25h ; '%'
        call    sub_CB6A
        clc

loc_E63B:
        pushf
        mov ax, 1
        call    sub_8A92
        mov ax, ds:832h
        call    sub_8A92
        popf
        pop es
        assume es:nothing
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_E64B    proc near
        mov ax, 269Eh
        mov ds:269Ch, ax
        mov ax, 25E2h
        mov ds:2696h, ax
        mov byte ptr ds:26C8h, 1
        mov word ptr ds:260Ah, 0
        mov word ptr ds:2608h, 0
        mov byte ptr ds:2604h, 0

loc_E66D:
        call    sub_E98C
        mov bx, di
        push    si
        push    cx
        mov si, 26CFh
        sub bx, si
        cmp bx, 8
        jle loc_E682
        mov bx, 8
        cld

loc_E682:
        mov di, 26CAh
        mov cx, bx
        repe cmpsb
        jnz loc_E6A1
        pop si
        pop cx
        mov si, ds:2690h
        mov cx, ds:2692h
        mov al, ds:26C8h
        shr ax, 1
        mov ds:26C9h, al
        clc
        jmp locret_E7A2
; --------------------------------------------------

loc_E6A1:
        mov di, ds:269Ch
        mov ax, bx
        stosb
        mov si, 26CFh
        mov cx, bx
        cld
        repe movsb
        mov ds:269Ch, di
        xor bx, bx
        pop cx
        pop si

loc_E6B8:
        call    sub_E9D2
        jb  loc_E6C5
        push    ax
        inc bl
        mov ax, dx
        jmp short loc_E710
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_E6C5:
        call    sub_EA8F
        cmp ax, 0Dh
        jz  loc_E718
        call    sub_BFA3
        cmp ax, 4Eh ; 'N'
        jnz loc_E6E5
        cmp byte ptr ds:26DAh, 0
        jnz loc_E708
        mov al, ds:26C9h
        mov ds:2604h, al
        jmp short loc_E708
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_E6E5:
        mov byte ptr ds:26E3h, 0
        cmp ax, 54h ; 'T'
        jz  loc_E6F9
        cmp ax, 53h ; 'S'
        jnz loc_E70D
        mov byte ptr ds:26E3h, 1

loc_E6F9:
        call    sub_EA8F
        cmp al, 3Ah ; ':'
        jnz loc_E70D
        call    sub_EA8F
        call    sub_BFA3
        mov bh, al

loc_E708:
        call    sub_EA8F
        jnb loc_E710

loc_E70D:
        jmp loc_E79A
; --------------------------------------------------

loc_E710:
        cmp al, 2Ch ; ','
        jz  loc_E6B8
        cmp al, 0Dh
        jnz loc_E70D

loc_E718:
        mov al, ds:2606h
        or  al, ds:26C8h
        mov ds:2606h, al
        test    bl, bl
        jz  loc_E70D
        test    bh, bh
        jz  loc_E74B
        mov di, ds:2696h
        cmp di, 2602h
        jge loc_E7B3
        mov al, ds:26C9h
        mov [di+2], al
        mov [di+4], bh
        mov al, ds:26E3h
        mov [di+7], al
        db 81h, 0C7h, 8, 0  ; add di, 8
        mov ds:2696h, di

loc_E74B:
                    ; sub_E64B+138j
        dec bl
        jl  loc_E785
        pop ax
        cmp byte ptr ds:26DAh, 0
        jnz loc_E777
        mov ah, ds:26C9h
        test    bh, bh
        jz  loc_E76B
        mov di, ds:260Ah
        mov [di+2620h], al
        inc word ptr ds:260Ah

loc_E76B:
        mov di, ds:2608h
        mov [di+260Ch], al
        mov [di+2616h], ah

loc_E777:
        db 81h, 3Eh, 8, 026h, 0Ah, 0  ; cmp word ptr ds:2608h, 0Ah
        jg  loc_E7A3
        inc word ptr ds:2608h
        jmp short loc_E74B
; --------------------------------------------------

loc_E785:
        shr byte ptr ds:26C9h, 1
        cmp byte ptr ds:26C8h, 40h ; '@'
        jz  loc_E7AB
        shl byte ptr ds:26C8h, 1
        call    sub_EADD
        jmp loc_E66D
; --------------------------------------------------

loc_E79A:
                    ; sub_E64B+154j ...
        dec bl
        jl  loc_E7A1
        pop ax
        jmp short loc_E79A
; --------------------------------------------------

loc_E7A1:
        stc

locret_E7A2:
        ret
; --------------------------------------------------

loc_E7A3:
        mov word ptr ds:2694h, 94h ; '?'
        jmp short loc_E79A
; --------------------------------------------------

loc_E7AB:
        mov word ptr ds:2694h, 96h ; '?'
        jmp short loc_E79A
; --------------------------------------------------

loc_E7B3:
        mov word ptr ds:2694h, 97h ; '?'
        jmp short loc_E79A
sub_E64B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E7BB    proc near
        mov byte ptr ds:26DAh, 1
        jmp short loc_E7C8
sub_E7BB    endp

; --------------------------------------------------
        db 90h

; ---------- S U B  R O U T I N E --------------------------


sub_E7C3    proc near
        mov byte ptr ds:26DAh, 0

loc_E7C8:
        xor ax, ax
        mov ds:2624h, ax
        mov ds:26DBh, ax

loc_E7D0:
        mov word ptr ds:26DFh, 0
        call    sub_E98C
        jb  loc_E803
        push    si
        push    cx
        mov si, 26CAh
        mov di, 26CFh
        mov cx, 5
        cld
        repe cmpsb
        pop cx
        pop si
        jnz loc_E801
        call    sub_E805
        jb  locret_E802
        call    sub_EADD
        push    es
        push    word ptr ds:25BEh
        pop es
        call    sub_E8B0
        pop es
        jnb loc_E7D0

loc_E801:
        stc

locret_E802:
        ret
; --------------------------------------------------

loc_E803:
        clc
        ret
sub_E7C3    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E805    proc near
        xor dx, dx

loc_E807:
        mov di, 26CFh

loc_E80A:
        call    sub_EA8F
        jb  locret_E845
        cmp ax, 0Dh
        jz  loc_E842
        cmp ax, 2Bh ; '+'
        jz  loc_E831
        cmp ax, 2Ch ; ','
        jz  loc_E83A
        cmp al, 20h ; ' '
        jz  loc_E80A
        call    sub_BFA3
        stosb
        mov ax, 26D7h
        cmp di, ax
        jl  loc_E80A
        stc
        jmp short locret_E845
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_E831:
        call    sub_E87D
        jb  locret_E845
        or  dx, ax
        jmp short loc_E807
; --------------------------------------------------

loc_E83A:
        call    sub_E846
        jnb sub_E805
        jmp short locret_E845
; --------------------------------------------------
        db 90h              ; EVEN -> loc_E842 (1 byte NOP)
loc_E842:
        call    sub_E846

locret_E845:
        ret
sub_E805    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E846    proc near
        db 81h, 3Eh, 024h, 026h, 015h, 0  ; cmp word ptr ds:2624h, 15h
        jge loc_E875
        call    sub_E87D
        jb  locret_E87C
        or  dx, ax
        cmp byte ptr ds:26DAh, 0
        jnz loc_E86D
        mov bx, ds:2624h
        mov [bx+2626h], dl
        shl bx, 1
        mov ax, ds:26DBh
        mov [bx+263Bh], ax

loc_E86D:
        inc word ptr ds:2624h
        clc
        jmp short locret_E87C
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_E875:
        mov word ptr ds:2694h, 95h ; '?'
        stc

locret_E87C:
        ret
sub_E846    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E87D    proc near
        push    dx
        push    si
        push    cx
        xor bx, bx
        mov si, 269Eh
        mov dx, di
        mov di, 26CFh
        sub dx, di
        jz  loc_E8AA
        mov bl, ds:26C9h

loc_E892:
        mov di, 26CFh
        lodsb
        mov cx, ax
        xor ch, ch
        cmp al, dl
        jnz loc_E8A3
        cld
        repe cmpsb
        jz  loc_E8AA

loc_E8A3:
        add si, cx
        shr bl, 1
        jnz loc_E892
        stc

loc_E8AA:
        pop cx
        pop si
        pop dx
        mov ax, bx
        ret
sub_E87D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E8B0    proc near
        mov di, ds:26DBh
        mov ds:26DDh, di
        push    cx
        mov cx, ds:2602h
        add ds:26DBh, cx
        cmp byte ptr ds:26DAh, 0
        jnz loc_E8CD
        xor ax, ax
        cld
        repe stosb

loc_E8CD:
        pop cx

loc_E8CE:
        call    sub_E952
        jb  loc_E94E
        cmp al, ds:26D7h
        ja  loc_E950
        push    ax
        mov di, ds:26DDh
        or  dx, dx
        mov ah, 0
        jnz loc_E901
        cmp byte ptr ds:26DAh, 0
        jz  loc_E8EE
        pop ax
        jmp short loc_E8CE
; --------------------------------------------------

loc_E8EE:
        call    sub_EAE7
        add di, 10h
        add di, ax
        pop ax
        mov es:[di], ah
        jmp short loc_E8CE
; --------------------------------------------------

loc_E8FC:
        call    sub_EADD
        jmp short loc_E8CE
; --------------------------------------------------

loc_E901:
        cmp byte ptr ds:26DAh, 0
        jnz loc_E91A
        call    sub_EAF2
        pop ax
        push    ax
        xor ah, ah
        add di, 10h
        add di, ax
        mov ax, ds:26DFh
        mov es:[di], al

loc_E91A:
        inc word ptr ds:26DFh
        pop ax
        mov dx, ds:26DBh
        mov ds:26E1h, dx

loc_E927:
        add word ptr ds:26DBh, 2
        call    sub_EA24
        jb  loc_E8FC
        cmp byte ptr ds:26DAh, 0
        jnz loc_E927
        cmp ax, 0FFFFh
        jz  loc_E950
        mov di, ds:26DBh
        cld
        stosw
        mov bx, ds:26E1h
        sub di, bx
        mov es:[bx], di
        jmp short loc_E927
; --------------------------------------------------

loc_E94E:
        clc
        ret
; --------------------------------------------------

loc_E950:
        stc
        ret
sub_E8B0    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E952    proc near
        call    sub_E9BF
        call    sub_E9E8
        jb  loc_E982
        cmp dl, 3Dh ; '='
        jnz loc_E982
        push    ax
        push    cx
        push    si
        call    sub_EA24
        mov di, si
        mov dx, ax
        pop si
        pop cx
        pop ax
        jb  loc_E982
        cmp byte ptr [si], 2Ch ; ','
        jz  loc_E980
        or  dh, dh
        jnz loc_E980
        mov ah, dl
        push    ax
        call    sub_EADD
        pop ax
        xor dx, dx

loc_E980:
        clc
        ret
; --------------------------------------------------

loc_E982:
        mov si, ds:2690h
        mov cx, ds:2692h
        stc
        ret
sub_E952    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E98C    proc near
        mov di, 26CFh
        mov word ptr [di], 0
        call    sub_E9BF
        jb  loc_E9BD

loc_E998:
        push    di
        call    sub_EA8F
        pop di
        jb  locret_E9BE
        call    sub_BFA3
        cmp al, 41h ; 'A'
        jb  loc_E9B6
        cmp al, 5Ah ; 'Z'
        ja  loc_E9B6
        cld
        stosb
        cmp di, 26D7h
        jnb loc_E9B6
        or  bp, bp
        jz  loc_E998

loc_E9B6:
        cmp al, 3Dh ; '='
        jz  loc_E9BD
        call    sub_EADD

loc_E9BD:
        clc

locret_E9BE:
        ret
sub_E98C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E9BF    proc near
        cmp byte ptr [si], 0Dh
        jnz loc_E9C9
        call    sub_EADD
        jmp short sub_E9BF
; --------------------------------------------------

loc_E9C9:
        mov ds:2690h, si
        mov ds:2692h, cx
        ret
sub_E9BF    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E9D2    proc near
        call    sub_E9E8
        jb  locret_E9E7
        cmp dl, 2Ch ; ','
        jz  locret_E9E7
        cmp dl, 0Dh
        jz  locret_E9E7
        cmp dl, 20h ; ' '
        jz  locret_E9E7
        stc

locret_E9E7:
        ret
sub_E9D2    endp


; ---------- S U B  R O U T I N E --------------------------


sub_E9E8    proc near
        push    si
        push    cx
        call    sub_EA0C
        jb  loc_EA09
        xor dx, dx

loc_E9F1:
        add dx, ax
        push    dx
        call    sub_EA0C
        pop dx
        xchg    ax, dx
        jb  loc_EA04
        push    dx
        mov dx, 0Ah
        mul dx
        pop dx
        jmp short loc_E9F1
; --------------------------------------------------

loc_EA04:
        add sp, 4
        clc
        ret
; --------------------------------------------------

loc_EA09:
        pop cx
        pop si
        ret
sub_E9E8    endp


; ---------- S U B  R O U T I N E --------------------------


sub_EA0C    proc near
        call    sub_EA8F
        jb  locret_EA23
        xor ah, ah
        sub ax, 30h ; '0'
        jb  loc_EA1F
        cmp ax, 9
        ja  loc_EA1F
        clc
        ret
; --------------------------------------------------

loc_EA1F:
        add ax, 30h ; '0'
        stc

locret_EA23:
        ret
sub_EA0C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_EA24    proc near
        cmp word ptr [si-1], 3B3Dh
        jz  loc_EA86
        cmp word ptr [si-1], 2C3Dh
        jz  loc_EA86
        call    sub_EA8F
        jb  locret_EA85
        stc
        jmp cs:off_EA3D[bp]
; --------------------------------------------------
off_EA3D    dw offset loc_EA43
        dw offset sub_EA24
        dw offset locret_EA85
; --------------------------------------------------

loc_EA43:
        push    ax
        call    sub_EA8F
        pop dx
        jb  locret_EA85
        jmp cs:off_EA4F[bp]
; --------------------------------------------------
off_EA4F    dw offset loc_EA55
        dw offset loc_EA82
        dw offset loc_EA80
; --------------------------------------------------

loc_EA55:
        call    sub_BFA3
        mov ah, al
        mov al, dl
        call    sub_BFA3
        push    cx
        push    es
        push    cs
        pop es
        assume es:seg000
        mov di, 0DED0h
        mov cx, 9Fh ; '?'
        repne scasw
        pop es
        assume es:nothing
        pop cx
        stc
        mov ax, 0FFFFh
        jnz locret_EA85
        mov ax, 0DED0h
        inc ax
        inc ax
        sub di, ax
        mov ax, di
        or  ax, 8000h
        ret
; --------------------------------------------------

loc_EA80:
        dec si
        inc cx

loc_EA82:
        xchg    ax, dx
        xor ah, ah

locret_EA85:
        ret
; --------------------------------------------------

loc_EA86:
        mov al, [si]
        inc si
        dec cx
        xor ah, ah
        xor dx, dx
        ret
sub_EA24    endp


; ---------- S U B  R O U T I N E --------------------------


sub_EA8F    proc near
        call    sub_EAA1
        jb  loc_EADB
        cmp al, 3Bh ; ';'
        jnz loc_EA9F
        push    ax
        push    bp
        call    sub_EADD
        pop bp
        pop ax

loc_EA9F:
        clc
        ret
sub_EA8F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_EAA1    proc near
        cld
        lodsb
        xor bp, bp
        xor ah, ah
        dec cx
        jz  loc_EADB
        cmp al, 3Bh ; ';'
        jnz loc_EAB9
        cmp byte ptr [si-2], 0Ah
        jnz loc_EAB9
        call    sub_EADD
        jmp short sub_EAA1
; --------------------------------------------------

loc_EAB9:
        cmp ax, 0FFh
        jnz loc_EAC5
        call    sub_62BE
        dec cx
        dec cx

loc_EAC3:
        clc
        ret
; --------------------------------------------------

loc_EAC5:
        cmp al, 2Ch ; ','
        jz  loc_EAD6
        cmp al, 3Bh ; ';'
        jz  loc_EAD1
        cmp al, 0Dh
        jnz loc_EAC3

loc_EAD1:
        mov bp, 4
        clc
        ret
; --------------------------------------------------

loc_EAD6:
        mov bp, 2
        clc
        ret
; --------------------------------------------------

loc_EADB:
        stc
        ret
sub_EAA1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_EADD    proc near
        cld
        lodsb
        dec cx
        js  loc_EADB
        cmp al, 0Ah
        jnz sub_EADD
        ret
sub_EADD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_EAE7    proc near
        push    ax
        call    sub_DEAD
        not al
        and es:[bx], al
        pop ax
        ret
sub_EAE7    endp


; ---------- S U B  R O U T I N E --------------------------


sub_EAF2    proc near
        push    ax
        call    sub_DEAD
        or  es:[bx], al
        pop ax
        ret
sub_EAF2    endp


; ---------- S U B  R O U T I N E --------------------------


sub_EAFB    proc near
        push    si
        push    cx
        add ax, 0Fh
        and ax, 0FFF0h
        sub ax, ds:25C0h
        jb  loc_EB1A
        call    sub_EB21
        jb  loc_EB1E
        shl ax, 1
        shl ax, 1
        shl ax, 1
        shl ax, 1
        add ds:25C0h, ax

loc_EB1A:
        mov ax, ds:25BEh
        clc

loc_EB1E:
        pop cx
        pop si
        ret
sub_EAFB    endp


; ---------- S U B  R O U T I N E --------------------------


sub_EB21    proc near
        add ax, 0Fh
        and ax, 0FFF0h
        mov cl, 4
        shr ax, cl
        push    cx
        push    si
        mov si, 95Bh
        push    ax
        call    sub_D97F
        pop ax
        pop si
        pop cx
        mov dx, ds:95Bh
        sub dx, ds:959h
        cmp dx, ax
        jb  loc_EBAF
        push    cx
        push    si
        mov si, ds:959h
        mov cx, si
        mov di, si
        add di, ax
        add ds:959h, ax
        add ds:957h, ax
        push    ax
        call    sub_7A0
        cli
        sub cx, word ptr cs:byte_1+5Bh
        pushf
        add ds:953h, ax
        add ds:955h, ax
        add ds:951h, ax
        add ds:94Fh, ax
        add word ptr cs:byte_1+5Bh, ax
        popf
        jbe loc_EB7D
        call    sub_5D94

loc_EB7D:
        mov ds, word ptr cs:byte_1+5Bh
        sti
        pop ax
        mov si, ds:90Eh
        mov di, si
        mov dx, ax
        shl dx, 1
        shl dx, 1
        shl dx, 1
        shl dx, 1
        add di, dx
        mov cx, si
        push    ds
        push    es
        push    ss
        push    ss
        pop es
        assume es:nothing
        pop ds
        cli
        std
        repe movsb
        mov dx, ss
        add dx, ax
        mov ss, dx
        sti
        pop es
        assume es:nothing
        pop ds
        pop si
        pop cx
        clc
        ret
; --------------------------------------------------

loc_EBAF:
        mov ax, 9Bh ; '?'
        call    sub_CB4F
        stc
        ret
sub_EB21    endp

; --------------------------------------------------
        db 0Ah dup(0), 58h, 59h, 4Fh, 56h, 52h, 31h, 2 dup(20h)
        db 45h, 58h, 45h, 1Bh dup(0), 50h, 53h, 51h, 52h, 56h
        db 57h, 55h, 9Ch, 6, 1Eh, 8Bh, 2Eh, 0BEh, 25h, 0Eh, 1Fh
        db 0BBh, 31h, 0, 88h, 1Eh, 0C6h, 0EBh, 0Eh, 7, 0B8h, 0A5h
        db 0, 26h, 38h, 1Eh, 2, 0, 74h, 23h, 26h, 8Bh, 0Eh, 2 dup(0)
        db 8Ch, 0C2h, 3, 0D1h, 8Eh, 0C2h, 3Bh, 0D5h, 72h, 0EAh
        db 0C6h, 6, 0C0h, 0EBh, 0, 0BAh, 0C0h, 0EBh, 0B8h, 0, 0Fh
        db 0CDh, 21h, 0Ah, 0C0h, 74h, 14h, 0B8h, 0A3h, 0, 1Fh
        db 7, 0E8h, 1Dh, 0DFh, 9Dh, 0F9h, 9Ch, 9Dh, 5Dh, 5Fh, 5Eh
        db 5Ah, 59h, 5Bh, 58h, 0CBh, 0C7h, 6, 0CEh, 0EBh, 1, 0
        db 33h, 0C0h, 0A3h, 0E1h, 0EBh, 0A3h, 0E3h, 0EBh, 0B9h
        db 18h, 0, 2Bh, 0E1h, 16h, 1Fh, 8Bh, 0D4h, 0B8h, 0, 1Ah
        db 0CDh, 21h, 0Eh, 1Fh, 0BAh, 0C0h, 0EBh, 0B8h, 0, 27h
        db 0CDh, 21h, 8Bh, 0ECh, 8Bh, 56h, 16h, 8Bh, 5Eh, 0Eh
        db 8Bh, 46h, 8, 3, 0D0h, 3, 0D8h, 0B8h, 18h, 0, 3, 0E0h
        db 3Bh, 0C8h, 0B8h, 0A4h, 0, 75h, 0AEh, 0B1h, 4, 0D3h
        db 0E2h, 0D3h, 0E3h, 2Bh, 0DAh, 89h, 16h, 0E1h, 0EBh, 1Fh
        db 1Eh, 53h, 0D3h, 0EBh, 53h, 0BEh, 67h, 9, 83h, 0EEh
        db 4, 0E8h, 0A7h, 0ECh, 5Bh, 59h, 0A1h, 65h, 9, 3, 0C3h
        db 3Bh, 6, 67h, 9, 0B8h, 9Bh, 0, 77h, 83h, 8Bh, 2Eh, 67h
        db 9, 29h, 1Eh, 67h, 9, 8Eh, 6, 67h, 9, 2Eh, 8Ch, 6, 2 dup(0)
        db 8Eh, 1Eh, 67h, 9, 33h, 0D2h, 0B8h, 0, 1Ah, 0CDh, 21h
        db 0B8h, 0, 27h, 0Eh, 1Fh, 0BAh, 0C0h, 0EBh, 51h, 0CDh
        db 21h, 0B8h, 0, 10h, 0CDh, 21h, 58h, 1Fh, 1Eh, 3Bh, 0C8h
        db 74h, 0Fh, 89h, 2Eh, 67h, 9, 2Eh, 89h, 2Eh, 2 dup(0)
        db 0B8h, 0A4h, 0, 0E9h, 41h, 0FFh, 8Eh, 6, 67h, 9, 26h
        db 89h, 2Eh, 2 dup(0), 2Eh, 0A0h, 0C6h, 0EBh, 26h, 0A2h
        db 2, 0, 0A1h, 69h, 9, 2Eh, 0A3h, 0E5h, 0EBh, 8Ch, 0CBh
        db 8Eh, 0DBh, 8Bh, 1Eh, 2 dup(0), 0E8h, 40h, 0, 8Ch, 0C0h
        db 3Bh, 0D8h, 75h, 6, 8Eh, 0DBh, 8Bh, 1Eh, 2 dup(0), 2Eh
        db 39h, 1Eh, 0E5h, 0EBh, 77h, 0E4h, 8Ch, 0CBh, 6, 1Fh
        db 8Eh, 0C3h, 26h, 8Bh, 1Eh, 2 dup(0), 0E8h, 1Fh, 0, 8Ch
        db 0D8h, 3Bh, 0D8h, 75h, 7, 8Eh, 0C3h, 26h, 8Bh, 1Eh, 2 dup(0)
        db 2Eh, 39h, 1Eh, 0E5h, 0EBh, 77h, 0E2h, 1Fh, 7, 8Bh, 0ECh
        db 83h, 6Eh, 10h, 5, 0E9h, 0E6h, 0FEh, 0BEh, 3, 0, 3, 34h
        db 8Bh, 0D6h, 0FCh, 0ADh, 3, 0D0h, 0BFh, 3, 0, 8Bh, 0EFh
        db 26h, 3, 2Dh, 2 dup(47h), 33h, 0C9h, 33h, 0C0h, 83h
        db 0C7h, 4, 26h, 8Ah, 0Dh, 47h, 83h, 0C6h, 6, 0ACh, 3Ah
        db 0C1h, 75h, 10h, 57h, 0F3h, 0A6h, 5Fh, 74h, 12h, 3, 0F1h
        db 8Bh, 0C8h, 3Bh, 0F2h, 72h, 0EAh, 0EBh, 17h, 3, 0F0h
        db 3Bh, 0F2h, 72h, 0E2h, 0EBh, 0Fh, 2Bh, 0F0h, 83h, 0EEh
        db 6, 89h, 3Ch, 83h, 2Ch, 5, 8Ch, 44h, 2, 8Bh, 0C8h, 3
        db 0F9h, 3Bh, 0FDh, 72h, 0C4h, 0C3h, 0Bh dup(0), 33h, 0FFh
        db 6, 1Eh, 7, 0FCh, 0E8h, 51h, 80h, 88h, 85h, 0F4h, 26h
        db 0A1h, 73h, 9, 38h, 47h, 0FFh, 74h, 50h, 0EBh, 0Ch, 8Ah
        db 85h, 0F2h, 26h, 2, 85h, 0F3h, 26h, 88h, 85h, 0F4h, 26h
        db 0E8h, 34h, 80h, 0Bh, 0C0h, 74h, 3Bh, 88h, 85h, 0F5h
        db 26h, 57h, 0D1h, 0E7h, 0C6h, 85h, 14h, 27h, 0, 8Ah, 47h
        db 0FFh, 3Ch, 2Fh, 75h, 1Ah, 0B9h
        db 4, 0, 8Ah, 7, 43h, 0C6h, 85h, 14h, 27h, 0, 0E8h, 4
        db 0BCh, 73h, 0Ah, 88h, 85h, 14h, 27h, 47h, 0E2h, 0ECh
        db 5Fh, 0EBh, 0Eh, 5Fh, 3Ah, 6, 73h, 9, 74h, 0Fh, 2 dup(47h)
        db 83h, 0FFh, 20h, 72h, 0B2h, 0B8h, 0A6h, 0, 7, 0E8h, 33h
        db 0DDh, 0C3h, 0D1h, 0EFh, 47h, 8Bh, 0C7h, 0A2h, 2Ah, 2
        db 8Bh, 3Eh, 53h, 1Ch, 0A0h, 71h, 9, 38h, 5, 75h, 19h
        db 8Bh, 45h, 1, 25h, 2 dup(0DFh), 3Bh, 6, 13h, 0Eh, 75h
        db 0Dh, 0A1h, 73h, 9, 0FCh, 0B9h, 0Ah, 0, 0F2h, 0AEh, 89h
        db 3Eh, 53h, 1Ch, 7, 8Bh, 3Eh, 58h, 1Ch, 8Bh, 36h, 53h
        db 1Ch, 46h, 0B8h, 1Ah, 0, 0F9h, 0C3h, 0C6h, 6, 2Ah, 2
        db 0, 8Bh, 3Eh, 58h, 1Ch, 2 dup(4Fh), 8Bh, 36h, 55h, 1Ch
        db 0B8h, 1Ah, 0, 0F9h, 0C3h

; ---------- S U B  R O U T I N E --------------------------


sub_EE6C    proc near
        mov cx, ds:0D0h
        add cx, 2
        mov di, 2754h
        cld
        push    es
        push    ds
        pop es
        assume es:nothing
        xor ax, ax
        repe stosw
        pop es
sub_EE6C    endp

        assume es:nothing

; ---------- S U B  R O U T I N E --------------------------


sub_EE7F    proc near
        mov ax, ds:64h
        cmp ax, ds:26F0h
        mov ds:26F0h, ax
        jnz sub_EE6C
        mov ax, ds:2A84h
        cmp ax, ds:26F2h
        mov ds:26F2h, ax
        jnz sub_EE6C
        call    sub_F27A
        call    sub_F25D
        mov ax, ds:0C2h
        call    sub_F2B4
        call    sub_F208
        mov ds:2CE9h, bx
        push    es
        push    ds
        pop es
        assume es:nothing
        mov cx, bx
        shr cx, 1
        mov di, 2754h
        cld
        xor ax, ax
        repne scasw
        shl cx, 1
        sub bx, cx
        pop es
        assume es:nothing

loc_EEBE:
        sub bx, 2
        jbe loc_EECD

loc_EEC3:
        mov si, [bx+2754h]
        or  si, si
        jz  loc_EEBE
        jmp short loc_EED3
; --------------------------------------------------

loc_EECD:
        xor bx, bx
        mov si, ds:64h

loc_EED3:
        cmp si, ds:0C0h
        jnb loc_EEE1
        mov si, ds:0C0h
        mov ds:64h, si

loc_EEE1:
        cmp si, ds:66h
        jbe loc_EEEB
        mov si, ds:66h

loc_EEEB:
        push    bx
        call    sub_6801
        pop bx
        call    sub_F2FD
        mov dx, [bx+2A54h]
        mov ds:2AB4h, si
        lea si, [bx+2756h]
        add dx, si
        mov di, 2AB6h
        cld
        push    es
        push    ds
        pop es
        assume es:nothing

loc_EF08:
        add si, 2Eh ; '.'
        movsw
        cmp si, dx
        jb  loc_EF08
        pop es
        assume es:nothing

loc_EF11:
        cmp word ptr [bx+2754h], 0
        jnz loc_EF23
        push    word ptr ds:2AB4h
        call    sub_F26A
        pop word ptr ds:2AB4h

loc_EF23:
        mov di, ds:2B05h
        push    es
        push    ds
        pop es
        assume es:nothing
        cmp cs:byte_1+5Dh, 0
        jz  loc_EF37
        pop es
        assume es:nothing
        push    es
        call    sub_F3BC

loc_EF37:
        mov byte ptr ds:2AFFh, 0
        mov dl, 0
        mov ax, ds:1C6h
        add ax, 3E8h
        cmp ax, ds:2AB4h
        jnb loc_EF50
        mov word ptr ds:1C4h, 0FFFFh

loc_EF50:
        mov dh, ds:2CE8h
        mov ax, [bx+2A54h]
        mov cx, 30h ; '0'
        add ax, cx
        div cl
        mov cl, al
        mov ax, [bx+2A84h]
        call    sub_F078
        jnb loc_EF78
        push    bx
        call    sub_D4E9
        pop bx
        mov dx, 1
        jb  loc_EF50
        pop es
        jmp sub_EE6C
; --------------------------------------------------

loc_EF78:
        mov [bx+2A86h], ax
        mov di, cx
        mov cx, ds:0CEh
        add cl, ds:0CCh
        sub cx, di
        shl di, 1
        add di, ds:2AF4h
        call    sub_F062
        pop es
        mov dx, [bx+2A54h]
        inc bx
        inc bx
        mov [bx+2A54h], dx
        mov al, 30h ; '0'
        mul byte ptr ds:22Ah
        sub ax, 30h ; '0'
        cmp ax, dx
        jz  loc_EFB2
        call    sub_F2FD
        mov word ptr [bx+2A84h], 0

loc_EFB2:
        cmp cs:byte_1+5Dh, 0
        jnz loc_EFCF
        mov ax, ds:1A26h
        shl ax, 1
        add ds:2B05h, ax
        dec word ptr ds:2B03h
        jnz loc_EFCF
        call    sub_F3BC
        call    sub_F373

loc_EFCF:
                    ; sub_EE7F+148j
        lea di, [bx+2754h]
        mov dx, [bx+2A54h]
        add dx, di
        mov si, 2AB4h
        cld
        push    es
        push    ds
        pop es
        assume es:nothing

loc_EFE0:
        push    dx
        mov ax, [si]
        call    sub_F2B4
        jb  loc_EFF9
        push    bx
        push    di
        mov ax, dx
        call    sub_F208
        pop di
        mov ax, bx
        pop bx
        jb  loc_EFFF
        cmp bx, ax
        jbe loc_EFFF

loc_EFF9:
        mov ax, [si]
        cmp ax, [di]
        jz  loc_F004

loc_EFFF:
                    ; sub_EE7F+178j
        mov byte ptr ds:2AFFh, 1

loc_F004:
        mov ax, [si+20h]
        mov [di-2], ax
        movsw
        add di, 2Eh ; '.'
        pop dx
        cmp di, dx
        jbe loc_EFE0
        pop es
        assume es:nothing
        cmp bx, ds:2CE9h
        jbe loc_F02A
        cmp byte ptr ds:2AFFh, 0
        jz  loc_F02D
        mov ax, ds:0D0h
        shl ax, 1
        cmp bx, ax
        jnb loc_F02D

loc_F02A:
        jmp loc_EF11
; --------------------------------------------------

loc_F02D:
                    ; sub_EE7F+1A9j
        call    sub_F3BC
        call    sub_F373
        mov si, [bx+2754h]
        cmp si, ds:66h
        jb  loc_F045
        call    sub_D4E9
        jb  loc_F045
        jmp sub_EE6C
; --------------------------------------------------

loc_F045:
                    ; sub_EE7F+1C1j
        mov al, ds:13h
        mov ds:2CE7h, al
        ret
sub_EE7F    endp ; sp =  2

; --------------------------------------------------

loc_F04C:
        jmp sub_EE7F

; ---------- S U B  R O U T I N E --------------------------


sub_F04F    proc near
        call    sub_F25D
        call    sub_F205
        jb  loc_F04C
        mov si, [bx+2754h]
        mov ds:2CE9h, bx
        jmp loc_EEC3
sub_F04F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F062    proc near
                    ; sub_F078+24p
        mov ax, es
        cmp ax, ds:86Eh
        mov al, 20h ; ' '
        mov ah, ds:0DAFh
        cld
        jz  loc_F074
        repe stosw
        ret
; --------------------------------------------------

loc_F074:
        call    sub_75A
        ret
sub_F062    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F078    proc near
        mov ds:2CE8h, dh
        mov ds:2AFAh, ax
        mov ds:2CEBh, cl
        mov ds:2AF4h, di
        mov ds:2AF6h, dx
        mov ds:2AF8h, bp
        cmp byte ptr ds:2CE8h, 0
        jz  loc_F09F
        mov cl, ds:26F4h
        xor ch, ch
        call    sub_F062

loc_F09F:
        xor si, si
        xor ax, ax
        mov ds:2B00h, al
        mov ds:2B01h, ax
        mov ds:2AFDh, ax
        mov ah, ds:0CEh
        mov ds:2AFCh, ah
        mov al, ds:0CCh
        push    ax

loc_F0B8:
        inc word ptr ds:2AFDh
        cld
        mov ax, [si+26F4h]
        cmp byte ptr ds:2CE8h, 0
        jz  loc_F0E7
        mov ds:0CCh, al
        mov ds:0CEh, ah
        mov ds:228h, ah
        add al, ah
        sub al, ds:2AFCh
        jbe loc_F0E7
        sub ds:0CEh, al
        jbe loc_F0E7
        mov word ptr ds:0CEh, 0

loc_F0E7:
        push    si
        mov ax, si
        mov si, [si+2AB4h]
        or  si, si
        jnz loc_F11A
        mov si, ax
        mov si, [si+2AB2h]
        mov cx, ds:66h
        sub cx, si
        call    sub_F326
        jnb loc_F11A
        mov si, ds:66h
        test    word ptr ds:2AF6h, 1
        jnz loc_F11A
        pop si
        pop ax
        mov ds:0CCh, al
        mov ds:0CEh, ah
        stc
        ret
; --------------------------------------------------

loc_F11A:
        pop di
        push    di
        mov [di+2AD4h], si
        push    bx
        push    cx
        mov di, ds:2AF4h
        push    si
        test    word ptr ds:2AF6h, 2
        jz  loc_F134
        call    sub_6736
        jmp short loc_F137
; --------------------------------------------------

loc_F134:
        call    sub_5DE0

loc_F137:
        pop ax
        cmp ax, ds:2AF8h
        ja  loc_F14A
        cmp si, ds:2AF8h
        jbe loc_F14A
        or  word ptr ds:2AF6h, 4

loc_F14A:
        cmp si, ds:66h
        jnz loc_F156
        or  word ptr ds:2AF6h, 8

loc_F156:
        pop cx
        pop bx
        cmp byte ptr ds:2CE8h, 0
        jz  loc_F189
        cmp si, ds:66h
        jnb loc_F184
        mov al, [si]
        cmp al, ds:971h
        jnz loc_F189
        mov ax, [si+1]
        and ax, 0DFDFh
        cmp ax, ds:0E13h
        jz  loc_F18E
        cmp ax, ds:0E11h
        jnz loc_F189
        mov ax, si
        add ax, 4

loc_F184:
        mov ds:2B01h, ax
        jmp short loc_F18E
; --------------------------------------------------

loc_F189:
        or  byte ptr ds:2B00h, 1

loc_F18E:
                    ; sub_F078+10Fj
        mov ax, si
        pop si
        mov [si+2AB4h], ax
        inc si
        inc si
        mov ax, si
        shr ax, 1
        cmp al, ds:2CEBh
        jnb loc_F1A4
        jmp loc_F0B8
; --------------------------------------------------

loc_F1A4:
        mov dl, ds:2B00h
        or  dl, dl
        jnz loc_F1E3
        mov bp, ds:2B01h
        mov ds:2AB4h, bp
        or  bp, bp
        jnz loc_F1DA
        mov si, [si+2AB2h]
        push    di
        call    sub_F26A
        mov cx, ds:66h
        sub cx, si
        mov word ptr ds:2AFAh, 0
        mov word ptr ds:2AFDh, 1
        call    sub_F326
        pop di
        mov ds:2AB4h, si

loc_F1DA:
        mov si, ds:2AB4h
        push    bx
        call    sub_6801
        pop bx

loc_F1E3:
        mov bp, ds:2B01h
        pop ax
        mov cx, ds:0CEh
        add cl, ds:0CCh
        mov ds:0CCh, al
        mov ds:0CEh, ah
        mov bp, ds:2B01h
        mov dh, ds:2AF6h
        mov ax, ds:2AFAh
        inc ax
        clc
        ret
sub_F078    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F205    proc near
                    ; sub_22F7+17Bp ...
        mov ax, ds:0C2h
sub_F205    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F208    proc near
                    ; sub_EE7F+16Dp
        xor bx, bx
        mov dx, ds:0D0h
        shl dx, 1
        cmp ax, [bx+2754h]
        jb  loc_F230

loc_F216:
        mov di, [bx+2A54h]

loc_F21A:
        cmp ax, [bx+di+2756h]
        jb  loc_F232
        jnz loc_F228
        cmp ax, [bx+di+2754h]
        jz  loc_F232

loc_F228:
        inc bx
        inc bx
        cmp bx, dx
        jb  loc_F216

loc_F22E:
        dec bx
        dec bx

loc_F230:
        stc
        ret
; --------------------------------------------------

loc_F232:
        or  di, di
        jz  loc_F242
        push    ax
        mov ax, [bx+2756h]
        cmp ax, [bx+di+2754h]
        pop ax
        ja  loc_F248

loc_F242:
        cmp ax, [bx+di+2754h]
        jnb loc_F25B

loc_F248:
        sub di, 30h ; '0'
        jb  loc_F228
        cmp ax, [bx+di+2756h]
        jb  loc_F232
        inc bx
        inc bx
        cmp bx, dx
        jnb loc_F22E
        jmp short loc_F21A
; --------------------------------------------------

loc_F25B:
        clc
        ret
sub_F208    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F25D    proc near
        mov word ptr ds:2B05h, 2B07h
        mov word ptr ds:2B03h, 3
        ret
sub_F25D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F26A    proc near
        xor ax, ax
        cld
        mov cx, 10h
        mov di, 2AB4h
        push    es
        push    ds
        pop es
        assume es:nothing
        repe stosw
        pop es
        assume es:nothing
        ret
sub_F26A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F27A    proc near
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz locret_F2B3
        mov ax, ds:0C4h
        or  ax, ds:0C6h
        jz  locret_F2B3
        call    sub_F2DD
        jb  locret_F2B3
        call    sub_813A
        call    sub_F2DD
        jb  locret_F2B3
        mov ax, ds:0C2h
        call    sub_8098
        mov ax, 1
        or  ax, 4

loc_F2A4:
        db 81h, 0EFh, 6, 0  ; sub di, 6
        jbe loc_F2B0
        test    [bp+di], ax
        jz  locret_F2B3
        jmp short loc_F2A4
; --------------------------------------------------

loc_F2B0:
        call    sub_D4BA

locret_F2B3:
        ret
sub_F27A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F2B4    proc near
                    ; sub_EE7F+164p
        mov dx, ax
        test    word ptr ds:0, 10h
        jz  loc_F2DB
        test    word ptr ds:0, 2000h
        jz  loc_F2DB
        mov dl, ds:4
        cmp dl, ds:2CE7h
        jz  loc_F2DB
        mov dx, ds:0Eh
        cmp dx, ax
        jnb loc_F2D9
        xchg    ax, dx

loc_F2D9:
        clc
        ret
; --------------------------------------------------

loc_F2DB:
        stc
        ret
sub_F2B4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F2DD    proc near
        mov bp, ss:0Eh
        mov si, 4
        mov al, [bp+si]
        xor ah, ah
        add si, ax
        cmp si, [bp+2]
        jnb loc_F2FB
        mov ax, ds:0C2h
        db 3Bh, 82h, 01h, 00h    ; cmp ax, [bp+si+0001h] (mod=10)
        jb  loc_F2FB
        stc
        ret
; --------------------------------------------------

loc_F2FB:
        clc
        ret
sub_F2DD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F2FD    proc near
                    ; sub_EE7F+12Ap
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jnb loc_F30A
        mov byte ptr ds:22Ah, 0

loc_F30A:
        mov byte ptr ds:2CE8h, 1
        mov al, ds:22Ah
        sub al, 1
        jnb loc_F31D
        mov byte ptr ds:2CE8h, 0
        xor ax, ax

loc_F31D:
        mov dl, 30h ; '0'
        mul dl
        mov [bx+2A54h], ax
        ret
sub_F2FD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F326    proc near
                    ; sub_F078+15Ap
        push    es

loc_F327:
        push    ds
        pop es
        assume es:nothing
        push    bx
        call    sub_AD48
        pop bx
        jnb loc_F336
        pop es
        assume es:nothing
        mov si, ds:66h
        ret
; --------------------------------------------------

loc_F336:
        cmp ax, ds:0E13h
        jz  loc_F345
        cmp ax, ds:0E11h
        jnz loc_F327

loc_F342:
        dec si
        jmp short loc_F370
; --------------------------------------------------

loc_F345:
        push    bx
        mov bx, si
        inc bx
        inc bx
        xchg    si, di
        mov ax, ds:973h
        mov cx, 0Ah
        cld
        repne scasb
        xchg    si, di
        call    sub_6E0A
        pop bx
        cmp ax, ds:2AFDh
        jnz loc_F342
        mov cx, ds:2AFAh
        jcxz    loc_F370

loc_F367:
        push    bx
        push    cx
        call    sub_6736
        pop cx
        pop bx
        loop    loc_F367

loc_F370:
        pop es
        clc
        ret
sub_F326    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F373    proc near
                    ; sub_EE7F+1B1p
        cmp word ptr ds:2B03h, 3
        jz  locret_F3BB
        push    si
        push    di
        test    word ptr ds:0, 1000h
        jnz loc_F3B6
        mov cx, ds:0CEh
        mov al, ds:0CCh
        xor ah, ah
        shl ax, 1
        add di, ax
        mov si, 2B07h
        add si, ax
        mov ax, 3
        sub ax, ds:2B03h
        shl ax, 1
        mul byte ptr ds:1A26h
        sub di, ax
        mov ax, ds:1A26h
        sub ax, cx
        shl ax, 1
        cld
        push    bx
        mov bx, ds:2B05h
        call    sub_76E
        pop bx

loc_F3B6:
        call    sub_F25D
        pop di
        pop si

locret_F3BB:
        ret
sub_F373    endp


; ---------- S U B  R O U T I N E --------------------------


sub_F3BC    proc near
                    ; sub_EE7F+14Ap ...
        push    bx
        sar bx, 1
        mov dh, bl
        mov ax, 3
        add ax, ds:0D2h
        add dh, al
        xor dl, dl
        call    sub_57D
        mov di, bx
        pop bx
        clc
        ret
sub_F3BC    endp

; --------------------------------------------------
        stc
        pop bx
        ret
; --------------------------------------------------
        db 9 dup(0)         ; CALIGN 10h -> F3E0 (9 bytes 00)

seg000      ends

        end
