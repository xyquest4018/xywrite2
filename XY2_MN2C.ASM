;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_MN2C.ASM
; SEGMENT:   seg000 (CODE)
; ZONE:      Zone 2 -- Code, part 3 (split from XY2_MN02.ASM)
; LINES:     6446
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC loc_989E, sub_97E0, sub_A07B, sub_A54E, sub_A5D3, sub_A6C3
        PUBLIC sub_A94A, sub_A9D5, sub_AD48, sub_B117, sub_B1CA, sub_B1E2
        PUBLIC sub_B317

seg000      segment byte public 'CODE'
        assume cs:seg000



; --- NEAR EXTRNs (same segment) ---
        EXTRN loc_1939:NEAR
        EXTRN loc_7085:NEAR
        EXTRN sub_16A7:NEAR
        EXTRN sub_2B87:NEAR
        EXTRN sub_3130:NEAR
        EXTRN sub_3457:NEAR
        EXTRN sub_34D7:NEAR
        EXTRN sub_383B:NEAR
        EXTRN sub_419:NEAR
        EXTRN sub_4ED:NEAR
        EXTRN sub_5755:NEAR
        EXTRN sub_5865:NEAR
        EXTRN sub_588E:NEAR
        EXTRN sub_5AD4:NEAR
        EXTRN sub_5E89:NEAR
        EXTRN sub_62BE:NEAR
        EXTRN sub_6F9A:NEAR
        EXTRN sub_7010:NEAR
        EXTRN sub_70B2:NEAR
        EXTRN sub_7368:NEAR
        EXTRN sub_73F0:NEAR
        EXTRN sub_769:NEAR
        EXTRN sub_782:NEAR
        EXTRN sub_791:NEAR
        EXTRN sub_796:NEAR
        EXTRN sub_7CE4:NEAR
        EXTRN sub_7CF1:NEAR
        EXTRN sub_7D3F:NEAR
        EXTRN sub_7D4D:NEAR
        EXTRN sub_847F:NEAR
        EXTRN sub_8574:NEAR
        EXTRN sub_8683:NEAR
        EXTRN sub_8A0C:NEAR
        EXTRN sub_8A92:NEAR
        EXTRN sub_8DED:NEAR
        EXTRN sub_8E55:NEAR
        EXTRN sub_8E7A:NEAR
        EXTRN sub_8F07:NEAR
        EXTRN sub_BAD1:NEAR
        EXTRN sub_BD37:NEAR
        EXTRN sub_BD6E:NEAR
        EXTRN sub_BD91:NEAR
        EXTRN sub_BF90:NEAR
        EXTRN sub_CB4F:NEAR
        EXTRN sub_CB6A:NEAR
        EXTRN sub_CF2C:NEAR
        EXTRN sub_CF5B:NEAR
        EXTRN sub_D02B:NEAR
        EXTRN sub_D4E9:NEAR
        EXTRN sub_D79E:NEAR
        EXTRN sub_EE6C:NEAR

; --------------------------------------------------
        db 10 dup(0)        ; CALIGN 10h -> sub_9210 (10 bytes 00)
; ---------- S U B  R O U T I N E --------------------------


sub_9210    proc near
        mov ax, ds:971h
        mov ds:2097h, al
        mov ax, ds:973h
        mov ds:209Ch, al
        xor ax, ax
        mov ds:826h, al
        mov ds:21Dh, al
        mov ds:20A3h, al
        mov ds:20A4h, al
        mov ds:170h, ax
        mov ds:215Bh, al
        mov ds:215Ah, al
        mov ds:2155h, ax
        mov ds:20A1h, al
        mov ds:164h, ax
        mov ds:208Eh, al
        mov ds:2102h, ax
        mov ds:208Fh, ax
        mov word ptr ds:209Fh, 0FFFFh
        mov ds:2091h, ax
        mov ds:2093h, ax
        mov ds:2095h, ax
        mov word ptr ds:2104h, 0FFFFh
        mov ds:2154h, al
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        mov di, 598h
        mov si, 4B9h
        mov cx, 50h ; 'P'
        repe movsb
        mov di, 214h
        mov si, 4B9h
        mov cx, 50h ; 'P'
        repe movsb
        mov cx, 4B9h
        sub cx, 42Ah
        db 81h, 0E9h, 050h, 0  ; sub cx, 50h ; 'P'
        mov di, 0E7h ; '?'
        db 81h, 0C7h, 050h, 0  ; add di, 50h ; 'P'
        repe movsb
        mov ds:220h, ax
        inc word ptr ds:220h
        mov word ptr ds:216h, 0FFFFh
        mov ds:214h, ax
        pop es
        assume es:nothing
        ret
sub_9210    endp

; --------------------------------------------------

loc_929D:
        call    sub_A699
        clc

loc_92A1:
        jmp loc_9466

; ---------- S U B  R O U T I N E --------------------------


sub_92A4    proc near
        mov byte ptr ds:2153h, 0
        mov byte ptr ds:20A2h, 0
        push    es
        push    ds
        pop es
        assume es:nothing

loc_92B1:
                    ; sub_92A4+1B7j
        call    sub_A699
        call    sub_B7BD
        jnb loc_929D
        call    sub_B439
        jnb loc_929D
        call    sub_B6AB
        jnb loc_929D
        call    sub_B7BD
        jnb loc_929D
        call    sub_B8AC
        jnb loc_929D
        call    sub_A699
        call    sub_AD66
        jb  loc_92A1
        mov ax, ds:208Ch
        cmp ax, ds:139h
        jb  loc_92E6
        mov byte ptr ds:218h, 0

loc_92E3:
        jmp loc_9428
; --------------------------------------------------

loc_92E6:
        call    sub_AEF6
        jb  loc_930A
        cmp byte ptr ds:218h, 0
        jnz loc_930A
        call    sub_AA77
        mov bx, ax
        call    sub_7D4D
        sub al, ds:21Ch
        sbb ah, 0
        cmp bx, ax
        jnb loc_930A
        call    sub_9523
        jnb loc_92E3

loc_930A:
        call    sub_AF0D
        call    sub_AA77
        mov ds:20A5h, ax
        mov byte ptr ds:19F8h, 1
        mov byte ptr ds:1C5Ah, 0
        call    sub_9478
        jb  loc_937A
        call    sub_AA77
        mov bx, ax
        call    sub_9468
        mov ax, 0
        rcl al, 1
        test    ds:20A4h, al
        jnz loc_9376
        mov al, ds:218h
        and al, 0FDh
        mov ah, al
        or  al, ds:20A4h
        jz  loc_937A
        or  ah, ah
        jnz loc_9351
        mov ax, ds:20A5h
        cmp ax, ds:25Dh
        jnb loc_9370
        jmp short loc_937A
; --------------------------------------------------

loc_9351:
        call    sub_7D3F
        cmp bx, ax
        ja  loc_9370
        push    bx
        mov byte ptr ds:1C5Ah, 0
        call    sub_9478
        jb  loc_9377
        call    sub_AA77
        mov bx, ax
        call    sub_9468
        jnb loc_9377
        pop ax
        jmp short loc_9351
; --------------------------------------------------

loc_9370:
        call    sub_AFC4
        jmp loc_941A
; --------------------------------------------------

loc_9376:
        push    bx

loc_9377:
        jmp loc_9403
; --------------------------------------------------

loc_937A:
        call    sub_7D4D
        cmp bx, ax
        jb  loc_9376
        push    bx
        cmp byte ptr ds:21Fh, 0
        jz  loc_938B
        jmp short loc_93C5
; --------------------------------------------------

loc_938B:
        call    sub_7CE4
        cmp ax, 1
        jbe loc_93C5

loc_9393:
        push    ax
        call    sub_9478
        pop bx
        jb  loc_9403
        call    sub_AA77
        cmp ax, ds:25Dh
        ja  loc_93B1
        xchg    ax, bx
        cmp byte ptr ds:21Fh, 0
        jz  loc_9403
        dec ax
        jnz loc_9393
        jmp short loc_9403
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_93B1:
                    ; sub_92A4+147j ...
        pop bx
        call    sub_AFC4
        cmp byte ptr ds:218h, 0
        jnz loc_9428
        or  word ptr ds:162h, 1
        jmp short loc_9428
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_93C5:
        cmp bx, ds:25Dh
        jb  loc_9403
        call    sub_7D3F
        cmp bx, ax
        ja  loc_9403
        call    sub_7CF1
        cmp ax, 1
        jbe loc_9403

loc_93DA:
        push    ax
        call    sub_9478
        pop bx
        jb  loc_9403
        call    sub_AA77
        mov cx, ax
        call    sub_7D3F
        cmp cx, ax
        ja  loc_93B1
        mov ax, bx
        dec ax
        jz  loc_93B1
        cmp byte ptr ds:21Fh, 0
        jnz loc_93DA
        call    sub_AFC4
        mov byte ptr ds:218h, 2
        jmp short loc_9406
; --------------------------------------------------

loc_9403:
        call    sub_AFC4

loc_9406:
        pop bx
        call    sub_7D3F
        cmp bx, ax
        jbe loc_9428
        call    sub_AA77
        mov bx, ax
        call    sub_7D4D
        cmp bx, ax
        jb  loc_9428

loc_941A:
        or  word ptr ds:162h, 1
        mov byte ptr ds:19F8h, 0
        jmp loc_92B1
; --------------------------------------------------

loc_9428:
                    ; sub_92A4+116j ...
        mov byte ptr ds:19F8h, 0
        call    sub_9478
        jnb loc_945E
        cmp byte ptr ds:20A2h, 1
        stc
        jz  loc_9466
        inc byte ptr ds:20A2h
        cmp word ptr ds:16Ah, 0
        jnz loc_945B
        cmp byte ptr ds:21Dh, 0
        stc
        jnz loc_9466
        cmp word ptr ds:164h, 0
        stc
        jz  loc_9466
        or  word ptr ds:162h, 1

loc_945B:
        jmp loc_92B1
; --------------------------------------------------

loc_945E:
        mov al, ds:218h
        and al, 0FDh
        mov ds:20A4h, al

loc_9466:
                    ; sub_92A4+194j ...
        pop es
        assume es:nothing
        ret
sub_92A4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9468    proc near
        cmp byte ptr ds:218h, 0
        jz  locret_9477
        cmp byte ptr ds:1C5Ah, 0
        ja  locret_9477
        stc

locret_9477:
        ret
sub_9468    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9478    proc near
        call    sub_AEF6
        jb  loc_94EE
        cmp byte ptr [si], 1Ah
        jz  loc_94EE
        push    si
        push    cx
        push    word ptr ds:2410h
        mov byte ptr ds:2410h, 1
        mov byte ptr ds:1C5Eh, 0
        call    sub_A930
        pop ax
        mov ds:2410h, al
        pop ax
        mov cx, si
        pop si
        cmp byte ptr ds:1C5Eh, 0
        jnz loc_94A8
        cmp cx, ax
        jb  loc_94E1

loc_94A8:
        cmp byte ptr ds:20FFh, 0
        jnz loc_94E1

loc_94AF:
        push    word ptr ds:20FDh
        call    sub_A467
        pop ax
        jb  loc_94EE
        cmp ax, ds:20FDh
        jb  sub_9478
        cmp byte ptr ds:20FFh, 0
        jnz sub_9478
        push    word ptr ds:20FBh
        call    sub_AD66
        pop ax
        jb  loc_94EE
        cmp ax, ds:20FBh
        jnz loc_94AF
        call    sub_AA65
        jnb loc_94AF
        inc byte ptr ds:20FFh

loc_94DF:
        jmp short sub_9478
; --------------------------------------------------

loc_94E1:
        sub cx, si
        jbe loc_94EE
        push    si
        push    cx
        call    sub_AA89
        pop cx
        pop si
        jnb loc_94F0

loc_94EE:
        stc
        ret
; --------------------------------------------------

loc_94F0:
        or  ax, ax
        jnz sub_9478
        call    sub_AE5E
        jb  loc_94EE
        or  ax, ax
        jnz loc_94DF
        call    sub_B047
        jb  locret_9522
        cmp byte ptr ds:21Fh, 0
        jnz loc_950E
        and byte ptr ds:218h, 0FDh

loc_950E:
        push    si
        mov ax, ds:83Ah
        call    sub_8683
        pop ax
        jb  locret_9522
        push    ax
        sub ax, si
        mov ds:20FBh, ax
        pop si
        call    sub_9544

locret_9522:
        ret
sub_9478    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9523    proc near
        push    di
        push    cx
        mov di, si
        mov ax, ds:971h
        mov si, cx
        sub cx, di
        cmp cx, ds:228h
        jb  loc_953E
        mov cx, ds:228h
        cld
        repne scasb
        mov si, di
        clc

loc_953E:
        pop cx
        pop di
        jnz locret_9543
        stc

locret_9543:
        ret
sub_9523    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9544    proc near
        mov bx, si
        mov si, 1E61h
        xchg    di, si
        std
        sub si, 2
        jmp short loc_9556
; --------------------------------------------------

loc_9551:
        lodsw
        cmp al, 20h ; ' '
        jnz loc_955C

loc_9556:
        cmp si, di
        jnb loc_9551
        jmp short loc_9564
; --------------------------------------------------

loc_955C:
        inc si
        inc si
        cmp al, ds:977h
        jz  loc_9566

loc_9564:
        inc si
        inc si

loc_9566:
        mov ds:2067h, si
        xchg    di, si
        cmp byte ptr [di-2], 0Ch
        jz  loc_95C1
        dec word ptr ds:139h
        mov cl, ds:21Ch
        xor ch, ch
        or  cx, cx
        jz  loc_95C1
        push    si
        push    cx
        push    di
        push    bx
        mov ax, 5500h
        mov byte ptr ds:2066h, 0
        cmp byte ptr [bx-1], 0Ah
        jnz loc_9599
        inc byte ptr ds:2066h
        mov ax, 5501h

loc_9599:
        call    sub_8683
        jnb loc_95A4
        mov si, 2063h
        mov cx, 2

loc_95A4:
        mov bp, cx
        add bp, si
        pop bx
        pop di
        pop cx
        mov ah, ds:0DAFh

loc_95AF:
        cld
        push    si

loc_95B1:
        cmp si, bp
        jnb loc_95B9
        lodsb
        stosw
        jmp short loc_95B1
; --------------------------------------------------

loc_95B9:
        pop si
        inc word ptr ds:139h
        loop    loc_95AF
        pop si

loc_95C1:
        mov si, bx
        mov al, ds:21Bh
        mov ds:2081h, al
        mov ax, ds:228h
        mov ds:2082h, ax
        clc
        ret
sub_9544    endp


; ---------- S U B  R O U T I N E --------------------------


sub_95D1    proc near
        push    word ptr ds:139h
        push    word ptr ds:0
        mov al, ds:4
        push    ax
        push    word ptr ds:13Bh
        push    word ptr ds:25Dh
        push    word ptr ds:19F8h
        xor ax, ax
        inc ax
        mov ds:19F8h, al
        mov si, ds:2088h
        xor ax, ax
        mov bx, ds:2086h
        dec bx
        push    word ptr [bx]
        mov byte ptr [bx], 1Ah

loc_95FF:
        push    bx
        push    ax
        call    sub_B050
        pop ax
        pop bx
        mov dl, ds:21Ch
        xor dh, dh
        add ax, dx
        cmp byte ptr [si], 1Ah
        jz  loc_9617
        cmp si, bx
        jb  loc_95FF

loc_9617:
        mov ds:208Ah, ax
        pop word ptr [bx]
        pop ax
        mov ds:19F8h, al
        pop word ptr ds:25Dh
        pop word ptr ds:13Bh
        pop ax
        mov ds:4, al
        pop word ptr ds:0
        pop word ptr ds:139h
        mov ax, ds:208Ah
        clc
        ret
sub_95D1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9639    proc near
        push    ax
        push    bx
        call    sub_8683
        pop bx
        pop ax
        jb  loc_9652
        cmp bx, si
        ja  loc_9652
        db 81h, 0C1h, 6, 0  ; add cx, 6
        add bx, cx
        add cx, ds:2086h
        jmp short loc_9656
; --------------------------------------------------

loc_9652:
        mov cx, ds:2086h

loc_9656:
        dec cx
        mov si, bx
        sub cx, si
        push    word ptr ds:2411h
        mov byte ptr ds:2411h, 1
        call    sub_8574
        pop ax
        mov ds:2411h, al
        ret
sub_9639    endp


; ---------- S U B  R O U T I N E --------------------------


sub_966C    proc near
        add word ptr ds:2088h, 3
        call    sub_95D1
        sub word ptr ds:2088h, 3
        ret
sub_966C    endp

; --------------------------------------------------
        mov di, 14Fh
        call    sub_97B8
        mov byte ptr ds:20A3h, 1
        jmp short loc_9694
