;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_MN2B.ASM
; SEGMENT:   seg000 (CODE)
; ZONE:      Zone 2 -- Code, part 2 (split from XY2_MN02.ASM)
; LINES:     6434
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC loc_7085, sub_67F3, sub_6801, sub_6811, sub_6941, sub_6A78
        PUBLIC sub_6B61, sub_6D99, sub_6E0A, sub_6F9A, sub_6FE3, sub_6FEC
        PUBLIC sub_7010, sub_7016, sub_7018, sub_701D, sub_705B, sub_7084
        PUBLIC sub_70B2, sub_7219, sub_7368, sub_73F0, sub_7600, sub_77C4
        PUBLIC sub_792D, sub_79AF, sub_7A03, sub_7AF1, sub_7CE4, sub_7CF1
        PUBLIC sub_7D3F, sub_7D4D, sub_7EEB, sub_8042, sub_8098, sub_813A
        PUBLIC sub_8142, sub_8275, sub_8309, sub_83E2, sub_847F, sub_8554
        PUBLIC sub_8574, sub_85EB, sub_8615, sub_8683, sub_86A8, sub_87FD
        PUBLIC sub_88EE, sub_8A0C, sub_8A92, sub_8DD4, sub_8DED, sub_8E35
        PUBLIC sub_8E4F, sub_8E55, sub_8E7A, sub_8F07

seg000      segment byte public 'CODE'
        assume cs:seg000



; --- NEAR EXTRNs (same segment) ---
        EXTRN sub_1270:NEAR
        EXTRN sub_13A5:NEAR
        EXTRN sub_1577:NEAR
        EXTRN sub_1C25:NEAR
        EXTRN sub_1C4A:NEAR
        EXTRN sub_1D19:NEAR
        EXTRN sub_2160:NEAR
        EXTRN sub_2214:NEAR
        EXTRN sub_2262:NEAR
        EXTRN sub_2503:NEAR
        EXTRN sub_2836:NEAR
        EXTRN sub_2875:NEAR
        EXTRN sub_28F7:NEAR
        EXTRN sub_2AAA:NEAR
        EXTRN sub_2AE7:NEAR
        EXTRN sub_2AEA:NEAR
        EXTRN sub_2B87:NEAR
        EXTRN sub_2B8B:NEAR
        EXTRN sub_2B8E:NEAR
        EXTRN sub_2F61:NEAR
        EXTRN sub_3130:NEAR
        EXTRN sub_3450:NEAR
        EXTRN sub_47C4:NEAR
        EXTRN sub_5796:NEAR
        EXTRN sub_57D:NEAR
        EXTRN sub_5A98:NEAR
        EXTRN sub_5ABB:NEAR
        EXTRN sub_5B24:NEAR
        EXTRN sub_5DE0:NEAR
        EXTRN sub_6709:NEAR
        EXTRN sub_6736:NEAR
        EXTRN sub_6796:NEAR
        EXTRN sub_75A:NEAR
        EXTRN sub_A54E:NEAR
        EXTRN sub_A6C3:NEAR
        EXTRN sub_A94A:NEAR
        EXTRN sub_A9D5:NEAR
        EXTRN sub_B117:NEAR
        EXTRN sub_B1E2:NEAR
        EXTRN sub_B317:NEAR
        EXTRN sub_BD37:NEAR
        EXTRN sub_BD6E:NEAR
        EXTRN sub_BF90:NEAR
        EXTRN sub_CB4F:NEAR
        EXTRN sub_CB6A:NEAR
        EXTRN sub_CBAC:NEAR
        EXTRN sub_CCAF:NEAR
        EXTRN sub_CDDB:NEAR
        EXTRN sub_CF5B:NEAR
        EXTRN sub_CF7E:NEAR
        EXTRN sub_CFBD:NEAR
        EXTRN sub_D0C0:NEAR
        EXTRN sub_D4BA:NEAR
        EXTRN sub_D4E9:NEAR
        EXTRN sub_D7FE:NEAR
        EXTRN sub_E570:NEAR
        EXTRN sub_EB21:NEAR
        EXTRN sub_EE6C:NEAR
        EXTRN sub_EE7F:NEAR

; --------------------------------------------------
        db 7 dup(0)         ; CALIGN 8 -> loc_67F0 (7 bytes 00)
loc_67F0:
        jmp locret_68B3

; ---------- S U B  R O U T I N E --------------------------


sub_67F3    proc near
        mov ax, ds:0C0h
        mov ds:0E7h, ax
        mov ds:0E9h, ax
        jmp short loc_6859
sub_67F3    endp

; --------------------------------------------------

loc_67FE:
        jmp loc_68B4

; ---------- S U B  R O U T I N E --------------------------


sub_6801    proc near
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  loc_67F0
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jnb loc_67F0
sub_6801    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6811    proc near
        xor bx, bx

loc_6813:
        mov ax, ds:214h
        cmp ax, ds:216h
        ja  loc_6830
        cmp ds:216h, si
        jz  loc_688E
        jb  loc_67FE
        cmp ds:214h, si
        jbe loc_688E
        cmp ax, ds:0C0h
        jbe loc_688E

loc_6830:
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jb  loc_683B
        call    sub_E570

loc_683B:
        mov ax, ds:1C4h
        cmp ax, ds:1C6h
        jnb loc_6859
        mov bx, 1C4h
        cmp ds:1C4h, si
        ja  loc_6859
        cmp ds:1C6h, si
        jbe loc_6877
        cmp ds:1C4h, si
        jbe loc_6877

loc_6859:
        mov bx, 0E7h ; '?'
        mov ax, ds:0E9h
        cmp ax, ds:0E7h
        jb  loc_686B
        cmp si, ds:0E7h
        jnb loc_6877

loc_686B:
        call    sub_E570
        mov ax, ds:0C0h
        mov ds:0E7h, ax
        mov ds:0E9h, ax

loc_6877:
        push    si
        push    di
        push    cx
        push    es
        push    ds
        pop es
        assume es:nothing
        mov si, bx
        mov cx, 50h ; 'P'
        mov di, 214h
        cld
        repe movsb
        pop es
        assume es:nothing
        pop cx
        pop di
        pop si
        jmp short loc_6813
; --------------------------------------------------

loc_688E:
        mov bx, 21Fh
        sub bx, 214h
        mov bl, [bx+0E7h]
        mov ds:21Fh, bl
        cmp si, ds:0C0h
        jbe locret_68B3
        mov byte ptr ds:21Fh, 0
        cmp byte ptr [si-1], 0Ah
        jz  locret_68B3
        mov byte ptr ds:21Fh, 1

locret_68B3:
        ret
sub_6811    endp

; --------------------------------------------------

loc_68B4:
        push    di
        push    cx
        push    es
        push    ds
        pop es
        assume es:nothing
        push    bx
        push    si

loc_68BB:
        pop si
        push    si
        mov cx, si
        sub cx, 1
        jbe loc_6918
        sub cx, ds:216h
        jbe loc_6918
        mov di, ds:216h
        mov ax, ds:971h
        cld
        repne scasb
        mov ds:216h, di
        jnz loc_6918
        mov si, di
        push    di
        mov di, 1A49h
        push    word ptr ds:19F8h
        mov byte ptr ds:19F8h, 1
        call    sub_69F5
        pop ax
        mov ds:19F8h, al
        pop di
        push    word ptr ds:1C53h
        pop word ptr ds:216h
        jb  loc_68BB
        mov ax, [di]
        and ax, 0DFDFh
        cmp ax, ds:0DF7h
        jnz loc_6912
        dec di
        cmp di, ds:0C0h
        ja  loc_6912
        mov di, ds:0C0h
        inc di

loc_6912:
        mov ds:214h, di
        jmp short loc_68BB
; --------------------------------------------------

loc_6918:
        pop si
        pop bx
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jnb loc_6938
        mov ax, ds:214h
        cmp ax, ds:1C4h
        jnb loc_6938
        push    si
        mov si, 214h
        mov di, 1C4h
        mov cx, 50h ; 'P'
        repe movsb
        pop si

loc_6938:
        call    sub_6941
        pop es
        assume es:nothing
        pop cx
        pop di
        jmp loc_688E

; ---------- S U B  R O U T I N E --------------------------


sub_6941    proc near
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jnb locret_696E
        mov ax, ds:214h
        mov dx, ds:216h
        cmp dx, ax
        jb  locret_696E
        cmp ax, ds:1C4h
        jnz locret_696E
        mov ds:1C6h, dx
        cmp ax, ds:0E7h
        jnz locret_696E
        cmp dx, ds:0E7h
        jb  locret_696E
        mov ds:0E9h, dx

locret_696E:
        ret
sub_6941    endp

; --------------------------------------------------

loc_696F:
        mov ds:1C55h, si
        cmp byte ptr ds:4, 0FFh
        jz  loc_69E6
        inc si
        inc si

loc_697C:
        lodsb
        cmp al, 20h ; ' '
        jz  loc_697C
        cmp al, 39h ; '9'
        jbe loc_69A6
        mov ah, al
        lodsb
        xchg    ah, al
        and ax, 0DFDFh
        mov cx, 1Ch
        shr cx, 1
        push    di
        mov di, 0D91h
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        repne scasw
        pop es
        assume es:nothing
        db 8Bh, 85h, 1Ah, 00h    ; mov ax, [di+001Ah] (mod=10)
        pop di
        jnz loc_69E6
        jmp short loc_69B3
; --------------------------------------------------

loc_69A6:
        mov bx, si
        dec bx
        call    sub_CF5B
        mov si, bx
        dec si
        or  ax, ax
        jz  loc_69E6

loc_69B3:
        cmp si, ds:10h
        jnb loc_69BF
        cmp si, ds:0Eh
        jnb loc_69E6

loc_69BF:
        mov bx, ax
        lodsb
        cmp al, ds:973h
        jnz loc_69E6
        mov ds:21Ah, bl
        mov ax, ds:1C55h
        dec ax
        cmp ax, ds:0C0h
        ja  loc_69DA
        mov ax, ds:0C0h
        inc ax

loc_69DA:
        mov ds:214h, ax
        mov ax, ds:1C53h
        mov ds:216h, ax
        xor ax, ax
        ret
; --------------------------------------------------

loc_69E6:
        mov si, ds:1C55h
        jmp loc_6ADF
; --------------------------------------------------
        mov byte ptr ds:1C57h, 1
        jmp loc_6A7D

; ---------- S U B  R O U T I N E --------------------------


sub_69F5    proc near
        mov ax, [si]
        mov ds:1C53h, si
        cmp ax, 8000h
        jnb loc_6A0C
        and ax, 0DFDFh
        cmp ax, ds:0DF7h
        jnz loc_6A18
        jmp loc_696F
; --------------------------------------------------

loc_6A0C:
        call    sub_75E9
        add ax, 4Ch ; 'L'
        mov di, ax
        mov ax, [di+0DC9h]

loc_6A18:
        mov di, 0DC9h
        mov cx, 2Eh ; '.'
        cld
        repne scasw
        jz  loc_6A2E

loc_6A23:
        call    sub_701D
        jb  loc_6A2C
        mov ds:1C53h, si

loc_6A2C:
        stc
        ret
; --------------------------------------------------

loc_6A2E:
        sub di, 0DC9h
        sub di, 2
        mov bp, di
        shr bp, 1
        cmp byte ptr ds:[bp+0E9Dh], 1
        jb  loc_6A23
        inc si
        inc si
        db 81h, 0FFh, 052h, 0  ; cmp di, 52h ; 'R'
        jnz loc_6A54
        push    si
        call    sub_701D
        mov cx, si
        pop si
        jb  loc_6A2C
        jmp short loc_6A6B
; --------------------------------------------------

loc_6A54:
        mov cx, ds:66h
        sub cx, di
        jbe loc_6A2C
        push    di
        mov di, si
        push    ax
        mov ax, ds:973h
        repne scasb
        pop ax
        mov cx, di
        pop di
        jnz loc_6A2C

loc_6A6B:
        mov ds:1C53h, cx
        shl di, 1
        add di, 0ED9h
        jmp loc_6BF3
sub_69F5    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6A78    proc near
        mov byte ptr ds:1C57h, 0

loc_6A7D:
        mov ds:1C53h, si
        cmp word ptr ds:168h, 0
        jz  loc_6ABE
        mov dx, ds:168h
        dec dx
        cmp si, dx
        jb  loc_6ABE
        inc dx
        cmp si, dx
        ja  loc_6ABE
        cmp di, ds:1A0Ah
        mov ax, 1Ah
        jnz locret_6AD0
        inc si
        push    cx
        mov si, 1C65h
        mov cx, 2Ah ; '*'
        cld

loc_6AA8:
        lodsb
        mov ah, ds:0DB1h
        call    sub_6796
        loop    loc_6AA8
        pop cx
        mov ax, 1Ah
        mov si, ds:168h
        inc si
        inc si
        inc si
        ret
; --------------------------------------------------

loc_6ABE:
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  locret_6AD0
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jbe loc_6AD4
        ja  loc_6ADF

locret_6AD0:
        ret
; --------------------------------------------------

loc_6AD1:
        jmp loc_696F
; --------------------------------------------------

loc_6AD4:
        mov ax, [si]
        and ax, 0DFDFh
        cmp ax, ds:0DF7h
        jz  loc_6AD1

loc_6ADF:
        mov ds:1C55h, si
        mov ds:1C58h, di
        call    sub_7016
        jnb loc_6B05
        push    si
        mov ax, 55h ; 'U'
        call    sub_CB4F
        pop si

loc_6AF4:
        mov ax, 0
        jnb loc_6B00
        mov si, ds:1C55h
        mov ax, ds:971h

loc_6B00:
        mov di, ds:1C58h
        ret
; --------------------------------------------------

loc_6B05:
        push    es
        push    ds
        pop es
        assume es:nothing
        mov ds:1C53h, cx
        mov si, ds:1C55h
        cmp byte ptr ds:4, 0FFh
        jnz loc_6B46
        mov di, ds:1C58h
        mov ax, si
        dec ax
        cmp ds:0C2h, si
        jb  loc_6B39
        mov ax, cx
        inc di
        inc di
        cmp ds:0C2h, si
        jz  loc_6B39
        cmp ds:0C2h, cx
        jnb loc_6B46
        mov ax, si
        dec ax
        dec di
        dec di

loc_6B39:
        push    si
        mov si, ax
        mov word ptr ds:0C2h, 0FFFFh
        call    sub_2214
        pop si

loc_6B46:
        lodsb
        dec si
        inc al
        jnz loc_6B4E
        add si, [si]

loc_6B4E:
        call    sub_6B61
        pop es
        assume es:nothing
        jb  loc_6B5A
        mov si, ds:1C53h
        jmp short loc_6AF4
; --------------------------------------------------

loc_6B5A:
        cmp ax, 1Ah
        stc
        jnz loc_6AF4
        ret
sub_6A78    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6B61    proc near
        cld
        call    sub_6D99
        jnb loc_6B6E
        mov ax, 18h
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_6B6E:
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  loc_6BDB
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        ja  loc_6BDB
        push    ax
        mov ax, ds:0C2h
        inc ax
        cmp ax, ds:1C55h
        jb  loc_6BBA
        cmp ax, ds:1C53h
        jnb loc_6BBA
        push    di
        mov bx, ds:1C55h
        mov ax, [bx]
        cmp ax, 8000h
        jb  loc_6BA7
        call    sub_75E9
        add ax, 4Ch ; 'L'
        mov di, ax
        mov ax, [di+0DC9h]

loc_6BA7:
        push    word ptr [bx]
        push    bx
        mov [bx], ax
        mov cx, ds:1C53h
        dec cx
        sub cx, bx
        call    sub_CBAC
        pop bx
        pop word ptr [bx]
        pop di

loc_6BBA:
        mov bx, ds:1C58h
        mov al, ds:866h
        mov ah, ds:19FCh
        xor ah, ds:219h
        mov [bx], ax
        add word ptr ds:1C58h, 2
        add word ptr ds:19F4h, 2
        add word ptr ds:1A00h, 1
        pop ax

loc_6BDB:
        mov bp, di
        shr bp, 1
        shl di, 1
        add di, 0ED9h
        db 81h, 0FDh, 02Eh, 0  ; cmp bp, 2Eh ; '.'
        jnb loc_6C0F
        cmp byte ptr ds:[bp+0E9Dh], 1
        jb  loc_6C0F

loc_6BF3:
        push    word ptr ds:1C53h
        pop word ptr ds:216h
        push    word ptr ds:1C55h
        pop word ptr ds:214h
        cmp di, 0F35h
        jnz loc_6C18
        dec word ptr ds:214h
        jmp short loc_6C18
; --------------------------------------------------

loc_6C0F:
        cmp byte ptr ds:1C57h, 0
        jz  loc_6C18
        stc
        ret
; --------------------------------------------------

loc_6C18:
        mov bx, si
        mov si, di
        lodsw
        cmp di, 0F59h
        jb  loc_6C26
        call    ax
        ret
; --------------------------------------------------

loc_6C26:
        cmp di, 0F05h
        jnb loc_6C61
        cmp di, 0F01h
        jnz loc_6C37
        mov byte ptr ds:1C5Ah, 1

loc_6C37:
        push    ax
        lodsw
        pop si
        mov [si], al

loc_6C3C:
                    ; sub_6B61+1BAj
        mov ax, ds:228h
        cmp ax, ds:226h
        ja  loc_6C52
        jb  loc_6C4B
        inc word ptr ds:226h

