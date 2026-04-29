;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_STRT.ASM
; SEGMENT:   seg000 (CODE)
; ZONE:      Zone 0 -- Entry point + startup code, relocs 0-15
; LINES:     1050
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC byte_1, byte_7A5, sub_419, sub_421, sub_4ED, sub_4FF
        PUBLIC sub_511, sub_57D, sub_58C, sub_5AD, sub_5E6, sub_63A
        PUBLIC sub_75A, sub_75F, sub_764, sub_769, sub_76E, sub_773
        PUBLIC sub_778, sub_77D, sub_782, sub_787, sub_791, sub_796
        PUBLIC off_85D, sub_5C6, sub_630, sub_6D7
        PUBLIC sub_79B, sub_7A0, word_7A7, word_7A9, word_865, word_867

; --- FAR EXTRNs ---
        EXTRN sub_DB50:FAR

; --- EXTRNs from seg003 ---
seg003      segment byte stack 'STACK'
        EXTRN word_FAAE:WORD
        EXTRN word_FAB0:WORD
seg003      ends

; --- EXTRNs from seg004 ---
seg004      segment para public 'DATA'
        EXTRN byte_105A4:BYTE
        EXTRN byte_105A5:BYTE
        EXTRN byte_105AA:BYTE
        EXTRN byte_105AB:BYTE
        EXTRN byte_105AC:BYTE
        EXTRN byte_105AD:BYTE
        EXTRN byte_106D8:BYTE
        EXTRN byte_10E0D:BYTE
        EXTRN byte_10E9A:BYTE
        EXTRN byte_10F0D:BYTE
        EXTRN byte_1134F:BYTE
        EXTRN byte_12650:BYTE
        EXTRN byte_129B0:BYTE
        EXTRN word_105A0:WORD
        EXTRN word_105A2:WORD
        EXTRN word_105AE:WORD
        EXTRN word_10606:WORD
        EXTRN word_1065E:WORD
        EXTRN word_10660:WORD
        EXTRN word_10662:WORD
        EXTRN word_10664:WORD
        EXTRN word_10666:WORD
        EXTRN word_10670:WORD
        EXTRN word_10687:WORD
        EXTRN word_10689:WORD
        EXTRN word_106FF:WORD
        EXTRN word_10764:WORD
        EXTRN word_10766:WORD
        EXTRN word_107B4:WORD
        EXTRN word_107B6:WORD
        EXTRN word_10804:WORD
        EXTRN word_10E07:WORD
        EXTRN word_10E09:WORD
        EXTRN word_10E0E:WORD
        EXTRN word_10E67:WORD
        EXTRN word_10E98:WORD
        EXTRN word_10E9B:WORD
        EXTRN word_10EAE:WORD
        EXTRN word_10EE3:WORD
        EXTRN word_113BB:WORD
        EXTRN word_113C5:WORD
        EXTRN word_11FC6:WORD
        EXTRN word_122B9:WORD
        EXTRN word_12638:WORD
        EXTRN word_128F9:WORD
        EXTRN word_12B00:WORD
        EXTRN word_12B7C:WORD
seg004      ends

seg000      segment byte public 'CODE'
        assume cs:seg000
        assume es:nothing, ss:nothing, ds:nothing