; --------------------------------------------------
        mov di, 157h
        jmp short loc_9694
; --------------------------------------------------
        mov di, 13Fh
        jmp short loc_9694
; --------------------------------------------------
        mov di, 147h

loc_9694:
        push    di
        call    sub_966C
        pop di
        push    ax
        mov bx, ds:2088h
        inc bx
        inc bx
        mov al, [bx]
        call    sub_BF90
        cmp al, ds:0AC3h
        jnz loc_96AF
        db 81h, 0C7h, 4, 0  ; add di, 4

loc_96AF:
        pop word ptr [di+2]
        inc bx
        push    ax
        mov ax, [di]
        or  ax, ax
        jnz loc_96C1
        mov ax, ds:84Eh
        inc word ptr ds:84Eh

loc_96C1:
        push    ax
        push    di
        call    sub_9639
        pop di
        pop ax
        pop bx
        jb  locret_96E0
        mov [di], ax
        cmp bl, ds:0AC2h
        clc
        jnz locret_96E0
        db 89h, 85h, 04h, 00h    ; mov [di+4], ax (mod=10)
        inc di
        inc di
        push    word ptr [di]
        db 8Fh, 85h, 04h, 00h    ; pop word ptr [di+0004h] (mod=10)

locret_96E0:
        ret
; --------------------------------------------------
        cmp byte ptr ds:19F8h, 0
        jnz loc_9709
        push    word ptr ds:13Dh
        mov ax, ds:220h
        shl ax, 1
        shr al, 1
        and ax, 7F7Fh
        mov ds:13Dh, ax
        mov ax, ds:854h
        push    bx
        call    sub_B0B3
        pop bx
        pop word ptr ds:13Dh
        jnb loc_9709
        stc
        ret
; --------------------------------------------------

loc_9709:
        xor ax, ax
        mov bx, 14Fh
        test    word ptr ds:13Dh, 1
        jz  loc_971A
        db 81h, 0C3h, 4, 0  ; add bx, 4

loc_971A:
        cmp ds:164h, ax
        jnz loc_9727
        push    word ptr [bx+2]
        pop word ptr ds:164h

loc_9727:
        push    es
        push    ds
        pop es
        assume es:nothing
        mov ax, ds:220h
        shl ax, 1
        shr al, 1
        and ax, 7F7Fh
        mov ds:209Ah, ax
        cmp byte ptr ds:20A3h, 0
        jnz loc_9773
        call    sub_97B8
        mov ax, [bx]
        or  ax, ax
        jz  loc_9773
        push    di
        call    sub_8683
        pop di
        jb  loc_9773
        push    word ptr ds:2088h
        push    word ptr ds:2086h
        push    di
        mov ds:2088h, si
        add si, cx
        inc si
        mov ds:2086h, si
        mov byte ptr ds:20A3h, 1
        call    sub_95D1
        pop di
        pop word ptr ds:2086h
        pop word ptr ds:2088h

loc_9773:
        push    word ptr ds:2088h
        sub word ptr ds:2088h, 4
        mov bx, di
        mov di, ds:2088h
        push    word ptr [di]
        push    word ptr [di+2]
        push    word ptr [di+4]
        mov si, 2097h
        mov cx, 6
        cld
        repe movsb
        mov di, bx
        mov byte ptr ds:21Fh, 0
        call    sub_95D1
        mov bx, ds:2088h
        pop word ptr [bx+4]
        pop word ptr [bx+2]
        pop word ptr [bx]
        pop word ptr ds:2088h
        pop es
        assume es:nothing
        add ds:164h, ax
        inc word ptr ds:220h
        clc
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_97B8    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        push    di
        mov cx, 25Dh
        sub cx, 214h
        mov di, 5E8h
        mov si, 214h
        cld
        repe movsb
        pop di
        pop es
        assume es:nothing
        ret
sub_97B8    endp

; --------------------------------------------------
        db 0                    ; EVEN padding (1 byte to offset 97D0h)
        push    word ptr ds:20B1h
        inc word ptr ds:20B1h
        call    sub_97E0
        pop word ptr ds:20B1h
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_97E0    proc near
        mov ax, 73h ; 's'
        test    word ptr ds:867h, 1
        jnz loc_9852
        mov byte ptr ds:20B3h, 0
        push    word ptr ds:0C0h
        call    sub_D02B
        call    sub_5755
        pop ax
        jnb loc_9807
        mov ax, 2
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_9804:
        jmp loc_9C74
; --------------------------------------------------

loc_9807:
        push    ax
        call    sub_3457
        call    sub_419
        pop ax
        mov ds:20B8h, ax
        mov si, 548h
        mov di, 0E7h ; '?'
        push    word ptr ds:0E7h
        push    word ptr ds:0E9h
        call    loc_1939
        pop word ptr ds:0E9h
        pop word ptr ds:0E7h
        cmp word ptr ds:20B1h, 0
        jnz loc_983F
        push    word ptr ds:8C7h
        call    sub_A54E
        pop word ptr ds:8C7h
        jnb loc_985A

loc_983F:
        mov ax, ds:20B8h
        cmp ax, ds:0C0h
        jz  loc_9804
        cmp word ptr ds:272h, 0
        jz  loc_9856
        mov ax, 15h

loc_9852:
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_9856:
        inc byte ptr ds:20B3h

loc_985A:
        push    es
        push    ds
        pop es
        assume es:nothing
        mov si, 20CDh
        mov cx, 0Bh
        mov di, 14h
        cld
        repe movsb
        pop es
        assume es:nothing
        push    word ptr ds:0C0h
        pop word ptr ds:64h
        inc byte ptr ds:20B3h
        call    loc_9972

loc_9879:
        call    sub_A07B
        test    word ptr ds:867h, 1
        jnz loc_9879
        mov word ptr ds:15Fh, 3
        call    sub_D02B
        mov word ptr ds:228h, 0FFh
        mov word ptr ds:0FBh, 0FFh
        call    sub_EE6C
        clc
        ret
sub_97E0    endp

; --------------------------------------------------

loc_989E:
        dec ax
        mov dx, ax
        mov ax, 39h ; '9'
        test    word ptr ds:867h, 1
        jnz loc_98FD
        mov ds:20B3h, dl
        push    word ptr ds:8C7h
        call    sub_A54E
        cmp al, 2Bh ; '+'
        jnz loc_98C3
        call    sub_4ED
        shr bx, 1
        mov dx, bx
        inc dx

loc_98C3:
        call    sub_4ED
        pop word ptr ds:8C7h
        jnb loc_9901
        mov al, ds:20B3h
        mov si, 213Ah
        cmp al, 0FEh ; '?'
        jg  loc_9904
        mov si, 2141h
        add al, 0Ah
        jb  loc_98E2
        mov si, 2148h
        add al, 9

loc_98E2:
        sub al, 8
        neg al
        add al, 31h ; '1'
        mov [si+5], al
        jmp short loc_9904
; --------------------------------------------------
        not al
        xor ah, ah
        mov dx, 7
        mul dx
        add ax, 213Ah
        mov si, ax
        jmp short loc_9904
; --------------------------------------------------

loc_98FD:
        call    sub_CB4F

locret_9900:
        ret
; --------------------------------------------------

loc_9901:
        mov si, 870h

loc_9904:
        mov di, 21E3h
        mov ax, 2020h
        mov [di+9], ax
        mov [di+0Bh], al
        call    sub_5865
        jb  locret_9900
        mov word ptr ds:2161h, 2163h
        jmp short loc_9972
; --------------------------------------------------
        test    word ptr ds:867h, 1
        jz  loc_992C
        mov ax, 21h ; '!'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_992C:
        mov byte ptr ds:20B3h, 0
        call    sub_A6D2
        call    sub_9A05
        pushf
        mov word ptr ds:15Fh, 9
        call    sub_A6D2
        popf
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_9943    proc near
        test    word ptr ds:867h, 1
        jz  loc_996D
        mov byte ptr ds:2410h, 1
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_9991
        pop es
        assume es:nothing
        mov byte ptr ds:2410h, 0
        jnb loc_9965
        mov ax, 9Fh ; '?'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_9965:
        mov ax, 9Eh ; '?'
        call    sub_CB6A
        clc
        ret
; --------------------------------------------------

loc_996D:
        mov byte ptr ds:20B3h, 0

loc_9972:
        call    sub_A6D2
        call    sub_9A05
        pushf
        mov word ptr ds:15Fh, 6
        cmp byte ptr ds:20B3h, 0
        jle loc_998C
        mov word ptr ds:15Fh, 4

loc_998C:
        call    sub_A6D2
        popf
        ret
sub_9943    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9991    proc near
        mov ax, ds:84Ch
        mov bx, 20BAh
        call    sub_B1CA
        jnb loc_99A8
        mov ax, ds:84Ch
        mov bx, 20BAh
        call    sub_B1E2
        jnb loc_99A8
        ret
; --------------------------------------------------

loc_99A8:
        mov ax, [di+10h]
        mov dx, [di+12h]
        mov [di+21h], ax
        mov [di+23h], dx
        push    di
        push    ax
        push    dx
        mov word ptr [si+2], 78h ; 'x'
        mov di, si
        add di, [si]
        mov cx, 3Ch ; '<'
        push    ds
        push    es
        push    ds
        pop es
        assume es:nothing
        mov ds, ds:86Eh
        push    si
        mov si, 4
        cld
        call    sub_782
        pop si
        pop es
        assume es:nothing
        pop ds
        mov ax, ds:84Ch
        call    sub_B18D
        pop dx
        pop ax
        pop di
        jnb loc_99F3
        mov [di+21h], ax
        mov [di+23h], dx
        mov dx, si
        add dx, 4
        xor cx, cx
        mov ax, 2800h
        int 21h     ; DOS - RANDOM BLOCK WRITE
                    ; DS:DX -> FCB
                    ; CX = number of records to be written
                    ; if zero, truncate file to current random file position

loc_99F3:
        pushf
        mov dx, si
        add dx, 4
        mov ah, 10h
        int 21h     ; DOS - CLOSE DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h directory update successful
                    ; FFh file not found in directory
        mov ax, ds:84Ch
        call    sub_8A92
        popf
        ret
sub_9991    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9A05    proc near
        mov ax, ds:91Ch
        cmp ax, ds:910h
        jnb loc_9A11
        mov ax, ds:910h

loc_9A11:
        mov ds:2136h, ax
        mov byte ptr ds:20D8h, 0
        mov byte ptr ds:20F8h, 0Dh
        mov word ptr ds:21F1h, 0
        call    sub_9210
        cmp word ptr ds:20B1h, 0
        jz  loc_9A35
        call    sub_9B17
        call    sub_9AA0
        ret
; --------------------------------------------------

loc_9A35:
        mov byte ptr ds:20B4h, 0
        call    sub_A54E
        lahf
        shl dx, 1
        mov ds:20F9h, dx
        cmp al, 2Bh ; '+'
        jnz loc_9A7A
        mov si, 870h
        mov bx, 20C3h
        call    sub_9C42
        jb  locret_9A91
        mov bx, si
        mov ax, ds:852h
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_B1CA
        pop es
        assume es:nothing
        jb  locret_9A91
        inc byte ptr ds:20B4h
        call    sub_9CBA
        jb  locret_9A91
        mov dx, ds:20F9h
        sar dx, 1
        call    sub_4ED
        lahf
        inc bx
        inc bx
        mov ds:20F9h, bx

loc_9A7A:
        cmp byte ptr ds:20B3h, 2
        jz  loc_9A99
        mov si, 870h
        cmp byte ptr [si], 40h ; '@'
        jz  loc_9AAA
        mov bx, 20EEh
        call    sub_9C42
        jnb loc_9A92

locret_9A91:
        ret
; --------------------------------------------------

loc_9A92:
        call    sub_9ACF
        call    sub_9AA0
        ret
; --------------------------------------------------

loc_9A99:
        call    sub_9AE7
        call    sub_9AA0
        ret
sub_9A05    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9AA0    proc near
        jb  locret_9AA9
        mov ax, 5502h
        call    sub_A234
        clc

locret_9AA9:
        ret
sub_9AA0    endp

; --------------------------------------------------

loc_9AAA:
        mov ax, ds:842h
        mov bx, si
        inc bx
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_B1CA
        pop es
        assume es:nothing
        jnb loc_9ABA
        ret
; --------------------------------------------------

loc_9ABA:
        call    sub_9B9F
        mov byte ptr ds:20D8h, 1
        call    sub_9C01
        jnb loc_9A92
        ret
; --------------------------------------------------

loc_9AC8:
        mov ax, 3Bh ; ';'
        call    sub_CB4F
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_9ACF    proc near
        mov di, 2106h
        mov ax, 2020h
        mov [di+9], ax
        mov [di+0Bh], al
        call    sub_5865
        jb  loc_9AC8
        cmp byte ptr ds:20D8h, 0
        jnz sub_9AF1
sub_9ACF    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9AE7    proc near
        call    sub_9B9F
        cmp byte ptr ds:20B3h, 2
        jz  sub_9B17
sub_9AE7    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9AF1    proc near
        mov dx, 2106h
        xor bx, bx
        mov ds:2126h, bx
        mov ds:2128h, bx
        mov ds:2129h, bx
        mov ah, 0Fh
        int 21h     ; DOS - OPEN DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h file found, FFh file not found
        mov word ptr ds:2114h, 1
        or  al, al
        jz  sub_9B17
        mov ax, 1Ch
        call    sub_CB4F
        ret
sub_9AF1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9B17    proc near
        cmp byte ptr ds:20B3h, 0
        jle loc_9B2A
        or  word ptr ds:0, 8004h
        xor word ptr ds:0, 4

loc_9B2A:
        mov word ptr ds:20FDh, 1
        mov ax, ds:83Ah
        call    sub_8683
        jb  loc_9B3F
        mov di, si
        add di, cx
        dec di
        jmp short loc_9B4E
; --------------------------------------------------

loc_9B3F:
        mov ax, ds:83Ah
        mov cx, ds:2132h
        inc cx
        inc cx
        call    sub_AA3F
        jb  locret_9B96
        inc di

loc_9B4E:
        mov byte ptr [di], 1Ah
        inc di
        sub di, cx
        mov byte ptr [di], 0Ah
        mov byte ptr ds:20FFh, 0
        call    sub_A467
        jb  locret_9B96
        cmp byte ptr ds:20B3h, 0
        jge loc_9B7E
        mov dx, 21E3h
        mov bx, dx
        cmp word ptr [bx+0Eh], 80h ; '?'
        jz  loc_9B7E
        call    sub_D79E
        jb  locret_9B96
        mov word ptr [bx+0Eh], 80h ; '?'

loc_9B7E:
        mov word ptr ds:139h, 0FFFFh
        mov word ptr ds:20FBh, 1
        mov ax, ds:2130h
        mov ds:212Eh, ax
        or  word ptr ds:867h, 1

locret_9B96:
        ret
sub_9B17    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9B97    proc near
        push    si
        mov si, ax
        call    sub_769
        pop si
        ret
sub_9B97    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9B9F    proc near
        mov bx, ds:20F9h
        cmp byte ptr ds:20B3h, 0
        jge loc_9BB3
        mov dx, bx
        sar dx, 1
        call    sub_4ED
        inc bx
        inc bx

loc_9BB3:
        call    sub_CF2C
        mov ds:2102h, ax
        mov ds:2104h, ax
        mov ax, bx
        sub ax, 2
        call    sub_9B97
        cmp al, 2Dh ; '-'
        jnz loc_9BCE
        call    sub_CF2C
        mov ds:2104h, ax

loc_9BCE:
        cmp word ptr ds:2104h, 0
        jnz loc_9BDB
        mov word ptr ds:2104h, 0FFFFh

loc_9BDB:
        mov ax, bx
        call    sub_9B97
        call    sub_BF90
        cmp al, 50h ; 'P'
        jnz loc_9BF6
        cmp byte ptr ds:20B3h, 0
        jnz loc_9BF6
        mov byte ptr ds:161h, 1
        add bx, 4

loc_9BF6:
        call    sub_CF2C
        or  ax, ax
        jz  locret_9C00
        mov ds:25Dh, ax

locret_9C00:
        ret
sub_9B9F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9C01    proc near
        cld
        mov di, 20D9h
        push    es
        push    ds
        pop es
        assume es:nothing

loc_9C08:
        push    di
        mov ax, ds:842h
        mov cx, 1
        mov dx, di
        call    sub_BA16
        pop di
        jb  loc_9C34
        mov al, [di]
        cmp al, 2Eh ; '.'
        jz  loc_9C2E
        cmp al, 3Ah ; ':'
        jz  loc_9C2E
        call    sub_A9D5
        jb  loc_9C2E
        cmp di, 20D9h
        jz  loc_9C08
        jmp short loc_9C34