loc_6C4B:
        xchg    ax, ds:226h
        mov ds:228h, ax

loc_6C52:
        clc
        ret
; --------------------------------------------------

loc_6C54:
                    ; sub_6B61+21Ej ...
        mov ax, 18h
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_6C5B:
        jmp loc_6D1E
; --------------------------------------------------

loc_6C5E:
        jmp loc_6CF8
; --------------------------------------------------

loc_6C61:
        push    ax
        call    sub_6E0A
        mov dx, [si]
        pop si
        cmp byte ptr ds:1C5Dh, 0
        jz  loc_6C7F
        cmp dx, 100h
        jnb loc_6C7D
        mov cl, [si]
        xor ch, ch
        add ax, cx
        jmp short loc_6C7F
; --------------------------------------------------

loc_6C7D:
        add ax, [si]

loc_6C7F:
                    ; sub_6B61+11Aj
        cmp di, 0F55h
        jnb loc_6C5B
        cmp ax, dx
        ja  loc_6C54
        cmp di, 0F4Dh
        jnb loc_6C5E
        mov [si], al
        cmp dx, 100h
        jb  loc_6C99
        mov [si], ax

loc_6C99:
        cmp di, 0F35h
        jnz loc_6CF5
        or  al, al
        jnz loc_6CAD
        mov ax, [bx-1]
        call    sub_47C4
        jb  loc_6CAD
        mov [si], al

loc_6CAD:
                    ; sub_6B61+148j
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  loc_6CC0
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        ja  loc_6CC0
        call    sub_6D82

loc_6CC0:
                    ; sub_6B61+15Aj
        mov ds:19FCh, al
        cmp si, ds:10h
        jnb loc_6CF4
        xor al, ds:219h
        cmp si, ds:0Eh
        jb  loc_6CF4
        test    word ptr ds:0, 2000h
        jz  loc_6CF1
        mov bx, ds:1C58h
        sub bx, ds:1A06h
        shr bx, 1
        cmp bl, ds:12h
        jb  loc_6CF4
        cmp bl, ds:13h
        jb  $+2

loc_6CF1:
        mov ds:19FCh, al

loc_6CF4:
                    ; sub_6B61+170j ...
        clc

loc_6CF5:
        jmp loc_6C3C
; --------------------------------------------------

loc_6CF8:
        mov [si], ax

loc_6CFA:
        inc si
        inc si
        push    dx
        call    sub_6E0A
        pop dx
        cmp byte ptr ds:1C5Dh, 0
        jz  loc_6D0A
        add ax, [si]

loc_6D0A:
        cmp ax, dx
        ja  loc_6D7F
        mov [si], ax
        cmp di, 0F51h
        jb  loc_6D1B
        mov di, 0F4Dh
        jmp short loc_6CFA
; --------------------------------------------------

loc_6D1B:
                    ; sub_6B61+1FBj
        jmp loc_6C3C
; --------------------------------------------------

loc_6D1E:
                    ; sub_6B61+210j
        cmp si, [di+2]
        jnb loc_6D78
        mov [si], al
        mov al, [bx-1]
        call    sub_BF90
        xor ah, ah
        cmp al, ds:0AC6h
        jz  loc_6D4B
        cmp al, ds:0AC7h
        jz  loc_6D49
        cmp al, ds:0AC8h
        jz  loc_6D47
        cmp al, ds:0AC5h
        jnz loc_6D4C
        inc ah

loc_6D47:
        inc ah

loc_6D49:
        inc ah

loc_6D4B:
        inc bx

loc_6D4C:
        db 88h, 0A4h, 16h, 00h    ; mov [si+0016h], ah (mod=10)
        inc si
        mov byte ptr [si], 0FFh
        push    ax
        mov ax, ds:973h
        cmp [bx-1], al
        pop ax
        jz  loc_6D1B
        call    sub_6E0A
        cmp byte ptr ds:1C5Dh, 0
        jz  loc_6D6E
        add cl, [si]
        xor ch, ch
        add ax, cx

loc_6D6E:
        cmp al, [si-1]
        ja  loc_6D1E
        mov ax, 57h ; 'W'
        jmp short loc_6D7B
; --------------------------------------------------

loc_6D78:
        mov ax, 56h ; 'V'

loc_6D7B:
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_6D7F:
        jmp loc_6C54
sub_6B61    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6D82    proc near
                    ; seg000:70EFp
        dec word ptr ds:1C58h
        dec word ptr ds:1C58h
        sub word ptr ds:19F4h, 2
        sub word ptr ds:1A00h, 1
        ret
sub_6D82    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6D95    proc near
        cld
        lodsb
        jmp short loc_6DA2
sub_6D95    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6D99    proc near
        cld
        lodsb
        cmp word ptr [si-1], 8000h
        jnb loc_6DCD

loc_6DA2:
        call    sub_BF90
        mov bl, al

loc_6DA7:
        lodsb
        or  al, al
        jz  loc_6DA7
        call    sub_BF90
        mov bh, al
        mov ax, bx
        mov di, 0DC9h
        push    cx
        mov cx, 0D4h ; '?'
        sar cx, 1
        cld
        repne scasw
        pop cx
        jnz loc_6DCB
        sub di, 0DC9h
        sub di, 2

loc_6DC9:
        clc
        ret
; --------------------------------------------------

loc_6DCB:
        stc
        ret
; --------------------------------------------------

loc_6DCD:
        mov ah, [si]
        dec si
        call    sub_75E9
        mov di, ax
        mov bx, si
        lodsw
        and ax, 1FFFh
        db 81h, 0FFh, 6, 0  ; cmp di, 6
        ja  loc_6DC9
        jz  loc_6DFA
        mov dl, [si]
        and dl, 0DFh
        cmp dl, ds:0AC4h
        jz  loc_6E00
        mov [di+0DFh], bx
        cmp dl, ds:0AC3h
        jz  loc_6E04
        jmp short loc_6E00
; --------------------------------------------------

loc_6DFA:
        add ds:0D7h, ax
        jmp short loc_6E04
; --------------------------------------------------

loc_6E00:
        mov [di+0D9h], bx

loc_6E04:
        db 81h, 0C7h, 04Ch, 0  ; add di, 4Ch ; 'L'
        jmp short loc_6DC9
sub_6D99    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6E0A    proc near
        dec bx

loc_6E0B:
        inc bx
        cmp byte ptr [bx], 20h ; ' '
        jz  loc_6E0B
        mov byte ptr ds:1C5Dh, 0
        mov al, [bx]
        cmp al, 2Bh ; '+'
        jz  loc_6E20
        cmp al, 2Dh ; '-'
        jnz loc_6E24

loc_6E20:
        mov ds:1C5Dh, al
        inc bx

loc_6E24:
        call    sub_CF5B
        pushf
        cmp byte ptr ds:1C5Dh, 2Dh ; '-'
        jnz loc_6E31
        neg ax

loc_6E31:
        popf
        ret
sub_6E0A    endp

; --------------------------------------------------
        db 0B4h, 2Ch, 0CDh, 21h, 51h, 80h, 0FDh, 0Ch, 76h, 3, 80h
        db 0EDh, 0Ch, 80h, 0FDh, 0, 77h, 2, 0B5h, 0Ch, 89h, 0Eh
        db 91h, 1Ch, 86h, 0F2h, 32h, 0F6h, 89h, 16h, 8Fh, 1Ch
        db 8Bh, 1Eh, 73h, 9, 88h, 1Eh, 0F1h, 1Ch, 0BBh, 0ECh, 1Ch
        db 0E8h, 2Dh, 0, 8Fh, 6, 91h, 1Ch, 8Ah, 26h, 0FCh, 19h
        db 0B0h, 41h, 80h, 3Eh, 92h, 1Ch, 0Ch, 72h, 2, 0B0h, 50h
        db 0E8h, 1Fh, 0F9h, 0B0h, 4Dh, 0E8h, 1Ah, 0F9h, 89h, 3Eh
        db 58h, 1Ch, 0F8h, 0C3h, 0B4h, 2Ah, 0CDh, 21h, 89h, 0Eh
        db 8Fh, 1Ch, 89h, 16h, 91h, 1Ch, 8Bh, 3Eh, 58h, 1Ch, 0FCh
        db 8Ah, 26h, 0FCh, 19h, 8Ah, 7, 43h, 3Ah, 6, 73h, 9, 75h
        db 6, 89h, 3Eh, 58h, 1Ch, 0F8h, 0C3h, 8Bh, 0C8h, 0E8h
        db 0E5h, 50h, 3Ch, 44h, 74h, 12h, 3Ch, 4Dh, 74h, 3Fh, 3Ch
        db 59h, 74h, 7, 8Bh, 0C1h, 0E8h, 0DAh, 0F8h, 0EBh, 0D9h
        db 0E9h, 7Fh, 0, 0E8h, 96h, 0, 0A1h, 91h, 1Ch, 32h, 0E4h
        db 0F6h, 36h, 93h, 1Ch, 8Bh, 0D0h, 0Ah, 0C0h, 75h, 9, 83h
        db 0F9h, 2, 72h, 0Dh, 74h, 2, 0B0h, 0F0h, 4, 30h, 8Ah
        db 26h, 0FCh, 19h, 0E8h, 0B1h, 0F8h, 8Ah, 0C6h, 4, 30h
        db 8Ah, 26h, 0FCh, 19h, 0E8h, 0A6h, 0F8h, 0EBh, 0A5h, 0E8h
        db 65h, 0, 0A0h, 92h, 1Ch, 83h, 0F9h, 3, 72h, 0CAh, 0BEh
        db 94h, 1Ch, 3Ch, 0Ch, 77h, 10h, 0Ah, 0C0h, 74h, 0Ch, 0FEh
        db 0C8h, 74h, 8, 8Ah, 14h, 32h, 0F6h, 3, 0F2h, 0EBh, 0F4h
        db 0ACh, 8Ah, 26h, 0FCh, 19h, 53h, 8Bh, 0D1h, 2Bh, 0DAh
        db 83h, 0F9h, 3, 76h, 5, 8Bh, 0C8h, 49h, 32h, 0EDh, 0ACh
        db 80h, 3Fh, 5Ah, 76h, 2, 4, 20h, 4Ah, 83h, 0FAh, 1, 7Ch
        db 1, 43h, 0E8h, 5Ch, 0F8h, 0E2h, 0ECh, 5Bh, 0E9h, 57h
        db 0FFh, 0E8h, 17h, 0, 0A1h, 8Fh, 1Ch, 83h, 0F9h, 2, 77h
        db 3, 2Dh, 6Ch, 7, 89h, 3Eh, 58h, 1Ch, 53h, 0E8h, 67h
        db 0, 5Bh, 0E9h, 3Dh, 0FFh, 8Bh, 0D0h, 33h, 0C9h, 8Ah
        db 7, 41h, 43h, 52h, 0E8h, 2Ah, 50h, 5Ah, 3Ah, 0C2h, 74h
        db 0F3h, 4Bh, 0C3h, 0E8h, 9Ah, 0FEh, 0A3h, 5Bh, 1Ch, 0Bh
        db 0C0h, 81h, 0Eh, 62h, 2 dup(1), 0, 0F8h, 0C3h, 0E8h
        db 0F0h, 75h, 0F8h, 0C3h, 56h, 57h, 51h, 6, 1Eh, 7, 0BEh
        db 0D1h, 4, 0BFh, 2Ch, 2, 0B9h, 16h, 0, 0FCh, 0F3h, 0A5h
        db 7, 59h, 5Fh, 5Eh, 0F8h, 0C3h

; ---------- S U B  R O U T I N E --------------------------


sub_6F9A    proc near
        xor cx, cx
        mov bx, 0Ah

loc_6F9F:
        xor dx, dx
        div bx
        add dx, 30h ; '0'
        push    dx
        inc cx
        or  ax, ax
        jnz loc_6F9F

loc_6FAC:
        pop ax
        stosb
        loop    loc_6FAC
        clc
        ret
sub_6F9A    endp

; --------------------------------------------------
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jbe loc_6FE1
        mov ax, ds:13Dh

; ---------- S U B  R O U T I N E --------------------------


sub_6FBD    proc near
        mov di, ds:1C58h
        xor cx, cx
        mov bx, 0Ah

loc_6FC6:
        xor dx, dx
        div bx
        add dx, 30h ; '0'
        mov dh, ds:19FCh
        push    dx
        inc cx
        or  ax, ax
        jnz loc_6FC6

loc_6FD7:
        pop ax
        call    sub_6796
        loop    loc_6FD7
        mov ds:1C58h, di

loc_6FE1:
        clc
        ret
sub_6FBD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6FE3    proc near
        push    ax
        mov ax, ds:0C2h
        call    sub_6FEC
        pop ax
        ret
sub_6FE3    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6FEC    proc near
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  locret_700F
        cmp ds:0E9h, ax
        jbe loc_6FFD
        mov ds:0E9h, ax

loc_6FFD:
        cmp ds:1C6h, ax
        jbe loc_7006
        mov ds:1C6h, ax

loc_7006:
        cmp ds:216h, ax
        jbe locret_700F
        mov ds:216h, ax

locret_700F:
        ret
sub_6FEC    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7010    proc near
        or  cx, cx
        jz  loc_704D
        jmp short loc_7030
sub_7010    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7016    proc near
        jmp short sub_701D
sub_7016    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7018    proc near
        mov si, ds:0C2h
        inc si
sub_7018    endp


; ---------- S U B  R O U T I N E --------------------------


sub_701D    proc near
        mov cx, ds:66h
        cmp word ptr ds:168h, 0
        jz  loc_702C
        mov cx, ds:166h

loc_702C:
        sub cx, si
        jbe loc_704D

loc_7030:
        mov bx, 1
        cld

loc_7034:
        lodsb
        cmp al, ds:971h
        jb  loc_703E
        ja  loc_7042
        inc bx

loc_703E:
        loop    loc_7034
        jmp short loc_704D
; --------------------------------------------------

loc_7042:
        cmp al, ds:973h
        jnz loc_703E
        dec bx
        jz  loc_7054
        jmp short loc_703E
; --------------------------------------------------

loc_704D:
        mov byte ptr ds:1C5Eh, 1
        stc
        ret
; --------------------------------------------------

loc_7054:
        mov ax, ds:0C2h
        mov cx, si
        clc
        ret
sub_701D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_705B    proc near
        mov cx, ds:0C0h
        xchg    si, cx
        sub cx, si
        jbe loc_704D
        add si, cx
        mov bx, 1
        std

loc_706B:
        lodsb
        cmp al, ds:971h
        jb  loc_7077
        ja  loc_707B
        dec bx
        jz  loc_7054

loc_7077:
        loop    loc_706B
        jmp short loc_704D
; --------------------------------------------------

loc_707B:
        cmp al, ds:973h
        jnz loc_7077
        inc bx
        jmp short loc_706B
sub_705B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7084    proc near
        pop bp

loc_7085:
        mov bx, di
        mov dx, si
        mov si, 214h
        db 81h, 0C6h, 050h, 0  ; add si, 50h ; 'P'
        dec si
        mov di, sp
        dec di
        mov cx, 50h ; 'P'
        test    cx, 1
        jz  loc_709E
        dec di

loc_709E:
        mov ax, es
        push    ss
        pop es
        assume es:nothing
        cli
        std
        repe movsb
        inc di
        mov sp, di
        sti
        mov es, ax
        mov di, bx
        mov si, dx
        jmp bp
sub_7084    endp


; ---------- S U B  R O U T I N E --------------------------


sub_70B2    proc near
                    ; sub_5E89+146p ...
        pop dx
        mov bx, di
        mov bp, si
        mov di, 214h
        mov si, sp
        mov cx, 50h ; 'P'
        mov ax, es
        push    ds
        pop es
        push    ss
        pop ds
        assume ds:nothing
        cld
        repe movsb
        test    si, 1
        jz  loc_70CF
        inc si

loc_70CF:
        push    es
        pop ds
        mov sp, si
        mov es, ax
        mov di, bx
        mov si, bp
        jmp dx
sub_70B2    endp

; --------------------------------------------------
        mov di, ds:1C58h
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jnb loc_711A
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  loc_7118
        call    sub_6D82
        mov di, ds:1C58h
        push    word ptr ds:19FCh
        mov ax, ds:0DC1h
        mov ds:19FCh, al
        mov ax, ds:220h
        inc word ptr ds:220h
        mov ds:1C58h, di
        push    bx
        call    sub_6FBD
        pop bx
        pop ax
        mov ds:19FCh, al
        mov ds:1C58h, di

loc_7118:
        clc
        ret
; --------------------------------------------------

loc_711A:
        mov al, ds:19FCh
        push    ax
        mov ax, ds:0DC1h
        test    word ptr ds:162h, 20h
        jz  loc_712C
        mov ax, ds:0DC7h

loc_712C:
        mov ds:19FCh, al
        mov ax, [bx]
        xor al, al
        shr ax, 1
        or  al, [bx]
        push    bx
        mov cx, ds:220h
        add cx, 0Fh
        cmp cx, ax
        ja  loc_7146
        mov ax, ds:220h

loc_7146:
        call    sub_6FBD
        pop bx
        pop ax
        clc
        ret
; --------------------------------------------------
        mov dx, ds:0E25h
        jmp short loc_7157