; --- NEAR EXTRNs (same segment) ---
        EXTRN loc_102A:NEAR
        EXTRN loc_1040:NEAR
        EXTRN loc_1046:NEAR
        EXTRN loc_106C:NEAR
        EXTRN loc_10DE:NEAR
        EXTRN loc_1125:NEAR
        EXTRN loc_1131:NEAR
        EXTRN loc_114B:NEAR
        EXTRN loc_1162:NEAR
        EXTRN loc_1166:NEAR
        EXTRN loc_116A:NEAR
        EXTRN loc_1185:NEAR
        EXTRN loc_11A9:NEAR
        EXTRN loc_11C4:NEAR
        EXTRN loc_11E6:NEAR
        EXTRN loc_11F0:NEAR
        EXTRN loc_1201:NEAR
        EXTRN loc_1215:NEAR
        EXTRN loc_1225:NEAR
        EXTRN loc_1233:NEAR
        EXTRN loc_A73:NEAR
        EXTRN loc_A7E:NEAR
        EXTRN loc_A89:NEAR
        EXTRN loc_A90:NEAR
        EXTRN loc_CAD:NEAR
        EXTRN loc_CD2:NEAR
        EXTRN loc_CDC:NEAR
        EXTRN loc_E83:NEAR
        EXTRN loc_E98:NEAR
        EXTRN loc_EA4:NEAR
        EXTRN loc_EBA:NEAR
        EXTRN loc_ED3:NEAR
        EXTRN loc_EDD:NEAR
        EXTRN loc_F79:NEAR
        EXTRN loc_F9A:NEAR
        EXTRN loc_FAF:NEAR
        EXTRN loc_FCA:NEAR
        EXTRN loc_FD0:NEAR
        EXTRN locret_A88:NEAR
        EXTRN sub_110D:NEAR
        EXTRN sub_1270:NEAR
        EXTRN sub_1992:NEAR
        EXTRN sub_2260:NEAR
        EXTRN sub_2262:NEAR
        EXTRN sub_2503:NEAR
        EXTRN sub_254D:NEAR
        EXTRN sub_2EBC:NEAR
        EXTRN sub_2EDC:NEAR
        EXTRN sub_47EB:NEAR
        EXTRN sub_792D:NEAR
        EXTRN sub_85EB:NEAR
        EXTRN sub_A57:NEAR
        EXTRN sub_AA8:NEAR
        EXTRN sub_BFA3:NEAR
        EXTRN sub_CB4F:NEAR
        EXTRN sub_CB6A:NEAR
        EXTRN sub_CE1D:NEAR
        EXTRN sub_CE6:NEAR
        EXTRN sub_D157:NEAR
        EXTRN sub_DE15:NEAR
        EXTRN sub_E2C:NEAR
        EXTRN sub_E50B:NEAR
        EXTRN sub_EE6C:NEAR
        EXTRN sub_F60:NEAR

        dw  seg seg002                  ; SEG16 - generates relocation at seg000:0000
        ORG 1
byte_1  label byte                      ; offset 0x0001 - self-modifying data anchor
        ORG 2
        db 30h, 0Ch, 0, 0E8h, 47h, 2 dup(0CBh), 5, 45h, 2 dup(52h)
        db 4Fh, 52h, 0Dh, 0, 0E8h, 0D3h, 0EBh, 0C3h, 6, 4Fh, 56h
        db 52h, 54h, 53h, 54h, 40h dup(0CCh), 3 dup(0), 43h, 70h
        db 4Dh, 70h, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 50h, 70h, 52h, 70h, 4Dh, 70h, 50h
        db 70h, 54h, 70h, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h
        db 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 20h, 7, 49h
        db 70h, 0ECh, 4, 60h, 22h, 60h, 22h, 60h, 22h, 60h, 22h
        db 60h, 22h, 60h, 22h, 60h, 22h, 0B5h, 28h, 60h, 22h, 14h
        db 6, 60h, 22h, 60h, 22h, 12h, 0CEh, 60h, 22h, 60h, 22h
        db 60h, 22h, 60h, 22h, 60h, 22h, 60h, 22h, 60h, 22h, 60h
        db 22h, 60h, 22h, 60h, 22h, 60h, 22h, 60h, 22h, 0ECh, 4
        db 21h, 6, 2 dup(0)
; --------------------------------------------------
        assume ss:seg003, ds:nothing

        public start
start:
        push    ds
        mov cx, 4
        mov bx, 2
        mov bx, [bx]
        mov dx, seg seg004
        mov ds, dx
        assume ds:seg004
        mov word ptr cs:byte_1+5Bh, dx
        pop word ptr cs:byte_1+1D6h
        mov word_10EAE, sp
        mov di, 947h
        cld
        push    ds
        pop es
        assume es:seg004
        mov ax, cs
        stosw
        mov ax, seg seg002
        stosw
        stosw
        mov ax, ss
        stosw
        stosw
        mov ax, ds
        stosw
        stosw
        sub bx, dx
        cmp bx, 1000h
        ja  loc_228
        mov ax, bx
        add ax, dx
        mov cx, 0Ch
        repe stosw
        mov cx, 4
        dec bx
        shl bx, cl
        mov word_10E98, bx
        jmp short loc_263
; --------------------------------------------------

loc_228:
        mov word_10E98, 0FFFEh
        add bx, dx
        add dx, 1000h
        mov ax, dx
        stosw
        mov word_10EE3, 0
        mov ax, bx
        sub ax, dx
        jbe loc_24E
        cmp ax, 0A00h
        jb  loc_24E
        mov word_10EE3, 340h