; --------------------------------------------------

loc_9C2E:
        inc di
        cmp byte ptr [di], 0FFh
        jnz loc_9C08

loc_9C34:
        mov ds:20F8h, al
        pop es
        assume es:nothing
        mov si, 20D9h
        cmp di, si
        clc
        jnz locret_9C41
        stc

locret_9C41:
        ret
sub_9C01    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9C42    proc near
        push    bx
        shr ah, 1
        jb  loc_9C7B
        cmp byte ptr [si], 25h ; '%'
        jz  loc_9C4F
        pop bx
        clc
        ret
; --------------------------------------------------

loc_9C4F:
        mov al, ds:871h
        call    sub_BF90
        xor ah, ah
        push    bx
        call    sub_8683
        pop bx
        jnb loc_9C66
        mov ax, 1Ah
        call    sub_CB4F
        pop si
        ret
; --------------------------------------------------

loc_9C66:
        call    sub_A5D3

loc_9C69:
        jnb loc_9C71
        mov ax, 1Bh
        call    sub_CB4F

loc_9C71:
        pop si
        ret
; --------------------------------------------------

loc_9C73:
        pop si

loc_9C74:
        mov ax, 1Dh
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_9C7B:
        test    word ptr ds:0, 4
        jnz loc_9C73
        mov si, ds:0C0h
        xor cx, cx
        test    word ptr ds:0, 20h
        jz  loc_9CA1
        mov cx, ds:66h
        mov si, ds:0Eh
        mov cx, ds:10h
        sub cx, si
        jbe loc_9C73

loc_9CA1:
        mov ax, ds:2100h
        xchg    ax, ds:15Fh
        mov ds:2100h, ax
        call    sub_A5BF
        mov ax, ds:2100h
        xchg    ax, ds:15Fh
        mov ds:2100h, ax
        jmp short loc_9C69
sub_9C42    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9CBA    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        cmp byte ptr ds:20B4h, 0
        jnz loc_9CC7

loc_9CC4:
        stc
        pop es
        assume es:nothing
        ret
; --------------------------------------------------

loc_9CC7:
        mov byte ptr ds:20B5h, 0
        mov ax, 3000h
        mov bx, ax
        inc ax
        mov ds:20B6h, ax
        add bx, 500h
        call    sub_8DED
        call    sub_9D8F
        jb  loc_9CC4
        jnb loc_9CEB

loc_9CE3:
        call    sub_9D98
        jnb loc_9CEB
        jmp loc_9D89
; --------------------------------------------------

loc_9CEB:
        cld
        cmp byte ptr ds:20B5h, 0
        jnz loc_9D0B
        inc byte ptr ds:20B5h
        push    cx
        push    si
        mov di, 928h
        xchg    si, di
        lodsw
        mov cx, ax
        repe cmpsb
        jnz loc_9D09
        inc byte ptr ds:20B5h

loc_9D09:
        pop si
        pop cx

loc_9D0B:
        mov bp, si

loc_9D0D:
        push    cx
        push    si
        mov di, 910h
        mov ds:2138h, di
        xchg    si, di
        lodsw
        mov cx, ax
        repe cmpsb
        jz  loc_9D2D
        pop di
        push    di
        mov si, 91Ch
        mov ds:2138h, si
        lodsw
        mov cx, ax
        repe cmpsb

loc_9D2D:
        pop si
        pop cx
        mov dl, ds:20B5h
        jz  loc_9D3A
        inc si
        loop    loc_9D0D
        jmp short loc_9D3F
; --------------------------------------------------

loc_9D3A:
        mov byte ptr ds:20B5h, 0

loc_9D3F:
        mov ax, si
        sub ax, bx
        sub ax, [bx]
        mov [bx+2], ax
        xchg    si, bx
        cmp dl, 2
        jz  loc_9D73
        sub bx, bp
        mov cx, bx
        push    si
        push    bp
        push    cx
        mov ax, ds:20B6h
        call    sub_8F07
        pop cx
        pop si
        pop bx
        jb  loc_9D8A
        sub di, cx
        cld
        repe movsb
        mov si, bx
        cmp byte ptr ds:20B5h, 0
        jnz loc_9D8C
        inc word ptr ds:20B6h

loc_9D73:
        cmp byte ptr ds:20B5h, 0
        jnz loc_9D8C
        mov di, ds:2138h
        mov ax, [di]
        add [si+2], ax
        cmp di, 910h
        jnz loc_9D8C

loc_9D89:
        clc

loc_9D8A:
        pop es
        ret
; --------------------------------------------------

loc_9D8C:
        jmp loc_9CE3
sub_9CBA    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9D8F    proc near
        mov ax, ds:852h
        call    sub_8683
        jnb sub_9D98
        ret
sub_9D8F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9D98    proc near
        mov cx, 200h
        sub cx, [si+2]
        jz  loc_9DAE
        jb  loc_9DC7
        sub cx, ds:2136h
        ja  loc_9DC9
        add cx, ds:2136h
        neg cx

loc_9DAE:
        add cx, 200h
        call    sub_BA70
        or  al, al
        jnz loc_9DC7
        cmp word ptr [si+2], 0
        jz  sub_9D98
        mov word ptr ds:2136h, 0
        jmp short sub_9D98
; --------------------------------------------------

loc_9DC7:
        stc
        ret
; --------------------------------------------------

loc_9DC9:
        mov bx, si
        add si, [si]
        add si, [bx+2]
        clc
        ret
sub_9D98    endp

; --------------------------------------------------
        test    word ptr ds:867h, 1
        jnz loc_9DDB
        ret
; --------------------------------------------------

loc_9DDB:
        jmp loc_9EDF
; --------------------------------------------------

loc_9DDE:
        mov dx, 2106h
        call    sub_9FFB
        cmp byte ptr ds:20D8h, 0
        jz  loc_9DF2
        cmp byte ptr ds:20F8h, 0Dh
        jnz loc_9E53

loc_9DF2:
        mov ax, ds:854h
        mov cx, 0Ah

loc_9DF8:
        push    cx
        push    ax
        call    sub_9FE7
        pop ax
        pop cx
        inc ax
        loop    loc_9DF8
        mov byte ptr ds:20F8h, 0Dh
        mov cx, 6
        mov si, 13Fh

loc_9E0D:
        cld
        lodsw
        mov word ptr [si-2], 0
        push    cx
        push    si
        call    sub_8A92
        pop si
        pop cx
        mov word ptr [si], 0
        inc si
        inc si
        loop    loc_9E0D
        mov ax, ds:83Ah
        call    sub_8A92
        mov ax, ds:83Ch
        call    sub_8A92
        mov ax, ds:83Eh
        call    sub_8A92
        mov ax, ds:840h
        call    sub_8A92

loc_9E3B:
        mov ax, ds:84Eh
        dec word ptr ds:84Eh
        call    sub_8A92
        cmp word ptr ds:84Eh, 190h
        jnb loc_9E3B
        mov word ptr ds:84Eh, 190h

loc_9E53:
        cmp byte ptr ds:20B4h, 0
        jnz loc_9E64
        cmp byte ptr ds:20D8h, 0
        jnz loc_9E64
        jmp loc_9EF9
; --------------------------------------------------

loc_9E64:
        call    sub_A6D2
        push    word ptr ds:139h
        push    word ptr ds:15Fh
        cmp byte ptr ds:20F8h, 0Dh
        jnz loc_9E81
        push    word ptr ds:161h
        call    sub_9210
        pop ax
        mov ds:161h, al

loc_9E81:
        push    word ptr ds:20F8h
        cmp byte ptr ds:20D8h, 0
        jnz loc_9E96
        call    sub_9CBA
        jb  loc_9E9E
        call    sub_9AF1
        jmp short loc_9E9E
; --------------------------------------------------

loc_9E96:
        call    sub_9C01
        jb  loc_9E9E
        call    sub_9ACF

loc_9E9E:
        pop ax
        pop word ptr ds:15Fh
        pop word ptr ds:139h
        pushf
        cmp al, 0Dh
        jnz loc_9EBD
        or  word ptr ds:162h, 1
        cmp word ptr ds:139h, 0
        jnz loc_9EBD
        inc word ptr ds:13Dh

loc_9EBD:
        call    sub_A6D2
        popf
        jnb loc_9EF7
        cmp byte ptr ds:20D8h, 0
        jz  loc_9EDF
        call    sub_9CBA
        jb  loc_9EDF
        mov ax, ds:842h
        mov byte ptr ds:20F8h, 0Dh
        call    sub_BAD1
        jb  loc_9EDF
        jmp loc_9DF2
; --------------------------------------------------

loc_9EDF:
        mov ax, ds:842h
        call    sub_8A92
        mov byte ptr ds:20F8h, 0Dh
        mov byte ptr ds:20D8h, 0
        mov byte ptr ds:20B4h, 0
        jmp loc_9DDE
; --------------------------------------------------

loc_9EF7:
        pop ax
        ret
; --------------------------------------------------

loc_9EF9:
        mov ax, 5503h
        call    sub_A234
        call    sub_A008
        call    sub_A032
        xor word ptr ds:867h, 1
        mov ax, ds:84Ch
        mov bx, 20BAh
        mov byte ptr ds:2410h, 1
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_B1CA
        pop es
        assume es:nothing
        mov byte ptr ds:2410h, 0
        jb  loc_9EF7
        cmp word ptr [di+12h], 0
        jnz loc_9F33
        cmp word ptr [di+10h], 78h ; 'x'
        jnb loc_9F33
        jmp loc_9FD4
; --------------------------------------------------

loc_9F33:
        push    ds
        mov ax, seg seg001
        mov ds, ax
        assume ds:seg001
        mov dx, 4
        mov ax, 1A00h
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        pop ds
        assume ds:nothing
        mov dx, di
        mov cx, 78h ; 'x'
        mov ah, 27h
        int 21h     ; DOS - RANDOM BLOCK READ
                    ; DS:DX -> FCB
                    ; CX = number of records to be read
        or  al, al
        jz  loc_9F52
        jmp short loc_9FCE
; --------------------------------------------------
        db 90h              ; EVEN -> loc_9F52 (1 byte NOP)
loc_9F52:
        mov dx, si
        add dx, [si]
        mov ax, 1A00h
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer

loc_9F5B:
        mov dx, di
        mov cx, 200h
        mov ah, 27h
        int 21h     ; DOS - RANDOM BLOCK READ
                    ; DS:DX -> FCB
                    ; CX = number of records to be read
        or  cx, cx
        jz  loc_9F87
        push    word ptr [di+21h]
        push    word ptr [di+23h]
        add cx, 78h ; 'x'
        sub [di+21h], cx
        sbb word ptr [di+23h], 0
        mov ah, 28h ; '('
        sub cx, 78h ; 'x'
        int 21h     ; DOS - RANDOM BLOCK WRITE
                    ; DS:DX -> FCB
                    ; CX = number of records to be written
                    ; if zero, truncate file to current random file position
        pop word ptr [di+23h]
        pop word ptr [di+21h]
        jmp short loc_9F5B
; --------------------------------------------------

loc_9F87:
        push    es
        mov ax, seg seg001
        mov es, ax
        assume es:seg001
        mov si, 4
        cld
        push    ds
        push    es
        pop ds
        assume ds:seg001

loc_9F94:
        lodsw
        cmp al, 20h ; ' '
        jnz loc_9F94
        sub si, 6
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        shr si, 1
        add si, 870h
        mov ds:8C7h, si
        sub word ptr [di+21h], 78h ; 'x'
        sbb word ptr [di+23h], 0
        mov dx, di
        xor cx, cx
        mov ax, 2800h
        int 21h     ; DOS - RANDOM BLOCK WRITE
                    ; DS:DX -> FCB
                    ; CX = number of records to be written
                    ; if zero, truncate file to current random file position
        mov ah, 10h
        mov dx, di
        int 21h     ; DOS - CLOSE DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h directory update successful
                    ; FFh file not found in directory
        mov byte ptr ds:20B0h, 1
        call    sub_9943
        mov byte ptr ds:20B0h, 0
        jmp short loc_9FDE
; --------------------------------------------------

loc_9FCE:
        mov ax, 0A0h ; '?'
        call    sub_CB4F

loc_9FD4:
        mov ah, 10h
        mov dx, di
        int 21h     ; DOS - CLOSE DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h directory update successful
                    ; FFh file not found in directory
        mov ah, 13h
        int 21h     ; DOS - DELETE FILE via FCB
                    ; DS:DX -> FCB with filename field filled with
                    ; template for  deletion ('?' wildcard allowed, but not '*')
                    ; Return: AL = 00h file found, FFh file not found

loc_9FDE:
        mov ax, ds:84Ch
        call    sub_8A92
        jmp loc_9EF7

; ---------- S U B  R O U T I N E --------------------------


sub_9FE7    proc near
        push    ax
        call    sub_B317
        jb  loc_9FF6
        mov dx, si
        add dx, 4
        mov ah, 13h
        int 21h     ; DOS - DELETE FILE via FCB
                    ; DS:DX -> FCB with filename field filled with
                    ; template for  deletion ('?' wildcard allowed, but not '*')
                    ; Return: AL = 00h file found, FFh file not found

loc_9FF6:
        pop ax
        call    sub_8A92
        ret
sub_9FE7    endp


; ---------- S U B  R O U T I N E --------------------------


sub_9FFB    proc near
        cmp byte ptr ds:20B3h, 0
        jg  locret_A007
sub_9FFB    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A002    proc near
        mov ah, 10h
        call    sub_588E

locret_A007:
        ret
sub_A002    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A008    proc near
        cmp byte ptr ds:20B3h, 0
        jl  loc_A010
        ret
; --------------------------------------------------

loc_A010:
        mov al, 1Ah
        call    sub_A430
        xor ax, ax
        mov cx, ds:21F1h

loc_A01B:
        push    cx
        call    sub_A430
        pop cx
        loop    loc_A01B
        mov dx, 21E3h
        mov ah, 10h
        int 21h     ; DOS - CLOSE DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h directory update successful
                    ; FFh file not found in directory
        pushf
        mov ax, 4Ah ; 'J'
        call    sub_CB6A
        popf
        ret
sub_A008    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A032    proc near
        mov ax, 3000h
        mov bx, ax
        add bx, 500h
        call    sub_8DED
        mov ax, ds:852h
        call    sub_8683
        jb  locret_A056
        mov dx, si
        add dx, 4
        mov ax, 1000h
        int 21h     ; DOS - CLOSE DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h directory update successful
                    ; FFh file not found in directory
        mov ax, ds:852h
        call    sub_8A92

locret_A056:
        ret
sub_A032    endp

; --------------------------------------------------
        db 9 dup(0)         ; CALIGN 10h -> loc_A060 (9 bytes 00)
loc_A060:
        cmp byte ptr ds:2152h, 0
        jnz loc_A075
        or  ah, ah
        jz  loc_A075
        inc byte ptr ds:2152h
        mov ax, 1Fh
        call    sub_CB4F

loc_A075:
        jmp loc_A14C
; --------------------------------------------------

loc_A078:
        jmp locret_A14D

; ---------- S U B  R O U T I N E --------------------------


sub_A07B    proc near
        test    word ptr ds:867h, 1
        jz  loc_A078
        push    ax
        cmp byte ptr ds:20B3h, 0
        jg  loc_A0B6
        jnz loc_A092
        call    sub_791
        jb  loc_A060

loc_A092:
                    ; sub_A07B+189j
        mov byte ptr ds:2152h, 0
        mov si, ds:212Eh
        cmp si, ds:2130h
        jnb loc_A0B6
        mov cx, ds:480h
        cmp cx, ds:2102h
        jnb loc_A0B9
        mov cx, ds:2130h
        mov ds:212Eh, cx
        jmp loc_A14C
; --------------------------------------------------

loc_A0B6:
        jmp loc_A151
; --------------------------------------------------

loc_A0B9:
        cmp cx, ds:2104h
        jbe loc_A0C2
        jmp loc_9DDE
; --------------------------------------------------

loc_A0C2:
        cld
        lodsw
        mov ds:212Eh, si
        mov cx, ds:90Bh
        or  cx, cx
        jz  loc_A0E1
        mov si, 903h

loc_A0D3:
        cmp [si], ah
        jz  loc_A0DC
        inc si
        loop    loc_A0D3
        jmp short loc_A0E1
; --------------------------------------------------

loc_A0DC:
        mov al, 20h ; ' '
        jmp short loc_A13C
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_A0E1:
        cmp word ptr ds:860h, 0
        jz  loc_A13C
        push    ax
        call    sub_A257
        mov ax, ds:860h
        call    sub_8683
        pop ax
        jb  loc_A134
        mov dx, ax
        mov bx, si
        xor ah, ah
        shl ax, 1
        add bx, ax
        mov ax, [bx]
        add si, ax
        cmp ax, 200h
        mov ah, dh
        jb  loc_A13F
        mov al, 20h ; ' '
        cmp byte ptr ds:2153h, 2
        jz  loc_A13F
        cld
        lodsw
        mov cx, ax
        dec cx
        dec cx