; --------------------------------------------------
        mov dx, ds:0E73h

loc_7157:
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  loc_718D
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        ja  loc_718D
        mov ah, ds:0DB1h
        mov al, dl
        mov di, ds:1C58h
        call    sub_6796
        mov al, dh
        call    sub_6796
        mov al, 3Ah ; ':'

loc_717B:
        call    sub_6796
        mov ds:1C58h, di
        mov al, [bx]
        cmp al, ds:973h
        jz  loc_718D
        inc bx
        jmp short loc_717B
; --------------------------------------------------

loc_718D:
        clc
        ret
; --------------------------------------------------
        mov byte ptr ds:21Dh, 1
        ret
; --------------------------------------------------
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jb  loc_71AE
        cmp byte ptr ds:19F8h, 0
        jnz loc_71AE
        mov cx, ds:1C53h
        sub cx, bx
        dec cx
        call    sub_CBAC

loc_71AE:
        clc
        ret
; --------------------------------------------------
        db 81h, 3Eh, 5Fh, 1, 4, 0, 76h, 0F6h, 80h, 3Eh, 0F8h, 19h
        db 0, 75h, 0EFh, 80h, 3Eh, 0B3h, 20h, 0, 75h, 0E8h, 0F7h
        db 6, 2 dup(0), 40h, 0, 75h, 6, 0B8h, 2Ch, 0, 0E8h, 7Bh
        db 59h, 32h, 0E4h, 0CDh, 16h, 0F8h, 0C3h
; --------------------------------------------------

loc_71DA:
        mov ax, 85h ; '?'

loc_71DD:
        call    sub_CB4F
        ret
; --------------------------------------------------
        db 0FCh             ; EVEN -> 71E2 (1 byte, original=FC)
        push    word ptr ds:86Dh
        mov byte ptr ds:86Dh, 20h ; ' '
        call    sub_A54E
        pop ax
        mov ds:86Dh, al
        jb  loc_71DA
        mov di, ds:8C7h
        mov byte ptr [di], 20h ; ' '
        push    es
        push    ds
        pop es
        call    sub_720C
        jb  loc_720A
        mov ax, 25h ; '%'
        call    sub_CB6A
        clc

loc_720A:
        pop es
        assume es:nothing
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_720C    proc near
        mov si, 870h
        mov ax, 3D2h
        mov bx, 2A5h
        call    sub_7219
        ret
sub_720C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7219    proc near
        mov ds:1C5Fh, ax
        mov ds:1C61h, bx

loc_7220:
        mov ds:1C63h, si
        call    sub_6D99
        jb  loc_71DA
        shl di, 1
        add di, 0ED9h
        mov si, di
        lodsw
        mov dx, 0FFFFh
        cmp ax, 13Bh
        jb  loc_7255
        cmp ax, 1C4h
        ja  loc_7245
        add ax, ds:1C5Fh
        jmp short loc_7255
; --------------------------------------------------

loc_7245:
        cmp ax, 214h
        jb  loc_7255
        cmp ax, 263h
        ja  loc_7255
        add ax, ds:1C61h
        xor dx, dx

loc_7255:
        or  dx, dx
        jz  loc_7261
        cmp dx, ds:1C61h
        jnz loc_7261
        stc
        ret
; --------------------------------------------------

loc_7261:
        cmp di, 0F05h
        jnb loc_72A0
        push    ax
        lodsw
        pop si
        mov [si], al
        mov bx, ds:1C63h
        inc bx
        inc bx
        inc bx

loc_7273:
        mov si, bx
        mov al, [bx-1]
        cmp al, ds:973h
        jz  loc_7282
        cmp al, 20h ; ' '
        jnz loc_7220

loc_7282:
        mov si, ds:1C61h
        mov ax, [si+228h]
        cmp ax, [si+226h]
        ja  loc_729E
        jb  loc_7296
        inc word ptr [si+226h]

loc_7296:
        xchg    ax, [si+226h]
        mov [si+228h], ax

loc_729E:
        clc
        ret
; --------------------------------------------------

loc_72A0:
        push    ax
        mov bx, ds:1C63h
        inc bx

loc_72A6:
        inc bx
        cmp byte ptr [bx], 3Dh ; '='
        jz  loc_72A6
        call    sub_CF5B
        mov dx, [si]
        pop si
        cmp di, 0F55h
        jnb loc_72F1
        cmp ax, dx
        ja  loc_72CE
        cmp di, 0F4Dh
        jnb loc_72D1
        mov [si], al
        cmp dx, 100h
        jb  loc_7273
        mov [si], ax
        jmp short loc_7273
; --------------------------------------------------

loc_72CE:
        jmp loc_6C54
; --------------------------------------------------

loc_72D1:
        mov [si], ax

loc_72D3:
        inc si
        inc si
        push    dx
        call    sub_7350
        pop dx
        cmp ax, dx
        ja  loc_72CE
        mov [si], ax
        or  cx, cx
        jz  loc_72EF
        cmp di, 0F51h
        jb  loc_72EF
        mov di, 0F4Dh
        jmp short loc_72D3
; --------------------------------------------------

loc_72EF:
        jmp short loc_7273
; --------------------------------------------------

loc_72F1:
        mov dx, si
        sub dx, [di]
        add dx, [di+2]

loc_72F8:
        cmp si, dx
        jnb loc_734A
        mov [si], al
        mov al, [bx-1]
        push    dx
        call    sub_BF90
        pop dx
        xor ah, ah
        cmp al, ds:0AC6h
        jz  loc_7326
        cmp al, ds:0AC7h
        jz  loc_7324
        cmp al, ds:0AC8h
        jz  loc_7322
        cmp al, ds:0AC5h
        jnz loc_7327
        inc ah

loc_7322:
        inc ah

loc_7324:
        inc ah

loc_7326:
        inc bx

loc_7327:
        db 88h, 0A4h, 16h, 00h    ; mov [si+0016h], ah (mod=10)
        inc si
        mov byte ptr [si], 0FFh
        cmp al, 20h ; ' '
        jz  loc_72EF
        cmp al, ds:973h
        jz  loc_72EF
        push    dx
        call    sub_7350
        pop dx
        jb  loc_72EF
        cmp al, [si-1]
        ja  loc_72F8
        mov ax, 57h ; 'W'
        jmp short loc_734D
; --------------------------------------------------

loc_734A:
        mov ax, 56h ; 'V'

loc_734D:
        jmp loc_71DD
sub_7219    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7350    proc near
                    ; sub_7219+121p
        cmp byte ptr [bx], 30h ; '0'
        jb  loc_735A
        cmp byte ptr [bx], 39h ; '9'
        jbe loc_7360

loc_735A:
        xor cx, cx
        xor ax, ax
        stc
        ret
; --------------------------------------------------

loc_7360:
        call    sub_CF5B
        mov cx, 1
        clc
        ret
sub_7350    endp


; ---------- S U B  R O U T I N E --------------------------

; Attributes: bp-based frame

sub_7368    proc near
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jz  loc_7371
        ret
; --------------------------------------------------

loc_7371:
        mov ax, 50h ; 'P'
        inc ax
        and ax, 0FFFEh
        sub sp, ax
        mov bp, sp
        push    ax
        push    es
        push    ss
        pop es
        assume es:nothing
        push    di
        push    si
        push    cx
        mov si, 174h
        mov di, bp
        mov cx, 50h ; 'P'
        cld
        repe movsb
        pop cx
        pop si
        pop di
        pop es
        assume es:nothing
        call    sub_73B6
        mov ax, sp
        push    es
        push    ds
        pop es
        assume es:nothing
        push    ds
        push    ss
        pop ds
        push    di
        push    si
        push    cx
        mov di, 174h
        mov si, ax
        inc si
        inc si
        mov cx, 50h ; 'P'
        cld
        repe movsb
        pop cx
        pop si
        pop di
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        pop ax
        add sp, ax
        ret
sub_7368    endp


; ---------- S U B  R O U T I N E --------------------------


sub_73B6    proc near
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jz  loc_73BF
        ret
; --------------------------------------------------

loc_73BF:
        push    es
        push    di
        push    si
        push    ds
        pop es
        assume es:nothing
        mov di, si
        mov ds:1C51h, cx
        sub cx, di
        cld
        pop di
        push    di
        mov cx, ds:1C51h
        sub cx, di
        jbe loc_73EC

loc_73D7:
        mov cx, ds:1C51h
        sub cx, di
        jbe loc_73EC
        mov ax, ds:971h
        cld
        repne scasb
        jnz loc_73EC
        call    sub_7421
        jmp short loc_73D7
; --------------------------------------------------

loc_73EC:
        pop si
        pop di
        pop es
        assume es:nothing

locret_73EF:
        ret
sub_73B6    endp


; ---------- S U B  R O U T I N E --------------------------


sub_73F0    proc near
        push    es
        push    di
        push    si
        push    ds
        pop es
        assume es:nothing
        mov di, si
        sub cx, di
        jbe loc_741D
        cld

loc_73FC:
        mov ax, ds:971h
        repne scasb
        jnz loc_741D
        cmp word ptr [di], 8000h
        jb  loc_7419
        mov ax, [di]
        call    sub_75E9
        add ax, 4Ch ; 'L'
        mov si, ax
        mov ax, [si+0DC9h]
        mov [di], ax

loc_7419:
        or  cx, cx
        jnz loc_73FC

loc_741D:
        pop si
        pop di
        pop es
        assume es:nothing
        ret
sub_73F0    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7421    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_7429
        pop es
        assume es:nothing
        ret
sub_7421    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7429    proc near
        cmp di, ds:0BEh
        jb  loc_7435
        cmp di, ds:66h
        jb  loc_743A

loc_7435:
        call    sub_E570
        jmp short locret_73EF
; --------------------------------------------------

loc_743A:
        cmp word ptr ds:166h, 0
        jnz locret_73EF
        push    di
        mov si, di
        mov ax, [si]
        cmp ax, 8000h
        jnb loc_74AF
        push    si
        call    sub_6D95
        pop si
        jnb loc_745D

loc_7452:
        call    sub_7016
        jb  loc_745B
        pop di
        mov di, si
        ret
; --------------------------------------------------

loc_745B:
        pop di
        ret
; --------------------------------------------------

loc_745D:
        db 81h, 0FFh, 020h, 0  ; cmp di, 20h ; ' '
        jb  loc_748F
        db 81h, 0FFh, 022h, 0  ; cmp di, 22h ; '"'
        ja  loc_748F
        mov ds:1C55h, si
        push    si
        call    sub_7016
        mov ds:1C53h, si
        pop si
        jb  loc_745B
        push    si
        push    word ptr ds:214h
        push    word ptr ds:216h
        call    sub_6B61
        pop word ptr ds:216h
        pop word ptr ds:214h
        pop si
        jmp short loc_7452
; --------------------------------------------------

loc_748F:
        db 81h, 0FFh, 04Ch, 0  ; cmp di, 4Ch ; 'L'
        jb  loc_7452
        db 81h, 0FFh, 052h, 0  ; cmp di, 52h ; 'R'
        ja  loc_7452
        push    si
        push    di
        inc si
        inc si
        call    sub_7016
        mov di, si
        pop ax
        pop bx
        jb  loc_745B
        call    sub_75DA
        mov [bx], ax
        jmp short loc_74B8
; --------------------------------------------------

loc_74AF:
        inc si
        inc si
        call    sub_7016
        mov di, si
        jb  loc_745B

loc_74B8:
        dec di
        mov byte ptr [di], 1Ah
        pop si
        push    word ptr ds:66h
        push    si
        push    di
        mov ds:66h, di
        mov bx, 174h
        call    sub_A6C3
        pop di
        pop si
        push    si
        cld
        lodsw
        mov ds:216h, si
        cmp si, ds:214h
        jnb loc_74E0
        mov ds:214h, si

loc_74E0:
        mov dl, ds:19F8h
        mov dh, ds:1D12h
        push    dx
        mov byte ptr ds:1D12h, 1
        mov byte ptr ds:19F8h, 1
        and ax, 0E000h
        cmp ax, 0E000h
        mov ax, 0
        jz  loc_7501
        inc si
        jmp short loc_7526
; --------------------------------------------------

loc_7501:
        push    es
        push    ds
        pop es
        assume es:nothing
        inc di
        mov cl, [di]
        mov ds:1C50h, cl
        mov cx, di
        sub cx, si
        mov si, di
        dec si
        push    di
        std
        repe movsb
        cld
        mov cx, ds:973h
        mov [di], cl
        sub si, 2
        pop di
        pop es
        assume es:nothing
        inc word ptr ds:66h

loc_7526:
                    ; sub_7429+137j
        push    di
        push    ax
        push    si
        push    word ptr ds:0E7h
        push    word ptr ds:0E9h
        push    word ptr ds:15Fh
        mov word ptr ds:15Fh, 4
        call    sub_6736
        pop word ptr ds:15Fh
        pop word ptr ds:0E9h
        pop word ptr ds:0E7h
        mov word ptr ds:1C4h, 0FFFFh
        pop dx
        pop ax
        pop di
        add al, ds:21Ch
        adc ah, 0
        cmp si, di
        jnb loc_7565
        cmp si, dx
        ja  loc_7526
        call    sub_E570

loc_7565:
        pop dx
        mov ds:19F8h, dl
        mov ds:1D12h, dh
        push    ax
        mov ax, ds:973h
        mov [di], al
        pop ax
        inc di
        pop si
        pop word ptr ds:66h
        mov dx, ax
        mov ax, [si]
        call    sub_75E9
        mov bx, ax
        db 81h, 0FBh, 6, 0  ; cmp bx, 6
        jz  loc_75A6
        mov cl, [si+2]
        and cl, 0DFh
        cmp cl, ds:0AC4h
        jz  loc_75A0
        mov [bx+0DFh], si
        cmp cl, ds:0AC3h
        jz  loc_75C5

loc_75A0:
        mov [bx+0D9h], si
        jmp short loc_75C5
; --------------------------------------------------

loc_75A6:
        mov ds:0E5h, si
        push    si
        inc si
        inc si
        mov cx, di
        mov di, si
        inc si
        sub cx, si
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        repe movsb
        mov al, ds:1C50h
        mov [di], al
        pop es
        assume es:nothing
        pop si
        inc word ptr ds:220h

loc_75C5:
                    ; sub_7429+17Bj
        and word ptr [si], 0E000h
        or  [si], dx
        push    di
        mov bx, 174h
        mov byte ptr ds:21Fh, 0
        call    sub_A6C3
        pop di
        clc
        ret
sub_7429    endp


; ---------- S U B  R O U T I N E --------------------------


sub_75DA    proc near
        push    cx
        sub ax, 4Ch ; 'L'
        mov cx, 3
        inc cx
        ror ax, cl
        or  ax, 8000h
        pop cx
        ret
sub_75DA    endp


; ---------- S U B  R O U T I N E --------------------------


sub_75E9    proc near
        push    cx
        and ax, 7FFFh
        and ax, 0E000h
        mov cx, 3
        inc cx
        rol ax, cl
        pop cx
        ret
sub_75E9    endp

; --------------------------------------------------
        db 8 dup(0)         ; CALIGN 10h -> sub_7600 (8 bytes 00)
; ---------- S U B  R O U T I N E --------------------------


sub_7600    proc near
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jz  loc_7609

locret_7608:
        ret
; --------------------------------------------------

loc_7609:
        test    word ptr ds:0, 4
        jnz locret_7608
        cmp byte ptr ds:1D12h, 0
        jnz locret_7608
        db 81h, 3Eh, 0C2h, 0, 0FFh, 0FFh  ; cmp word ptr ds:0C2h, 0FFFFh
        jz  locret_7608
        cmp byte ptr ds:4, 0FFh
        jz  locret_7608
        cmp word ptr ds:934h, 0
        jz  locret_7608
        cmp word ptr ds:168h, 0
        jnz locret_7608
        call    sub_7084
        call    sub_763F
        call    sub_70B2
        ret
sub_7600    endp


; ---------- S U B  R O U T I N E --------------------------


sub_763F    proc near
        push    di
        mov bp, ss:0Eh
        mov di, [bp+0]
        db 81h, 0FFh, 4, 0  ; cmp di, 4
        jbe loc_7657
        mov di, 4
        db 3Bh, 0B3h, 01h, 00h    ; cmp si, [bp+di+0001h] (mod=10)
        jnb loc_767C

loc_7657:
        call    sub_765F
        jnb loc_767C
        jmp loc_771C
sub_763F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_765F    proc near
        mov bp, ss:0Eh
        mov word ptr [bp+0], 4
        mov word ptr ds:13Dh, 0
        push    si
        mov si, ds:0C0h
        call    sub_799F
        call    sub_7DD7
        pop si
        ret
sub_765F    endp

; --------------------------------------------------

loc_767C:
        call    sub_771E
        jnb loc_768D
        jmp loc_771C

; ---------- S U B  R O U T I N E --------------------------


sub_7684    proc near
        mov byte ptr ds:1D0Ch, 1
        push    di
        jmp short loc_7692
sub_7684    endp


; ---------- S U B  R O U T I N E --------------------------


sub_768C    proc near
        push    di

loc_768D:
        mov byte ptr ds:1D0Ch, 0

loc_7692:
        push    si
        push    di
        push    bp
        mov bp, ss:0Eh
        mov di, ds:1D15h
        db 8Bh, 0B3h, 01h, 00h    ; mov si, [bp+di+0001h] (mod=10)
        pop bp
        db 81h, 0FFh, 04h, 00h    ; cmp di, 4 (81 encoding)
        pop di
        ja  loc_76AE
        mov si, ds:0C0h