loc_24E:
        sub bx, word_10EE3
        cmp bx, dx
        ja  loc_258
        mov bx, dx

loc_258:
        mov ax, dx
        stosw
        stosw
        mov ax, bx
        mov cx, 9
        repe stosw

loc_263:
        mov bx, seg seg005
        mov ax, ds
        sub bx, ax
        mov cx, 4
        shl bx, cl
        mov byte ptr [bx], 1Ah
        inc bx
        mov byte ptr [bx], 0Dh
        add bx, 3
        mov word_1065E, bx
        mov word ptr [bx], 2
        add bx, [bx]
        mov word_10660, bx
        mov word_10606, bx
        mov word_10662, bx
        call    sub_AA8
        call    sub_CE6
        mov ax, 3000h
        int 21h     ; DOS - GET DOS VERSION
                    ; Return: AL = major version number (00h for DOS 1.x)
        mov word_10E9B, ax
        mov ax, word_113BB
        mov word_12638, ax
        mov ax, word_113C5
        mov word_128F9, ax
        call    sub_421
        mov si, 97Fh
        mov cx, 10h
        inc byte_129B0
        sti
        call    sub_630
        mov byte_129B0, 0

loc_2BF:
        cmp word_122B9, 0
        jz  loc_2C9
        call    sub_792D

loc_2C9:
        cmp byte_10E9A, 0
        jz  loc_2EB
        test    word_10E07, 2000h
        jz  loc_2E6
        mov ax, 81h ; '?'
        call    sub_E50B
        jb  loc_2E6
        xor word_10E07, 2000h

loc_2E6:
        mov byte_10E9A, 0

loc_2EB:
        mov es, word_10E0E
        assume es:seg000
        call    sub_1270
        test    word_105A0, 40h
        jz  loc_304
        push    dx
        push    ax
        mov ax, 0
        call    sub_CB6A
        pop ax
        pop dx

loc_304:
        cmp ax, 0FFh
        jz  loc_36F
        or  ah, ah
        jz  loc_310
        jmp loc_3B4
; --------------------------------------------------

loc_310:
        shl ax, 1
        mov si, ax
        cmp ax, 38h ; '8'
        jnb loc_365
        mov bx, cs:[si+19Fh]
        cmp bx, 2260h
        jz  loc_360
        test    word_10E07, 1000h
        jz  loc_355
        mov bp, word_12B7C
        test    word_12B00, bp
        jz  loc_355
        shr ax, 1
        push    es
        push    ds
        pop es
        assume es:seg004
        push    ax
        call    sub_40A
        pop ax
        jb  loc_36B
        push    ax
        mov cx, 4
        shr ax, cl
        call    sub_47EB
        stosb
        pop ax
        call    sub_47EB
        stosb
        pop es
        assume es:nothing
        jmp short loc_3A1
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_355:
        cmp bx, 28B5h
        jz  loc_360
        push    bx
        call    sub_2503
        pop bx

loc_360:
        call    bx
        jmp loc_2BF
; --------------------------------------------------

loc_365:
        call    sub_2260
        jmp loc_2BF
; --------------------------------------------------

loc_36B:
        pop es
        jmp loc_2BF
; --------------------------------------------------

loc_36F:
        test    word_105A0, 1
        jz  loc_38B
        mov ax, 0FFh
        call    sub_2262
        call    sub_1270
        call    sub_2262
        call    sub_1270
        call    sub_2262
        jmp short loc_3B1
; --------------------------------------------------

loc_38B:
        push    es
        push    ds
        pop es
        assume es:seg004
        call    sub_40A
        jb  loc_36B
        push    di
        call    sub_1270
        pop di
        cld
        stosb
        push    di
        call    sub_1270
        pop di
        stosb
        pop es
        assume es:nothing

loc_3A1:
        call    sub_2EBC
        jb  loc_3B1
        test    word_105A0, 2
        jnz loc_3B1
        call    sub_254D

loc_3B1:
        jmp loc_2BF
; --------------------------------------------------