loc_A119:
        cld
        lodsb
        push    cx
        push    si
        push    dx
        mov ah, dh
        call    sub_A2A1
        pop dx
        pop si
        pop cx
        jb  loc_A14E
        sub cx, 1
        jg  loc_A119
        call    sub_A2BF
        jb  loc_A14E
        jmp short loc_A147
; --------------------------------------------------

loc_A134:
        mov word ptr ds:860h, 0
        jmp short loc_A13F
; --------------------------------------------------

loc_A13C:
        call    sub_A257

loc_A13F:
        call    sub_A2A1
        jb  loc_A14E
        call    sub_A2BF

loc_A147:
        call    sub_A715
        jb  loc_A14E

loc_A14C:
        pop ax

locret_A14D:
        ret
; --------------------------------------------------

loc_A14E:
        jmp loc_9DDE
; --------------------------------------------------

loc_A151:
                    ; sub_A07B+185j ...
        call    sub_A6D2
        call    sub_92A4
        mov ds:2130h, di
        jb  loc_A1B1
        pushf
        mov ax, ds:170h
        test    ax, ax
        jz  loc_A1B0
        mov cx, di
        sub cx, 1E61h
        sar cx, 1
        cmp cx, 1
        jnz loc_A179
        cmp byte ptr ds:1E61h, 0Ch
        jz  loc_A1B0

loc_A179:
        cmp byte ptr ds:20B3h, 0
        jle loc_A187
        cmp word ptr ds:139h, 0
        jz  loc_A1B0

loc_A187:
        push    es
        push    ds
        pop es
        assume es:nothing
        inc cx
        mov si, di
        shl ax, 1
        add di, ax
        add ds:1A08h, ax
        add ds:2067h, ax
        shr ax, 1
        mov ds:2130h, di
        push    di
        std
        repe movsw
        mov cx, ax
        mov ax, 20h ; ' '
        mov ah, ds:0DAFh
        repe stosw
        pop di
        pop es
        assume es:nothing

loc_A1B0:
        popf

loc_A1B1:
        pushf
        push    word ptr ds:1A08h
        pop word ptr ds:2150h
        call    sub_A6D2
        popf
        mov word ptr ds:212Eh, 1E61h
        jb  loc_A14E
        cmp byte ptr ds:20B3h, 0
        jle loc_A203
        mov bp, ds:480h
        cmp bp, ds:2104h
        ja  loc_A1EB
        cmp bp, ds:2102h
        jb  loc_A231
        mov si, 1E61h
        mov bp, di

loc_A1E2:
        mov di, 1E61h
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        jmp short loc_A1F6
; --------------------------------------------------

loc_A1EB:
        jmp loc_9DDE
; --------------------------------------------------

loc_A1EE:
        lodsw
        cmp ah, ds:2154h
        jnz loc_A207
        stosb

loc_A1F6:
        cmp si, bp
        jb  loc_A1EE
        pop es
        assume es:nothing
        call    sub_A3EA
        jb  loc_A22E
        jmp loc_A151
; --------------------------------------------------

loc_A203:
        clc
        jmp loc_A092
; --------------------------------------------------

loc_A207:
        pop es
        dec si
        dec si
        mov al, ah
        push    ax
        call    sub_A3EA
        pop ax
        jb  loc_A22E
        mov ds:2154h, ah
        push    si
        push    bp
        or  word ptr ds:0, 1000h
        call    sub_3130
        xor word ptr ds:0, 1000h
        pop bp
        pop si
        jb  loc_A22E
        jmp short loc_A1E2
; --------------------------------------------------

loc_A22E:
                    ; sub_A07B+196j ...
        jmp loc_A14E
; --------------------------------------------------

loc_A231:
        jmp loc_A151
sub_A07B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A234    proc near
        call    sub_8683
        jb  locret_A250
        cld

loc_A23A:
        dec cx
        clc
        jl  locret_A250
        lodsb
        push    cx
        push    si
        inc byte ptr ds:2160h
        call    sub_A2D4
        dec byte ptr ds:2160h
        pop si
        pop cx
        jnb loc_A23A

locret_A250:
        ret
sub_A234    endp

; --------------------------------------------------
        jmp loc_A394
; --------------------------------------------------
        jmp loc_A396

; ---------- S U B  R O U T I N E --------------------------


sub_A257    proc near
        cmp ah, ds:2154h
        jz  loc_A28E
        push    ax
        mov al, ds:2154h
        xor ah, ah
        add ax, 100h
        call    sub_A3B2
        pop ax
        jb  locret_A2A0
        push    ax
        mov al, ah
        xor ah, ah
        mov ds:2154h, al
        call    sub_A3B2
        pop ax
        jb  locret_A2A0
        push    ax
        mov ax, 200h
        call    sub_A3A1
        mov ds:2155h, ax
        mov ax, 300h
        call    sub_A3A1
        mov ds:2157h, ax
        pop ax

loc_A28E:
        cmp word ptr ds:2157h, 0
        jz  locret_A2A0
        push    ax
        mov ax, ds:2157h
        add ax, 5000h
        call    sub_A234
        pop ax

locret_A2A0:
        ret
sub_A257    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A2A1    proc near
        cmp byte ptr ds:901h, 0
        jnz loc_A2BB
        cmp byte ptr ds:2153h, 2
        jnz loc_A2BB
        cmp word ptr ds:2155h, 0
        jz  loc_A2BB
        call    sub_A2CD
        jmp short locret_A2BE
; --------------------------------------------------

loc_A2BB:
        call    sub_A2D4

locret_A2BE:
        ret
sub_A2A1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A2BF    proc near
        cmp word ptr ds:2155h, 0
        jz  locret_A2CC
        mov ax, ds:2155h
        call    sub_A3B2

locret_A2CC:
        ret
sub_A2BF    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A2CD    proc near
        mov byte ptr ds:2159h, 1
        jmp short loc_A2D9
sub_A2CD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A2D4    proc near
        mov byte ptr ds:2159h, 0

loc_A2D9:
        cmp byte ptr ds:215Ah, 1
        jb  loc_A30A
        jz  loc_A2EF
        call    sub_16A7
        mov ds:215Bh, al
        dec byte ptr ds:215Ah
        cmp ax, ax
        ret
; --------------------------------------------------

loc_A2EF:
        call    sub_16A7
        xchg    al, ds:215Bh
        shl al, 1
        shl al, 1
        shl al, 1
        shl al, 1
        add al, ds:215Bh
        dec byte ptr ds:215Ah
        xor ah, ah
        jmp short loc_A319
; --------------------------------------------------

loc_A30A:
        xor ah, ah
        cmp ax, 0FFh
        jnz loc_A319
        mov byte ptr ds:215Ah, 2

loc_A316:
        cmp ax, ax
        ret
; --------------------------------------------------

loc_A319:
        mov dx, ds:215Ch
        mov ds:215Ch, ax
        cmp byte ptr ds:901h, 0
        jnz loc_A377
        cmp byte ptr ds:2153h, 1
        jb  loc_A36D
        jz  loc_A34C
        cmp dl, 8
        jz  loc_A377
        cmp al, 0Dh
        jz  sub_A37E
        cmp al, 0Ah
        jz  sub_A37E
        cmp al, 8
        jz  loc_A375
        cmp byte ptr ds:2160h, 0
        jnz loc_A377
        mov al, 20h ; ' '
        jmp short loc_A377
; --------------------------------------------------

loc_A34C:
        cmp al, 8
        jz  loc_A375
        cmp dl, 8
        jz  loc_A375
        cmp al, 0Ah
        jnz loc_A377
        cmp byte ptr ds:2153h, 2
        jnb loc_A377
        inc byte ptr ds:2153h
        mov dx, 1E61h
        mov ds:212Eh, dx
        jmp short loc_A316
; --------------------------------------------------

loc_A36D:
        cmp al, 8
        jnz loc_A377
        inc byte ptr ds:2153h

loc_A375:
        jmp short loc_A396
; --------------------------------------------------

loc_A377:
        cmp byte ptr ds:2159h, 0
        jnz loc_A396
sub_A2D4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A37E    proc near
        xor dx, dx
        xor ah, ah
        cmp byte ptr ds:20B3h, 0
        jnz loc_A39B
        call    sub_796
        jnb loc_A396
        mov ax, 1Fh
        call    sub_CB4F

loc_A394:
        stc
        ret
; --------------------------------------------------

loc_A396:
        cmp sp, 0
        clc
        ret
; --------------------------------------------------

loc_A39B:
        call    sub_A422
        jnb loc_A396
        ret
sub_A37E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A3A1    proc near
        add al, ds:2154h
        push    ax
        add ax, 5000h
        call    sub_8683
        pop ax
        jnb locret_A3B1
        xor ax, ax

locret_A3B1:
        ret
sub_A3A1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A3B2    proc near
        add ax, 5000h
        call    sub_8683
        jb  loc_A396
        push    word ptr ds:215Ch
        pop word ptr ds:215Eh
        or  cx, cx
        jz  loc_A396

loc_A3C6:
        cld
        lodsb
        cmp al, 20h ; ' '
        jnz loc_A3D6
        cmp byte ptr ds:215Ch, 8
        jnz loc_A3D6
        mov al, ds:215Eh

loc_A3D6:
        push    si
        push    cx
        inc byte ptr ds:2160h
        call    sub_A2D4
        dec byte ptr ds:2160h
        pop cx
        pop si
        jb  locret_A3E9
        loop    loc_A3C6

locret_A3E9:
        ret
sub_A3B2    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A3EA    proc near
                    ; sub_A07B+192p
        push    word ptr ds:0C2h
        pop word ptr ds:64h
        push    si
        push    bp
        push    word ptr [di]
        push    di
        mov si, 1E61h
        mov word ptr [di], 0
        mov cx, di
        sub cx, si
        jbe loc_A41B
        mov byte ptr ds:2411h, 1
        call    sub_847F
        mov byte ptr ds:2411h, 0
        jb  loc_A41C
        cmp byte ptr ds:8FAh, 0
        stc
        jnz loc_A41C

loc_A41B:
        clc

loc_A41C:
        pop di
        pop word ptr [di]
        pop bp
        pop si
        ret
sub_A3EA    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A422    proc near
        cmp word ptr ds:4AFh, 0
        jnz sub_A430
        cmp byte ptr ds:20B3h, 0FFh
        jl  loc_A45F
sub_A422    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A430    proc near
        mov si, ds:2161h
        cmp si, 21E3h
        jb  loc_A459
        push    ax
        mov dx, 2163h
        mov ds:2161h, dx
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        mov dx, 21E3h
        mov ah, 15h
        int 21h     ; DOS - SEQUENTIAL DISK RECORD WRITE
                    ; DS:DX -> FCB
        or  al, al
        pop ax
        jz  sub_A422
        mov ax, 3Ah ; ':'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_A459:
        mov [si], al
        inc word ptr ds:2161h

loc_A45F:
        clc
        ret
sub_A430    endp

; --------------------------------------------------

loc_A461:
        jmp loc_A509
; --------------------------------------------------

loc_A464:
        jmp loc_A549

; ---------- S U B  R O U T I N E --------------------------


sub_A467    proc near
        cmp byte ptr ds:20FFh, 0
        jnz loc_A461
        mov ax, ds:83Ah
        call    sub_8683
        jb  loc_A461
        mov dx, ds:20FDh
        sub cx, 85h ; '?'
        mov ax, cx
        sub ax, 80h ; '?'
        cmp ax, dx
        jnb loc_A49D
        add cx, 85h ; '?'
        jmp short loc_A49D
; --------------------------------------------------

loc_A48D:
        mov ax, ds:83Ah
        call    sub_8683
        jb  loc_A509
        mov dx, ds:20FDh
        sub cx, 85h ; '?'

loc_A49D:
        mov di, si
        add di, dx
        cmp byte ptr ds:20B3h, 2
        jnz loc_A50B
        mov si, ds:326h
        sub cx, dx
        jbe loc_A464
        cmp cx, 5
        jb  loc_A464
        mov ax, si
        add ax, cx
        cmp ax, ds:2CAh
        jb  loc_A4E4
        push    di
        call    sub_5AD4
        call    sub_D4E9
        pushf
        call    sub_5AD4
        popf
        pop di
        jnb loc_A48D
        mov si, ds:326h
        mov cx, ds:2CAh
        sub cx, si
        ja  loc_A4E4
        mov si, 22C4h
        mov cx, 3
        inc byte ptr ds:20FFh

loc_A4E4:
        push    cx
        push    si
        push    cx
        push    di
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        repe movsb
        pop es
        assume es:nothing
        pop si
        pop cx
        add cx, si
        call    sub_73F0
        pop si
        pop cx
        add si, cx
        cmp byte ptr ds:20FFh, 0
        jnz loc_A509
        mov ds:326h, si
        add ds:20FDh, cx

loc_A509:
        clc
        ret
; --------------------------------------------------

loc_A50B:
        sub cx, 80h ; '?'
        add cx, si
        add dx, si
        cmp dx, cx
        ja  loc_A549
        push    dx
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        mov dx, 2106h
        mov cx, 80h ; '?'
        mov ah, 27h
        int 21h     ; DOS - RANDOM BLOCK READ
                    ; DS:DX -> FCB
                    ; CX = number of records to be read
        pop dx
        add ds:20FDh, cx
        cmp cx, 80h ; '?'
        jnb loc_A54B
        mov bx, dx
        add bx, cx
        mov byte ptr [bx], 0Dh
        mov byte ptr [bx+1], 0Ah
        mov byte ptr [bx+2], 1Ah
        add word ptr ds:20FDh, 3
        inc byte ptr ds:20FFh

loc_A549:
        clc
        ret
; --------------------------------------------------

loc_A54B:
        jmp loc_A48D
sub_A467    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A54E    proc near
        mov ax, ds:8C7h
        sub ax, 870h
        add ax, 3
        test    word ptr ds:0, 200h
        jz  loc_A5B0
        test    word ptr ds:0, 1
        jnz loc_A5B0
        test    word ptr ds:0, 4000h
        jnz loc_A5B0
        push    ax
        mov ax, ds:0C2h
        call    sub_2B87
        mov bx, ax
        mov si, 870h
        mov cx, 0Eh

loc_A57E:
        mov al, [bx]
        inc bx
        cmp al, 20h ; ' '
        jnz loc_A58D
        mov al, 2Eh ; '.'
        cmp al, [si-1]
        jnz loc_A58D
        dec si

loc_A58D:
        mov [si], al
        inc si
        loop    loc_A57E
        cmp byte ptr [si-1], 2Eh ; '.'
        jnz loc_A599
        dec si

loc_A599:
        mov byte ptr [si], 0
        mov ds:8C7h, si
        mov ax, 2DDBh
        cmp ax, ds:8FDh
        jnz loc_A5AC
        call    sub_8A0C

loc_A5AC:
        pop bx
        clc
        jmp short loc_A5BC
; --------------------------------------------------

loc_A5B0:
        mov dl, al
        xor dh, dh
        call    sub_4ED
        pushf
        sar bx, 1
        inc bx
        popf

loc_A5BC:
        mov dx, bx
        ret
sub_A54E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A5BF    proc near
        push    bx
        push    cx
        call    sub_A6D2
        pop cx
        pop bx
        call    sub_A5D3
        push    bx
        push    cx
        pushf
        call    sub_A6D2
        popf
        pop cx
        pop bx
        ret
sub_A5BF    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A5D3    proc near
        push    si
        push    cx
        mov si, bx
        mov di, 220Bh
        or  cx, cx
        jnz loc_A601
        push    word ptr ds:979h
        mov word ptr ds:979h, 0
        call    sub_34D7
        pop word ptr ds:979h
        pushf
        cmp word ptr ds:15Fh, 2
        jnz loc_A5FA
        call    sub_D02B

loc_A5FA:
        call    sub_BD6E
        popf

loc_A5FE:
        pop cx
        pop si
        ret
; --------------------------------------------------

loc_A601:
        call    sub_5865
        jb  loc_A5FE
        mov dx, 220Bh
        xor bx, bx
        mov ds:222Bh, bx
        mov ds:222Dh, bx
        mov ds:222Eh, bx
        mov ah, 16h
        int 21h     ; DOS - CREATE A DISK FILE
                    ; DS:DX -> FCB
        pop cx
        pop si
        push    si
        push    cx
        add cx, si
        call    sub_73F0
        pop cx
        pop si
        push    si
        push    cx
        call    sub_A63B
        pop cx
        pop si
        push    si
        push    cx
        pushf
        add cx, si
        call    sub_7368
        popf
        pop cx
        pop si
        ret