loc_76AE:
        cmp di, [bp+0]
        jnb loc_76B5
        mov si, [bp+di]

loc_76B5:
        mov ax, si
        call    sub_8098
        push    dx
        push    bp
        call    sub_6801
        pop bp

loc_76C0:
        call    sub_77CD
        pop dx
        jb  loc_7705
        call    sub_7AFE
        mov ds:1DA1h, si
        jb  loc_7705
        pop ax
        push    ax
        push    dx
        cmp si, ds:66h
        jnb loc_7704
        cmp byte ptr ds:1D0Ch, 0
        jnz loc_76E5
        cmp si, ax
        jbe loc_76C0
        jmp short loc_7704
; --------------------------------------------------

loc_76E5:
        push    bp
        push    di
        mov bp, ss:0Eh
        mov di, ds:1D15h
        db 8Bh, 83h, 03h, 00h    ; mov ax, [bp+di+0003h] (mod=10)
        pop di
        pop bp
        cmp ax, ds:1D9Dh
        jb  loc_76C0
        ja  loc_7704
        cmp dx, ds:1D9Fh
        jb  loc_76C0

loc_7704:
        pop dx

loc_7705:
        pop si
        push    dx
        call    sub_6801
        mov bp, ss:0Eh
        mov di, ds:1D15h
        db 8Bh, 93h, 03h, 00h    ; mov dx, [bp+di+0003h] (mod=10)
        mov ds:13Dh, dx
        pop dx

loc_771C:
        pop di
        ret
sub_768C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_771E    proc near
        call    sub_8042
        or  dx, dx
        jz  loc_775B
        mov ds:1D15h, dx
        mov bp, ss:0Eh
        mov di, dx
        mov al, [bp+di]
        xor ah, ah
        add di, ax
        cmp di, [bp+0]
        jb  loc_7764
        mov bp, ss:10h
        db 81h, 7Eh, 0, 4, 0  ; cmp word ptr [bp+0], 4 (81 encoding)
        jbe loc_774D
        db 3Bh, 0B6h, 04h, 00h    ; cmp si, [bp+0004h] (mod=10)
        jb  loc_7764

loc_774D:
        mov ax, si
        call    sub_8098
        cmp si, ds:0C2h
        jbe loc_775D
        mov [bp+0], di

loc_775B:
        stc
        ret
; --------------------------------------------------

loc_775D:
        db 81h, 7Eh, 00h, 04h, 00h    ; cmp word ptr [bp+0], 4 (81 encoding)
        ja  loc_77C2

loc_7764:
        call    sub_7FE6
        mov bp, ss:0Eh
        mov di, ds:1D15h
        jb  loc_7778
        db 3Bh, 0B3h, 01h, 00h    ; cmp si, [bp+di+0001h] (mod=10)
        jnb loc_77AE

loc_7778:
        call    sub_8042
        mov di, 4
        mov ds:1D15h, di
        mov word ptr ds:13Dh, 1
        or  dx, dx
        jz  loc_77A0
        mov di, dx
        mov ds:1D15h, di
        db 0FFh, 0B3h, 03h, 00h    ; push [bp+di+0003h] (mod=10)
        pop word ptr ds:13Dh
        mov al, [bp+di]
        xor ah, ah
        add di, ax

loc_77A0:
        mov [bp+0], di
        mov di, 4
        mov bp, ss:10h
        mov [bp+0], di

loc_77AE:
        mov bp, ss:10h
        mov di, 4
        cmp si, [bp+di]
        jnb loc_77BD
        mov [bp+0], di

loc_77BD:
        mov ax, si
        call    sub_8098

loc_77C2:
        clc
        ret
sub_771E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_77C4    proc near
        call    sub_771E
        jb  locret_77CC
        mov [bp+0], di

locret_77CC:
        ret
sub_77C4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_77CD    proc near
        cmp byte ptr [si], 1Ah
        stc
        jz  locret_77CC
        mov cx, di
        db 81h, 0C1h, 6, 0  ; add cx, 6
        db 81h, 0C1h, 6, 0  ; add cx, 6
        sub cx, [bp+2]
        jb  loc_77F2
        mov bp, 10h
        push    di
        call    sub_7859
        pop di
        mov bp, ss:10h
        jnb loc_77F2
        ret
; --------------------------------------------------

loc_77F2:
        mov [bp+di], si
        mov al, ds:21Fh
        rol al, 1
        db 88h, 83h, 05h, 00h    ; mov [bp+di+5], al (mod=10)
        mov ax, di
        db 81h, 0C7h, 06h, 00h    ; add di, 6 (81 encoding)
        mov [bp+0], di
        push    ax
        push    bp
        mov byte ptr ds:1D12h, 1
        mov word ptr ds:0D7h, 0
        mov ax, 1
        not ax
        and ds:162h, ax
        mov byte ptr ds:1C5Ah, 0
        call    sub_6736
        mov byte ptr ds:1D12h, 0
        pop bp
        pop ax
        mov di, ax
        mov ax, ds:0D7h
        db 89h, 83h, 02h, 00h    ; mov [bp+di+2], ax (mod=10)
        add ds:1D13h, ax
        mov al, ds:21Ch
        db 88h, 83h, 04h, 00h    ; mov [bp+di+4], al (mod=10)
        mov al, ds:21Dh
        db 08h, 83h, 05h, 00h    ; or [bp+di+5], al (mod=10)
        db 0D0h, 83h, 05h, 00h   ; rol byte ptr [bp+di+5], 1 (mod=10)
        cmp byte ptr ds:1C5Ah, 0
        jnz locret_7858
        mov al, ds:218h
        db 08h, 83h, 05h, 00h    ; or [bp+di+0005h], al (mod=10)

locret_7858:
        ret
sub_77CD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7859    proc near
        push    di
        push    si
        push    bx
        push    es
        push    ss
        pop es
        assume es:nothing
        mov si, [bp+0]
        push    word ptr ss:[si+2]
        pop word ptr ds:1D9Bh
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        push    cx
        shl cx, 1
        shl cx, 1
        mov bx, ss:4
        mov di, [bx]

loc_7879:
        mov ax, di
        mov si, [bx]
        sub ax, si
        mov [bx], di
        xor ax, ax
        cmp bx, bp
        jz  loc_7894
        add ax, [bx+2]
        sub ax, di
        sub ax, [si]
        cmp ax, cx
        jbe loc_7894
        mov ax, cx

loc_7894:
        sub cx, ax
        cmp bx, bp
        ja  loc_78A5
        call    sub_78F4
        cmp bx, bp
        jnb loc_78A5
        inc bx
        inc bx
        jmp short loc_7879
; --------------------------------------------------

loc_78A5:
        or  cx, cx
        jz  loc_78CE
        mov bx, ss:6
        mov di, [bx]
        jmp short loc_78C8
; --------------------------------------------------

loc_78B2:
        mov si, [bx]
        mov ax, [si+2]
        sub ax, [si]
        jbe loc_78C1
        cmp ax, cx
        jbe loc_78C1
        mov ax, cx

loc_78C1:
        sub cx, ax
        call    sub_790E
        mov [bx], di

loc_78C8:
        dec bx
        dec bx
        cmp bx, bp
        ja  loc_78B2

loc_78CE:
        mov si, [bp+0]
        mov ax, [bp+2]
        sub ax, si
        mov [si+2], ax
        pop cx
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        sub ax, ds:1D9Bh
        sub ax, cx
        jnb loc_78F0
        neg ax
        cmp ax, ds:1D19h
        jb  loc_78F0
        mov ds:1D19h, ax
        stc

loc_78F0:
        pop bx
        pop si
        pop di
        ret
sub_7859    endp


; ---------- S U B  R O U T I N E --------------------------


sub_78F4    proc near
        push    cx
        mov cx, [si]
        sub [si+2], ax
        jbe loc_7901
        cmp cx, [si+2]
        jbe loc_7904

loc_7901:
        mov [si+2], cx

loc_7904:
        push    di
        cld
        repe movsb
        pop di
        add di, [di+2]
        pop cx
        ret
sub_78F4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_790E    proc near
        push    cx
        mov cx, [si]
        sub [si+2], ax
        jbe loc_791B
        cmp cx, [si+2]
        jbe loc_791E

loc_791B:
        mov [si+2], cx

loc_791E:
        sub di, [si+2]
        add di, cx
        dec di
        add si, cx
        dec si
        std
        repe movsb
        inc di
        pop cx
        ret
sub_790E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_792D    proc near
        push    di
        push    si
        push    bx
        push    bp
        push    cx
        mov ax, 200h
        cmp ax, ds:1D19h
        jnb loc_793E
        mov ax, ds:1D19h

loc_793E:
        push    ss
        call    sub_EB21
        pop bx
        jb  loc_7999
        mov word ptr ds:1D19h, 0
        mov bp, ss:4
        cli
        mov cx, 4
        shl ax, cl
        mov ss, bx
        add sp, ax
        add ds:90Eh, ax
        sti
        mov bx, ax
        db 36h, 8Bh, 9Fh, 04h, 00h    ; mov bx, ss:[bx+0004h] (mod=10)
        add bx, ax
        push    es
        push    ss
        pop es
        assume es:nothing
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        add bp, ax
        xor di, di
        mov si, [bp+0]
        add si, ax
        mov cx, [si+2]
        add cx, si
        add [si+2], ax
        mov si, ax
        sub cx, si
        cld
        repe movsb
        sub bp, ax

loc_7988:
        add bp, 2
        cmp word ptr [bp+0], 0
        jz  loc_7996
        add [bp+0], ax
        jmp short loc_7988
; --------------------------------------------------

loc_7996:
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        clc

loc_7999:
        pop cx
        pop bp
        pop bx
        pop si
        pop di
        ret
sub_792D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_799F    proc near
        mov di, 0D7h ; '?'
        mov cx, 10h
        xor ax, ax
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        repe stosb
        pop es
        assume es:nothing
        ret
sub_799F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_79AF    proc near
        push    si
        push    di
        push    cx
        push    bp
        push    es
        mov bp, ss:0Eh
        push    ds
        pop es
        assume es:nothing
        cld
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        call    sub_7AF1
        xor ax, ax
        mov di, dx
        push    di
        repe stosb
        pop di
        mov dx, si
        mov si, 4
        xor ah, ah

loc_79D1:
        cmp si, dx
        jnb loc_79FC
        cmp si, [bp+0]
        jnb loc_79FC
        push    si
        db 81h, 0C6h, 8, 0  ; add si, 8
        db 81h, 0FBh, 8, 0  ; cmp bx, 8
        jbe loc_79E9
        mov al, [bp+si]
        add si, ax

loc_79E9:
        add si, bp
        lodsb
        mov cx, ax
        dec cx
        jz  loc_79F5
        push    di
        repe movsb
        pop di

loc_79F5:
        pop si
        mov al, [bp+si]
        add si, ax
        jmp short loc_79D1
; --------------------------------------------------

loc_79FC:
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        pop bp

loc_79FF:
        pop cx
        pop di
        pop si
        ret
sub_79AF    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7A03    proc near
        push    si
        push    di
        push    cx
        mov ax, es
        mov bp, ss:0Eh
        push    ss
        pop es
        assume es:nothing
        cld
        call    sub_7AF1
        sub sp, cx
        mov di, sp
        push    cx
        push    si
        mov si, dx
        mov ds:1D10h, si
        repe movsb
        mov es, ax
        assume es:nothing
        pop ax
        push    si
        mov si, ax
        call    sub_79AF
        mov dx, si
        pop si
        pop cx
        push    cx
        dec si
        dec di
        std
        push    es
        push    ss
        pop es
        assume es:nothing
        repe cmpsb
        pop es
        assume es:nothing
        or  cx, cx
        jz  loc_7A3D
        inc cx

loc_7A3D:
        inc cx
        mov si, dx
        db 81h, 0C6h, 8, 0  ; add si, 8
        mov al, [bp+si]
        xor ah, ah
        db 81h, 0FBh, 8, 0  ; cmp bx, 8
        jbe loc_7A52
        add si, ax
        mov al, [bp+si]

loc_7A52:
        sub cx, ax
        jz  loc_7AB8
        ja  loc_7A7B
        push    si
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        add si, ax
        add si, bp
        mov di, si
        add di, cx
        push    cx
        mov cx, [bp+0]
        add cx, bp
        sub cx, si
        jbe loc_7A75
        cld
        push    es
        push    ss
        pop es
        assume es:nothing
        repe movsb
        pop es
        assume es:nothing

loc_7A75:
        pop cx
        pop ds
        assume ds:nothing
        pop si
        jmp short loc_7AB8
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_7A7B:
        push    cx
        add cx, [bp+0]
        cmp cx, [bp+2]
        pop cx
        jbe loc_7A96
        push    ax
        push    dx
        mov bp, 0Eh
        call    sub_7859
        mov bp, ss:0Eh
        pop dx
        pop ax
        jb  loc_7ADA

loc_7A96:
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        push    cx
        mov cx, [bp+0]
        mov di, cx
        dec di
        sub cx, si
        pop si
        add di, bp
        add si, di
        xchg    si, di
        std
        push    es
        push    ss
        pop es
        assume es:nothing
        repe movsb
        pop es
        assume es:nothing
        pop ds
        assume ds:nothing
        mov cx, di
        sub cx, si
        inc si
        sub si, bp

loc_7AB8:
        add si, bp
        mov di, si
        mov si, sp
        push    cx
        add cx, ax
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        push    es
        push    ss
        pop es
        assume es:nothing
        push    cx
        push    di
        inc si
        cld
        repe movsb
        pop di
        pop ax
        stosb
        pop es
        assume es:nothing
        pop ds
        assume ds:nothing
        mov si, dx
        pop ax
        add [bp+si], al
        add [bp+0], ax

loc_7ADA:
        pop cx
        mov si, sp
        mov di, ds:1D10h
        push    es
        push    ds
        pop es
        assume es:nothing
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        cld
        repe movsb
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        mov sp, si
        jmp loc_79FF
sub_7A03    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7AF1    proc near
        mov cx, 50h ; 'P'
        db 81h, 0FBh, 8, 0  ; cmp bx, 8
        jnz locret_7AFD
        mov cx, 0Ch

locret_7AFD:
        ret
sub_7AF1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7AFE    proc near
        call    sub_7CF6
        dec dx
        dec word ptr ds:1D17h
        mov ds:1D00h, di
        mov ds:1D04h, dx
        mov ds:1D06h, si
        push    word ptr ds:1D17h
        pop word ptr ds:1D08h
        push    word ptr ds:1D13h
        pop word ptr ds:1D0Ah
        mov word ptr ds:1D0Eh, 0

loc_7B28:
                    ; sub_7AFE+156j
        test    word ptr ds:162h, 1
        jnz loc_7B7F
        db 36h, 0F6h, 87h, 05h, 00h, 01h    ; test byte ptr ss:[bx+5], 1 (mod=10)
        jz  loc_7BB1
        mov ds:1D02h, bx
        push    dx
        call    sub_77CD
        pop dx
        jb  locret_7B60
        cmp dx, ds:25Dh
        jb  loc_7B50
        db 0F6h, 83h, 05h, 00h, 01h    ; test byte ptr [bp+di+5], 1 (mod=10)
        jz  loc_7B7F

loc_7B50:
        mov dx, ds:1D17h
        call    sub_7CF6
        call    sub_7D3F
        cmp dx, ax
        ja  loc_7B61
        jmp short loc_7B28
; --------------------------------------------------

locret_7B60:
        ret
; --------------------------------------------------

loc_7B61:
        mov si, bx
        sub si, bp

loc_7B65:
        db 81h, 0FEh, 4, 0  ; cmp si, 4
        jbe loc_7B88
        db 81h, 0EEh, 6, 0  ; sub si, 6
        db 0F6h, 82h, 05h, 00h, 01h    ; test byte ptr [bp+si+5], 1 (mod=10)
        jnz loc_7B65
        mov di, si
        db 81h, 0C7h, 6, 0  ; add di, 6
        call    sub_7CD2

loc_7B7F:
        jmp loc_7C85
; --------------------------------------------------
        jmp loc_7CAD
; --------------------------------------------------

loc_7B85:
        jmp loc_7C57
; --------------------------------------------------

loc_7B88:
        mov di, ds:1D00h
        mov dx, ds:1D04h
        mov si, ds:1D06h
        mov bx, ds:1D02h
        mov al, 1
        not al
        db 36h, 20h, 87h, 05h, 00h    ; and ss:[bx+0005h], al (mod=10)
        push    word ptr ds:1D08h
        pop word ptr ds:1D17h
        push    word ptr ds:1D0Ah
        pop word ptr ds:1D13h

loc_7BB1:
        call    sub_7D4D
        push    word ptr ds:1D13h
        push    word ptr ds:1D17h
        push    dx
        push    di
        push    si
        cmp dx, ax
        jb  loc_7B85
        cmp byte ptr ds:21Fh, 0
        jz  loc_7BCC
        jmp short loc_7C0F
; --------------------------------------------------

loc_7BCC:
        call    sub_7CE4
        cmp ax, 1
        jbe loc_7C0F