loc_3B4:
        test    word_10E07, 1000h
        jz  loc_3E9
        mov bp, word_12B7C
        test    word_12B00, bp
        jz  loc_3E9
        mov di, ax
        and di, 7FFEh
        cmp word ptr cs:[di-1FF2h], 0E329h
        jz  loc_3E9
        push    es
        push    ds
        pop es
        assume es:seg004
        push    ax
        call    sub_40A
        pop ax
        jb  loc_36B
        or  ax, 1
        xchg    al, ah
        cld
        stosw
        pop es
        assume es:nothing
        jmp short loc_3A1
; --------------------------------------------------

loc_3E9:
        and ax, 7FFEh
        mov di, ax
        mov ax, cs:[di-1FF2h]
        cmp ax, 28B5h
        jz  loc_3FF
        push    dx
        push    di
        call    sub_2503
        pop di
        pop dx

loc_3FF:
        mov bp, ax
        xor ax, ax
        xor bx, bx
        call    bp
        jmp loc_2BF

; ---------- S U B  R O U T I N E --------------------------


sub_40A     proc near
        mov cx, 3
        call    sub_2EDC
        jb  locret_418
        mov ax, 0FFh
        cld
        dec di
        stosb

locret_418:
        ret
sub_40A     endp


; ---------- S U B  R O U T I N E --------------------------


sub_419     proc near
        mov word_10E09, 0A0h ; '?'
        jmp short loc_427
sub_419     endp


; ---------- S U B  R O U T I N E --------------------------


sub_421     proc near
        mov word_10E09, 0

loc_427:
        mov ax, 4
        mov bp, ss:word_FAB0
        mov [bp+0], ax
        mov bp, ss:word_FAAE
        mov [bp+0], ax
        xor ax, ax
        mov word_105A2, ax
        push    es
        push    ds
        pop es
        assume es:seg004
        cld
        mov cx, word_10670
        mov di, 2754h
        repe stosw
        mov cx, 0FFFCh
        mov si, 4B9h
        sub si, cx
        mov di, 0E7h ; '?'
        sub di, cx
        db 81h, 0C1h, 050h, 0  ; add cx, 50h ; 'P'
        repe movsb
        mov si, 4B9h
        mov cx, 50h ; 'P'
        mov di, 214h
        repe movsb
        mov si, 4B9h
        mov cx, 50h ; 'P'
        mov di, 174h
        repe movsb
        mov ax, 0FFFFh
        mov word_107B4, ax
        mov word_107B6, ax
        mov word_10764, ax
        mov word_10766, ax
        mov di, word_1065E
        mov ax, 2
        stosw
        mov word_10660, di
        mov word_10687, di
        mov word_10689, di
        xor ax, ax
        mov word_10664, ax
        mov word_10666, ax
        mov byte_106D8, al
        pop es
        assume es:nothing
        mov dx, 2
        mov bh, 0
        mov ah, 2
        int 10h     ; - VIDEO - SET CURSOR POSITION
                    ; DH,DL = row, column (0,0 = upper left)
                    ; BH = page number
        call    sub_63A
        and word_105A0, 942h
        and word_10E07, 0EFFFh
        or  word_105A0, 5
        call    sub_DE15
        mov byte_105A4, 2
        mov byte_105A5, 0
        mov byte_105AB, 0
        mov byte_105AC, 3
        mov word_105AE, 0
        mov word_106FF, 1
        call    sub_85EB
        call    sub_EE6C
        ret
sub_421     endp

; --------------------------------------------------
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_4ED     proc near
        cmp byte_12650, 0
        jz  sub_4FF
        push    es
        mov bp, seg seg001
        mov es, bp
        assume es:seg001
        call    sub_4FF
        pop es
        assume es:nothing
        ret
sub_4ED     endp


; ---------- S U B  R O U T I N E --------------------------


sub_4FF     proc near
        mov bp, 870h
        mov cx, 8C1h
        dec cx
        call    sub_57D
        call    sub_511
        mov word_10E67, bp
        ret
sub_4FF     endp


; ---------- S U B  R O U T I N E --------------------------


sub_511     proc near
        push    si
        mov si, bx
        call    sub_769
        pop si
        call    sub_58C
        jb  loc_51F
        stc
        ret
; --------------------------------------------------

loc_51F:
        push    si
        mov si, bx
        call    sub_769
        pop si

loc_526:
        call    sub_BFA3
        cmp al, 10h
        jnz loc_531
        mov al, 1Bh
        jmp short loc_549
; --------------------------------------------------