sub_A5D3    endp

; --------------------------------------------------

loc_A639:
        pop cx
        pop si

; ---------- S U B  R O U T I N E --------------------------


sub_A63B    proc near
        cmp cx, ds:2219h
        jb  loc_A661
        mov dx, si
        add si, ds:2219h
        sub cx, ds:2219h
        push    si
        push    cx
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        mov dx, 220Bh
        mov ah, 15h
        call    sub_588E
        jnb loc_A639
        call    sub_A002
        stc
        jmp short loc_A696
; --------------------------------------------------

loc_A661:
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, 2233h
        push    cx
        cld
        repe movsb
        mov al, 1Ah
        stosb
        pop ax
        mov cx, ds:2219h
        sub cx, ax
        xor al, al
        dec cx
        jle loc_A67C
        repe stosb

loc_A67C:
        pop es
        assume es:nothing
        mov dx, 2233h
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        mov dx, 220Bh
        mov ah, 15h
        call    sub_588E
        call    sub_A002
        ret
; --------------------------------------------------
        mov ax, 1Eh
        call    sub_CB4F

loc_A696:
        pop cx
        pop si
        ret
sub_A63B    endp ; sp =  4


; ---------- S U B  R O U T I N E --------------------------


sub_A699    proc near
        mov bx, 598h
        push    si
        push    di
        push    word ptr ds:220h
        mov cx, 25Ah
        sub cx, 214h
        mov al, ds:218h
        mov ah, ds:21Dh
        push    ax
        call    sub_A707
        pop ax
        mov ds:218h, al
        mov ds:21Dh, ah
        pop word ptr ds:220h
        pop di
        pop si
        ret
sub_A699    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A6C3    proc near
                    ; sub_7429+1ABp
        push    si
        push    di
        mov cx, 25Ah
        sub cx, 214h
        call    sub_A707
        pop di
        pop si
        ret
sub_A6C3    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A6D2    proc near
        mov bx, 42Ah
        push    si
        push    di
        push    es
        push    ds
        pop es
        assume es:nothing
        push    word ptr ds:15Fh
        pop word ptr ds:2100h
        call    sub_A704
        cmp bx, 4B9h
        jnb loc_A700
        mov cx, 4B9h
        sub cx, 42Ah
        mov si, 50h ; 'P'
        sub cx, si
        add si, 0E7h ; '?'
        mov di, si
        call    sub_A70D

loc_A700:
        pop es
        assume es:nothing
        pop di
        pop si
        ret
sub_A6D2    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A704    proc near
        mov cx, 50h ; 'P'
sub_A704    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A707    proc near
        cld
        mov si, 214h
        mov di, si
sub_A707    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A70D    proc near
        lodsb
        xchg    al, [bx]
        stosb
        inc bx
        loop    sub_A70D
        ret
sub_A70D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A715    proc near
                    ; sub_A715+135j
        cmp byte ptr ds:2081h, 0
        jz  loc_A737
        cmp byte ptr ds:2066h, 0
        jnz loc_A737
        mov si, ds:212Eh
        dec si
        dec si
        cmp si, ds:2067h
        jnb loc_A737
        cmp si, ds:2150h
        ja  loc_A739
        jz  loc_A73C

loc_A737:
        clc
        ret
; --------------------------------------------------

loc_A739:
        jmp loc_A84D
; --------------------------------------------------

loc_A73C:
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, 22B3h
        xor ax, ax
        mov cx, 8
        cld
        repe stosw
        pop es
        assume es:nothing
        mov cx, ds:2067h
        xor dx, dx
        xor bx, bx
        mov ds:22C3h, bl
        sub cx, si
        shr cx, 1
        cld

loc_A75C:
        lodsw
        cmp ah, ds:0DADh
        jnz loc_A770
        cmp byte ptr ds:93Eh, 0
        jnz loc_A770
        mov ds:22C3h, ah
        jmp short loc_A778
; --------------------------------------------------

loc_A770:
        cmp al, 20h ; ' '
        jz  loc_A777
        inc dx
        jmp short loc_A778
; --------------------------------------------------

loc_A777:
        inc bx

loc_A778:
        loop    loc_A75C
        sub dx, 1
        ja  loc_A782
        mov dx, 1

loc_A782:
        or  bx, bx
        jnz loc_A787
        inc bx

loc_A787:
        mov ax, ds:2067h
        sub ax, 1E61h
        shr ax, 1
        neg ax
        add ax, ds:2082h
        add ax, ds:4B3h
        mov cx, dx
        mul word ptr ds:936h
        mov bp, ax
        mov ax, bx
        mul word ptr ds:938h
        sub bp, ax
        jbe loc_A7CE
        push    ax
        mov ax, bx
        mul word ptr ds:93Ah
        mov si, ax
        mul bp
        add si, cx
        div si
        pop si
        sub bp, ax
        add ax, si
        xchg    ax, bp
        xchg    bx, cx
        mov si, 22BBh
        call    sub_A8EB
        xchg    bx, cx
        mov ax, bp
        jmp short loc_A7D0
; --------------------------------------------------

loc_A7CE:
        add ax, bp

loc_A7D0:
        mov si, 22B3h
        call    sub_A8EB
        mov ax, ds:93Ch
        cmp ax, 1
        jb  loc_A842
        cmp word ptr ds:936h, 1
        jz  loc_A842
        push    ax
        mov ax, ds:84Ah
        call    sub_8683
        pop ax
        jb  loc_A844
        add si, [si]
        cmp ax, 1
        ja  loc_A80B
        cmp byte ptr ds:22C3h, 0
        jz  loc_A842
        mov ax, ds:22B3h
        cmp ax, ds:22BBh
        jb  loc_A828
        mov ax, ds:22BBh
        jmp short loc_A828
; --------------------------------------------------

loc_A80B:
        mov ax, ds:22B3h
        cmp word ptr ds:22B5h, 0
        jz  loc_A816
        inc ax

loc_A816:
        mov bx, ds:22BBh
        cmp word ptr ds:22BDh, 0
        jz  loc_A822
        inc bx

loc_A822:
        cmp ax, bx
        ja  loc_A828
        mov ax, bx

loc_A828:
        shl ax, 1
        mov bx, ax
        add bx, si
        mov cx, [bx+2]
        sub cx, [bx]
        add si, [bx]
        push    ax
        call    sub_A906
        pop ax
        sub ds:22B3h, ax
        sub ds:22BBh, ax

loc_A842:
        jmp short loc_A84D
; --------------------------------------------------

loc_A844:
        mov word ptr ds:936h, 1
        jmp sub_A715
; --------------------------------------------------

loc_A84D:
                    ; sub_A715+12Dj
        mov si, ds:212Eh
        mov di, 22B3h
        mov al, ds:0DADh
        cmp [si-1], al
        jnz loc_A864
        cmp byte ptr ds:93Eh, 0
        jnz loc_A864
        ret
; --------------------------------------------------

loc_A864:
                    ; sub_A715+14Cj
        cmp byte ptr [si-2], 20h ; ' '
        jz  loc_A86D
        mov di, 22BBh

loc_A86D:
        mov ax, [di]
        cmp word ptr [di+2], 0
        jz  loc_A890
        cmp word ptr [di+4], 0
        jz  loc_A890
        inc word ptr [di+6]
        push    ax
        mov ax, [di+6]
        xor dx, dx
        div word ptr [di+2]
        or  dx, dx
        pop ax
        jnz loc_A890
        inc ax
        dec word ptr [di+4]

loc_A890:
                    ; sub_A715+164j ...
        mov bx, si
        inc bx
        inc bx
        cmp ax, 0
        jz  loc_A8E9
        jg  loc_A8B5
        inc bx
        inc bx
        neg ax

loc_A89F:
        cmp ax, ds:936h
        jb  loc_A8CB
        push    ax
        mov ax, 8
        call    sub_A37E
        pop ax
        sub ax, ds:936h
        jz  loc_A8E9
        jmp short loc_A89F
; --------------------------------------------------

loc_A8B5:
                    ; sub_A715+1B4j
        cmp ax, ds:936h
        jb  loc_A8CB
        push    ax
        mov ax, 20h ; ' '
        call    sub_A37E
        pop ax
        sub ax, ds:936h
        jz  loc_A8E9
        jmp short loc_A8B5
; --------------------------------------------------

loc_A8CB:
                    ; sub_A715+1A4j
        push    ax
        mov ax, ds:84Ah
        call    sub_8683
        pop ax
        jb  loc_A8E9
        mov bx, si
        add si, [bx]
        mov bx, si
        shl ax, 1
        add bx, ax
        mov cx, [bx+2]
        sub cx, [bx]
        add si, [bx]
        call    sub_A906

loc_A8E9:
                    ; sub_A715+19Cj ...
        clc
        ret
sub_A715    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A8EB    proc near
        or  ax, ax
        jz  locret_A905
        xor dx, dx
        div bx
        mov [si], ax
        mov [si+4], dx
        mov ax, bx
        or  dl, dl
        jz  locret_A905
        div dl
        xor ah, ah
        mov [si+2], ax

locret_A905:
        ret
sub_A8EB    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A906    proc near
                    ; sub_A715+1D1p ...
        or  cx, cx
        jz  locret_A924
        cld
        lodsb
        xor ah, ah
        cmp ax, 0FFh
        jnz loc_A91B
        call    sub_62BE
        sub cx, 2
        jbe locret_A924

loc_A91B:
        push    si
        push    cx
        call    sub_A37E
        pop cx
        pop si
        loop    sub_A906

locret_A924:
        ret
sub_A906    endp

; --------------------------------------------------
        db 11 dup(0)        ; CALIGN 10h -> sub_A930 (11 bytes 00)
; ---------- S U B  R O U T I N E --------------------------


sub_A930    proc near
        mov ds:2369h, si
        call    sub_A94A
        mov si, ds:2369h
        call    sub_B050
        mov ds:2369h, si
        call    sub_A974
        mov si, ds:2369h
        ret
sub_A930    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A94A    proc near
        pop bp
        push    word ptr ds:139h
        push    word ptr ds:0
        push    word ptr ds:162h
        mov al, ds:4
        mov ah, ds:20A3h
        push    ax
        push    word ptr ds:13Bh
        push    word ptr ds:25Dh
        push    word ptr ds:19F8h
        xor ax, ax
        inc ax
        mov ds:19F8h, al
        jmp loc_7085
sub_A94A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_A974    proc near
        pop dx
        mov ds:236Bh, dx
        call    sub_70B2
        mov dx, ds:236Bh
        pop ax
        mov ds:19F8h, al
        pop word ptr ds:25Dh
        pop word ptr ds:13Bh
        pop ax
        mov ds:4, al
        mov ds:20A3h, ah
        pop word ptr ds:162h
        pop word ptr ds:0
        pop word ptr ds:139h
        jmp dx
sub_A974    endp

; --------------------------------------------------
        mov byte ptr ds:21Dh, 0
        mov byte ptr ds:208Eh, 1
        clc
        ret
; --------------------------------------------------
        mov bx, ds:2088h
        inc bx

loc_A9B3:
        inc bx
        cmp byte ptr [bx], 20h ; ' '
        jz  loc_A9B3
        mov ax, 3000h
        call    sub_9639
        jb  locret_A9D4
        mov ax, 3000h
        call    sub_8683
        jb  locret_A9D4
        cld

loc_A9CA:
        lodsb
        call    sub_BF90
        mov [si-1], al
        loop    loc_A9CA
        clc

locret_A9D4:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_A9D5    proc near
        cmp word ptr ds:236Dh, 1
        jb  loc_A9FF
        ja  loc_A9F2
        cmp al, 2Eh ; '.'
        jz  loc_A9FC
        cmp al, 21h ; '!'
        jz  loc_A9FC
        cmp al, 3Fh ; '?'
        jz  loc_A9FC
        cmp al, 0A8h ; '?'
        jz  loc_A9FC
        cmp al, 0ADh ; '?'
        jz  loc_A9FC

loc_A9F2:
        cmp al, ds:236Fh
        jz  loc_A9FC
        cmp al, 0Ah
        jnz loc_AA3D