loc_7BD4:
        push    ax
        call    sub_7CC4
        pop ax
        jb  loc_7C57
        db 36h, 0F6h, 87h, 05h, 00h, 01h    ; test byte ptr ss:[bx+0005h], 1 (mod=10)
        jnz loc_7C0C
        cmp dx, ds:25Dh
        ja  loc_7BFE
        test    word ptr ds:162h, 1
        jnz loc_7C0C
        cmp byte ptr ds:21Fh, 0
        jz  loc_7C57
        dec ax
        jnz loc_7BD4
        jmp short loc_7C57
; --------------------------------------------------
        db 90h              ; EVEN -> loc_7BFE (1 byte NOP)
loc_7BFE:
                    ; sub_7AFE+133j ...
        pop si
        pop di
        pop dx
        pop word ptr ds:1D17h
        pop word ptr ds:1D13h
        jmp short loc_7C85
; --------------------------------------------------
        db 90h              ; EVEN -> loc_7C0C (1 byte NOP)
loc_7C0C:
        jmp short loc_7C4E
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_7C0F:
        cmp dx, ds:25Dh
        jb  loc_7C57
        call    sub_7D3F
        cmp dx, ax
        ja  loc_7C57
        call    sub_7CF1
        cmp ax, 1
        jbe loc_7C57

loc_7C24:
        push    ax
        call    sub_7CC4
        pop ax
        jb  loc_7C57
        db 36h, 0F6h, 87h, 05h, 00h, 01h    ; test byte ptr ss:[bx+5], 1 (mod=10)
        jnz loc_7BFE
        push    ax
        call    sub_7D3F
        cmp dx, ax
        pop ax
        ja  loc_7BFE
        test    word ptr ds:162h, 1
        jnz loc_7C4E
        dec ax
        jz  loc_7BFE
        cmp byte ptr ds:21Fh, 0
        jnz loc_7C24

loc_7C4E:
                    ; sub_7AFE+144j
        add sp, 0Ah
        call    sub_7CD2
        jmp loc_7B28
; --------------------------------------------------

loc_7C57:
        pop si
        pop di
        pop dx
        pop word ptr ds:1D17h
        pop word ptr ds:1D13h
        cmp dx, ds:25Dh
        jb  loc_7CAD
        call    sub_7D3F
        cmp dx, ax
        jbe loc_7C85
        db 81h, 0EFh, 6, 0  ; sub di, 6
        push    dx
        call    sub_7CD2
        call    sub_7D4D
        cmp dx, ax
        pop ax
        jnb loc_7C85
        mov dx, ax
        db 81h, 0C7h, 6, 0  ; add di, 6

loc_7C85:
                    ; sub_7AFE+10Bj ...
        call    sub_7D3F
        sub dx, ax
        jbe loc_7C90
        mov ds:1D0Eh, dx

loc_7C90:
        cmp [bp+0], di
        jbe loc_7C97
        mov si, [bp+di]

loc_7C97:
        mov [bp+0], di
        call    sub_7DD7
        mov bp, ss:0Eh
        mov di, [bp+0]
        mov ax, si
        jb  locret_7CAC
        call    sub_8098

locret_7CAC:
        ret
; --------------------------------------------------

loc_7CAD:
                    ; sub_7AFE+168j
        mov dx, ds:1D17h
        inc dx
        clc
        ret
sub_7AFE    endp ; sp =  0Ah

; --------------------------------------------------
        call    sub_7CD2
        call    sub_7D4D
        cmp dx, ax
        jb  locret_7CC3
        call    sub_7D3F
        cmp ax, dx

locret_7CC3:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_7CC4    proc near
                    ; sub_7AFE+127p
        call    sub_77CD
        mov dx, ds:1D17h
        jb  locret_7CD1
        call    sub_7CF6
        clc

locret_7CD1:
        ret
sub_7CC4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7CD2    proc near
                    ; sub_7AFE+153p ...
        push    di
        push    bp
        db 81h, 0EFh, 6, 0  ; sub di, 6
        mov ax, [bp+di]
        call    sub_8098
        pop bp
        pop di
        call    sub_7D01
        dec dx
        ret
sub_7CD2    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7CE4    proc near
        mov al, ds:258h

loc_7CE7:
        xor ah, ah
        or  ax, ax
        jnz locret_7CF0
        mov ax, 2

locret_7CF0:
        ret
sub_7CE4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7CF1    proc near
                    ; sub_92A4+12Ep
        mov al, ds:259h
        jmp short loc_7CE7
sub_7CF1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7CF6    proc near
        add dl, ds:21Ch
        adc dh, 0
        db 81h, 0C7h, 6, 0  ; add di, 6
sub_7CF6    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7D01    proc near
        mov ds:1D17h, dx
        push    dx
        call    sub_8029
        xor ax, ax
        or  dx, dx
        jz  loc_7D1B
        mov bx, ss:0Eh
        add bx, dx
        db 36h, 8Bh, 87h, 05h, 00h    ; mov ax, ss:[bx+5] (mod=10)

loc_7D1B:
        pop dx
        mov bx, di
        db 81h, 0EBh, 06h, 00h    ; sub bx, 6 (81 encoding)
        add bx, bp
        db 36h, 0F6h, 87h, 05h, 00h, 02h    ; test byte ptr ss:[bx+0005h], 2 (mod=10)
        jnz locret_7D3E
        add ax, ds:1D13h
        cmp ax, 0
        jz  loc_7D3C
        add dx, ax
        push    bx
        call    sub_7D5B
        pop bx

loc_7D3C:
        add dx, ax

locret_7D3E:
        ret
sub_7D01    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7D3F    proc near
                    ; sub_7AFE+117p ...
        mov ax, ds:25Dh
        cmp word ptr ds:25Fh, 0
        jz  locret_7D4C
        mov ax, ds:25Fh

locret_7D4C:
        ret
sub_7D3F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7D4D    proc near
                    ; sub_7AFE+179p ...
        mov ax, ds:25Dh
        cmp word ptr ds:261h, 0
        jz  locret_7D5A
        mov ax, ds:261h

locret_7D5A:
        ret
sub_7D4D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7D5B    proc near
        mov byte ptr ds:1D0Dh, 0
        push    di
        push    bp
        mov di, ds:1D15h
        mov bp, ss:0Eh
        push    si
        push    dx

loc_7D6D:
        mov di, ds:0DDh
        test    word ptr ds:13Dh, 1
        jz  loc_7D7D
        mov di, ds:0E3h

loc_7D7D:
        or  di, di
        jz  loc_7DA7
        pop dx
        pop si
        push    si
        push    dx
        cmp di, si
        jnb loc_7D93
        mov ax, [di]
        and ax, 0E000h
        cmp ax, 0C000h
        jz  loc_7DC5

loc_7D93:
        call    sub_799F
        call    sub_7EDE
        xor ax, ax
        cmp ds:1D0Dh, al
        jnz loc_7DD2
        inc byte ptr ds:1D0Dh
        jmp short loc_7D6D
; --------------------------------------------------

loc_7DA7:
        mov si, ds:1D15h
        inc si
        mov bx, 8
        mov dx, 1D1Bh
        call    sub_79AF
        mov di, ds:1D1Fh
        test    word ptr ds:13Dh, 1
        jz  loc_7DC5
        mov di, ds:1D25h

loc_7DC5:
        xor ax, ax
        or  di, di
        jz  loc_7DD2
        mov ax, 0E000h
        not ax
        and ax, [di]

loc_7DD2:
        pop dx
        pop si
        pop bp
        pop di
        ret
sub_7D5B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7DD7    proc near
                    ; sub_7AFE+19Cp
        mov bx, 8
        call    sub_7AF1
        push    es
        push    ds
        pop es
        assume es:nothing
        push    di
        xor ax, ax
        mov di, 1D1Bh
        cld
        repe stosb
        pop di
        pop es
        assume es:nothing
        call    sub_7EDE
        push    si
        call    sub_7F94
        pop si
        cld
        push    si
        lodsb
        xor ah, ah
        cmp ax, ds:971h
        jnz loc_7E12
        mov ax, [si]
        cmp ax, 8000h
        jb  loc_7E12
        and ax, 0E000h
        cmp ax, 8000h
        jnz loc_7E12
        mov di, si
        call    sub_7421

loc_7E12:
        mov al, ds:263h
        mov si, 263h
        sub si, 214h
        mov [si+174h], al
        pop si
        mov bp, ss:0Eh

loc_7E26:
        mov di, [bp+0]
        mov ax, 18h
        add ax, 50h ; 'P'
        add ax, 8
        add ax, di
        mov cx, ax
        sub cx, [bp+2]
        jbe loc_7E49
        mov bp, 0Eh
        call    sub_7859
        mov bp, ss:0Eh
        jnb loc_7E26
        ret
; --------------------------------------------------

loc_7E49:
        push    di
        mov bx, [bp+di]
        mov ds:1D15h, di
        inc word ptr ds:13Dh
        inc di
        mov [bp+di], si
        inc di
        inc di
        mov ax, ds:13Dh
        mov [bp+di], ax
        inc di
        inc di
        mov ax, ds:1D0Eh
        mov word ptr ds:1D0Eh, 0
        mov [bp+di], ax
        inc di
        inc di
        mov byte ptr [bp+di], 0
        inc di
        mov word ptr [bp+di], 101h
        inc di
        inc di
        pop ax
        mov [bp+di], ax
        mov [bp+0], di
        xchg    ax, di
        sub ax, di
        mov [bp+di], al
        call    sub_7E97
        call    sub_7ECD
        call    sub_799F
        mov bp, ss:10h
        mov word ptr [bp+0], 4
        clc
        ret
sub_7DD7    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7E97    proc near
        push    si
        push    di
        mov di, 1D1Bh
        mov dx, si
        inc dx
        mov si, 0D9h ; '?'
        mov bx, 8
        call    sub_7AF1
        add cx, si
        push    es
        push    ds
        pop es
        assume es:nothing
        cld

loc_7EAE:
        lodsw
        or  ax, ax
        jz  loc_7EB9
        cmp ax, dx
        ja  loc_7EB9
        mov [di], ax

loc_7EB9:
        inc di
        inc di
        cmp si, cx
        jb  loc_7EAE
        pop es
        assume es:nothing
        pop di
        mov dx, 1D1Bh
        mov si, ds:1D15h
        call    sub_7A03
        pop si
        ret
sub_7E97    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7ECD    proc near
        push    si
        mov dx, 174h
        mov si, ds:1D15h
        mov bx, 8
        inc bx
        call    sub_7A03
        pop si

locret_7EDD:
        ret
sub_7ECD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7EDE    proc near
        call    sub_7EEB
        push    di
        push    si
        mov di, ax
        call    sub_7F5F
        pop si
        pop di
        ret
sub_7EDE    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7EEB    proc near
        call    sub_8029
        or  dx, dx
        jz  locret_7EDD
sub_7EEB    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7EF2    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        push    di
        mov di, dx
        push    si
        push    di
        mov bp, ss:0Eh
        db 8Bh, 9Bh, 03h, 00h    ; mov bx, [bp+di+0003h] (mod=10)
        mov ds:13Dh, bx
        pop si
        push    si
        mov bx, 8
        inc bx
        mov dx, 174h
        inc si
        call    sub_79AF
        mov dx, 1D1Bh
        dec bx
        call    sub_79AF
        mov bp, ss:0Eh
        pop di
        push    bp
        mov si, ds:1D1Bh
        db 0F7h, 83h, 03h, 00h, 01h, 00h    ; test word ptr [bp+di+0003h], 1 (mod=10)
        jz  loc_7F32
        mov si, ds:1D21h

loc_7F32:
        call    sub_7F7C
        pop bp
        push    bp
        mov si, ds:1D1Fh
        db 0F7h, 83h, 03h, 00h, 01h, 00h    ; test word ptr [bp+di+0003h], 1 (mod=10)
        jz  loc_7F47
        mov si, ds:1D25h

loc_7F47:
        call    sub_7F7C
        pop bp
        pop si
        mov cx, si
        push    si
        push    bp
        db 8Bh, 0B3h, 01h, 00h    ; mov si, [bp+di+0001h] (mod=10)
        call    sub_73B6
        pop bp
        mov ax, di
        cld
        pop si
        pop di
        pop es
        assume es:nothing
        ret
sub_7EF2    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7F5F    proc near
        mov si, ds:1D1Dh
        db 0F7h, 83h, 03h, 00h, 01h, 00h    ; test word ptr [bp+di+0003h], 1 (mod=10)
        jz  loc_7F6F
        mov si, ds:1D23h

loc_7F6F:
        or  si, si
        jz  locret_7F7B
        push    di
        mov di, si
        call    sub_7421
        pop di
        cld

locret_7F7B:
        ret
sub_7F5F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7F7C    proc near
        db 3Bh, 0B3h, 01h, 00h    ; cmp si, [bp+di+0001h] (mod=10)
        jnb locret_7F93
        or  si, si
        jz  locret_7F93
        cmp word ptr [si], 8000h
        jb  locret_7F93
        push    di
        mov di, si
        call    sub_7421
        pop di

locret_7F93:
        ret
sub_7F7C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7F94    proc near
        mov bp, 10h
        mov bx, 12h
        call    sub_7FA8
        ret
sub_7F94    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7F9E    proc near
        mov bp, 12h
        mov bx, 10h
        call    sub_7FA8
        ret
sub_7F9E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7FA8    proc near
        mov si, [bp+0]
        mov di, ss:[bx]
        mov cx, ss:[si]
        sub cx, ss:[di+2]
        jbe loc_7FC9
        push    bp
        mov bp, bx
        call    sub_7859
        pop bp
        jnb sub_7FA8
        mov di, ss:[bx]
        mov word ptr ss:[di], 4
        ret
; --------------------------------------------------

loc_7FC9:
        push    es
        push    ss
        pop es
        assume es:nothing
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        mov cx, [si]
        push    word ptr [di+2]
        push    di
        push    si
        cld
        repe movsb
        pop si
        mov word ptr [si], 4
        pop di
        pop word ptr [di+2]
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        clc
        ret
sub_7FA8    endp


; ---------- S U B  R O U T I N E --------------------------


sub_7FE6    proc near
        push    bp
        push    di
        push    si
        call    sub_8029
        jb  loc_8025
        mov di, dx
        mov bp, ss:0Eh
        db 8Bh, 9Bh, 01h, 00h    ; mov bx, [bp+di+1] (mod=10)
        mov [bp+0], di
        mov [bp+di], ax
        mov di, ax
        db 8Bh, 83h, 03h, 00h    ; mov ax, [bp+di+3] (mod=10)
        mov ds:13Dh, ax
        db 8Bh, 83h, 01h, 00h    ; mov ax, [bp+di+0001h] (mod=10)
        mov ds:1D15h, di
        push    bx
        push    di
        call    sub_7F9E
        call    sub_799F
        pop dx
        pop si
        push    word ptr ds:13Dh
        call    sub_7EF2
        pop word ptr ds:13Dh
        clc

loc_8025:
        pop si
        pop di
        pop bp
        ret
sub_7FE6    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8029    proc near
        call    sub_8081

loc_802C:
        cmp di, [bp+0]
        jnb loc_803B
        mov ax, dx
        mov dx, di
        mov bl, [bp+di]
        add di, bx
        jmp short loc_802C
; --------------------------------------------------

loc_803B:
        or  ax, ax
        jnz loc_8025
        stc
        jmp short loc_8025
sub_8029    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8042    proc near
        call    sub_8081

loc_8045:
        cmp di, [bp+0]
        jnb loc_805A
        db 3Bh, 0B3h, 01h, 00h    ; cmp si, [bp+di+0001h] (mod=10)
        jb  loc_805A
        mov ax, dx
        mov dx, di
        mov bl, [bp+di]
        add di, bx
        jmp short loc_8045
; --------------------------------------------------

loc_805A:
        or  ax, ax
        jnz loc_8025
        stc
        jmp short loc_8025
sub_8042    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8061    proc near
        mov si, ax
        call    loc_8086
        mov ax, si

loc_8068:
        cmp di, [bp+0]
        jnb loc_807B
        db 3Bh, 83h, 03h, 00h    ; cmp ax, [bp+di+0003h] (mod=10)
        jbe loc_807B
        mov dx, di
        mov bl, [bp+di]
        add di, bx
        jmp short loc_8068
; --------------------------------------------------

loc_807B:
        or  ax, ax
        jnz locret_8080
        stc

locret_8080:
        ret
sub_8061    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8081    proc near
        pop dx
        push    bp
        push    di
        push    si
        push    dx

loc_8086:
        mov bp, ss:0Eh
        mov di, [bp+0]
        mov di, 4
        xor ax, ax
        xor dx, dx
        xor bh, bh
        ret
sub_8081    endp ; sp = -6


; ---------- S U B  R O U T I N E --------------------------


sub_8098    proc near
        mov word ptr ds:1D13h, 0
        mov di, ds:1D15h
        mov bp, ss:0Eh
        push    bx
        push    si
        push    ax
        mov si, di
        mov dx, 1D1Bh
        mov bx, 8
        inc si
        call    sub_79AF
        push    bx
        mov bx, ds:1D1Bh
        db 0F7h, 83h, 03h, 00h, 01h, 00h    ; test word ptr [bp+di+0003h], 1 (mod=10)
        jz  loc_80C7
        mov bx, ds:1D21h