loc_531:
        cmp al, 1Bh
        jnz loc_549
        mov al, 0Dh
        mov ds:[bp+0], al
        inc bp
        mov byte ptr ds:[bp+0], 0
        mov al, 0Ah
        cmp bp, cx
        jb  loc_549
        jmp short loc_576
; --------------------------------------------------

loc_549:
        cmp ah, byte_10F0D
        jz  loc_555
        mov byte ptr ds:[bp+0], 0
        inc bp

loc_555:
        mov ds:[bp+0], al
        add bx, 2
        inc bp
        mov byte ptr ds:[bp+0], 0
        cmp bp, cx
        jb  loc_568
        jmp short loc_576
; --------------------------------------------------

loc_568:
        push    si
        mov si, bx
        call    sub_769
        pop si
        call    sub_58C
        jb  loc_526
        clc
        ret
; --------------------------------------------------

loc_576:
        mov ax, 0Dh
        call    sub_CB4F
        ret
sub_511     endp


; ---------- S U B  R O U T I N E --------------------------


sub_57D     proc near
        mov ax, word_11FC6
        mul dh
        mov bx, ax
        mov al, dl
        cbw
        add bx, ax
        shl bx, 1
        ret
sub_57D     endp


; ---------- S U B  R O U T I N E --------------------------


sub_58C     proc near
        cmp byte_10E0D, 0
        jnz loc_5A5
        cmp al, 2Bh ; '+'
        jz  loc_5AB
        cmp al, 20h ; ' '
        jz  loc_5AB
        cmp al, 1Bh
        jz  loc_5AB
        cmp al, 2Ch ; ','
        jz  loc_5AB

loc_5A3:
        stc
        ret
; --------------------------------------------------

loc_5A5:
        cmp al, byte_10E0D
        jnz loc_5A3

loc_5AB:
        clc
        ret
sub_58C     endp


; ---------- S U B  R O U T I N E --------------------------


sub_5AD     proc near
        mov dx, 0
        mov bh, 0
        mov ah, 2
        int 10h     ; - VIDEO - SET CURSOR POSITION
                    ; DH,DL = row, column (0,0 = upper left)
                    ; BH = page number
        mov cx, 0
        mov dx, 184Fh
        mov bh, byte_1134F
        mov ax, 600h
        int 10h     ; - VIDEO - SCROLL PAGE UP
                    ; AL = number of lines to scroll window (0 = blank whole window)
                    ; BH = attributes to be used on blanked lines
                    ; CH,CL = row,column of upper left corner of window to scroll
                    ; DH,DL = row,column of lower right corner of window
        ret
sub_5AD     endp


; ---------- S U B  R O U T I N E --------------------------


sub_5C6     proc far
        mov ax, 2
        or  word_105A0, ax
        xor word_105A0, ax
        call    sub_DE15
        call    sub_5AD
        call    sub_D157
        call    sub_CE6
        push    word ptr cs:byte_1+1D6h
        xor ax, ax
        push    ax
        ret
sub_5C6     endp ; sp = -4


; ---------- S U B  R O U T I N E --------------------------


sub_5E6     proc near
        test    word_105A0, 4
        jz  loc_604
        test    word_10E07, 1
        jz  loc_5FC
        mov ax, 0A1h ; '?'
        jmp short loc_607
; --------------------------------------------------
        db  90h ; ?
; --------------------------------------------------

loc_5FC:
        test    word_10804, 4
        jnz loc_60D

loc_604:
        mov ax, 9Dh ; '?'

loc_607:
        call    sub_E50B
        jnb loc_60D
        ret
; --------------------------------------------------

loc_60D:
        pop ax
        pop ax
        call    sub_5C6
        test    word_105A0, 1
        jz  locret_62F
        mov ax, 36h ; '6'
        jmp short loc_62C
; --------------------------------------------------
        test    word_105A0, 1
        jz  loc_62C
        mov ax, 20h ; ' '

loc_62C:
        call    sub_2260

locret_62F:
        ret
sub_5E6     endp ; sp =  4


; ---------- S U B  R O U T I N E --------------------------


sub_630     proc near
        mov di, 4
        call    sub_75F
        call    sub_CE1D
        ret
sub_630     endp


; ---------- S U B  R O U T I N E --------------------------