loc_A9FC:
        jmp short loc_AA3B
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_A9FF:
        cmp al, 27h ; '''
        jz  loc_AA3D
        cmp al, 24h ; '$'
        jz  loc_AA3D
        cmp al, 2Dh ; '-'
        jz  loc_AA3D
        cmp al, 5Fh ; '_'
        jz  loc_AA3D
        cmp al, 7Eh ; '~'
        jz  loc_AA3D
        cmp al, 30h ; '0'
        jb  loc_AA3B
        cmp al, 39h ; '9'
        jbe loc_AA3D
        cmp al, 41h ; 'A'
        jb  loc_AA3B
        cmp al, 5Ah ; 'Z'
        jbe loc_AA3D
        cmp al, 61h ; 'a'
        jb  loc_AA3B
        cmp al, 7Ah ; 'z'
        jbe loc_AA3D
        cmp al, 80h ; '?'
        jb  loc_AA3B
        cmp al, 9Ah ; '?'
        jbe loc_AA3D
        cmp al, 0A0h ; '?'
        jb  loc_AA3B
        cmp al, 0A7h ; '?'
        jbe loc_AA3D

loc_AA3B:
        clc
        ret
; --------------------------------------------------

loc_AA3D:
        stc
        ret
sub_A9D5    endp


; ---------- S U B  R O U T I N E --------------------------


sub_AA3F    proc near
        push    ax
        push    cx
        call    sub_A6D2
        pop cx
        pop ax
        call    sub_8E7A
        pushf
        push    ax
        push    cx
        call    sub_A6D2
        pop cx
        pop ax
        popf
        ret
sub_AA3F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_AA53    proc near
        push    cx
        call    sub_A6D2
        pop cx
        call    sub_8E55
        push    ax
        pushf
        push    cx
        call    sub_A6D2
        pop cx
        popf
        pop ax
        ret
sub_AA53    endp


; ---------- S U B  R O U T I N E --------------------------


sub_AA65    proc near
        call    sub_A6D2
        mov cx, 1F4h
        mov ax, ds:83Ah
        call    sub_8F07
        pushf
        call    sub_A6D2
        popf
        ret
sub_AA65    endp


; ---------- S U B  R O U T I N E --------------------------


sub_AA77    proc near
        mov ax, ds:139h
        cmp byte ptr ds:21Dh, 0
        jnz locret_AA85
        add ax, ds:164h

locret_AA85:
        ret
sub_AA77    endp

; --------------------------------------------------

loc_AA86:
        jmp loc_ACA3

; ---------- S U B  R O U T I N E --------------------------


sub_AA89    proc near
        call    sub_ACA8
        mov dx, ax
        mov ax, 0
        jb  loc_AA86
        cmp dx, ds:0E73h
        jz  loc_AA9F
        cmp dx, ds:0E25h
        jnz sub_AA89

loc_AA9F:
        mov ds:2361h, dx
        sub bx, si
        push    bx
        sub si, ds:20FBh
        push    si
        call    sub_AD66
        pop si
        pop cx
        jb  locret_AA85
        push    cx
        add si, ds:20FBh
        push    si
        xor bx, bx
        sub cx, 3
        ja  loc_AAC5

loc_AABF:
        jmp loc_ABA1
; --------------------------------------------------

loc_AAC2:
        jmp loc_AB7D
; --------------------------------------------------

loc_AAC5:
        inc si
        inc si
        mov di, si
        cld
        lodsw
        xor al, al
        shr ax, 1
        or  al, [si-2]
        mov bx, [si+1]
        xor bl, bl
        shr bx, 1
        or  bl, [si+1]
        mov dx, ds:973h
        cmp [si-1], dl
        jz  loc_AAEA
        cmp byte ptr [si], 2Ch ; ','
        jz  loc_AAC2

loc_AAEA:
        mov ax, 20h ; ' '
        repe scasb
        jz  loc_AABF
        mov al, [di-1]
        mov bx, ds:0E25h
        cmp ds:2361h, bx
        mov bx, 0
        jz  loc_AB78
        dec di
        mov bx, di
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_CF5B
        pop es
        assume es:nothing
        or  ax, ax
        jnz loc_AB71
        push    di
        mov ax, 3000h
        call    sub_8683
        pop di
        jb  loc_AB6E
        mov dx, cx
        pop ax
        pop cx
        push    cx
        push    ax
        sub cx, 3
        jbe loc_AB6E
        push    es
        push    ds
        pop es
        assume es:nothing
        push    si
        push    cx
        push    di
        mov si, di
        push    dx
        cld

loc_AB2E:
        lodsb
        call    sub_BF90
        mov [si-1], al
        loop    loc_AB2E
        pop dx
        pop di
        pop cx
        pop si
        mov bp, 1
        mov ax, 2Ch ; ','
        xchg    cx, dx

loc_AB43:
        or  cx, cx
        jz  loc_AB6D
        push    di
        mov di, si
        repne scasb
        mov bx, cx
        mov cx, di
        jnz loc_AB53
        dec cx

loc_AB53:
        sub cx, si
        pop di
        cmp cx, dx
        jnz loc_AB65
        push    di
        repe cmpsb
        pop di
        jnz loc_AB65
        mov ax, bp
        pop es
        assume es:nothing
        jmp short loc_AB71
; --------------------------------------------------

loc_AB65:
        add si, cx
        inc si
        inc bp
        mov cx, bx
        jmp short loc_AB43
; --------------------------------------------------

loc_AB6D:
        pop es

loc_AB6E:
        jmp short loc_AB8A
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_AB71:
        add ax, 3000h
        xor bx, bx
        jmp short loc_AB7D
; --------------------------------------------------

loc_AB78:
        push    bx
        call    sub_BF90
        pop bx

loc_AB7D:
        or  ax, ax
        jz  loc_ABA1
        push    bx
        push    ax
        call    sub_8683
        pop ax
        pop bx
        jnb loc_ABB5

loc_AB8A:
                    ; sub_AA89+11Ej
        mov ax, 75h ; 'u'

loc_AB8D:
        pop si
        pop cx
        push    ax
        dec si
        inc cx
        call    sub_ADE9
        pop ax
        call    sub_CB4F
        jmp loc_ACA1
; --------------------------------------------------
        mov ax, 18h
        jmp short loc_AB8D
; --------------------------------------------------

loc_ABA1:
        test    word ptr ds:0, 20h
        jz  loc_AB8A
        mov si, ds:0Eh
        mov cx, ds:10h
        sub cx, si
        xor ax, ax

loc_ABB5:
        shl ax, 1
        shr al, 1
        and ax, 7F7Fh
        mov ds:235Bh, ax
        pop di
        dec di
        pop dx
        push    bx
        push    cx
        push    si
        mov si, di
        mov cx, dx
        push    di
        inc cx
        call    sub_ADE9
        jb  loc_ABD3
        call    sub_AE45

loc_ABD3:
        pop di
        pop si
        pop cx
        pop bx
        jb  loc_ABF2
        mov word ptr ds:2370h, 0
        mov dx, cx
        sub dx, bx
        cmp dx, ax
        jbe loc_AC03
        cmp ax, 59h ; 'Y'
        jnb loc_ABF5
        mov ax, 7Ah ; 'z'
        call    sub_CB4F

loc_ABF2:
        jmp locret_ACA4
; --------------------------------------------------

loc_ABF5:
        cmp dx, 59h ; 'Y'
        jbe loc_AC03
        mov word ptr ds:2370h, 9
        mov dx, 50h ; 'P'

loc_AC03:
                    ; sub_AA89+16Fj
        push    cx
        push    si
        push    bx
        push    dx
        mov ax, ds:83Ah
        push    dx
        call    sub_8683
        pop dx
        push    si
        sub di, si
        push    di
        add di, si
        add dx, ds:2370h
        call    sub_AE15
        pop di
        mov ax, ds:83Ah
        call    sub_8683
        add di, si
        pop ax
        mov cx, si
        pop dx
        pop bx
        pop si
        sub ax, cx
        jbe loc_AC35
        cmp cx, si
        ja  loc_AC35
        sub si, cx

loc_AC35:
                    ; sub_AA89+1A8j
        pop cx
        add cx, si
        push    cx
        push    si
        add si, bx
        mov cx, dx
        push    bx
        push    di
        push    cx
        push    si

loc_AC42:
        mov di, si
        mov ax, ds:971h
        or  cx, cx
        jz  loc_AC73
        cld
        repne scasb
        jnz loc_AC73
        push    cx
        mov si, di
        call    sub_7010
        pop cx
        jb  loc_AC5F
        add cx, di
        sub cx, si
        jmp short loc_AC42
; --------------------------------------------------

loc_AC5F:
        dec di
        pop si
        pop cx
        mov cx, di
        sub cx, si
        ja  loc_AC75
        add sp, 8
        mov ax, 0A9h ; '?'
        call    sub_CB4F
        jmp short locret_ACA4
; --------------------------------------------------

loc_AC73:
                    ; sub_AA89+1C5j
        pop si
        pop cx

loc_AC75:
        pop di
        pop bx
        cld
        repe movsb
        pop dx
        pop cx
        cmp cx, si
        jbe loc_ACA1
        mov cx, 9
        sub si, dx
        mov ax, si
        shl ax, 1
        shr al, 1
        and ax, 7F7Fh
        mov ds:235Eh, ax
        mov si, 2358h
        mov ax, ds:971h
        mov [si], al
        repe movsb
        mov ax, ds:973h
        mov [di-1], al

loc_ACA1:
                    ; sub_AA89+1F5j
        mov ax, sp

loc_ACA3:
        clc

locret_ACA4:
                    ; sub_AA89+1E8j
        ret
sub_AA89    endp

; --------------------------------------------------

loc_ACA5:
        jmp loc_AD3C

; ---------- S U B  R O U T I N E --------------------------


sub_ACA8    proc near
        call    sub_AD48
        jb  loc_ACA5

loc_ACAD:
        cld
        call    sub_AD57
        push    ax
        push    cx
        push    si
        mov ax, ds:83Ah
        call    sub_8683
        mov ds:2365h, si
        add cx, si
        mov ds:2367h, cx
        pop dx
        push    dx
        sub dx, si
        mov ds:2363h, dx
        add si, ds:20FDh
        mov cx, si
        pop si
        push    si
        sub cx, si
        push    word ptr ds:2410h
        inc byte ptr ds:2410h
        call    sub_7010
        pop ax
        mov ds:2410h, al
        mov bx, cx
        pop si
        pop cx
        pop ax
        jnb loc_AD3C
        cmp si, ds:2365h
        jb  loc_AD45
        cmp si, ds:2367h
        ja  loc_AD45

loc_ACF8:
        push    ax
        call    sub_AD66
        push    word ptr ds:20FDh
        call    sub_A467
        mov ax, ds:83Ah
        call    sub_8683
        add si, ds:2363h
        mov di, si
        mov cx, ds:20FDh
        sub cx, ds:2363h
        mov bx, si
        pop ax
        sub ax, ds:20FDh
        pop ax
        cld
        jb  loc_ACAD
        cmp ax, ds:0E1Bh
        stc
        jnz loc_AD3C
        cmp byte ptr ds:20FFh, 0
        stc
        jnz loc_AD3C
        push    ax
        push    si
        push    bx
        call    sub_AA65
        pop bx
        pop si
        pop ax
        jnb loc_ACF8

loc_AD3C:
        mov ds:2086h, bx
        mov ds:2088h, si
        ret
; --------------------------------------------------

loc_AD45:
        stc
        jmp short loc_AD3C
sub_ACA8    endp


; ---------- S U B  R O U T I N E --------------------------


sub_AD48    proc near
        cld
        mov di, si
        mov ax, ds:971h
        repne scasb
        mov si, di
        mov bx, di
        stc
        jnz locret_AD65
sub_AD48    endp


; ---------- S U B  R O U T I N E --------------------------


sub_AD57    proc near
        lodsw
        mov si, di
        call    sub_BF90
        xchg    al, ah
        call    sub_BF90
        xchg    al, ah
        clc

locret_AD65:
        ret
sub_AD57    endp


; ---------- S U B  R O U T I N E --------------------------


sub_AD66    proc near
        mov ax, ds:83Ah
        call    sub_8683
        jb  locret_ADE8
        mov di, si
        inc di
        push    si
        add si, ds:20FBh
        push    si
        push    di
        mov cx, ds:20FDh
        sub cx, ds:20FBh
        mov di, si
        mov ax, ds:971h
        cld
        repne scasb
        mov si, di
        pop di
        stc
        jnz loc_ADAE
        push    di
        dec si
        call    sub_B102
        pop di
        pop ax
        cmp si, ax
        jbe loc_AD9B
        mov si, ax

loc_AD9B:
        sub ax, 50h ; 'P'
        cmp si, ax
        jnb loc_ADA4
        mov si, ax

loc_ADA4:
        pop ax
        push    ax
        inc ax
        cmp si, ax
        jnb loc_ADAD
        mov si, ax

loc_ADAD:
        push    si

loc_ADAE:
        pop si
        pop bx
        mov cx, bx
        add cx, ds:20FDh
        sub cx, si
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        jbe loc_ADC0
        repe movsb

loc_ADC0:
        mov al, 1Ah
        stosb
        dec di
        pop es
        assume es:nothing
        sub si, di
        sub ds:20FDh, si
        sub ds:20FBh, si
        sub ds:214h, si
        jnb loc_ADDB
        mov word ptr ds:214h, 0

loc_ADDB:
        sub ds:216h, si
        jnb loc_ADE7
        mov word ptr ds:216h, 0

loc_ADE7:
        clc

locret_ADE8:
        ret
sub_AD66    endp


; ---------- S U B  R O U T I N E --------------------------


sub_ADE9    proc near
                    ; sub_AA89+142p ...
        push    cx
        push    si
        mov ax, ds:83Ah
        call    sub_8683
        pop di
        pop ax
        jb  locret_ADE8
        mov cx, ds:20FDh
        add cx, si
        mov si, di
        add si, ax
        sub cx, si
        jb  locret_AE0B
        cld
        repe movsb
        sub ds:20FDh, ax
        clc

locret_AE0B:
        ret
sub_ADE9    endp

; --------------------------------------------------

loc_AE0C:
        push    dx
        push    di
        call    sub_AA65
        pop di
        pop dx
        jb  locret_AE44

; ---------- S U B  R O U T I N E --------------------------


sub_AE15    proc near
        push    dx
        push    di
        mov ax, ds:83Ah
        call    sub_8683
        pop di
        pop dx
        mov ax, dx
        jb  locret_AE44
        add ax, ds:20FDh
        cmp cx, ax
        jb  loc_AE0C
        sub ax, ds:20FDh
        add si, ds:20FDh
        mov cx, si
        sub cx, di
        dec si
        mov di, si
        add di, ax
        std
        repe movsb
        add ds:20FDh, ax
        clc

locret_AE44:
        ret
sub_AE15    endp


; ---------- S U B  R O U T I N E --------------------------


sub_AE45    proc near
        mov ax, ds:83Ah
        push    si
        push    cx
        push    di
        call    sub_8683
        jb  loc_AE57
        dec cx
        sub cx, ds:20FDh
        mov ax, cx

loc_AE57:
        pop di
        pop cx
        pop si
        ret
sub_AE45    endp

; --------------------------------------------------

loc_AE5B:
        jmp loc_AEF3

; ---------- S U B  R O U T I N E --------------------------


sub_AE5E    proc near
        push    di

loc_AE5F:
        call    sub_ACA8
        mov dx, ax
        mov ax, 0
        jb  loc_AE5B
        cmp dx, ds:0E1Bh
        jnz loc_AE76
        sub bx, si
        cmp bx, 5
        jbe loc_AE5F

loc_AE76:
        mov ax, dx
        push    cx
        mov cx, 22h ; '"'
        mov di, 22D0h
        push    bx

loc_AE80:
        mov bx, [di]
        inc di
        inc di
        cmp ax, [bx]
        jz  loc_AE8D
        loop    loc_AE80
        cmp cx, 0Fh

loc_AE8D:
        pop bx
        pop cx
        jnz loc_AE5F
        sub di, 22D2h
        push    dx
        call    sub_A699
        mov bx, ds:2088h
        mov ax, ds:83Ah
        push    bx
        call    sub_8683
        pop bx
        push    si
        inc bx
        inc bx
        call    word ptr [di+2314h]
        pop si
        pushf
        call    sub_A699
        push    si
        mov ax, ds:83Ah
        call    sub_8683
        pop ax
        sub si, ax
        jz  loc_AEC5
        add ds:2088h, si
        add ds:2086h, si

loc_AEC5:
        popf
        pop dx
        jb  loc_AEF4
        mov si, ds:2088h
        dec si
        mov cx, ds:2086h
        cmp dx, ds:0E1Bh
        jnz loc_AEEA
        add si, 5
        mov ax, ds:220h
        dec ax
        shl ax, 1
        shr al, 1
        and ax, 7F7Fh
        mov [si-2], ax
        dec cx

loc_AEEA:
        sub cx, si
        jbe loc_AEF1
        call    sub_ADE9

loc_AEF1:
        mov ax, sp

loc_AEF3:
        clc

loc_AEF4:
        pop di
        ret
sub_AE5E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_AEF6    proc near
        mov ax, ds:83Ah
        call    sub_8683
        jb  locret_AF09
        mov cx, ds:20FDh
        add cx, si
        add si, ds:20FBh
        clc

locret_AF09:
        ret
sub_AEF6    endp

; --------------------------------------------------

loc_AF0A:
        jmp locret_AFBB

; ---------- S U B  R O U T I N E --------------------------


sub_AF0D    proc near
        cmp byte ptr ds:20B3h, 2
        jnz loc_AF1D
        call    sub_5AD4
        call    sub_BD37
        call    sub_5AD4

loc_AF1D:
        mov ax, ds:83Ch
        call    sub_8A92
        mov cx, 50h ; 'P'
        db 81h, 0C1h, 050h, 0  ; add cx, 50h ; 'P'
        add cx, ds:20FDh
        add cx, 26h ; '&'
        call    sub_AA3F
        jb  loc_AF0A
        inc di
        inc di
        sub di, cx
        mov si, 214h
        mov cx, 50h ; 'P'
        push    cx
        cld
        repe movsb
        pop cx
        mov si, 598h
        repe movsb
        mov al, ds:218h
        mov ah, ds:20A3h
        stosw
        push    word ptr ds:162h
        pop ax
        stosw
        push    word ptr ds:139h
        pop ax
        stosw
        push    word ptr ds:0
        pop ax
        stosw
        push    word ptr ds:164h
        pop ax
        stosw
        mov ah, ds:21Ch
        mov al, ds:20FFh
        push    ax
        pop ax
        stosw
        push    word ptr ds:13Bh
        pop ax
        stosw
        push    word ptr ds:25Dh
        pop ax
        stosw
        push    word ptr ds:226h
        pop ax
        stosw
        push    word ptr ds:228h
        pop ax
        stosw
        push    word ptr ds:326h
        pop ax
        stosw
        push    word ptr ds:2127h
        pop ax
        stosw
        push    word ptr ds:2129h
        pop ax
        stosw
        push    word ptr ds:20FBh
        pop ax
        stosw
        push    word ptr ds:20FDh
        pop ax
        stosw
        mov ax, ds:83Ah
        push    di
        call    sub_8683
        pop di
        jb  loc_AFBC
        mov cx, ds:20FDh
        repe movsb
        clc

locret_AFBB:
        ret
; --------------------------------------------------

loc_AFBC:
        mov ax, ds:83Ch
        call    sub_8A92
        stc
        ret
sub_AF0D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_AFC4    proc near
                    ; sub_92A4+10Ep ...
        mov ax, ds:83Ch
        call    sub_8683
        jb  locret_AFBB
        mov di, 214h
        mov cx, 50h ; 'P'
        push    cx
        cld
        repe movsb
        pop cx
        mov di, 598h
        repe movsb
        lodsw
        mov ds:218h, al
        mov ds:20A3h, ah
        lodsw
        mov ds:162h, ax
        lodsw
        mov ds:139h, ax
        lodsw
        mov ds:0, ax
        lodsw
        mov ds:164h, ax
        lodsw
        mov ds:21Ch, ah
        mov ds:20FFh, al
        lodsw
        mov ds:13Bh, ax
        lodsw
        mov ds:25Dh, ax
        lodsw
        mov ds:226h, ax
        lodsw
        mov ds:228h, ax
        lodsw
        mov ds:326h, ax
        lodsw
        mov ds:2127h, ax
        lodsw
        mov ds:2129h, ax
        push    si
        mov ax, ds:83Ah
        call    sub_8683
        mov di, si
        pop si
        jb  locret_B046
        lodsw
        mov ds:20FBh, ax
        lodsw
        mov ds:20FDh, ax
        mov cx, ax
        repe movsb
        mov ax, ds:83Ch
        call    sub_8A92
        cmp byte ptr ds:20B3h, 2
        jnz locret_B046
        call    sub_5AD4
        call    sub_BD91
        call    sub_5AD4

locret_B046:
        ret
sub_AFC4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B047    proc near
        push    word ptr ds:66h
        call    sub_AEF6
        jmp short loc_B059
sub_B047    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B050    proc near
        push    word ptr ds:66h
        push    si
        call    sub_AEF6
        pop si

loc_B059:
        jb  loc_B05F
        mov ds:66h, cx

loc_B05F:
        mov di, 1E61h
        mov ds:214h, si
        mov ds:216h, si
        call    sub_5E89
        pop word ptr ds:66h
        pushf
        inc word ptr ds:139h
        popf
        ret
sub_B050    endp

; --------------------------------------------------
        db 8 dup(0)         ; CALIGN 10h -> B080 (8 bytes 00)
        sub di, 24h ; '$'
        shr di, 1
        mov ax, ds:856h
        add ax, di
        inc di
        mov cx, di
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jz  loc_B09C
        cmp byte ptr ds:19F8h, 0
        jz  loc_B09E

loc_B09C:
        clc
        ret
; --------------------------------------------------

loc_B09E:
        cmp byte ptr ds:20A1h, 0
        jz  sub_B0B3
        mov dx, cx
        inc cx
        add cl, ds:20B3h
        jz  sub_B0B3
        add cl, 9
        jnz loc_B09C

; ---------- S U B  R O U T I N E --------------------------


sub_B0B3    proc near
        push    bx
        push    ax
        mov si, bx
        mov bx, ds:13Dh
        mov cx, ds:2086h
        sub cx, si
        dec cx
        jnz loc_B0CB
        mov si, ds:2088h
        call    sub_B102

loc_B0CB:
        pop ax
        push    ax
        call    sub_B117
        mov cx, ax
        pop ax
        pop bx
        jb  loc_B0D7
        ret
; --------------------------------------------------

loc_B0D7:
        or  cl, cl
        jnz loc_B0FB
        push    bx
        push    ax
        mov bx, ax
        sub bx, ds:856h
        add bx, 30h ; '0'
        mov ds:238Dh, bl
        mov bx, 2388h
        call    sub_B1E2
        pop ax
        pop bx
        jnb sub_B0B3
        mov ax, 58h ; 'X'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_B0FB:
        mov ax, 59h ; 'Y'
        call    sub_CB4F
        ret
sub_B0B3    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B102    proc near
        std
        dec si

loc_B104:
        lodsb
        call    sub_A9D5
        jnb loc_B104
        mov cx, si

loc_B10C:
        lodsb
        call    sub_A9D5
        jb  loc_B10C
        sub cx, si
        inc si
        inc si
        ret
sub_B102    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B117    proc near
        push    cx
        push    si
        mov ds:239Bh, bx
        mov ds:239Eh, cx
        add cx, 8
        mov ds:2398h, cx
        call    sub_8683
        jnb loc_B133
        xor ax, ax

loc_B12F:
        pop si
        pop cx

loc_B131:
        stc
        ret
; --------------------------------------------------

loc_B133:
        mov dx, 2398h
        mov cx, 8
        call    sub_B14B
        or  al, al
        jnz loc_B12F
        pop dx
        pop cx
        call    sub_B14B
        or  al, al
        jnz loc_B131
        clc
        ret
sub_B117    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B14B    proc near
        push    di

loc_B14C:
        mov di, [si+2]
        mov ax, 200h
        sub ax, di
        cmp ax, cx
        jb  loc_B15A
        mov ax, cx

loc_B15A:
        sub cx, ax
        push    cx
        push    si
        add di, si
        add di, [si]
        add [si+2], ax
        mov si, dx
        mov cx, ax
        cld
        push    es
        push    ds
        pop es
        assume es:nothing
        repe movsb
        pop es
        assume es:nothing
        mov dx, si
        pop si
        xor ax, ax
        cmp word ptr [si+2], 200h
        jb  loc_B181
        push    dx
        call    sub_B18D
        pop dx

loc_B181:
        pop cx
        or  al, al
        stc
        jnz loc_B18B
        or  cx, cx
        jnz loc_B14C

loc_B18B:
        pop di
        ret
sub_B14B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B18D    proc near
        mov dx, si
        add dx, [si]
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        mov dx, si
        add dx, 4
        mov cx, [si+2]
        mov ah, 28h
        int 21h     ; DOS - RANDOM BLOCK WRITE
                    ; DS:DX -> FCB
                    ; CX = number of records to be written
                    ; if zero, truncate file to current random file position
        mov word ptr [si+2], 0
        ret
sub_B18D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B1A7    proc near
        call    sub_8683
        jnb loc_B1B0
        xor ax, ax
        stc
        ret
; --------------------------------------------------

loc_B1B0:
        mov dx, 2393h
        mov cx, 2
        call    sub_B14B
        or  al, al
        jz  loc_B1BF
        stc
        ret
; --------------------------------------------------

loc_B1BF:
        cmp word ptr [si+2], 0
        clc
        jz  locret_B1C9
        call    sub_B18D

locret_B1C9:
        ret
sub_B1A7    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B1CA    proc near
        call    sub_B204
        jb  locret_B1E1
        mov word ptr [si+2], 200h
        mov ah, 0Fh
        mov dx, di
        int 21h     ; DOS - OPEN DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h file found, FFh file not found
        or  al, al
        jz  loc_B1F3
        jmp short loc_B235
; --------------------------------------------------
        db 90h
; --------------------------------------------------

locret_B1E1:
        ret
sub_B1CA    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B1E2    proc near
        call    sub_B204
        jb  locret_B203
        mov ah, 16h
        mov dx, di
        int 21h     ; DOS - CREATE A DISK FILE
                    ; DS:DX -> FCB
        inc al
        cmp al, 1
        ja  loc_B235

loc_B1F3:
        mov word ptr [di+0Eh], 1
        mov word ptr [di+21h], 0
        mov word ptr [di+23h], 0
        clc

locret_B203:
        ret
sub_B1E2    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B204    proc near
        push    bx
        push    ax
        call    sub_8A92
        pop ax
        push    ax
        mov cx, 22Ch
        call    sub_AA3F
        pop bp
        pop bx
        jb  locret_B234
        xor ax, ax
        inc di
        mov cx, 22Ah
        std
        repe stosb
        dec di
        push    di
        mov word ptr [di], 2Ch ; ','
        add di, 4
        mov si, bx
        mov ax, 2900h
        int 21h     ; DOS - PARSE FILENAME
                    ; DS:SI -> string to parse
                    ; ES:DI -> buffer to fill with unopened FCB
                    ; AL = bit mask to control parsing
        pop si
        or  al, al
        jnz loc_B235
        clc

locret_B234:
        ret
; --------------------------------------------------

loc_B235:
        mov ax, bp
        call    sub_8A92
        mov ax, 58h ; 'X'
        call    sub_CB4F
        ret
sub_B204    endp

; --------------------------------------------------
        shr di, 1
        mov ax, ds:856h
        add ax, di
        inc di
        add di, 9
        mov cx, di
        mov byte ptr ds:2397h, 1
        jmp short loc_B267
; --------------------------------------------------
        sub di, 12h
        shr di, 1
        mov ax, ds:856h
        add ax, di
        inc di
        mov cx, di
        mov byte ptr ds:2397h, 0

loc_B267:
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jz  loc_B276
        cmp byte ptr ds:19F8h, 0
        jz  loc_B278

loc_B276:
        clc
        ret
; --------------------------------------------------

loc_B278:
        inc cx
        add cl, ds:20B3h
        jz  loc_B28D
        cmp byte ptr ds:20A1h, 0
        jnz loc_B276
        cmp byte ptr ds:20B3h, 0FFh
        jl  loc_B276

loc_B28D:
        push    bx
        push    ax
        call    sub_B317
        jnb loc_B29D
        mov ax, 6Ah ; 'j'

loc_B297:
        call    sub_CB4F
        pop ax
        pop bx
        ret
; --------------------------------------------------

loc_B29D:
        mov bx, si
        mov word ptr [si+2], 200h
        mov cx, 6
        push    si
        add si, 4
        cmp byte ptr ds:2397h, 0
        jnz loc_B2B5
        call    sub_383B

loc_B2B5:
        pop si
        mov dx, si
        add dx, 4
        mov ah, 0Fh
        int 21h     ; DOS - OPEN DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h file found, FFh file not found
        or  al, al
        jnz loc_B312
        mov bp, dx
        mov word ptr ds:[bp+0Eh], 1
        xor ax, ax
        mov ds:[bp+21h], ax
        mov ds:[bp+23h], ax
        mov ds:[bp+20h], al
        mov word ptr [si+2], 200h
        mov cx, ds:2086h
        pop ax
        pop bx
        push    ax
        sub cx, bx
        push    cx
        call    sub_AA53
        pop cx
        jnb loc_B2F4
        pop ax
        call    sub_8A92
        stc
        ret
; --------------------------------------------------

loc_B2F4:
        mov ds:16Ah, ax
        mov word ptr ds:16Ch, 0FFFFh
        mov ax, 1Ah
        inc di
        std
        stosb
        dec cx
        mov si, ds:2086h
        dec si
        dec si
        repe movsb
        pop word ptr ds:16Eh
        clc
        ret
; --------------------------------------------------

loc_B312:
        mov ax, 6Bh ; 'k'
        jmp short loc_B297

; ---------- S U B  R O U T I N E --------------------------


sub_B317    proc near
        call    sub_B1A7
        jnb loc_B321
        or  al, al
        stc
        jz  locret_B339

loc_B321:
        pushf
        mov dx, si
        add dx, 4
        mov ah, 10h
        int 21h     ; DOS - CLOSE DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h directory update successful
                    ; FFh file not found in directory
        popf
        jb  loc_B333
        or  al, al
        jnz loc_B333
        ret
; --------------------------------------------------

loc_B333:
        mov ax, 6Ah ; 'j'
        call    sub_CB4F

locret_B339:
        ret
sub_B317    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B33A    proc near
        mov bp, dx
        dec bx

loc_B33D:
        inc bx
        cmp byte ptr [bx], 20h ; ' '
        jz  loc_B33D
        mov ax, [bx]
        call    sub_BF90
        xchg    ah, al
        call    sub_BF90
        mov dx, ax
        mov ax, ds:2395h
        or  ax, ax
        jz  loc_B3B3
        push    di
        push    bp
        push    dx
        call    sub_8683
        pop dx
        pop bp
        pop di
        jb  loc_B3B3
        cmp dx, 4958h
        jz  loc_B39B
        cmp dx, 504Eh
        jz  loc_B38D
        call    sub_CF5B
        mov bx, ax
        dec bx
        cmp bx, 1
        ja  loc_B3C1
        shl bx, 1
        add bx, 0B389h
        mov bx, cs:[bx]
        mov ax, ds:2395h
        call    bx
        ret
; --------------------------------------------------
        clc
        ret
; --------------------------------------------------
        lea si, [bp+di-4C65h]

loc_B38D:
        sub bp, 6
        cmp bp, di
        jbe loc_B3AE
        inc si
        lodsw
        call    sub_6F9A
        clc
        ret
; --------------------------------------------------

loc_B39B:
        sub cx, 6
        jb  loc_B3AE
        sub bp, cx
        cmp bp, di
        jbe loc_B3AE
        add si, 6
        cld
        repe movsb
        clc
        ret
; --------------------------------------------------

loc_B3AE:
        mov ax, 7Bh ; '{'
        jmp short loc_B3B6
; --------------------------------------------------

loc_B3B3:
        mov ax, 6Eh ; 'n'

loc_B3B6:
        call    sub_CB4F
        ret
; --------------------------------------------------
        mov ax, 6Fh ; 'o'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_B3C1:
        mov ax, 6Dh ; 'm'
        call    sub_CB4F
        ret
sub_B33A    endp

; --------------------------------------------------
        db 2, 3 dup(0)

; ---------- S U B  R O U T I N E --------------------------


sub_B3CC    proc near
        mov ax, ds:2382h
        cmp ax, 0
        jz  loc_B3E3
        call    sub_8683
        mov ds:2386h, cx
        jnb loc_B3E6
        mov word ptr ds:2382h, 0

loc_B3E3:
        jmp loc_B6A9
; --------------------------------------------------

loc_B3E6:
        mov di, si
        add di, cx
        push    word ptr [di]
        mov byte ptr [di], 1Ah
        push    di
        push    si
        add si, ds:2384h
        cmp si, di
        mov di, 1E61h
        jnb loc_B416
        mov byte ptr ds:21Fh, 1
        cmp word ptr ds:2384h, 0
        jz  loc_B40E
        cmp byte ptr [si-1], 0Ah
        jnz loc_B413

loc_B40E:
        mov byte ptr ds:21Fh, 0

loc_B413:
        call    sub_B050

loc_B416:
        pop ax
        pop bx
        pop dx
        sub si, ax
        mov ds:2384h, si
        add si, ax
        cmp byte ptr [si], 1Ah
        mov [bx], dl
        jz  loc_B42C
        cmp si, bx
        jb  loc_B435

loc_B42C:
        mov word ptr ds:2382h, 0
        mov si, 2065h

loc_B435:
        call    sub_9544
        ret
sub_B3CC    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B439    proc near
        cmp byte ptr ds:208Eh, 0
        jz  loc_B45B
        cmp word ptr ds:164h, 0
        jz  loc_B456
        cmp byte ptr ds:21Dh, 0
        jnz loc_B456
        or  word ptr ds:162h, 1
        jmp short loc_B45B
; --------------------------------------------------

loc_B456:
        mov byte ptr ds:208Eh, 0

loc_B45B:
        test    word ptr ds:162h, 1
        jnz loc_B48F
        mov ax, ds:139h
        cmp byte ptr ds:21Dh, 0
        jnz loc_B471
        add ax, ds:164h

loc_B471:
        cmp byte ptr ds:218h, 0
        jz  loc_B481
        push    ax
        call    sub_7D3F
        mov bx, ax
        pop ax
        jmp short loc_B485
; --------------------------------------------------

loc_B481:
        mov bx, ds:25Dh

loc_B485:
        cmp ax, bx
        jb  loc_B4A4
        or  word ptr ds:162h, 1

loc_B48F:
        test    word ptr ds:162h, 10h
        jnz loc_B4A4
        cmp byte ptr ds:21Dh, 0
        jz  loc_B4AA
        or  word ptr ds:162h, 10h

loc_B4A4:
        jmp loc_B6A9
; --------------------------------------------------

loc_B4A7:
        jmp loc_B588
; --------------------------------------------------

loc_B4AA:
        call    sub_7D3F
        mov bx, ax
        mov ax, ds:139h
        cmp ax, bx
        jnb loc_B4FF
        cmp word ptr ds:164h, 0
        jz  loc_B502
        test    word ptr ds:162h, 20h
        jnz loc_B4A7
        cmp byte ptr ds:25Ch, 0
        jz  loc_B4D9
        push    ax
        add ax, ds:164h
        cmp ax, bx
        pop ax
        jnb loc_B4D9
        jmp loc_B749
; --------------------------------------------------

loc_B4D9:
        cmp word ptr ds:2382h, 0
        jnz loc_B505
        mov si, 14Fh
        test    word ptr ds:13Dh, 1
        jz  loc_B4EF
        db 81h, 0C6h, 4, 0  ; add si, 4

loc_B4EF:
        add ax, [si+2]
        cmp ax, bx
        jb  loc_B505
        or  word ptr ds:162h, 10h
        jmp loc_B6A9
; --------------------------------------------------

loc_B4FF:
        jmp loc_B660
; --------------------------------------------------

loc_B502:
        jmp sub_B636
; --------------------------------------------------

loc_B505:
        cmp byte ptr ds:20A3h, 0
        jz  loc_B533
        push    es
        push    ds
        pop es
        assume es:nothing
        push    di
        mov cx, 25Ah
        sub cx, 214h
        mov si, 5E8h
        mov di, 214h
        push    word ptr ds:220h
        push    word ptr ds:21Dh
        cld
        repe movsb
        pop cx
        mov ds:21Dh, cl
        pop word ptr ds:220h
        pop di
        pop es
        assume es:nothing

loc_B533:
        mov byte ptr ds:20A3h, 0
        mov bx, 14Fh
        cmp byte ptr ds:826h, 0
        jz  loc_B54C
        cmp word ptr ds:157h, 0
        jz  loc_B54C
        mov bx, 157h

loc_B54C:
                    ; sub_B439+10Ej
        call    sub_B87D
        jb  loc_B585
        cmp word ptr ds:2382h, 0
        ja  loc_B580
sub_B439    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B558    proc near
        or  word ptr ds:162h, 20h
        push    di
        mov ax, ds:854h
        call    sub_8683
        pop di
        jb  loc_B582
        call    sub_B18D
        add si, 4
        mov ax, ds:208Fh
        xchg    ax, [si+21h]
        mov ds:209Dh, ax
        mov ax, ds:2091h
        xchg    ax, [si+23h]
        mov ds:209Fh, ax

loc_B580:
        clc
        ret
; --------------------------------------------------

loc_B582:
        jmp loc_B660
sub_B558    endp

; --------------------------------------------------

loc_B585:
        call    sub_B558

loc_B588:
        cmp word ptr ds:2382h, 0
        jnz loc_B5A5
        mov ax, ds:2093h
        or  ax, ax
        jz  loc_B5A8
        mov ds:2382h, ax
        mov word ptr ds:2093h, 0
        mov ax, ds:2095h
        mov ds:2384h, ax

loc_B5A5:
        jmp short loc_B60C
; --------------------------------------------------
        db 90h              ; EVEN -> loc_B5A8 (1 byte NOP)
loc_B5A8:
        mov ax, ds:840h
        call    sub_8A92
        mov ax, ds:854h
        mov cx, 2
        mov dx, 2398h
        call    sub_B9D9
        jb  sub_B636
        mov ax, ds:840h
        mov cx, ds:2398h
        or  cx, cx
        jz  sub_B636
        dec cx
        call    sub_AA3F
        jb  loc_B582
        inc di
        mov byte ptr [di], 1Ah
        inc di
        sub di, cx
        mov dx, di
        mov ax, ds:854h
        mov cx, ds:2398h
        dec cx
        dec cx
        push    dx
        call    sub_B9D9
        pop di
        jb  sub_B636
        mov ax, [si+21h]
        mov ds:208Fh, ax
        mov ax, [si+23h]
        mov ds:2091h, ax
        mov ax, [di+1]
        mov ds:209Ah, ax
        mov si, 2097h
        mov cx, 6
        cld
        repe movsb
        mov ax, ds:840h
        mov ds:2382h, ax
        xor ax, ax
        mov ds:2384h, ax

loc_B60C:
        call    sub_B3CC
        jb  loc_B5A8
        mov al, ds:21Ch
        xor ah, ah
        sub ds:164h, ax
        mov ax, ds:164h
        cmp word ptr ds:2382h, 0
        jnz loc_B634
        push    di
        mov cx, 2
        mov ax, ds:854h
        call    sub_B9EE
        pop di
        jnb loc_B634
        call    sub_B636

loc_B634:
        clc
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_B636    proc near
        mov ax, ds:854h
        push    di
        call    sub_8683
        jb  loc_B68D
        pop di
        xor ax, ax
        mov ds:208Eh, al
        mov ds:826h, al
        mov ds:164h, ax
        mov ds:208Fh, ax
        mov ds:2091h, ax
        mov ds:209Dh, ax
        mov word ptr ds:209Fh, 0FFFFh
        mov [si+25h], ax
        mov [si+27h], ax

loc_B660:
        cmp word ptr ds:164h, 0
        jz  loc_B66C
        mov byte ptr ds:826h, 1

loc_B66C:
        mov ax, ds:854h
        push    di
        call    sub_8683
        jb  loc_B68D
        add si, 4
        mov dx, si
        cmp word ptr ds:209Fh, 0FFFFh
        jz  loc_B68D
        mov ax, ds:209Dh
        xchg    ax, [si+21h]
        mov ax, ds:209Fh
        xchg    ax, [si+23h]

loc_B68D:
        mov ax, ds:2382h
        mov ds:2093h, ax
        mov word ptr ds:2382h, 0
        mov ax, ds:2384h
        mov ds:2095h, ax
        or  word ptr ds:162h, 10h
        pop di
        jmp short loc_B6A9
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_B6A9:
        stc
        ret
sub_B636    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B6AB    proc near
        test    word ptr ds:162h, 1
        jz  loc_B6A9
        test    word ptr ds:162h, 4
        jnz loc_B713
        mov bx, 147h
        test    word ptr ds:13Dh, 1
        jz  loc_B6CA
        db 81h, 0C3h, 4, 0  ; add bx, 4

loc_B6CA:
        cmp word ptr [bx], 0
        jz  loc_B713
        mov ax, ds:13Bh
        sub ax, [bx+2]
        sub ax, ds:172h
        cmp ds:139h, ax
        jb  loc_B749
        mov bx, 147h
        call    sub_B87D
        jb  loc_B713
        mov ax, ds:2386h
        sub ax, ds:2384h
        inc ax
        shr ax, 1
        add ax, ds:172h
        add ax, ds:139h
        cmp ax, ds:13Bh
        jbe loc_B706
        cmp word ptr ds:2382h, 0
        ja  locret_B712

loc_B706:
        or  word ptr ds:162h, 4
        mov word ptr ds:2382h, 0

locret_B712:
        ret
; --------------------------------------------------

loc_B713:
        or  word ptr ds:162h, 4
        mov ax, ds:139h
        cmp ax, ds:13Bh
        jnb loc_B761
        db 81h, 3Eh, 05Fh, 1, 9, 0  ; cmp word ptr ds:15Fh, 9
        jz  loc_B739
        cmp byte ptr ds:25Ah, 0
        jz  loc_B749
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jz  loc_B749

loc_B739:
        mov word ptr ds:139h, 0FFFFh
        mov di, 1E63h
        mov word ptr [di-2], 70Ch
        clc
        ret
; --------------------------------------------------

loc_B749:
        mov si, 2063h
        push    word ptr ds:21Ch
        mov byte ptr ds:21Ch, 1
        call    sub_B050
        call    sub_9544
        pop ax
        mov ds:21Ch, al
        clc
        ret
; --------------------------------------------------

loc_B761:
        inc word ptr ds:13Dh
        mov word ptr ds:139h, 0
        mov word ptr ds:162h, 0
        mov byte ptr ds:20A3h, 0
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jz  loc_B7A0
        jb  loc_B79E
        cmp byte ptr ds:161h, 0
        jz  loc_B79E
        mov ax, ds:2102h
        cmp ax, ds:13Dh
        jnb loc_B79E

loc_B790:
        mov ax, 2Ch ; ','
        call    sub_CB4F
        xor ah, ah
        int 16h     ; KEYBOARD - READ CHAR FROM BUFFER, WAIT IF EMPTY
                    ; Return: AH = scan code, AL = character
        cmp al, 2Bh ; '+'
        jnz loc_B790

loc_B79E:
        stc
        ret
; --------------------------------------------------

loc_B7A0:
        mov di, 1E61h
        mov ax, ds:975h
        mov ah, ds:0DAFh
        mov cx, 4Fh ; 'O'
        cld
        repe stosw
        mov al, 0Dh
        stosw
        mov al, 0Ah
        stosw
        clc
        ret
sub_B6AB    endp

; --------------------------------------------------

loc_B7B8:
        jmp loc_B6A9
; --------------------------------------------------

loc_B7BB:
        jmp short loc_B749

; ---------- S U B  R O U T I N E --------------------------


sub_B7BD    proc near
        call    sub_B85D
        jb  loc_B7B8
        xor ax, ax
        test    word ptr ds:162h, 40h
        jnz loc_B7DB
        mov al, ds:263h
        cmp ds:139h, ax
        jb  loc_B7BB
        or  word ptr ds:162h, 40h

loc_B7DB:
        test    word ptr ds:162h, 8
        jnz loc_B7B8
        cmp word ptr ds:2382h, 0
        jnz loc_B82A
        cmp ds:139h, ax
        ja  loc_B7B8
        call    sub_AEF6
        jb  loc_B82A
        mov ax, ds:971h
        cmp [si], al
        jnz loc_B82A
        mov ax, [si+1]
        call    sub_BF90
        xchg    ah, al
        call    sub_BF90
        xchg    ah, al
        cmp ax, ds:0E15h
        jnz loc_B82A
        push    si
        sub cx, si
        call    sub_7010
        mov cx, si
        pop si
        sub cx, si
        push    cx
        call    sub_A699
        pop cx
        call    sub_AE5E
        call    sub_A699
        call    sub_AEF6
        sub cx, si

loc_B82A:
        mov bx, 13Fh
        or  word ptr ds:162h, 4
        or  word ptr ds:162h, 10h
        call    sub_B87D
        jb  loc_B846
        cmp word ptr ds:2382h, 0
        jz  loc_B846
        ret
; --------------------------------------------------

loc_B846:
        pushf
        mov word ptr ds:162h, 8
        or  word ptr ds:162h, 40h
        push    word ptr ds:139h
        pop word ptr ds:208Ch
        popf
        ret
sub_B7BD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B85D    proc near
        cmp word ptr ds:16Ah, 0
        jnz loc_B87B
        cmp byte ptr ds:21Dh, 0
        jnz loc_B872
        cmp word ptr ds:164h, 0
        jnz loc_B87B

loc_B872:
        call    sub_AEF6
        cmp byte ptr [si], 1Ah
        stc
        jz  locret_B87C

loc_B87B:
        clc

locret_B87C:
        ret
sub_B85D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B87D    proc near
                    ; sub_B6AB+37p ...
        cmp word ptr ds:2382h, 0
        jnz loc_B8A2
        test    word ptr ds:13Dh, 1
        jz  loc_B890
        db 81h, 0C3h, 4, 0  ; add bx, 4

loc_B890:
        cmp word ptr [bx], 0
        stc
        jz  locret_B8A5
        push    word ptr [bx]
        pop word ptr ds:2382h
        mov word ptr ds:2384h, 0

loc_B8A2:
        call    sub_B3CC

locret_B8A5:
        ret
sub_B87D    endp

; --------------------------------------------------

loc_B8A6:
        jmp loc_B967
; --------------------------------------------------

loc_B8A9:
        jmp loc_B6A9

; ---------- S U B  R O U T I N E --------------------------


sub_B8AC    proc near
        cmp word ptr ds:16Ah, 0
        jz  loc_B8A9
        cmp word ptr ds:2382h, 0
        jnz loc_B8A6
        call    sub_B977
        jnb loc_B8D3
        mov ax, ds:16Ah
        call    sub_8A92
        mov word ptr ds:16Ah, 0
        stc
        ret
; --------------------------------------------------

loc_B8CD:
        add sp, 8
        jmp loc_B959
; --------------------------------------------------

loc_B8D3:
        mov ax, ds:83Eh
        call    sub_8A92
        mov ax, ds:83Eh
        mov cx, ds:2380h
        call    sub_8E7A
        jb  loc_B8A9
        push    di
        mov ax, ds:16Ah
        call    sub_8683
        pop di
        jb  loc_B8A9
        mov bx, cx
        add bx, si
        inc di
        inc di
        mov dx, di
        dec dx
        sub di, ds:2380h

loc_B8FC:
        push    si

loc_B8FD:
        push    bx
        push    dx
        push    di
        cmp byte ptr [si], 1Ah
        jz  loc_B8CD
        mov cx, bx
        sub cx, si
        jbe loc_B8CD
        dec cx
        jz  loc_B8CD
        call    sub_ACA8
        pop di
        pop dx
        pop bx
        mov bp, ax
        mov ax, cx
        mov cx, si
        jb  loc_B922
        cmp bp, ds:0E63h
        jnz loc_B8FD

loc_B922:
        pop si
        sub cx, si
        jbe loc_B932
        add di, cx
        cmp di, dx
        jnb loc_B970
        sub di, cx
        cld
        repe movsb

loc_B932:
        mov cx, ax
        mov byte ptr [di], 1Ah
        cmp bp, ds:0E63h
        jz  loc_B93F
        jmp short loc_B8FC
; --------------------------------------------------

loc_B93F:
        push    word ptr ds:2086h
        push    bx
        push    dx
        mov bx, ds:2088h
        inc bx
        inc bx
        dec di
        call    sub_B33A
        pop dx
        pop bx
        pop si
        jb  locret_B96C
        mov byte ptr [di], 1Ah
        jmp short loc_B8FC
; --------------------------------------------------

loc_B959:
        push    word ptr ds:83Eh
        pop word ptr ds:2382h
        mov word ptr ds:2384h, 0

loc_B967:
        call    sub_B3CC
        jb  loc_B96D

locret_B96C:
        ret
; --------------------------------------------------

loc_B96D:
        jmp loc_B8D3
; --------------------------------------------------

loc_B970:
        mov ax, 7Bh ; '{'
        call    sub_CB4F
        ret
sub_B8AC    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B977    proc near
        push    si
        push    di
        push    cx
        call    sub_B9C8
        mov ax, ds:16Eh
        mov dx, 2398h
        mov cx, 2
        call    sub_BA13
        jnb loc_B993

loc_B98B:
        mov ax, 6Ch ; 'l'
        call    sub_CB4F
        jmp short loc_B9BC
; --------------------------------------------------

loc_B993:
        mov cx, ds:2398h
        sub cx, 2
        jbe loc_B9BC
        call    sub_AA53
        jb  loc_B9BC
        mov ds:2395h, ax
        mov dx, di
        inc dx
        inc dx
        sub dx, cx
        call    sub_BA13
        jnb loc_B9B7
        mov ax, ds:2395h
        call    sub_8A92
        jmp short loc_B98B
; --------------------------------------------------

loc_B9B7:
        clc

loc_B9B8:
        pop cx
        pop di
        pop si
        ret
; --------------------------------------------------

loc_B9BC:
        mov ax, ds:16Eh
        call    sub_9FE7
        call    sub_B9C8
        stc
        jmp short loc_B9B8
sub_B977    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B9C8    proc near
        mov ax, ds:2395h
        or  ax, ax
        jz  locret_B9D8
        call    sub_8A92
        mov word ptr ds:2395h, 0

locret_B9D8:
        ret
sub_B9C8    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B9D9    proc near
        call    sub_B9EE
        jb  locret_B9ED
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        mov ah, 27h ; '''
        mov dx, si
        int 21h     ; DOS - RANDOM BLOCK READ
                    ; DS:DX -> FCB
                    ; CX = number of records to be read
        or  al, al
        jz  locret_B9ED