loc_80C7:
        mov dx, 1
        or  bx, bx
        jz  loc_80E1
        mov ax, [bx]
        and ax, 0E000h
        cmp ax, 8000h
        jnz loc_80E1
        mov ax, 0E000h
        not ax
        and ax, [bx]
        add dx, ax

loc_80E1:
        pop bx
        inc bx
        push    dx
        mov dx, 1D1Bh
        call    sub_79AF
        pop dx
        mov si, 263h
        sub si, 214h
        add dl, [si+1D1Bh]
        adc dh, 0
        pop ax
        pop si
        pop bx
        push    bx
        mov bp, ss:10h
        push    si
        mov si, [bp+0]
        push    word ptr [bp+si]
        push    si
        mov word ptr [bp+si], 0FFFFh
        mov di, 4
        cmp di, si
        jnb loc_8131
        xor bx, bx
        jmp short loc_8127
; --------------------------------------------------

loc_8118:
        db 02h, 93h, 04h, 00h    ; add dl, [bp+di+4] (mod=10)
        adc dh, 0
        db 03h, 9Bh, 02h, 00h    ; add bx, [bp+di+2] (mod=10)
        db 81h, 0C7h, 06h, 00h    ; add di, 6 (81 encoding)

loc_8127:
        db 3Bh, 83h, 06h, 00h    ; cmp ax, [bp+di+0006h] (mod=10)
        jnb loc_8118
        mov ds:1D13h, bx

loc_8131:
        pop si
        pop word ptr [bp+si]
        pop si
        pop bx

locret_8136:
        ret
sub_8098    endp

; --------------------------------------------------

loc_8137:
        jmp loc_8215

; ---------- S U B  R O U T I N E --------------------------


sub_813A    proc near
        test    word ptr ds:0, 1
        jnz locret_8136
sub_813A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8142    proc near
                    ; sub_D1B6+101p
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz locret_8136
        cmp word ptr ds:168h, 0
        jnz locret_8136
        jmp short loc_816B
; --------------------------------------------------
        mov ax, ds:64h
        cmp ax, ds:941h
        mov ds:941h, ax
        jnz loc_816B
        mov al, ds:5
        cmp al, ds:940h
        jz  locret_8136
        mov ds:940h, al

loc_816B:
        mov ax, ds:0C2h
        mov bp, ss:0Eh
        mov di, 4
        cmp [bp+0], di
        jbe loc_8194
        mov dl, [bp+di]
        xor dh, dh
        add dx, di
        cmp [bp+0], dx
        jbe loc_8194
        mov bp, ss:10h
        cmp di, [bp+0]
        jnb loc_8137
        cmp ax, [bp+di]
        jb  loc_8137

loc_8194:
        mov si, ds:0C2h
        call    sub_8042
        mov ds:1D15h, dx
        mov di, dx
        mov bp, ss:0Eh
        db 8Bh, 83h, 03h, 00h    ; mov ax, [bp+di+0003h] (mod=10)
        mov word ptr ds:13Dh, 1
        or  di, di
        jz  loc_81B7
        mov ds:13Dh, ax

loc_81B7:
        db 8Bh, 83h, 01h, 00h    ; mov ax, [bp+di+0001h] (mod=10)
        mov bp, ss:10h
        mov di, 4
        cmp ax, [bp+di]
        jz  loc_81CA
        mov [bp+0], di

loc_81CA:
        mov ax, si
        call    sub_8098
        mov cx, di
        db 81h, 0C1h, 6, 0  ; add cx, 6
        cmp cx, [bp+0]
        jb  loc_8231
        mov bp, ss:0Eh
        db 81h, 7Eh, 00h, 04h, 00h    ; cmp word ptr [bp+0], 4 (81 encoding)
        ja  loc_81EE
        call    sub_765F
        mov dx, 1
        jb  loc_8231

loc_81EE:
        mov bp, ss:10h
        mov si, ds:0C2h
        call    sub_768C
        mov ax, ds:0C2h
        call    sub_8098
        cmp di, [bp+0]
        jnb loc_8209
        cmp ax, [bp+di]
        jnb loc_8231

loc_8209:
        call    sub_7FE6
        mov ax, ds:0C2h
        call    sub_8098
        jmp short loc_8231
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_8215:
        call    sub_7FE6
        jb  loc_822E
        mov di, ds:1D15h
        mov ax, ds:0C2h
        mov bp, ss:0Eh
        db 3Bh, 83h, 01h, 00h    ; cmp ax, [bp+di+0001h] (mod=10)
        jnb loc_822E
        jmp short loc_8215
; --------------------------------------------------

loc_822E:
        jmp loc_8194
; --------------------------------------------------

loc_8231:
        push    es
        push    ds
        pop es
        assume es:nothing
        push    dx
        mov ax, ds:13Dh
        mov di, 1D1Bh
        call    sub_8257
        mov al, 2Dh ; '-'
        stosb
        pop ax
        call    sub_8257
        xor ax, ax
        stosb
        mov si, 1D1Bh
        mov di, 9B3h
        mov es, ds:86Eh
        assume es:nothing
        call    sub_5B24
        pop es
        ret
sub_8142    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8257    proc near
                    ; sub_8142+100p
        mov word ptr ds:934h, 0
        cld
        xor cx, cx
        mov bx, 0Ah

loc_8263:
        xor dx, dx
        div bx
        add dx, 30h ; '0'
        push    dx
        inc cx
        or  ax, ax
        jnz loc_8263

loc_8270:
        pop ax
        stosb
        loop    loc_8270
        ret
sub_8257    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8275    proc near
        push    es
        push    ss
        pop es
        assume es:nothing
        push    ds
        push    ss
        pop ds
        assume ds:nothing
        mov si, ss:4
        mov cx, ss:6
        add cx, 4
        mov di, si
        sub cx, si
        mov dx, 6
        db 81h, 0FEh, 0Eh, 0  ; cmp si, 0Eh
        jb  loc_829A
        sub di, dx
        cld
        jmp short loc_82A3
; --------------------------------------------------

loc_829A:
        add si, cx
        dec si
        add di, cx
        dec di
        add di, dx
        std

loc_82A3:
        repe movsb
        sub di, si
        add ss:6, di
        add ss:4, di
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        ret
sub_8275    endp

; --------------------------------------------------
        mov ax, 0A2h ; '?'
        cmp word ptr ds:168h, 0
        jnz loc_82C3
        call    sub_2F61
        jnb loc_82C7

loc_82C3:
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_82C7:
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jz  loc_82D2
        call    sub_13A5

loc_82D2:
        mov word ptr ds:1DA1h, 0
        mov bx, ds:8C7h
        mov byte ptr [bx], 20h ; ' '
        mov bx, 870h
        push    es
        push    ds
        pop es
        assume es:nothing
        mov cl, [bx]
        inc bx
        mov ax, ds:13Dh
        cmp cl, 2Dh ; '-'
        jz  loc_82F4
        dec bx
        call    sub_CF5B

loc_82F4:
        mov ds:1D9Dh, ax
        mov word ptr ds:1D9Fh, 1
        cmp cl, 2Dh ; '-'
        jnz loc_8308
        call    sub_CF5B
        mov ds:1D9Fh, ax

loc_8308:
        pop es
        assume es:nothing

; ---------- S U B  R O U T I N E --------------------------


sub_8309    proc near
        mov ax, ds:1D9Dh
        call    sub_8061
        cmp di, [bp+0]
        jnb loc_831F
        mov dx, di
        xor bx, bx
        mov bl, [bp+di]
        add di, bx
        mov [bp+0], di

loc_831F:
        push    bp
        mov ax, 4
        mov bp, ss:10h
        mov [bp+0], ax
        mov bp, ss:12h
        mov [bp+0], ax
        pop bp
        mov di, dx
        mov ds:1D15h, di
        db 8Bh, 83h, 01h, 00h    ; mov ax, [bp+di+1] (mod=10)
        mov ds:0C2h, ax
        db 8Bh, 93h, 03h, 00h    ; mov dx, [bp+di+0003h] (mod=10)
        mov ds:13Dh, dx
        cmp dx, ds:1D9Dh
        jbe loc_8354
        call    sub_D4BA
        jnb sub_8309

loc_8354:
        call    sub_8098
        mov si, ds:0C2h

loc_835B:
        mov bp, ss:0Eh
        mov di, ds:1D15h
        db 8Bh, 83h, 03h, 00h    ; mov ax, [bp+di+0003h] (mod=10)
        cmp ax, ds:1D9Dh
        jb  loc_8388
        ja  loc_8376
        cmp dx, ds:1D9Fh
        jb  loc_8388

loc_8376:
        cmp word ptr ds:1D19h, 0
        jz  loc_8384
        call    sub_792D
        jb  loc_8384
        jmp short sub_8309
; --------------------------------------------------

loc_8384:
        call    sub_2AAA
        ret
; --------------------------------------------------

loc_8388:
        mov bp, ss:10h
        mov di, [bp+0]
        db 81h, 0FFh, 6, 0  ; cmp di, 6
        jbe loc_839A
        db 81h, 0EFh, 6, 0  ; sub di, 6

loc_839A:
        call    sub_7684
        mov ax, ds:13Dh
        cmp ax, ds:1D9Dh
        mov ax, ds:1DA1h
        mov ds:0C2h, ax
        jb  loc_83B4
        ja  loc_83BC
        cmp dx, ds:1D9Fh
        jnb loc_83BC

loc_83B4:
        call    sub_D4E9
        jb  loc_8384
        jmp sub_8309
; --------------------------------------------------

loc_83BC:
        mov si, ds:1DA1h
        jmp short loc_835B
sub_8309    endp

; --------------------------------------------------
        db 14 dup(0)        ; CALIGN 10h -> loc_83D0 (14 bytes 00)
loc_83D0:
        mov ax, 8Ah ; '?'
        jmp short loc_83D8
; --------------------------------------------------
        mov ax, 15h

loc_83D8:
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_83DC:
        jmp loc_87F7
; --------------------------------------------------

loc_83DF:
        jmp loc_8471

; ---------- S U B  R O U T I N E --------------------------


sub_83E2    proc near
        push    ax
        call    sub_8683
        pop ax
        jb  loc_83DF
        push    si
        add si, cx
        test    word ptr [si], 2
        pop si
        jz  loc_83F7
        call    sub_1577
        ret
; --------------------------------------------------

loc_83F7:
        test    word ptr ds:2, 1
        jnz loc_83D0
        test    word ptr ds:0, 4
        jnz loc_83DC
        test    word ptr ds:0, 80h
        jz  loc_8424
        mov dx, ds:0C2h
        cmp dx, ds:0Eh
        jbe loc_8424
        cmp dx, ds:10h
        jnb loc_8424
        mov ax, 8Bh ; '?'
        jmp short loc_83D8
; --------------------------------------------------

loc_8424:
        call    sub_847F
        jnb loc_842A
        ret
; --------------------------------------------------

loc_842A:
        cmp di, ds:64h
        ja  loc_8457
        mov ax, di
        mov cx, 0Ah
        push    bx
        mov dx, 0FFFFh
        call    sub_2B8E
        mov ds:64h, ax
        mov ds:2A84h, dx
        pop ax
        cmp ax, ds:64h
        jb  loc_8457
        mov dx, 0FFFFh
        call    sub_2B8B
        mov ds:2A84h, dx
        mov ds:64h, ax

loc_8457:
        call    sub_EE6C
        mov bx, ds:0D0h
        shl bx, 1
        mov ax, ds:0C2h
        cmp ax, [bx+2754h]
        ja  loc_846D
        call    sub_2AE7
        ret
; --------------------------------------------------

loc_846D:
        call    sub_2AEA
        ret
; --------------------------------------------------

loc_8471:
        mov ax, 13h
        call    sub_CB4F
        ret
sub_83E2    endp

; --------------------------------------------------

loc_8478:
        mov ax, 14h
        call    sub_CB4F
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_847F    proc near
        push    si
        push    cx
        call    sub_CF7E
        call    sub_2875
        pop cx
        pop si

loc_8489:
        push    si
        push    cx
        mov ax, ds:66h
        add ax, cx
        cmp ax, ds:8F8h
        jnb loc_849C
        cmp ax, ds:0C8h
        jb  loc_84A5

loc_849C:
        call    sub_D0C0
        pop cx
        pop si
        jnb loc_8489
        jmp short loc_8478
; --------------------------------------------------

loc_84A5:
        pop cx
        pop si
        mov di, si
        add di, cx
        test    word ptr [di], 1
        jz  loc_84BA
        call    sub_90CF
        mov di, ds:0C2h
        jmp short loc_851A
; --------------------------------------------------

loc_84BA:
        push    si
        push    cx
        mov si, ds:0C2h
        call    sub_6801
        mov al, ds:21Ah
        mov ds:1DB4h, al
        mov ax, ds:0C2h
        add ax, cx
        mov cx, ds:0C2h
        push    cx
        push    word ptr ds:10h
        call    sub_D7FE
        pop ax
        pop di
        cmp ax, di
        jnz loc_84E3
        mov ds:10h, ax

loc_84E3:
        pop cx
        pop si
        push    es
        push    ds
        pop es
        assume es:nothing
        mov bx, di
        cld
        repe movsb
        pop es
        assume es:nothing
        cmp byte ptr ds:0D90h, 0
        jnz loc_851A
        mov si, ds:0C2h
        call    sub_6801
        mov al, ds:1DB4h
        xor ah, ah
        cmp al, ds:21Ah
        jz  loc_851A
        cmp byte ptr ds:1DB5h, 0
        jnz loc_8515
        inc byte ptr ds:1DB5h
        call    sub_3130

loc_8515:
        mov byte ptr ds:1DB5h, 0

loc_851A:
        clc
        ret
sub_847F    endp

; --------------------------------------------------
        call    sub_85BB
        jb  locret_8534
        call    sub_8683
        jb  sub_8554
        add si, cx
        test    word ptr [si], 1
        jz  loc_8535
        mov ax, 89h ; '?'
        call    sub_CB4F

locret_8534:
        ret
; --------------------------------------------------

loc_8535:
        mov cx, ds:10h
        sub cx, ds:0Eh
        push    cx
        call    sub_8F07
        pop cx
        jb  locret_8534
        dec di
        push    es
        push    ds
        pop es
        assume es:nothing
        mov si, ds:10h
        jmp short loc_85A7
; --------------------------------------------------
        db 90h, 0E8h, 69h, 0, 72h, 0E0h

; ---------- S U B  R O U T I N E --------------------------


sub_8554    proc near
        call    sub_8A92
        mov word ptr ds:1E12h, 0
        test    word ptr ds:0, 2000h
        jz  loc_8587
        push    ax
        call    sub_8F79
        add cx, ax
        pop ax
        mov word ptr ds:1E12h, 1
        jmp short loc_8591
sub_8554    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8574    proc near
        push    si
        push    cx
        call    sub_8A92
        mov word ptr ds:1E12h, 0
        pop cx
        pop si
        add si, cx
        jmp short loc_8591
; --------------------------------------------------

loc_8585:
        pop es
        assume es:nothing
        ret
; --------------------------------------------------

loc_8587:
        mov cx, ds:10h
        mov si, cx
        sub cx, ds:0Eh

loc_8591:
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_8E80
        jb  loc_8585
        inc di
        test    word ptr ds:1E12h, 1
        jz  loc_85A7
        call    sub_9022
        jmp short loc_85AB
; --------------------------------------------------

loc_85A7:
        dec si
        std
        repe movsb

loc_85AB:
        pop es
        assume es:nothing
        mov ax, 3Dh ; '='
        call    sub_CB6A
        clc
        ret
sub_8574    endp ; sp =  2

; --------------------------------------------------

loc_85B4:
        mov ax, 10h
        call    sub_CB4F
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_85BB    proc near
        test    word ptr ds:0, 20h
        jz  loc_85B4

loc_85C3:
        call    sub_1270
        or  al, al
        jnz loc_85D4
        call    sub_1270

loc_85CD:
        mov ax, 11h
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_85D4:
        xor ah, ah
        call    sub_BF90
        cmp al, 30h ; '0'
        jb  loc_85CD
        cmp al, 39h ; '9'
        jbe loc_85E9
        cmp al, 41h ; 'A'
        jb  loc_85CD
        cmp al, 5Ah ; 'Z'
        ja  loc_85CD

loc_85E9:
        clc
        ret
sub_85BB    endp


; ---------- S U B  R O U T I N E --------------------------


sub_85EB    proc near
        call    sub_8615
        jb  loc_85F1
        ret
; --------------------------------------------------

loc_85F1:
        and word ptr ds:0, 0FFCFh
        mov ax, 2000h
        not ax
        and ds:0, ax
        xor ax, ax
        mov ds:10h, ax
        mov ds:0Eh, ax
        mov ds:12h, al
        mov ds:13h, al
        call    sub_EE6C
        call    sub_28F7
        ret
sub_85EB    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8615    proc near
        test    word ptr ds:0, 80h
        jz  loc_8677
        mov bx, ds:166h
        mov ax, ds:168h
        test    word ptr ds:0, 30h
        jz  loc_8646
        test    word ptr ds:0, 20h
        jz  loc_8677
        mov dx, ds:10h
        call    sub_8679
        jnb loc_8677
        mov dx, ds:0Eh
        call    sub_8679
        jnb loc_8677