sub_63A     proc near
        push    bx
        mov si, 5Fh ; '_'
        mov di, 0
        mov cx, 140h
        mov byte_105AA, 4Fh ; 'O'
        mov byte_105AD, 4Fh ; 'O'
        add si, word_10E09
        add di, word_10E09
        sub cx, word_10E09
        cld
        sar cx, 1
        push    ds
        push    cs
        pop ds
        assume ds:seg000
        call    sub_773
        pop ds
        assume ds:nothing
        mov si, ds:86Bh
        mov cx, ds:1A26h
        cmp cx, 50h ; 'P'
        jnz loc_6BA
        mov ah, ds:96Dh
        mov bx, 20h ; ' '
        or  bh, ds:96Dh
        xor bh, ds:96Fh
        cmp si, 0AC1h
        jnz loc_68B
        call    sub_1992
        jmp short loc_6BA
; --------------------------------------------------

loc_68B:
        or  si, si
        jnz loc_697
        mov al, ds:863h
        call    sub_75A
        jmp short loc_6BA
; --------------------------------------------------

loc_697:
        db 2Eh, 81h, 3Eh  ; cmp cs:word_7A7, 4
        dw word_7A7
        dw 4
        jb  loc_6BC

loc_6A0:
        lodsb
        cmp al, bl
        jnz loc_6AC

loc_6A5:
        call    sub_764
        loop    loc_6A0
        jmp short loc_6BA
; --------------------------------------------------

loc_6AC:
        xor ah, bh
        jmp short loc_6B5
; --------------------------------------------------

loc_6B0:
        lodsb
        cmp al, bl
        jz  loc_6A5

loc_6B5:
        call    sub_764
        loop    loc_6B0

loc_6BA:
        pop bx
        ret
; --------------------------------------------------

loc_6BC:
        call    sub_F60

loc_6BF:
        lodsb
        cmp al, bl
        jnz loc_6C9

loc_6C4:
        stosw
        loop    loc_6BF
        jmp short loc_6D5
; --------------------------------------------------

loc_6C9:
        xor ah, bh
        jmp short loc_6D2
; --------------------------------------------------

loc_6CD:
        lodsb
        cmp al, bl
        jz  loc_6C4

loc_6D2:
        stosw
        loop    loc_6CD

loc_6D5:
        pop bx
        ret
sub_63A     endp


; ---------- S U B  R O U T I N E --------------------------

; Attributes: bp-based frame

sub_6D7     proc far

arg_A       = word ptr  0Eh

        sti
        add sp, 6
        mov bp, sp
        mov ds, [bp+arg_A]
        mov ax, 76h ; 'v'
        call    sub_CB4F
        mov ax, 5

loc_6E9:
        xor cx, cx

loc_6EB:
        loop    loc_6EB
        dec ax
        jnz loc_6E9
        pop ax
        mov al, 5
        pop bx
        pop cx
        xor cx, cx
        pop dx
        pop si
        pop di
        pop bp
        pop ds
        pop es
        iret
sub_6D7     endp ; sp =  18h

; --------------------------------------------------
        db 2 dup(0)         ; CALIGN 4 -> off_700 (2 bytes 00)
off_700     dw offset loc_FCA
off_702     dw offset loc_1125
off_704     dw offset loc_F79
off_706     dw offset loc_1185
off_708     dw offset loc_1215
off_70A     dw offset loc_1040
off_70C     dw offset locret_A88
off_70E     dw offset loc_A89
off_710     dw offset loc_1040
off_712     dw offset loc_11E6
off_714     dw offset loc_1162
off_716     dw offset loc_E83
off_718     dw offset loc_E98
off_71A     dw offset loc_CAD
off_71C     dw offset locret_A88
        dw offset loc_102A
        dw offset loc_1131
        dw offset loc_F9A
        dw offset loc_11A9
        dw offset loc_1225
        dw offset sub_110D
        dw offset loc_A7E
        dw offset loc_A90
        dw offset loc_10DE
        dw offset loc_11F0
        dw offset loc_116A
        dw offset loc_EA4
        dw offset loc_EBA
        dw offset loc_CD2
        dw offset locret_A88
        dw offset loc_FD0
        dw offset loc_114B
        dw offset loc_FAF
        dw offset loc_11C4
        dw offset loc_1233
        dw offset loc_106C
        dw offset sub_A57
        dw offset loc_A90
        dw offset loc_1046
        dw offset loc_1201
        dw offset loc_1166
        dw offset loc_EDD
        dw offset loc_ED3
        dw offset loc_CDC
        dw offset loc_A73

; ---------- S U B  R O U T I N E --------------------------