loc_B9EC:
        stc

locret_B9ED:
        ret
sub_B9D9    endp


; ---------- S U B  R O U T I N E --------------------------


sub_B9EE    proc near
        push    dx
        push    cx
        call    sub_8683
        pop cx
        pop dx
        jb  locret_B9ED
        add si, 4
        mov ax, [si+21h]
        mov bp, [si+23h]
        add ax, cx
        adc bp, 0
        cmp bp, ds:209Fh
        jnz loc_BA0F
        cmp ax, ds:209Dh

loc_BA0F:
        ja  loc_B9EC
        clc
        ret
sub_B9EE    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BA13    proc near
        mov ax, ds:16Eh
sub_BA13    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BA16    proc near
        push    dx
        push    cx
        call    sub_8683
        pop cx
        pop dx
        jnb loc_BA23
        mov ax, 0
        ret
; --------------------------------------------------

loc_BA23:
        call    sub_BA27
        ret
sub_BA16    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BA27    proc near
        push    di

loc_BA28:
        cmp word ptr [si+2], 200h
        jb  loc_BA3D
        push    cx
        push    dx
        call    sub_BA6D
        pop dx
        pop cx
        or  al, al
        jz  loc_BA3D
        pop di
        stc
        ret
; --------------------------------------------------

loc_BA3D:
        mov di, [si+2]
        mov ax, 200h
        sub ax, di
        cmp ax, cx
        jb  loc_BA4B
        mov ax, cx