loc_8646:
        mov ax, ds:973h
        mov [bx], al
        inc bx
        mov ds:0C2h, bx
        mov cx, bx
        mov si, ds:168h
        dec si
        dec si
        xor ax, ax
        mov ds:166h, ax
        mov ds:168h, ax
        xor word ptr ds:0, 80h
        call    sub_7368
        call    sub_EE6C
        call    sub_2AAA
        mov ax, 60h ; '`'
        call    sub_CB6A

loc_8675:
        clc
        ret
; --------------------------------------------------

loc_8677:
        stc
        ret
sub_8615    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8679    proc near
        cmp dx, ax
        jb  locret_8682
        cmp dx, bx
        jb  loc_8675
        stc

locret_8682:
        ret
sub_8679    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8683    proc near
        mov si, ds:1DB2h
        cmp si, 0
        jz  loc_86A4
        jmp short loc_869E
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_868F:
        mov bx, [si-2]
        mov cx, [si-4]
        sub si, cx
        sub si, 6
        cmp bx, ax
        jz  loc_86A6

loc_869E:
        cmp si, ds:8F8h
        ja  loc_868F

loc_86A4:
        stc
        ret
; --------------------------------------------------

loc_86A6:
        clc
        ret
sub_8683    endp


; ---------- S U B  R O U T I N E --------------------------


sub_86A8    proc near
        mov di, si
        mov si, ds:1DB2h
        cmp si, 0
        jz  loc_86A4
        cld
        mov dx, cx
        mov bh, ds:137h
        add bx, ds:85Ah
        jmp short loc_86EA
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_86C1:
        mov ax, [si-2]
        mov cx, [si-4]
        sub si, cx
        sub si, 6
        cmp bh, ah
        jnz loc_86EA
        cmp dl, [si]
        jnz loc_86EA
        push    di
        push    si
        push    cx
        mov cx, dx
        inc si
        dec cx
        jz  loc_86DF
        repe cmpsb

loc_86DF:
        pop cx
        pop si
        pop di
        jnz loc_86EA
        sub cx, dx
        add si, dx
        clc
        ret
; --------------------------------------------------

loc_86EA:
        cmp si, ds:8F8h
        ja  loc_86C1
        jmp short loc_86A4
sub_86A8    endp


; ---------- S U B  R O U T I N E --------------------------


sub_86F2    proc near
        test    word ptr ds:0, 20h
        jz  loc_872A
        call    sub_CF7E
        mov ax, ds:830h
        call    sub_8554
        mov ax, ds:0Eh
        mov cx, ds:10h
        test    word ptr ds:0, 2000h
        jz  loc_8717
        call    sub_917A
        jmp short loc_871A
; --------------------------------------------------

loc_8717:
        call    sub_D7FE

loc_871A:
        xor dx, dx
        mov ds:0Eh, dx
        mov ds:10h, dx
        call    sub_2AE7
        jmp loc_85F1
; --------------------------------------------------

loc_872A:
        mov ax, 0Eh
        call    sub_CB4F
        ret
sub_86F2    endp

; --------------------------------------------------

loc_8731:
        push    word ptr ds:0
        call    sub_8772
        pop bx
        jb  locret_875E
        or  word ptr ds:0, 2000h
        mov al, ds:4
        test    bx, 10h
        jnz loc_874D
        mov ds:12h, al

loc_874D:
        mov ds:13h, al
        cmp al, ds:12h
        ja  loc_875D
        xchg    al, ds:12h
        mov ds:13h, al

loc_875D:
        clc

locret_875E:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_875F    proc near
        test    word ptr ds:2, 1
        jz  loc_876A
        jmp loc_83D0
; --------------------------------------------------

loc_876A:
        test    word ptr ds:0, 2000h
        jnz loc_8731
sub_875F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8772    proc near
        test    word ptr ds:0, 30h
        jnz loc_87B3
        test    word ptr ds:0, 4
        jnz loc_87F7
        test    word ptr ds:0, 80h
        jz  loc_879B
        mov ax, ds:168h
        inc ax
        inc ax
        cmp ax, ds:0C2h
        jbe loc_879B
        mov ds:0C2h, ax
        call    sub_2AE7

loc_879B:
        mov ax, ds:0C2h
        mov ds:0Eh, ax
        mov ds:10h, ax
        xor word ptr ds:0, 10h
        clc
        ret
; --------------------------------------------------
        mov ax, ds:830h
        call    sub_83E2
        ret
; --------------------------------------------------

loc_87B3:
        test    word ptr ds:0, 20h
        jnz loc_87F0
        xor word ptr ds:0, 30h
        mov ax, ds:0C2h
        cmp ax, ds:0Eh
        jnb loc_87CE
        xchg    ax, ds:0Eh

loc_87CE:
        push    si
        mov si, ax
        call    sub_2836
        mov ds:10h, si
        mov si, ds:0Eh
        call    sub_2836
        cmp si, ds:10h
        jbe loc_87E9
        xchg    si, ds:10h

loc_87E9:
        mov ds:0Eh, si
        pop si
        clc
        ret
; --------------------------------------------------

loc_87F0:
        mov ax, 0Fh
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_87F7:
        mov ax, 2Dh ; '-'
        call    sub_CB4F
sub_8772    endp


; ---------- S U B  R O U T I N E --------------------------


sub_87FD    proc near
        test    word ptr ds:0, 1
        jnz locret_8822
        test    word ptr ds:0, 10h
        jz  locret_8822
        xor bx, bx
        mov ah, 8
        int 10h     ; - VIDEO - READ ATTRIBUTES/CHARACTER AT CURSOR POSITION
                    ; BH = display page
                    ; Return: AL = character
                    ; AH = attribute of character (alpha modes)
        mov bl, ah
        xor bh, bh
        xor bl, ds:219h
        mov cx, 1
        mov ah, 9
        int 10h     ; - VIDEO - WRITE ATTRIBUTES/CHARACTERS AT CURSOR POSITION
                    ; AL = character, BH = display page
                    ; BL = attributes of character (alpha modes) or color (graphics modes)
                    ; CX = number of times to write character

locret_8822:
        ret
sub_87FD    endp

; --------------------------------------------------
        mov byte ptr ds:1DB0h, 0FFh
        jmp short loc_882F
; --------------------------------------------------
        mov byte ptr ds:1DB0h, 0

loc_882F:
        mov byte ptr ds:1DB1h, 0
        test    word ptr ds:0, 4
        jnz loc_87F7
        test    word ptr ds:0, 20h
        jnz loc_885D
        test    word ptr ds:264h, 20h
        jz  loc_88C5
        cmp byte ptr ds:18EBh, 0
        jz  loc_88C5
        call    sub_5A98
        jb  locret_8822
        mov byte ptr ds:1DB1h, 1

loc_885D:
        mov ax, 1
        mov ds:2410h, al
        call    sub_8554
        pushf
        jb  $+2
        cmp byte ptr ds:1DB1h, 0
        jz  loc_8875
        push    ax
        call    sub_5A98
        pop ax

loc_8875:
        popf
        jb  loc_88C8
        mov ax, 1
        call    sub_83E2
        jb  loc_88C8
        cmp byte ptr ds:1DB0h, 0
        jz  loc_88B8
        cmp byte ptr ds:1DB1h, 0
        jz  loc_889B
        call    sub_5ABB
        push    word ptr ds:0
        or  word ptr ds:0, 1000h

loc_889B:
        call    sub_86F2
        cmp byte ptr ds:1DB1h, 0
        jz  loc_88B8
        pop ax
        mov dx, 1000h
        and ax, dx
        not dx
        and ds:0, dx
        or  ds:0, ax
        call    sub_5A98

loc_88B8:
        mov byte ptr ds:2410h, 0
        mov ax, 4Ah ; 'J'
        call    sub_CB6A
        clc
        ret
; --------------------------------------------------

loc_88C5:
        mov ax, 28h ; '('

loc_88C8:
        mov byte ptr ds:2410h, 0
        call    sub_CB4F
        ret
; --------------------------------------------------
        mov ax, 1
        jmp short loc_88D9
; --------------------------------------------------
        mov ax, 2

loc_88D9:
        push    word ptr ds:236Dh
        mov ds:236Dh, ax
        call    sub_891B
        pop word ptr ds:236Dh
        call    sub_EE6C
        ret
; --------------------------------------------------

loc_88EB:
        jmp loc_8A8B

; ---------- S U B  R O U T I N E --------------------------


sub_88EE    proc near
        cmp word ptr ds:0Eh, 0
        jnz loc_88EB
        mov si, ds:0C2h
        cmp si, ds:66h
        jnb locret_891A
        lodsb
        call    sub_A9D5
        jb  loc_8912
        call    sub_1C25
        mov si, ds:0C2h
        cmp si, ds:66h
        jnb locret_891A

loc_8912:
        call    sub_891B
        jb  locret_891A
        call    sub_86F2

locret_891A:
        ret
sub_88EE    endp


; ---------- S U B  R O U T I N E --------------------------


sub_891B    proc near
        test    word ptr ds:0, 4
        jnz loc_894F
        call    sub_CF7E
        cmp word ptr ds:0Eh, 0
        jnz loc_8956
        call    sub_1C4A
        call    sub_875F

loc_8933:
        call    sub_1D19
        jb  loc_893D
        call    sub_A9D5
        jb  loc_8933

loc_893D:
        call    sub_1D19
        mov ds:0C2h, si
        call    sub_2AEA
        call    sub_875F
        call    sub_EE6C
        clc
        ret
; --------------------------------------------------

loc_894F:
        mov ax, 3Ch ; '<'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_8956:
        mov si, ds:0C2h
        test    word ptr ds:0, 10h
        jnz loc_8933
        cmp si, ds:10h
        jnz loc_897E

loc_8968:
        mov ds:0C2h, si
        call    sub_1D19
        jb  loc_8976
        call    sub_A9D5
        jnb loc_8968

loc_8976:
        xor word ptr ds:0, 30h
        jmp short loc_8933
; --------------------------------------------------

loc_897E:
        mov ax, 29h ; ')'
        call    sub_CB4F
        ret
sub_891B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8985    proc near
        mov byte ptr ds:1E18h, 1
        jmp short loc_8991
sub_8985    endp


; ---------- S U B  R O U T I N E --------------------------


sub_898C    proc near
        mov byte ptr ds:1E18h, 0

loc_8991:
        test    word ptr ds:0, 4
        jnz loc_894F
        call    sub_CF7E
        mov ax, ds:0C2h
        cmp byte ptr ds:1E18h, 1
        jz  loc_89AC
        mov dx, 0FFFFh
        call    sub_2B87

loc_89AC:
        mov ds:0C2h, ax
        call    sub_2AEA
        cmp word ptr ds:0Eh, 0
        jnz loc_89C0
        call    sub_875F
        jb  locret_8A04
        jmp short loc_89E2
; --------------------------------------------------

loc_89C0:
        test    word ptr ds:0, 10h
        jnz loc_89E2
        mov ax, ds:10h
        mov si, ds:0C2h
        cmp ax, si
        jz  loc_89DC
        push    ax
        call    sub_2836
        pop ax
        cmp ax, si
        jnz loc_897E

loc_89DC:
        xor word ptr ds:0, 30h

loc_89E2:
        push    word ptr ds:0C2h
        call    sub_2160
        mov ax, ds:0C2h
        mov dx, 0FFFFh
        call    sub_2B87
        pop bx
        cmp bx, ax
        jnb loc_89FA
        mov ds:0C2h, ax

loc_89FA:
        call    sub_2AEA
        call    sub_875F
        call    sub_EE7F
        clc

locret_8A04:
        ret
sub_898C    endp

; --------------------------------------------------
        mov byte ptr ds:1E18h, 1
        jmp short loc_8A11

; ---------- S U B  R O U T I N E --------------------------


sub_8A0C    proc near
        mov byte ptr ds:1E18h, 0

loc_8A11:
        test    word ptr ds:0, 1
        jnz loc_8A54
        cmp word ptr ds:0Eh, 0
        jnz loc_8A8B
        cmp byte ptr ds:1E18h, 0
        jnz loc_8A2D
        call    sub_898C
        jnb loc_8A4B
        ret
; --------------------------------------------------

loc_8A2D:
        call    sub_8985
        jb  locret_8A04
        mov si, ds:10h
        dec si
        std
        lodsb
        cmp al, 0Ah
        jnz loc_8A3E
        lodsb

loc_8A3E:
        cmp al, 0Dh
        jnz loc_8A4B
        inc si
        mov ds:10h, si
        mov ds:0C2h, si

loc_8A4B:
        call    sub_86F2
        ret
; --------------------------------------------------

loc_8A4F:
        mov byte ptr ds:1E18h, 0

loc_8A54:
        call    sub_CFBD
        mov ax, 20h ; ' '
        mov ah, ds:96Dh
        mov cl, ds:0Ah
        xor ch, ch
        cld
        mov di, 2
        cmp byte ptr ds:1E18h, 0
        jz  loc_8A77
        mov bl, ds:4
        xor bh, bh
        mov di, bx

loc_8A77:
        inc cx
        sub cx, di
        mov dx, di
        mov ds:4, dl
        shl di, 1
        call    sub_75A
        repe stosw
        call    sub_28F7
        ret
; --------------------------------------------------

loc_8A8B:
        mov ax, 2Ah ; '*'
        call    sub_CB4F
        ret
sub_8A0C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8A92    proc near
        push    ax
        call    sub_8683
        pop ax
        push    es
        push    ds
        pop es
        assume es:nothing
        std
        jb  loc_8AB5
        dec si
        mov di, si
        add di, cx
        add di, 6
        mov cx, si
        sub cx, ds:8F8h
        jbe loc_8AB0
        inc cx
        repe movsb

loc_8AB0:
        inc di
        mov ds:8F8h, di

loc_8AB5:
        pop es
        assume es:nothing
        ret
sub_8A92    endp

; --------------------------------------------------

loc_8AB7:
        jmp loc_8BA1
; --------------------------------------------------
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
        mov ax, 3
        mov dh, al
        xor dl, dl
        call    sub_57D
        push    bx
        mov byte ptr ds:1E0Dh, 40h ; '@'
        mov byte ptr ds:1E0Ch, 5Ah ; 'Z'

loc_8AF9:
        push    es
        push    ds
        pop es
        assume es:nothing
        mov cx, 50h ; 'P'
        mov di, 1DBAh
        mov ax, 20h ; ' '
        cld
        repe stosb
        mov di, 1DBAh

loc_8B0B:
        inc byte ptr ds:1E0Dh
        mov al, ds:1E0Dh
        cmp al, ds:1E0Ch
        jbe loc_8B27
        cmp al, 5Bh ; '['
        jnz loc_8AB7
        mov byte ptr ds:1E0Ch, 39h ; '9'
        mov ax, 30h ; '0'
        mov ds:1E0Dh, al

loc_8B27:
        call    sub_8683
        jb  loc_8B85
        or  cx, cx
        jz  loc_8B46

loc_8B30:
        lodsb
        cmp al, 0Dh
        jz  loc_8B39
        cmp al, 0Ah
        jnz loc_8B3D

loc_8B39:
        loop    loc_8B30
        jmp short loc_8B46
; --------------------------------------------------

loc_8B3D:
        dec si
        cmp cx, 23h ; '#'
        jbe loc_8B46
        mov cx, 23h ; '#'

loc_8B46:
        push    cx
        cld
        mov al, ds:1E0Dh
        stosb
        mov ax, 2Dh ; '-'
        stosb
        stosb
        or  cx, cx
        jz  loc_8B78

loc_8B55:
        lodsb
        cmp al, 1Ah
        jz  loc_8B73
        cmp al, 0Dh
        jnz loc_8B61
        dec si
        jmp short loc_8B73
; --------------------------------------------------

loc_8B61:
        cmp al, 9
        jz  loc_8B73
        cmp al, 0FFh
        jnz loc_8B75
        stosb
        movsb
        lodsb
        sub cx, 2
        jbe loc_8B78
        jmp short loc_8B75
; --------------------------------------------------

loc_8B73:
        mov al, 20h ; ' '

loc_8B75:
        stosb
        loop    loc_8B55

loc_8B78:
        pop cx
        sub cx, 25h ; '%'
        jz  loc_8B85
        neg cx
        mov ax, 20h ; ' '
        repe stosb

loc_8B85:
        cmp byte ptr ds:1E0Dh, 39h ; '9'
        jz  loc_8B95
        cmp di, 1E0Ah
        jnb loc_8B95
        jmp loc_8B0B
; --------------------------------------------------

loc_8B95:
        pop es
        assume es:nothing
        pop di
        mov si, 1DBAh
        call    sub_8F55
        push    di
        jmp loc_8AF9
; --------------------------------------------------

loc_8BA1:
        pop es
        pop di
        mov si, 1E33h
        call    sub_8F55

loc_8BA9:
        pop ax
        mov ds:0CCh, al
        mov ds:0CDh, ah
        pop word ptr ds:0CEh
        pop word ptr ds:228h
        call    sub_CDDB
        ret
; --------------------------------------------------

loc_8BBD:
        jmp loc_8471
; --------------------------------------------------
        call    sub_CB4F

locret_8BC3:
        ret
; --------------------------------------------------
        call    loc_85C3
        jb  locret_8BC3
        call    sub_8683
        jb  loc_8BBD
        mov ds:1E25h, al
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
        mov ax, 3
        mov dh, al
        xor dl, dl
        call    sub_57D
        mov di, bx
        push    si
        add cx, si
        mov ds:1E10h, cx
        mov si, 1E19h
        call    sub_8F55
        call    sub_8F55
        call    sub_8F55
        pop si
        push    word ptr ds:0D0h
        pop word ptr ds:1E0Eh
        sub word ptr ds:1E0Eh, 4
        mov bx, ds:1E10h
        push    word ptr [bx]
        mov byte ptr [bx], 1Ah