sub_75A     proc near
        jmp cs:off_700
sub_75A     endp


; ---------- S U B  R O U T I N E --------------------------


sub_75F     proc near
        jmp cs:off_702
sub_75F     endp


; ---------- S U B  R O U T I N E --------------------------


sub_764     proc near
        jmp cs:off_704
sub_764     endp


; ---------- S U B  R O U T I N E --------------------------


sub_769     proc near
        jmp cs:off_706
sub_769     endp


; ---------- S U B  R O U T I N E --------------------------


sub_76E     proc near
        jmp cs:off_708
sub_76E     endp


; ---------- S U B  R O U T I N E --------------------------


sub_773     proc near
        jmp cs:off_70A
sub_773     endp


; ---------- S U B  R O U T I N E --------------------------


sub_778     proc near
        jmp cs:off_70C
sub_778     endp


; ---------- S U B  R O U T I N E --------------------------


sub_77D     proc near
        jmp cs:off_70E
sub_77D     endp


; ---------- S U B  R O U T I N E --------------------------


sub_782     proc near
        jmp cs:off_710
sub_782     endp


; ---------- S U B  R O U T I N E --------------------------


sub_787     proc near
        jmp cs:off_712
sub_787     endp

; --------------------------------------------------
        jmp cs:off_714

; ---------- S U B  R O U T I N E --------------------------


sub_791     proc near
        jmp cs:off_716
sub_791     endp


; ---------- S U B  R O U T I N E --------------------------


sub_796     proc near
        jmp cs:off_718
sub_796     endp


; ---------- S U B  R O U T I N E --------------------------


sub_79B     proc near
        jmp cs:off_71A
sub_79B     endp


; ---------- S U B  R O U T I N E --------------------------


sub_7A0     proc near
        jmp cs:off_71C
sub_7A0     endp

; --------------------------------------------------
byte_7A5    db 2 dup(0)
word_7A7    dw 0
word_7A9    dw 0
        db 0                ; EVEN -> 07AC (1 byte 00)
        db 1, 0, 3, 4, 9 dup(0), 5, 6, 7, 8, 9, 8 dup(0), 0Ah
        db 0Bh, 0Ch, 0Dh, 7 dup(0), 0Eh, 0Fh, 2 dup(0), 10h, 11h
        db 12h, 13h, 6 dup(0), 22h, 23h, 24h, 37h, 38h, 39h, 2 dup(0)
        db 63h, 0, 64h, 60h, 5Dh, 5Eh, 5Fh, 4Bh, 4Ch, 4Dh, 4Eh
        db 3Ah, 3Bh, 3Ch, 3Dh, 25h, 26h, 27h, 28h, 2 dup(0), 5Ah
        db 5Ch, 5Bh, 4Ah, 6 dup(0), 61h, 0Ah dup(0), 21h, 36h
        db 29h, 14h, 15h, 2Ah, 3Eh, 50h, 0, 16h, 2Bh, 3Fh, 51h
        db 4Fh, 0, 17h, 2Ch, 40h, 52h, 0, 18h, 2Dh, 41h, 53h, 62h
        db 0, 19h, 2Eh, 42h, 54h, 0, 1Ah, 2Fh, 43h, 55h, 0, 1Bh
        db 30h, 44h, 56h, 0, 1Ch, 31h, 45h, 57h, 0, 1Dh, 32h, 46h
        db 58h, 0, 1Eh, 33h, 0, 47h, 59h, 0, 20h, 35h, 49h, 0
        db 1Fh, 34h, 48h, 24h, 0, 58h, 0, 90h, 3 dup(0), 18h, 0DDh
        dw seg seg000
off_85D     dd sub_DB50
        dd sub_6D7
word_865    dw 851h
word_867    dw 859h
a@x:
        db 40h, 0, 58h, 0, 0, 0   ; unicode 0, <@X>,0
        db 96h, 0Dh
        dw seg seg000
        db 0D7h, 8
        dw seg seg000
        db 14h, 0, 40h, 0, 58h, 0, 6Ch, 1, 90h, 3 dup(0), 1Ch
        db 0Dh
        dw seg seg000
        db 1Dh, 0Dh
        dw seg seg000
        db 50h, 0DBh
        dw seg seg000
        db 0EFh, 0Eh
        dw seg seg000
        db 0D7h, 6
        dw seg seg000

seg000      ends

        end start