loc_BA4B:
        sub cx, ax
        push    cx
        push    si
        add di, si
        add di, [si]
        add [si+2], ax
        mov si, dx
        mov cx, ax
        xchg    si, di
        cld
        push    es
        push    ds
        pop es
        assume es:nothing
        repe movsb
        pop es
        assume es:nothing
        mov dx, di
        pop si
        pop cx
        or  cx, cx
        jnz loc_BA28
        pop di
        ret
sub_BA27    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BA6D    proc near
        mov cx, 200h
sub_BA6D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_BA70    proc near
        mov dx, si
        add dx, [si]
        push    cx
        sub cx, 200h
        mov bp, cx
        jnb loc_BA96
        push    si
        push    di
        mov di, dx
        mov si, dx
        add si, 200h
        add si, cx
        neg cx
        add dx, cx
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        repe movsb
        pop es
        assume es:nothing
        pop di
        pop si

loc_BA96:
        pop cx
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        mov dx, si
        add dx, 4
        mov ah, 27h
        int 21h     ; DOS - RANDOM BLOCK READ
                    ; DS:DX -> FCB
                    ; CX = number of records to be read
        sub cx, bp
        mov word ptr [si+2], 200h
        sub [si+2], cx
        jz  loc_BACE
        or  cx, cx
        jz  locret_BAD0
        push    es
        push    ds
        pop es
        assume es:nothing
        push    si
        push    di
        mov di, 1FFh
        add di, [si]
        add di, si
        mov ax, cx
        add ax, [si]
        dec ax
        add si, ax
        std
        repe movsb
        cld
        pop di
        pop si
        pop es
        assume es:nothing

loc_BACE:
        xor ax, ax

locret_BAD0:
        ret
sub_BA70    endp

seg000      ends

        end