loc_8C31:
        call    sub_8F55
        dec word ptr ds:1E0Eh
        jz  loc_8C40
        cmp si, ds:1E10h
        jb  loc_8C31

loc_8C40:
        mov si, ds:1E10h
        pop word ptr [si]
        mov si, 1E33h
        call    sub_8F55
        jmp loc_8BA9
; --------------------------------------------------
        cmp word ptr ds:1DB2h, 0
        jnz loc_8C65
        mov ax, 42h ; 'B'

loc_8C59:
        call    sub_CB4F

locret_8C5C:
        ret
; --------------------------------------------------

loc_8C5D:
        call    sub_8CBF
        mov ax, 7Ch ; '|'
        jmp short loc_8C59
; --------------------------------------------------

loc_8C65:
        call    sub_A54E
        mov ax, 45h ; 'E'
        jb  loc_8C59
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_8C75
        pop es
        assume es:nothing
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_8C75    proc near
        mov bx, 870h
        mov ax, ds:844h
        call    sub_B1E2
        jb  locret_8C5C
        mov si, ds:1DB2h

loc_8C84:
        cmp si, ds:8F8h
        jbe loc_8CAF
        mov cx, [si-4]
        add        cx, 6
        mov bx, [si-2]
        cmp bx, 30h ; '0'
        jb  loc_8CAB
        cmp bx, 5Ah ; 'Z'
        ja  loc_8CAB
        mov ax, ds:844h
        push    si
        push    cx
        sub si, cx
        call    sub_B117
        pop cx
        pop si
        jb  loc_8C5D

loc_8CAB:
        sub si, cx
        jmp short loc_8C84
; --------------------------------------------------

loc_8CAF:
        call    sub_8CBF
        mov ax, 43h ; 'C'
        jb  loc_8C59

loc_8CB7:
        mov ax, 44h ; 'D'
        call    sub_CB6A
        clc
        ret
sub_8C75    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8CBF    proc near
        mov ax, ds:844h
        call    sub_B317
        pushf
        mov ax, ds:844h
        call    sub_8A92
        popf
        ret
sub_8CBF    endp

; --------------------------------------------------
        call    sub_A54E
        mov ax, 72h ; 'r'
        jb  loc_8C59
        mov bx, 870h
        mov ax, ds:844h
        call    sub_CCAF
        jb  loc_8D43
        xor dx, dx

loc_8CE3:
        mov ax, ds:844h
        push    dx
        call    sub_8683
        pop dx
        jb  loc_8D43
        add si, dx
        sub cx, 8
        jbe loc_8D3A
        cmp dx, cx
        jnb loc_8D3A
        mov ax, [si+3]
        push    dx
        call    sub_8A92
        mov ax, ds:844h
        call    sub_8683
        pop dx
        jb  loc_8D43
        add dx, 8
        add si, dx
        mov cx, [si-2]
        add dx, cx
        mov bx, si
        add bx, cx
        mov word ptr ds:1E12h, 0
        mov ax, [bx-2]
        sub cx, 6
        push    dx
        add si, cx
        push    word ptr [bx-6]
        push    ax
        call    loc_8591
        pop ax
        call    sub_8683
        pop bp
        pop dx
        jb  loc_8CE3
        add si, cx
        mov [si], bp
        jmp short loc_8CE3
; --------------------------------------------------

loc_8D3A:
        mov ax, ds:844h
        call    sub_8A92
        jmp loc_8CB7
; --------------------------------------------------

loc_8D43:
        mov ax, 46h ; 'F'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_8D4A:
        mov ax, ds:0C0h
        mov ds:66h, ax
        call    sub_3450
        mov ax, 12h
        call    sub_CB4F
        ret
; --------------------------------------------------
        cmp word ptr ds:1DB2h, 0
        jz  loc_8D68
        mov ax, 46h ; 'F'
        call    sub_CB4F

locret_8D67:
        ret
; --------------------------------------------------

loc_8D68:
        or  word ptr ds:0, 800h
        call    sub_5796
        pushf
        or  word ptr ds:0, 800h
        xor word ptr ds:0, 800h
        popf
        jb  locret_8D67
        mov di, ds:8F8h
        mov ds:1DB2h, di
        mov si, ds:66h
        mov cx, si
        sub cx, ds:0C0h
        push    di
        sub di, cx
        cmp di, ds:0CAh
        pop di
        jbe loc_8D4A
        inc cx
        push    es
        push    ds
        pop es
        assume es:nothing
        std
        repe movsb
        pop es
        assume es:nothing
        inc di
        mov ds:8F8h, di
        mov ax, ds:0C0h
        mov ds:66h, ax
        call    sub_3450
        mov ax, 47h ; 'G'
        call    sub_CB6A
        ret
; --------------------------------------------------
        mov ax, ds:1DB2h
        or  ax, ax
        jz  loc_8DC9
        mov ds:8F8h, ax
        xor ax, ax
        mov ds:1DB2h, ax

loc_8DC9:
        call    loc_8A4F
        mov ax, 49h ; 'I'
        call    sub_CB6A
        clc
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_8DD4    proc near
        push    bx
        mov ax, 80h ; '?'
        mov bx, 0A0h ; '?'
        call    sub_8DED
        pop bx
        ret
sub_8DD4    endp

; --------------------------------------------------
        mov ax, 30h ; '0'
        push    bx
        mov bx, 5Bh ; '['
        call    sub_8DED
        pop bx
        jmp short loc_8DC9

; ---------- S U B  R O U T I N E --------------------------


sub_8DED    proc near
        push    si
        mov ds:1DB6h, ax
        mov ds:1DB8h, bx

loc_8DF5:
        mov si, ds:1DB2h
        cmp si, 0
        jz  loc_8E33
        jmp short loc_8E1D
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_8E01:
        mov ax, [si-2]
        mov cx, [si-4]
        sub si, cx
        sub si, 6
        cmp ax, ds:1DB6h
        jb  loc_8E1D
        cmp ax, ds:1DB8h
        jnb loc_8E1D
        call    sub_8A92
        jmp short loc_8DF5
; --------------------------------------------------

loc_8E1D:
        cmp si, ds:8F8h
        ja  loc_8E01
        mov si, ds:8F8h
        cmp si, ds:1DB2h
        jb  loc_8E33
        mov word ptr ds:1DB2h, 0

loc_8E33:
        pop si
        ret
sub_8DED    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8E35    proc near
                    ; seg000:51A6p ...
        push    si
        mov bx, cx
        call    sub_8E4F
        jnb loc_8E4C
        xchg    ax, bx
        call    sub_8E4F
        jb  loc_8E4C
        add si, cx
        mov [si+4], bx
        clc
        jmp short loc_8E4D
; --------------------------------------------------
        db 90h              ; EVEN -> loc_8E4C (1 byte NOP)
loc_8E4C:
        stc

loc_8E4D:
        pop si
        ret
sub_8E35    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8E4F    proc near
        push    bx
        call    sub_8683
        pop bx
        ret
sub_8E4F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8E55    proc near
        mov ax, ds:858h
        inc word ptr ds:858h
        cmp ax, 6000h
        jnb loc_8E69
        mov word ptr ds:858h, 6000h
        jmp short sub_8E55
; --------------------------------------------------

loc_8E69:
        push    si
        push    cx
        push    bx
        call    sub_8683
        pop bx
        pop cx
        pop si
        jnb sub_8E55
        push    ax
        call    sub_8E7A
        pop ax
        ret
sub_8E55    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8E7A    proc near
        mov word ptr ds:1E12h, 0
sub_8E7A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8E80    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_8EA1
        jb  loc_8E9F
        cmp word ptr ds:1DB2h, 0
        jnz loc_8E93
        mov ds:1DB2h, di

loc_8E93:
        std
        dec di
        dec di
        stosw
        mov ax, cx
        stosw
        mov ax, ds:1E12h
        stosw
        clc

loc_8E9F:
        pop es
        assume es:nothing
        ret
sub_8E80    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8EA1    proc near
        mov di, ds:8F8h
        sub ds:8F8h, cx
        jbe loc_8EFA
        sub word ptr ds:8F8h, 6
        jbe loc_8EFA
        mov bx, ds:66h
        cmp bx, ds:8F8h
        ja  loc_8EC6
        mov bx, ds:0CAh
        cmp bx, ds:8F8h
        jbe loc_8F05

loc_8EC6:
        mov ds:8F8h, di
        push    ax
        push    di
        push    cx
        mov ds:0D72h, si
        cmp byte ptr ds:18EBh, 0
        jz  loc_8EEE
        mov ax, ds:66h
        cmp ax, ds:2CAh
        jnb loc_8EEE
        call    sub_5ABB
        call    sub_D0C0
        pushf
        call    sub_5ABB
        popf
        jmp short loc_8EF1
; --------------------------------------------------

loc_8EEE:
        call    sub_D0C0

loc_8EF1:
        mov si, ds:0D72h
        pop cx
        pop di
        pop ax
        jnb sub_8EA1

loc_8EFA:
        mov ds:8F8h, di
        mov ax, 12h
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_8F05:
        clc
        ret
sub_8EA1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8F07    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        push    cx
        call    sub_8683
        mov bp, cx
        pop cx
        push    si
        push    bp
        jnb loc_8F27
        call    sub_8E7A
        mov dx, cx
        pop cx
        pop ax
        jb  loc_8F53
        mov cx, dx
        add di, 2
        sub di, cx
        jmp short loc_8F4B
; --------------------------------------------------

loc_8F27:
        call    sub_8EA1
        pop bp
        mov dx, cx
        pop cx
        jb  loc_8F53
        add word ptr ds:8F8h, 6
        add cx, bp
        mov di, cx
        add [di+2], dx
        mov di, ds:8F8h
        mov si, di
        add si, dx
        sub cx, si
        jbe loc_8F4B
        cld
        repe movsb

loc_8F4B:
        mov cx, dx
        xor ax, ax
        cld
        repe stosb
        clc

loc_8F53:
        pop es
        assume es:nothing
        ret
sub_8F07    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8F55    proc near
        push    word ptr ds:15Fh
        mov ah, ds:21Ah
        push    ax
        mov ah, ds:0DAFh
        mov ds:21Ah, ah
        mov word ptr ds:15Fh, 0
        call    sub_5DE0
        pop ax
        mov ds:21Ah, ah
        pop word ptr ds:15Fh
        ret
sub_8F55    endp


; ---------- S U B  R O U T I N E --------------------------


sub_8F79    proc near
        mov al, ds:4
        mov ah, ds:0CDh
        push    ax
        push    word ptr ds:6
        push    word ptr ds:0C2h
        push    word ptr ds:0
        or  word ptr ds:0, 1000h
        mov word ptr ds:1E14h, 0
        mov word ptr ds:1E16h, 0
        mov byte ptr ds:0CDh, 0
        mov ax, ds:0Eh
        mov dx, 0FFFFh
        call    sub_2B87
        mov si, ax

loc_8FAF:
        mov al, ds:12h
        mov ds:4, al
        mov word ptr ds:0C2h, 0FFFFh
        push    si
        call    sub_6709
        pop si
        push    word ptr ds:0C2h
        mov al, ds:13h
        mov ds:4, al
        mov word ptr ds:0C2h, 0FFFFh
        push    si
        call    sub_6709
        pop si
        pop bx
        mov ax, ds:0C2h
        sub ax, bx
        add ds:1E14h, ax
        inc word ptr ds:1E16h
        push    es
        push    ds
        pop es
        assume es:nothing
        mov cx, ds:66h
        sub cx, si
        mov di, si
        mov ax, 0Dh
        cld
        repne scasb
        pop es
        assume es:nothing
        jnz loc_9005
        cmp byte ptr [di], 0Ah
        jnz loc_8FFD
        inc di

loc_8FFD:
        mov si, di
        cmp si, ds:10h
        jb  loc_8FAF

loc_9005:
        mov cx, ds:1E14h
        mov ax, ds:1E16h
        pop word ptr ds:0
        pop word ptr ds:0C2h
        pop word ptr ds:6
        pop bx
        mov ds:4, bl
        mov ds:0CDh, bh
        ret
sub_8F79    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9022    proc near
        sub di, cx
        inc di
        mov al, ds:4
        mov ah, ds:0CDh
        push    ax
        push    word ptr ds:6
        push    word ptr ds:0C2h
        push    word ptr ds:0
        or  word ptr ds:0, 1000h
        mov byte ptr ds:0CDh, 0
        mov ax, ds:0Eh
        push    di
        mov dx, 0FFFFh
        call    sub_2B87
        mov si, ax
        pop di

loc_9051:
        mov al, ds:12h
        mov ds:4, al
        mov word ptr ds:0C2h, 0FFFFh
        push    si
        push    di
        call    sub_6709
        pop di
        pop si
        push    word ptr ds:0C2h
        mov al, ds:13h
        mov ds:4, al
        mov word ptr ds:0C2h, 0FFFFh
        push    di
        call    sub_6709
        pop di
        pop si
        push    es
        push    ds
        pop es
        assume es:nothing
        mov cx, ds:0C2h
        sub cx, si
        cld
        repe movsb
        mov ax, 0Dh
        stosb
        push    di
        mov cx, ds:66h
        sub cx, si
        mov di, si
        cld
        repne scasb
        mov si, di
        pop di
        pop es
        assume es:nothing
        jnz loc_90A8
        cmp byte ptr [si], 0Ah
        jnz loc_90A2
        inc si

loc_90A2:
        cmp si, ds:10h
        jb  loc_9051

loc_90A8:
        pop word ptr ds:0
        pop word ptr ds:0C2h
        pop word ptr ds:6
        pop bx
        mov ds:4, bl
        mov ds:0CDh, bh
        ret
sub_9022    endp

; --------------------------------------------------

loc_90BE:
        pop ax
        pop bx
        mov ds:0CDh, bl
        pop word ptr ds:0
        pop es
        pushf
        call    sub_BD6E
        popf
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_90CF    proc near
        call    sub_BD37
        push    es
        push    word ptr ds:0
        push    word ptr ds:0CDh
        mov ds:1E14h, cx
        add ds:1E14h, si
        mov al, ds:4
        push    ax
        or  word ptr ds:0, 1000h
        push    ds
        pop es
        assume es:nothing

loc_90EF:
        mov cx, ds:1E14h
        sub cx, si
        jbe loc_90BE
        mov di, si
        mov ax, 0Dh
        cld
        repne scasb
        mov ax, di
        sub ax, si
        dec ax
        push    si
        push    ax
        mov cx, ds:0C2h
        add ax, cx
        push    word ptr ds:0C2h
        call    sub_D7FE
        pop word ptr ds:0C2h
        pop cx
        pop si
        mov di, ds:0C2h
        cld
        repe movsb
        inc si
        push    si
        call    sub_2160
        pop si
        cmp ds:1E14h, si
        jbe loc_90BE
        mov bl, ds:4
        pop ax
        push    ax
        mov di, ds:0C2h
        cmp di, ds:66h
        jb  loc_914B
        push    ax
        push    si
        mov ax, 0Dh
        call    sub_2262
        call    sub_2503
        pop si
        pop ax
        xor bx, bx

loc_914B:
        sub al, bl
        jbe loc_90EF
        xor ah, ah
        push    si
        push    ax
        mov cx, ds:0C2h
        add ax, cx
        push    word ptr ds:0C2h
        call    sub_D7FE
        pop word ptr ds:0C2h
        pop cx
        add ds:4, cl
        mov di, ds:0C2h
        mov al, 20h ; ' '
        cld
        repe stosb
        mov ds:0C2h, di
        pop si
        jmp loc_90EF
sub_90CF    endp


; ---------- S U B  R O U T I N E --------------------------


sub_917A    proc near
        push    word ptr ds:0CDh
        push    word ptr ds:0C2h
        pop word ptr ds:0D5h
        push    word ptr ds:0
        or  word ptr ds:0, 1000h
        mov byte ptr ds:0CDh, 0
        mov ax, ds:0Eh
        mov dx, 0FFFFh
        call    sub_2B87
        mov si, ax

loc_91A0:
        mov al, ds:12h
        mov ds:4, al
        mov word ptr ds:0C2h, 0FFFFh
        push    si
        push    di
        call    sub_6709
        pop di
        pop si
        push    word ptr ds:0C2h
        mov al, ds:13h
        mov ds:4, al
        mov word ptr ds:0C2h, 0FFFFh
        call    sub_6709
        pop ax
        mov cx, ds:0C2h
        call    sub_D7FE
        push    es
        push    ds
        pop es
        mov di, ds:0C2h
        mov cx, ds:66h
        sub cx, di
        push    di
        mov ax, 0Dh
        cld
        repne scasb
        mov si, di
        pop di
        pop es
        assume es:nothing
        jnz loc_91F4
        cmp byte ptr [si], 0Ah
        jnz loc_91EE
        inc si

loc_91EE:
        cmp si, ds:10h
        jb  loc_91A0

loc_91F4:
        pop word ptr ds:0
        push    word ptr ds:0D5h
        pop word ptr ds:0C2h
        pop bx
        mov ds:0CDh, bl
        ret
sub_917A    endp

seg000      ends

        end
