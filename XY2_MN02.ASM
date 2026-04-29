;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_MN02.ASM
; SEGMENT:   seg000 (CODE)
; ZONE:      Zone 2 -- Code with relocs 19-22, part 1
; LINES:     6449
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC loc_4E4F, loc_542C, loc_5947, sub_3D15, sub_409F, sub_4199
        PUBLIC sub_4249, sub_4252, sub_4550, sub_4771, sub_47C4, sub_47EB
        PUBLIC sub_4952, sub_4B4B, sub_4B90, sub_5077, sub_5600, sub_56CA
        PUBLIC sub_5755, sub_5796, sub_57A9, sub_584F, sub_5865, sub_588E
        PUBLIC sub_5A98, sub_5ABB, sub_5AD4, sub_5AF5, sub_5B24, sub_5CC3
        PUBLIC sub_5D94, sub_5DE0, sub_5E89, sub_62BE, sub_6709, sub_6736
        PUBLIC sub_6796

seg000      segment byte public 'CODE'
        assume cs:seg000

        assume es:nothing, ss:nothing, ds:nothing


; --- NEAR EXTRNs (same segment) ---
        EXTRN byte_1:BYTE
        EXTRN byte_321D:BYTE
        EXTRN loc_1939:NEAR
        EXTRN sub_1270:NEAR
        EXTRN sub_1281:NEAR
        EXTRN sub_13A5:NEAR
        EXTRN sub_16A7:NEAR
        EXTRN sub_173C:NEAR
        EXTRN sub_1762:NEAR
        EXTRN sub_18CC:NEAR
        EXTRN sub_19C9:NEAR
        EXTRN sub_2214:NEAR
        EXTRN sub_2262:NEAR
        EXTRN sub_28F7:NEAR
        EXTRN sub_2AAA:NEAR
        EXTRN sub_2B8E:NEAR
        EXTRN sub_2E22:NEAR
        EXTRN sub_3264:NEAR
        EXTRN sub_3450:NEAR
        EXTRN sub_419:NEAR
        EXTRN sub_421:NEAR
        EXTRN sub_4ED:NEAR
        EXTRN sub_57D:NEAR
        EXTRN sub_5AD:NEAR
        EXTRN sub_5E6:NEAR
        EXTRN sub_63A:NEAR
        EXTRN sub_6801:NEAR
        EXTRN sub_6811:NEAR
        EXTRN sub_6941:NEAR
        EXTRN sub_6A78:NEAR
        EXTRN sub_6B61:NEAR
        EXTRN sub_6D99:NEAR
        EXTRN sub_6E0A:NEAR
        EXTRN sub_7010:NEAR
        EXTRN sub_7016:NEAR
        EXTRN sub_7084:NEAR
        EXTRN sub_70B2:NEAR
        EXTRN sub_7219:NEAR
        EXTRN sub_75A:NEAR
        EXTRN sub_7600:NEAR
        EXTRN sub_764:NEAR
        EXTRN sub_769:NEAR
        EXTRN sub_773:NEAR
        EXTRN sub_778:NEAR
        EXTRN sub_8142:NEAR
        EXTRN sub_8275:NEAR
        EXTRN sub_8554:NEAR
        EXTRN sub_8574:NEAR
        EXTRN sub_8683:NEAR
        EXTRN sub_8A92:NEAR
        EXTRN sub_8DD4:NEAR
        EXTRN sub_8E35:NEAR
        EXTRN sub_8E4F:NEAR
        EXTRN sub_8E7A:NEAR
        EXTRN sub_8F07:NEAR
        EXTRN sub_A54E:NEAR
        EXTRN sub_AA8:NEAR
        EXTRN sub_BF90:NEAR
        EXTRN sub_CAFE:NEAR
        EXTRN sub_CB4F:NEAR
        EXTRN sub_CB6A:NEAR
        EXTRN sub_CD28:NEAR
        EXTRN sub_CE6:NEAR
        EXTRN sub_CF5B:NEAR
        EXTRN sub_CF7E:NEAR
        EXTRN sub_D02B:NEAR
        EXTRN sub_D0C0:NEAR
        EXTRN sub_D0CE:NEAR
        EXTRN sub_D157:NEAR
        EXTRN sub_D4BA:NEAR
        EXTRN sub_D7FE:NEAR
        EXTRN sub_D919:NEAR
        EXTRN sub_DE15:NEAR
        EXTRN sub_E570:NEAR
        EXTRN sub_EE6C:NEAR

        db 0B8h ; ?
        db  35h ; 5
        db    0 ;
        db 0E8h ; ?
        db  89h ; ?
        db  90h ; ?
        db 0C3h ; ?
        db 0F7h, 6, 3 dup(0), 2, 75h, 8, 0F7h, 6, 2 dup(0), 4
        db 0, 74h, 0E9h, 0B8h, 4, 0, 0F7h, 0D0h, 21h, 6, 2 dup(0)
        db 81h, 0Eh, 3 dup(0), 2, 81h, 0Eh, 3 dup(0), 40h, 0E8h
        db 5Fh, 6Ah, 9Ch, 81h, 36h, 3 dup(0), 40h, 9Dh, 0BEh, 70h
        db 8, 73h, 3, 0BEh, 20h, 14h, 0BFh, 0D0h, 8, 0E8h, 60h
        db 1Dh, 72h, 0B9h, 6, 1Eh, 7, 0BEh, 3Ch, 0Bh, 0B9h, 0Ch
        db 0, 0BFh, 14h, 0, 0F3h, 0A4h, 0C6h, 5, 0, 0BFh, 0D1h
        db 8, 83h, 3Dh, 0, 74h, 6, 81h, 3Dh, 2 dup(20h), 75h, 7
        db 0B0h, 3Fh, 0B9h, 0Ch, 0, 0F3h, 0AAh, 7, 0BAh, 2Bh, 14h
        db 0B4h, 1Ah, 0CDh, 21h, 0BFh, 0CFh, 8, 0C6h, 5, 10h, 0BAh
        db 0C9h, 8, 0B4h, 11h, 0CDh, 21h, 0C6h, 5, 0, 0Ah, 0C0h
        db 74h, 3, 0EBh, 7Ah, 90h, 33h, 0C0h, 0A3h, 25h, 14h, 0A3h
        db 27h, 14h, 0A3h, 29h, 14h, 0A1h, 0C0h, 0, 0A3h, 64h
        db 0, 0A3h, 66h, 0, 0A3h, 0C2h, 0, 0C7h, 6, 5Fh, 1, 3
        db 0, 0E8h, 0, 0B3h, 0E8h, 6Dh, 0, 72h, 53h, 0BAh, 2Bh
        db 14h, 0B4h, 1Ah, 0CDh, 21h, 0BAh, 0C9h, 8, 0BFh, 0CFh
        db 8, 0C6h, 5, 10h, 0B4h, 12h, 0CDh, 21h, 0C6h, 5, 0, 0Ah
        db 0C0h, 74h, 0E0h, 6, 1Eh, 7, 8Bh, 3Eh, 66h, 0, 0FCh
        db 0BEh, 0CBh, 0Ah, 0B9h, 71h, 0, 0F3h, 0A4h, 83h, 0EFh
        db 21h, 0A1h, 29h, 14h, 0E8h, 67h, 0F2h, 83h, 0C7h, 16h
        db 0A1h, 25h, 14h, 8Bh, 16h, 27h, 14h, 0E8h, 70h, 0F2h
        db 83h, 0C7h, 0Bh, 0E8h, 14h, 0, 7, 89h, 3Eh, 66h, 0, 0E8h
        db 0ACh, 0B2h, 0E8h, 0E7h, 0EEh, 0F8h, 0C3h, 0B8h, 37h
        db 0, 0E8h, 84h, 8Fh, 0C3h, 0B8h, 0Dh, 0, 0AAh, 0B8h, 0Ah
        db 0, 0AAh, 0C3h, 0B8h, 36h, 0, 0E8h, 74h, 8Fh, 0C3h, 0FFh
        db 6, 29h, 14h, 0BEh, 33h, 14h, 8Bh, 3Eh, 66h, 0, 81h
        db 0C7h, 0F0h, 0, 3Bh, 3Eh, 0F8h, 8, 77h, 0E4h, 3Bh, 3Eh
        db 0C8h, 0, 77h, 0DEh, 6, 1Eh, 7, 0FCh, 8Bh, 3Eh, 66h
        db 0, 0A0h, 0D0h, 8, 32h, 0E4h, 0Bh, 0C0h, 74h, 8, 5, 40h
        db 0, 0AAh, 0B8h, 3Ah, 0, 0AAh, 0B9h, 8, 0, 0F3h, 0A4h
        db 0B8h, 20h, 0, 0AAh, 0B9h, 3, 0, 0F3h, 0A4h, 8Bh, 4
        db 25h, 10h, 0, 74h, 14h, 0B9h, 5, 0, 51h, 56h, 0BEh, 48h
        db 0Bh, 0F3h, 0A4h, 5Eh, 0B9h, 0Eh, 0, 58h, 2Bh, 0C8h
        db 0EBh, 4, 90h, 0B9h, 0Eh, 0, 0B8h, 20h, 0, 0F3h, 0AAh
        db 83h, 0C6h, 11h, 0A1h, 25h, 14h, 3, 4, 0A3h, 25h, 14h
        db 0A1h, 27h, 14h, 13h, 44h, 2, 0A3h, 27h, 14h, 0ADh, 8Bh
        db 14h, 83h, 0EEh, 6, 0E8h, 0C4h, 0F1h, 0B8h, 20h, 0, 4 dup(0AAh)
        db 8Bh, 4, 0B9h, 5, 0, 0D3h, 0F8h, 25h, 0Fh, 0, 0E8h, 9Ah
        db 0F1h, 0B8h, 2Dh, 0, 0AAh, 0B8h, 30h, 0, 2 dup(0AAh)
        db 8Bh, 4, 25h, 1Fh, 0, 0E8h, 89h, 0F1h, 0B8h, 2Dh, 0
        db 0AAh, 0B8h, 30h, 0, 2 dup(0AAh), 8Bh, 4, 0B9h, 9, 0
        db 0D3h, 0F8h, 25h, 7Fh, 0, 5, 50h, 0, 3Dh, 63h, 0, 76h
        db 3, 2Dh, 64h, 0, 0E8h, 68h, 0F1h, 0B8h, 20h, 0, 4 dup(0AAh)
        db 83h, 0EEh, 2, 8Bh, 4, 0B9h, 0Bh, 0, 0D3h, 0F8h, 25h
        db 1Fh, 0, 8Bh, 0D8h, 85h, 0C0h, 75h, 3, 0B8h, 0Ch, 0
        db 3Dh, 0Ch, 0, 76h, 3, 2Dh, 0Ch, 0, 0E8h, 40h, 0F1h, 0B8h
        db 3Ah, 0, 0AAh, 0B8h, 30h, 0, 2 dup(0AAh), 8Bh, 4, 0B9h
        db 5, 0, 0D3h
byte_3CDB label byte                    ; offset 0x3CDB ??? self-modifying data area (saves DS/SS/SP)
        db 0F8h, 25h, 3Fh, 0, 0E8h, 2Ah, 0F1h, 0A0h, 4Dh, 0Bh
        db 83h, 0FBh, 0Ch, 72h, 3, 0A0h, 4Eh, 0Bh, 0AAh, 0E8h
        db 0DBh, 0FEh, 89h, 3Eh, 66h, 0, 7, 0E8h, 86h, 0B1h, 0F8h
        db 0C3h, 0Ch dup(0), 6Ch, 0, 84h, 3 dup(0), 5Eh, 3Fh
        dw seg seg000
        db 0ABh, 41h
        dw seg seg000

; ---------- S U B  R O U T I N E --------------------------


sub_3D15    proc near
        mov bx, ds:86Eh
        mov es, bx
        mov cl, ds:0Ah
        xor ch, ch
        sub cx, si
        sub cx, 7
        jbe loc_3D46
        shl si, 1
        push    cx
        cld

loc_3D2C:
        call    sub_769
        mov [di], al
        inc di
        loop    loc_3D2C
        pop cx
        mov ax, 20h ; ' '
        push    es
        push    ds
        pop es
        assume es:nothing
        std
        dec di
        repe scasb
        pop es
        assume es:nothing
        jz  loc_3D45
        inc di
        clc
        ret
; --------------------------------------------------

loc_3D45:
        inc di

loc_3D46:
        stc
        ret
sub_3D15    endp

; --------------------------------------------------
        mov dx, 148Bh
        mov ax, ds:8C7h
        sub ax, 870h
        add ax, 2
        inc ax
        mov si, ax
        jmp short loc_3D77
; --------------------------------------------------
        db 0E8h, 0F2h, 0F4h, 0B8h, 82h, 0, 73h, 3, 0E9h, 61h, 1
        db 81h, 0Eh, 3 dup(0), 40h, 0E8h, 0E1h, 67h, 0B8h, 86h
        db 0, 72h, 0EFh, 8Bh, 0F2h, 0BAh, 70h, 8
; --------------------------------------------------

loc_3D77:
        mov ds:1489h, dx
        push    ds
        pop es
        assume es:nothing
        xor ax, ax
        cld
        mov cx, 5
        mov di, ds:8C7h
        repe stosb
        mov ds:8C7h, di
        push    di
        inc di
        call    sub_3D15
        jb  loc_3D98
        mov byte ptr [di+1], 0Dh

loc_3D98:
        pop si
        sub di, si
        mov ax, di
        mov [si], al
        inc si
        mov di, 149Ch
        call    sub_5865
        inc si
        mov di, 14ACh
        call    sub_5865
        call    sub_3FF8
        call    sub_5AD
        call    sub_CE6
        pushf

loc_3DB7:
        push    es
        push    word ptr ds:8C7h
        pop word ptr ds:14D4h
        mov dx, ds:1489h
        mov ds:14D6h, ds
        mov ds:14DAh, ds
        mov ds:14DEh, ds
        mov word ptr cs:byte_3CDB+2Ah, ds
        mov word ptr cs:byte_3CDB+28h, ss
        mov word ptr cs:byte_3CDB+25h, sp
        mov ax, cs
        sub ax, 10h
        mov es, ax
        assume es:nothing
        mov bx, 2Ch ; ','
        mov ax, es:[bx]
        mov ds:14D2h, ax
        push    ds
        pop es
        assume es:nothing
        mov bx, 14D2h
        mov ax, 4B00h
        int 21h     ; DOS - 2+ - LOAD OR EXECUTE (EXEC)
                    ; DS:DX -> ASCIZ filename
                    ; ES:BX -> parameter block
                    ; AL = subfunc: load & execute program
        cli
        mov ds, word ptr cs:byte_3CDB+2Ah
        assume ds:nothing
        mov ss, word ptr cs:byte_3CDB+28h
        assume ss:nothing
        mov sp, word ptr cs:byte_3CDB+25h
        sti
        pop es
        assume es:nothing
        jb  loc_3E11
        xor ax, ax
        jmp short loc_3E5E
; --------------------------------------------------

loc_3E11:
        cmp al, 2
        jnz loc_3E5E
        cmp word ptr ds:1489h, 870h
        jnz loc_3E5E
        mov al, 2Eh ; '.'
        push    es
        push    ds
        pop es
        assume es:nothing
        std
        mov di, ds:8C7h
        mov cx, di
        sub cx, 870h
        dec di
        mov bx, di
        push    cx
        repne scasb
        pop cx
        jz  loc_3E3D
        mov di, bx
        xor ax, ax
        repe scasb
        inc di

loc_3E3D:
        inc di
        mov si, 1492h
        mov cx, 5
        cmp byte ptr [di], 2Eh ; '.'
        jnz loc_3E53
        cmp word ptr [di+1], 4F43h
        jnz loc_3E5A
        mov si, 1497h

loc_3E53:
        cld
        repe movsb
        pop es
        assume es:nothing
        jmp loc_3DB7
; --------------------------------------------------

loc_3E5A:
        mov ax, 2
        pop es

loc_3E5E:
        mov dx, 2
        xor cx, cx

loc_3E63:
        loop    loc_3E63
        dec dx
        jnz loc_3E63
        popf
        push    ax
        call    sub_CE6
        call    sub_40B7
        call    sub_3F7D
        pop ax
        or  ax, ax
        jz  locret_3E7E
        mov ax, 87h ; '?'
        call    sub_CB4F

locret_3E7E:
        ret
; --------------------------------------------------
        db 0E8h, 0CCh, 0F3h, 72h, 3, 0E9h, 0C1h, 0FEh, 0E8h, 6Eh
        db 1, 8Ch, 0C2h, 33h, 0C0h, 8Eh, 0C0h, 26h, 0FFh, 36h
        db 0Ch, 0, 26h, 0FFh, 36h, 0Eh, 0, 8Eh, 0C2h, 0E8h, 2Ah
        db 0, 8Ch, 0C2h, 33h, 0C0h, 8Eh, 0C0h, 26h, 8Fh, 6, 0Eh
        db 0, 26h, 8Fh, 6, 0Ch, 0, 8Eh, 0C2h, 0E8h, 3, 2, 0E8h
        db 0C6h, 0, 0C3h, 0B8h, 69h, 0, 0EBh, 8, 0B8h, 68h, 0
        db 0EBh, 3, 0B8h, 67h, 0, 0E8h, 87h, 8Ch, 0C3h, 0A1h, 0E2h
        db 14h, 2Bh, 6, 0E4h, 14h, 3Dh, 0, 8, 72h, 0EDh, 1Eh, 0FFh
        db 36h, 0E2h, 14h, 8Eh, 1Eh, 0E4h, 14h, 0BAh, 0, 1, 0B4h
        db 1Ah, 0CDh, 21h, 8Ch, 0DAh, 0B4h, 26h, 0CDh, 21h, 8Fh
        db 6, 2, 0, 1Fh, 0BAh, 60h, 14h, 0B4h, 0Fh, 0CDh, 21h
        db 0Ah, 0C0h, 75h, 0C2h, 0C7h, 6, 6Eh, 14h, 1, 0, 33h
        db 0C0h, 0A3h, 80h, 14h, 0A3h, 82h, 14h, 0A2h, 84h, 14h
        db 8Bh, 0Eh, 70h, 14h, 0B4h, 27h, 0CDh, 21h, 3Ch, 0, 75h
        db 0A0h, 0BEh, 0E8h, 14h, 0B9h, 21h, 15h, 0E8h, 0Eh, 8Eh
        db 0B6h, 5, 0B2h, 0, 33h, 0DBh, 0B4h, 2, 0CDh, 10h, 0E8h
        db 0B8h, 0CDh, 0BFh, 7, 3Dh, 0BEh, 0Dh, 3Dh, 0E8h, 0B9h
        db 0CDh, 9Ch, 1Eh, 6, 2Eh, 89h, 26h, 0, 3Dh, 2Eh, 8Ch
        db 16h, 3, 3Dh, 2Eh, 0C6h, 6, 2, 3Dh, 1, 0FAh, 0A1h, 0E4h
        db 14h, 8Eh, 0D8h, 8Eh, 0D0h, 8Eh, 0C0h, 0BCh, 0, 1, 6
        db 0B8h, 0, 1, 50h, 0CBh, 0, 0FAh, 0B0h, 20h, 0E6h, 20h
        db 2Eh, 8Eh, 16h, 3, 3Dh, 2Eh, 8Bh, 26h, 0, 3Dh, 7, 1Fh
        db 9Dh, 0BFh, 7, 3Dh, 0BEh, 0Dh, 3Dh, 0E8h, 77h, 0CDh
        db 0E8h, 6Ah, 0CDh, 0C3h

; ---------- S U B  R O U T I N E --------------------------


sub_3F7D    proc near
        mov byte ptr ds:2562h, 0
        mov si, 2616h
        mov di, 260Ch
        push    es
        push    ds
        pop es
        assume es:nothing
        cld

loc_3F8C:
        lodsb
        or  al, al
        jz  loc_3FAB
        push    ax
        push    di
        mov al, [di]
        mov di, 2620h
        mov cx, ds:260Ah
        repne scasb
        pop di
        pop ax
        jz  loc_3FA8
        not al
        and ds:2560h, al

loc_3FA8:
        inc di
        jmp short loc_3F8C
; --------------------------------------------------

loc_3FAB:
        pop es
        assume es:nothing
        mov word ptr ds:869h, 0
        test    word ptr ds:0, 1
        jz  loc_3FC1
        mov byte ptr ds:4, 2
        jmp short loc_3FC6
; --------------------------------------------------

loc_3FC1:
        mov byte ptr ds:0Bh, 2

loc_3FC6:
        call    sub_778
        call    sub_63A
        call    sub_5AF5
        call    sub_EE6C
        cmp byte ptr ds:18EBh, 0
        jz  loc_3FF4
        mov ax, ds:0CEh
        cmp ax, ds:1A26h
        jb  loc_3FEB
        mov ax, ds:0D0h
        cmp ax, ds:864h
        jnb loc_3FF4

loc_3FEB:
        call    sub_5A98
        call    sub_5CC3
        call    sub_5A98

loc_3FF4:
        call    sub_28F7
        ret
sub_3F7D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_3FF8    proc near
        mov ax, ds:0BEh
        push    ax
        mov bx, 264h
        cmp byte ptr ds:18EBh, 0
        jz  loc_4011
        cmp ax, [bx+0BEh]
        jb  loc_4011
        push    bx
        call    sub_5ABB
        pop bx

loc_4011:
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, ds:66h
        inc di
        cld
        cmp byte ptr ds:18EBh, 0
        jz  loc_4030
        mov si, [bx+0BEh]
        db 8Bh, 8Fh, 66h, 00h    ; mov cx, [bx+0066h] (mod=10)
        inc cx
        sub cx, si
        jbe loc_4030
        repe movsb

loc_4030:
        mov si, ds:8F8h
        mov cx, ds:1DB2h
        sub cx, si
        jbe loc_403E
        repe movsb

loc_403E:
        mov ds:14E0h, di
        add di, 0Fh
        mov cl, 4
        shr di, cl
        mov ax, ds
        add di, ax
        mov dx, 4
        mov bx, 957h

loc_4053:
        mov si, [bx]
        inc bx
        inc bx
        mov cx, [bx]
        inc bx
        inc bx
        sub cx, si
        jbe loc_4064
        push    dx
        call    sub_409F
        pop dx

loc_4064:
        dec dx
        jnz loc_4053
        mov ds:14E4h, di
        mov ax, cs
        sub ax, 10h
        mov es, ax
        assume es:nothing
        mov bx, 2
        mov cx, es:[bx]
        sub cx, ds:943h
        mov ds:14E2h, cx
        mov bx, di
        sub bx, ax
        call    near ptr byte_321D+31h
        jb  loc_4093
        mov ax, 4A00h
        int 21h     ; DOS - 2+ - ADJUST MEMORY BLOCK SIZE (SETBLOCK)
                    ; ES = segment address of block to change
                    ; BX = new size in paragraphs
        jnb loc_4093
        call    sub_E570

loc_4093:
        pop es
        assume es:nothing
        pop ax
        cmp ax, ds:0BEh
        jz  locret_409E
        call    sub_5ABB

locret_409E:
        ret
sub_3FF8    endp


; ---------- S U B  R O U T I N E --------------------------


sub_409F    proc near
        push    bx
        push    cx
        push    di
        call    sub_5D57
        pop di
        pop cx
        add di, cx
        pop bx
        ret
sub_409F    endp

; --------------------------------------------------

loc_40AB:
        call    sub_E570
        mov ax, 88h ; '?'
        call    sub_CB4F
        jmp sub_5E6

; ---------- S U B  R O U T I N E --------------------------


sub_40B7    proc near
        push    es
        mov word ptr ds:14E6h, 0
        call    near ptr byte_321D+31h
        jb  loc_40F7
        mov ax, cs
        sub ax, 10h
        mov es, ax
        assume es:nothing
        mov bx, ds:14E2h
        sub bx, ax
        mov ax, 4A00h
        int 21h     ; DOS - 2+ - ADJUST MEMORY BLOCK SIZE (SETBLOCK)
                    ; ES = segment address of block to change
                    ; BX = new size in paragraphs
        jnb loc_40F7
        push    bx
        mov ax, 4A00h
        int 21h     ; DOS - 2+ - ADJUST MEMORY BLOCK SIZE (SETBLOCK)
                    ; ES = segment address of block to change
                    ; BX = new size in paragraphs
        pop bx
        jb  loc_40AB
        mov ax, es
        add bx, ax
        mov ax, ds:14E2h
        mov ds:14E2h, bx
        sub ax, bx
        mov ds:14E6h, ax
        mov bp, 2
        mov es:[bp+0], bx

loc_40F7:
        mov ax, ds:0BEh
        push    ax
        mov bx, 264h
        cmp byte ptr ds:18EBh, 0
        jz  loc_410E
        cmp ax, [bx+0BEh]
        jb  loc_410E
        call    sub_5ABB

loc_410E:
        push    ds
        pop es
        assume es:nothing
        mov di, ds:14E2h
        mov si, ds:14E4h
        mov bx, 963h
        inc bx
        inc bx
        push    word ptr ds:14E2h
        pop word ptr [bx+2]
        mov dx, 4

loc_4127:
        mov cx, [bx]
        mov [bx], di
        dec bx
        dec bx
        sub cx, [bx]
        jbe loc_4134
        call    sub_4199

loc_4134:
        mov ax, [bx]
        mov [bx], di
        dec bx
        dec bx
        sub ax, [bx]
        jbe loc_4152
        sub ax, ds:14E6h
        mov word ptr ds:14E6h, 0
        jnb loc_4150
        sub ds:14E6h, ax
        xor ax, ax

loc_4150:
        sub di, ax

loc_4152:
        dec dx
        jnz loc_4127
        cmp word ptr ds:14E6h, 0
        jz  loc_415F
        jmp loc_40AB
; --------------------------------------------------

loc_415F:
        mov bx, 264h
        mov si, ds:14E0h
        dec si
        mov di, ds:1DB2h
        mov cx, di
        dec di
        std
        sub cx, ds:8F8h
        jbe loc_4177
        repe movsb

loc_4177:
        cmp byte ptr ds:18EBh, 0
        jz  loc_418D
        db 8Bh, 0BFh, 66h, 00h    ; mov di, [bx+0066h] (mod=10)
        mov cx, di
        inc cx
        sub cx, [bx+0BEh]
        jbe loc_418D
        repe movsb

loc_418D:
        pop ax
        cmp ax, ds:0BEh
        jz  loc_4197
        call    sub_5ABB

loc_4197:
        pop es
        assume es:nothing
        ret
sub_40B7    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4199    proc near
        push    dx
        push    bx
        push    cx
        push    di
        push    si
        call    sub_5D94
        pop si
        pop di
        pop cx
        sub di, cx
        sub si, cx
        pop bx
        pop dx
        ret
sub_4199    endp

; --------------------------------------------------
        db 80h, 0FCh, 0Fh, 72h, 30h, 74h, 5, 80h, 0FCh, 27h, 75h
        db 29h, 1Eh, 6, 57h, 56h, 51h, 1Eh, 7, 0Eh, 1Fh, 0B9h
        db 0Bh, 0, 0FCh, 8Bh, 0FAh, 47h, 0BEh, 0E5h, 41h, 0F3h
        db 0A6h, 59h, 5Eh, 5Fh, 7, 1Fh, 75h, 0Dh, 80h, 0FCh, 0Fh
        db 75h, 3, 32h, 0C0h, 0CFh, 33h, 0C9h, 0B0h, 3, 0CFh, 2Eh
        db 0FFh, 2Eh, 11h, 3Dh, 41h, 55h, 54h, 4Fh, 45h, 58h, 45h
        db 43h, 42h, 41h, 54h, 0A1h, 60h, 8, 0Bh, 0C0h, 74h, 3
        db 0E8h, 98h, 48h, 0E8h, 51h, 63h, 0BBh, 70h, 8, 0A1h
        db 32h, 8, 0E8h, 0A9h, 8Ah, 73h, 8, 0A1h, 32h, 8, 0E8h
        db 84h, 48h, 0F9h, 0C3h, 0A1h, 32h, 8, 0E8h, 6Dh, 44h
        db 72h, 0F0h, 89h, 36h, 34h, 15h, 3, 0CEh, 89h, 0Eh, 32h
        db 15h, 0B9h, 0, 2, 0E8h, 2Dh, 4Ch, 72h, 0DEh, 0A3h, 60h
        db 8, 0E8h, 53h, 44h, 0D1h, 0E9h, 33h, 0C0h, 6, 1Eh, 7
        db 8Bh, 0FEh, 0FCh, 0ABh, 40h, 0E2h, 0FCh, 7, 8Bh, 3Eh
        db 34h, 15h, 0C7h, 6, 30h, 15h, 0, 2

; ---------- S U B  R O U T I N E --------------------------


sub_4249    proc near
        cmp byte ptr [di], 1Ah
        jz  loc_4254
        cmp di, ds:1532h
sub_4249    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4252    proc near
        jb  loc_4279

loc_4254:
        mov ax, ds:832h
        call    sub_8A92
        mov ax, 25h ; '%'
        call    sub_CB6A
        clc
        ret
; --------------------------------------------------

loc_4262:
        cmp bh, 3Dh ; '='
        jz  loc_4285
        jmp loc_4304
; --------------------------------------------------

loc_426A:
        mov ax, [di+1]
        call    sub_3264
        mov bl, al
        mov bh, [di+3]
        inc di
        inc di
        jmp short loc_4285
; --------------------------------------------------

loc_4279:
        mov bx, [di]
        cmp bl, 3Bh ; ';'
        jz  loc_4262
        cmp bl, 0FFh
        jz  loc_426A

loc_4285:
        cmp bh, 3Dh ; '='
        jz  loc_4297
        push    si
        push    di
        call    sub_4316
        pop di
        pop si
        mov di, ds:1532h
        jmp short loc_4304
; --------------------------------------------------

loc_4297:
        xor bh, bh
        shl bx, 1
        add bx, si
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        mov al, 0Dh
        inc di
        inc di
        mov cx, ds:1532h
        sub cx, di
        mov dx, di
        repne scasb
        pop es
        assume es:nothing
        dec di
        mov cx, di
        sub cx, dx
        cmp cx, 1
        ja  loc_42C1
        mov al, [di-1]
        mov [bx], al
        jmp short loc_4304
; --------------------------------------------------

loc_42C1:
        push    dx
        push    di
        sub bx, si
        push    bx
        mov ax, ds:860h
        inc cx
        inc cx
        push    cx
        call    sub_8F07
        pop cx
        pop bx
        pop di
        pop dx
        jb  loc_4304
        push    di
        push    dx
        push    bx
        push    cx
        mov ax, ds:860h
        call    sub_8683
        pop cx
        pop bx
        add bx, si
        mov ax, ds:1530h
        mov [bx], ax
        mov dx, si
        mov di, si
        add di, ds:1530h
        add ds:1530h, cx
        pop si
        push    es
        push    ds
        pop es
        assume es:nothing
        mov ax, cx
        stosw
        dec cx
        dec cx
        cld
        repe movsb
        pop es
        assume es:nothing
        mov si, dx
        pop di

loc_4304:
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        mov al, 0Ah
        mov cx, ds:1532h
        sub cx, di
        repne scasb
        pop es
        assume es:nothing
        jmp sub_4249
sub_4252    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4316    proc near
        mov si, di
        call    sub_CAFE
        ret
sub_4316    endp

; --------------------------------------------------
        db 4 dup(0)         ; CALIGN 8 -> word_4320 (4 bytes 00)
word_4320   dw 0
word_4322   dw 0
        db 2 dup(0)
word_4326   dw 0
byte_4328   db 2 dup(0), 0B8h, 0, 50h, 0BBh, 0, 60h, 4Bh, 0E8h, 0B9h
        db 4Ah, 33h, 0C0h, 0A3h, 0Bh, 9, 0A3h, 3, 9, 0C7h, 6, 5Ch
        db 8, 2 dup(0), 0C7h, 6, 5Eh, 8, 2 dup(0), 0E8h, 3, 62h
        db 0BBh, 70h, 8, 0A1h, 32h, 8, 0E8h, 5Bh, 89h, 72h, 19h
        db 0A1h, 32h, 8, 0E8h, 27h, 43h, 73h, 15h, 0C3h
; --------------------------------------------------

loc_435F:
        jmp loc_451E
; --------------------------------------------------

loc_4362:
        mov ax, 25h ; '%'
        call    sub_CB6A

loc_4368:
        mov ax, ds:832h
        call    sub_8A92
        clc
        ret
; --------------------------------------------------

loc_4370:
        jmp loc_4512
; --------------------------------------------------

loc_4373:
        or  cx, cx
        jz  loc_4362
        mov cs:word_4326, si
        cld
        lodsw
        sub cx, 2
        jbe loc_4362
        push    es
        push    ds
        pop es
        assume es:nothing
        cmp al, 3Bh ; ';'
        jz  loc_435F
        call    sub_BF90
        xchg    ah, al
        call    sub_BF90
        mov dx, ax
        mov di, si
        mov al, 20h ; ' '
        repe scasb
        jz  loc_4370
        dec di
        inc cx
        mov si, di
        push    es
        push    cs
        pop es
        assume es:seg000
        mov di, 43CEh
        push    cx
        push    bx
        mov cx, 43FAh
        sub cx, di
        shr cx, 1
        xchg    dh, dl
        mov ax, dx

loc_43B3:
        mov bx, cs:[di]
        inc di
        inc di
        cmp ax, [bx]
        jz  loc_43C1
        loop    loc_43B3
        cmp cx, 0Fh

loc_43C1:
        pop bx
        pop cx
        pop es
        assume es:nothing
        jnz loc_4370
        mov ax, 0FFFDh
        db 2Eh, 0FFh, 0A5h, 56h, 00h    ; jmp cs:[di+0056h] (mod=10)
; --------------------------------------------------
        db 40h, 15h, 42h, 15h, 44h, 15h, 46h, 15h, 48h, 15h, 4Ah
        db 15h, 0F7h, 0Dh, 4Ch, 15h, 4Eh, 15h, 50h, 15h, 52h, 15h
        db 54h, 15h, 56h, 15h, 58h, 15h, 5Ah, 15h, 5Ch, 15h, 5Eh
        db 15h, 60h, 15h, 62h, 15h, 64h, 15h, 66h, 15h, 68h, 15h
        db 0ACh, 33h, 0C0h, 0ACh, 3Dh, 0FFh, 0, 75h, 3, 0E8h, 0B8h
        db 1Eh, 0A2h, 77h, 9, 0E9h, 12h, 1, 0ACh, 0E8h, 4Fh, 3
        db 72h, 45h, 0A2h, 6Dh, 9, 0EBh, 9, 0ACh, 0E8h, 44h, 3
        db 72h, 3Ah, 0A2h, 6Fh, 9, 0E8h, 4Eh, 3, 0E9h, 0F8h, 0
        db 8Fh, 44h, 54h, 44h, 53h, 44h, 52h, 44h, 66h, 44h, 6Bh
        db 44h, 70h, 44h, 0E1h, 45h, 0E6h, 45h, 0EBh, 45h, 0F0h
        db 45h, 0F5h, 45h, 10h, 46h, 11h, 46h, 0Fh, 46h, 5Ah, 44h
        db 60h, 44h, 17h, 44h, 0Ch, 44h, 0FAh, 43h, 8, 48h, 0FAh
        db 47h, 3 dup(40h), 0EBh, 38h, 0E9h, 0B8h, 0, 0B8h, 2
        db 55h, 0EBh, 30h, 90h, 0B8h, 3, 55h, 0EBh, 2Ah, 90h, 0B8h
        db 0, 55h, 0EBh, 24h, 0B8h, 1, 55h, 0EBh, 1Fh, 8Bh, 0DEh
        db 0ADh, 2 dup(49h), 52h, 51h, 0E8h, 4Ah, 3, 59h, 5Ah
        db 73h, 0Eh, 52h, 51h, 0E8h, 0D8h, 8Ah, 59h, 5Ah, 8Bh
        db 0F3h, 4Eh, 0Bh, 0C0h, 74h, 0CBh, 5, 0, 50h, 2Eh, 0A3h
        db 24h, 43h, 0ACh, 49h, 3Ch, 2Ah, 75h, 24h, 81h, 3Eh, 0Bh
        db 9, 8, 0, 73h, 0B6h, 8Bh, 3Eh, 0Bh, 9, 2Eh, 81h, 2Eh
        db 24h, 43h, 0, 50h, 2Eh, 8Bh, 0Eh, 24h, 43h, 88h, 8Dh
        db 3, 9, 47h, 89h, 3Eh, 0Bh, 9, 0EBh, 62h, 90h, 2 dup(3Ch)
        db 74h, 4Eh, 3Bh, 16h, 0F7h, 0Dh, 75h, 4Bh, 2Eh, 81h, 6
        db 24h, 43h, 0, 1, 3Ch, 3Eh, 74h, 3Dh, 2Eh, 81h, 6, 24h
        db 43h, 0, 1, 3Ch, 23h, 74h, 5Dh, 2Eh, 81h, 6, 24h, 43h
        db 0, 1, 3Ch, 25h, 74h, 52h, 0E8h, 74h, 2, 72h, 25h, 2Eh
        db 8Bh, 3Eh, 20h, 43h, 8Dh, 0BDh, 1Ah, 0, 89h, 5, 81h
        db 0FFh, 0AFh, 0Dh, 75h, 20h, 0BFh, 1Ah, 2, 81h, 0EFh
        db 14h, 2, 88h, 85h, 0B9h, 4, 88h, 85h, 48h, 5, 0EBh, 0Fh
        db 0EBh, 29h, 90h
; --------------------------------------------------

loc_4512:
        mov si, cs:word_4326
        call    sub_CAFE
        pop es
        jmp loc_4368
; --------------------------------------------------

loc_451E:
        push    si
        mov ax, ds:832h
        call    sub_8683
        mov ax, si
        pop si
        add cx, ax
        sub cx, si
        mov ax, 0Ah
        mov di, si
        cld
        repne scasb
        mov si, di
        pop es
        jmp loc_4373
; --------------------------------------------------
        db 2Eh, 0A1h, 24h, 43h, 8Bh, 0FEh, 50h, 0B8h, 0Dh, 0, 0FCh
        db 0F2h, 0AEh, 58h, 75h, 0C8h, 4Fh, 41h, 3Dh, 0FDh, 0FFh
        db 73h

; ---------- S U B  R O U T I N E --------------------------


sub_4550    proc near
        db  3Eh
        or  ax, ax
        jz  loc_45D3
        sub di, si
        sub cs:word_4326, si
        push    di
        push    ax
        push    si
        mov ax, ds:832h
        call    sub_8683
        pop di
        sub di, si
        pop ax
        push    di
        push    ax
        call    sub_8A92
        mov ax, ds:832h
        call    sub_8683
        pop ax
        pop dx
        pop di
        jb  loc_458D
        add si, dx
        add di, si
        add cs:word_4326, si
        push    si
        mov cx, di
        sub cx, si
        call    sub_8574
        pop si

loc_458B:
        jmp short loc_451E
; --------------------------------------------------

loc_458D:
        jmp short loc_4512
; --------------------------------------------------
        add ax, 3
        mov dx, 0Ah
        mov cs:word_4322, dx
        inc dx
        inc dx
        mul dx
        mov bp, di
        mov di, 910h
        add di, ax

loc_45A5:
        mov bx, di
        xor ax, ax
        stosw
        add cs:word_4322, di

loc_45AF:
        lodsb
        cmp ax, 0FFh
        jnz loc_45B8
        call    sub_62BE

loc_45B8:
        stosb
        inc word ptr [bx]
        cmp si, bp
        jnb loc_458B
        cmp di, cs:word_4322
        jb  loc_45AF
        mov ax, 19h
        push    si
        push    cx
        call    sub_CB4F
        pop cx
        pop si
        jmp loc_451E
; --------------------------------------------------

loc_45D3:
        mov bp, di
        mov di, 0D10h
        mov cs:word_4322, 0D1Bh
        jmp short loc_45A5
sub_4550    endp

; --------------------------------------------------
        mov di, 936h
        jmp short loc_45F8
; --------------------------------------------------
        mov di, 938h
        jmp short loc_45F8
; --------------------------------------------------
        mov di, 93Ah
        jmp short loc_45F8
; --------------------------------------------------
        mov di, 93Ch
        jmp short loc_45F8
; --------------------------------------------------
        mov di, 93Eh

loc_45F8:
        lodsb
        dec cx
        jz  loc_460C
        cmp al, 3Dh ; '='
        jnz loc_460C
        push    cx
        mov bx, si
        call    sub_CF5B
        pop cx
        mov [di], ax
        jmp loc_451E
; --------------------------------------------------

loc_460C:
        jmp loc_4512
; --------------------------------------------------
        inc ax
        inc ax
        add ax, 3
        shl ax, 1
        mov dx, ax
        lodsb
        dec cx
        jz  loc_460C
        cmp al, 3Ah ; ':'
        jnz loc_460C
        push    dx
        push    cx
        mov bx, si
        call    sub_CF5B
        pop cx
        pop dx
        or  ax, ax
        jz  loc_460C
        mov word ptr cs:byte_4328, ax
        mov bx, ax
        inc bx
        mov ax, 0Ah
        mov di, si
        cld
        repne scasb
        mov bp, di
        jmp short loc_4642
; --------------------------------------------------

loc_4640:
        repne scasb

loc_4642:
        mov si, di
        jnz loc_460C
        dec bx
        jnz loc_4640
        neg bp
        add bp, si
        add bp, 4
        push    bp
        push    dx
        push    si
        mov ax, ds:832h
        call    sub_8683
        pop di
        sub di, si
        mov cs:word_4326, di

loc_4661:
        mov ax, ds:84Ah
        call    sub_8683
        jnb loc_4696
        mov ax, ds:84Ah
        mov cx, 8
        call    sub_8E7A
        jb  loc_4680
        mov ax, 8
        mov cx, 4
        std
        repe stosw
        cld
        jmp short loc_4661
; --------------------------------------------------

loc_4680:
        pop dx
        pop bp
        mov ax, ds:832h
        call    sub_8683
        add si, cs:word_4326
        sub cx, cs:word_4326
        pop es
        jmp loc_4373
; --------------------------------------------------

loc_4696:
        pop dx
        mov bx, si
        add bx, dx
        mov ax, [bx+2]
        sub ax, [bx]
        pop bp
        cmp ax, bp
        jnb loc_46EE
        push    bp
        sub bp, ax
        mov cx, bp
        push    dx
        push    cx
        mov ax, ds:84Ah
        call    sub_8F07
        pop cx
        jb  loc_4680
        push    cx
        mov ax, ds:84Ah
        call    sub_8683
        pop di
        mov bx, si
        pop dx
        push    dx
        add bx, dx
        inc bx
        inc bx
        push    si
        add si, cx
        dec si
        sub cx, [bx]
        push    di
        jbe loc_46DB
        sub cx, di
        jbe loc_46DB
        xchg    si, di
        neg si
        add si, di
        std
        repe movsb

loc_46DB:
        pop ax
        pop si
        push    si
        add si, 8

loc_46E1:
        cmp bx, si
        jnb loc_46EB
        add [bx], ax
        inc bx
        inc bx
        jmp short loc_46E1
; --------------------------------------------------

loc_46EB:
        pop si
        jmp short loc_4696
; --------------------------------------------------

loc_46EE:
        mov di, si
        add di, [bx]
        mov bx, di
        push    di
        push    bx
        mov ax, ds:832h
        sub bp, 4
        sub cs:word_4326, bp
        push    bp
        call    sub_8683
        add cx, si
        mov bp, cx
        add si, cs:word_4326
        pop cx
        pop bx
        pop di
        cld
        inc word ptr cs:byte_4328
        add di, word ptr cs:byte_4328
        add di, word ptr cs:byte_4328
        inc di
        inc di
        push    bp
        mov bp, bx
        mov [bx], di
        sub [bx], bp
        inc bx
        inc bx

loc_472C:
        mov [bx], di
        sub [bx], bp
        inc bx
        inc bx
        dec word ptr cs:byte_4328
        jz  loc_4758
        mov dx, si
        xchg    si, di
        cld
        mov ax, 0Ah
        repne scasb
        push    cx
        xchg    si, di
        mov cx, si
        sub cx, dx
        mov si, dx
        sub cx, 2
        jb  loc_4755
        repe movsb
        inc si
        inc si

loc_4755:
        pop cx
        jmp short loc_472C
; --------------------------------------------------

loc_4758:
        pop cx
        sub cx, si
        pop es
        jmp loc_4373
; --------------------------------------------------
        cmp al, 3Dh ; '='
        stc
        jnz locret_4770
        mov bx, si
        push    cx
        call    sub_CF5B
        pop cx
        or  ax, ax
        jnz locret_4770
        stc

locret_4770:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_4771    proc near
        push    si
        mov si, 5Fh ; '_'
        mov cx, 140h
        sar cx, 1
        mov dh, ds:96Dh
        mov dl, ds:96Fh
        push    ds
        push    cs
        pop ds
        assume ds:seg000
        push    es
        push    ds
        pop es
        assume es:seg000
        mov bl, cs:byte_1+5Fh
        call    sub_47B4
        pop es
        assume es:nothing
        pop ds
        assume ds:nothing
        push    es
        push    ds
        pop es
        assume es:nothing
        mov si, 98Fh
        call    sub_47A4
        mov si, 9B3h
        call    sub_47A4
        pop es
        assume es:nothing
        pop si
        ret
sub_4771    endp


; ---------- S U B  R O U T I N E --------------------------


sub_47A4    proc near
        cld
        lodsw
        xor ax, ax
        lodsb
        mov cx, ax
        lodsb
        add cx, ax
        shr cx, 1
        call    sub_47B4
        ret
sub_47A4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_47B4    proc near
        mov di, si
        cld

loc_47B7:
        lodsw
        cmp ah, bl
        mov ah, dl
        jz  loc_47C0
        mov ah, dh

loc_47C0:
        stosw
        loop    loc_47B7
        ret
sub_47B4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_47C4    proc near
        call    sub_BF90
        xchg    al, ah
        call    sub_BF90
        xchg    al, ah
        mov cx, 1Ch
        shr cx, 1
        mov di, 0D91h
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        repne scasw
        pop es
        assume es:nothing
        stc
        jnz locret_47EA
        clc
        mov cs:word_4320, di
        db 8Bh, 85h, 1Ah, 00h    ; mov ax, [di+001Ah] (mod=10)

locret_47EA:
        ret
sub_47C4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_47EB    proc near
        and ax, 0Fh
        add ax, 30h ; '0'
        cmp ax, 39h ; '9'
        jbe locret_47F9
        add ax, 7

locret_47F9:
        ret
sub_47EB    endp

; --------------------------------------------------
        push    si
        mov si, 548h
        mov di, 4B9h
        call    loc_1939
        pop si
        jmp loc_451E
; --------------------------------------------------
        push    si
        mov di, si
        mov al, 0Dh
        cld
        repne scasb
        dec di
        push    word ptr [di]
        push    di
        mov byte ptr [di], 20h ; ' '
        mov ax, 3D2h
        mov bx, 2A5h
        call    sub_7219
        pop di
        pop word ptr [di]
        pop si
        jmp loc_451E
; --------------------------------------------------
        db 9 dup(0)         ; CALIGN 10h -> sub_4830 (9 bytes 00)
; ---------- S U B  R O U T I N E --------------------------


sub_4830    proc near
        call    sub_484E
        jb  locret_484D
        push    ax
        mov ax, dx
        pushf
        push    cx
        call    sub_8683
        mov bx, cx
        pop cx
        jb  loc_4847
        add si, bx
        dec si
        neg byte ptr [si]

loc_4847:
        popf
        pop bx
        jnb locret_484D
        mov ax, bx

locret_484D:
        ret
sub_4830    endp


; ---------- S U B  R O U T I N E --------------------------


sub_484E    proc near
        call    sub_499B
        jb  loc_486C
        neg byte ptr [bx+1]
        jmp short loc_4874
; --------------------------------------------------
byte_4858:                              ; offset 0x4858 - code block (called via byte_4858+1)
        db 90h, 0E8h, 3Fh, 1, 72h, 0Eh, 0A9h, 14h, 0, 75h, 11h
        db 59h, 5Ah, 58h, 50h, 52h, 51h, 0E8h, 0A5h, 2
; --------------------------------------------------

loc_486C:
        jmp short loc_48D7
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_486F:
        call    sub_49AB
        jb  loc_486C

loc_4874:
        test    ax, 4
        stc
        jz  loc_48D7
        mov al, [bx]
        sub al, [si]
        jz  loc_48AE
        jns loc_4886
        xchg    si, bx
        neg ax

loc_4886:
        mov ah, [bx]
        mov [si], ah
        xor ah, ah
        call    sub_4A37
        jb  loc_48D7
        mov cx, [si+4]
        dec cx
        dec cx
        sub si, cx
        sub cx, ax
        mov di, si
        add si, ax
        cld
        repe movsb
        mov cx, ax

loc_48A3:
        mov ax, 30h ; '0'
        cld
        repe stosb

loc_48A9:
        pop cx
        pop dx
        pop ax
        jmp short loc_486F
; --------------------------------------------------

loc_48AE:
        mov al, [si]
        xor ah, ah
        inc ax
        inc ax
        sub ax, [si+4]
        ja  loc_48C7
        mov ax, [bx+4]
        sub ax, [si+4]
        jz  loc_48E2
        jns loc_48C7
        xchg    si, bx
        neg ax

loc_48C7:
        push    ax
        call    sub_4A37
        pop cx
        jb  loc_48D7
        mov di, si
        inc di
        inc di
        sub di, [di+2]
        jmp short loc_48A3
; --------------------------------------------------

loc_48D7:
        mov bx, ax
        pop cx
        pop dx
        pop ax
        pop es
        jnb locret_48E1
        mov ax, bx

locret_48E1:
        ret
; --------------------------------------------------

loc_48E2:
        pop ax
        push    ax
        push    si
        call    sub_8E4F
        mov di, si
        pop si
        jnb loc_48FF
        mov cx, [si+4]
        inc cx
        push    si
        call    sub_8E7A
        pop si
        jb  loc_48D7
        inc di
        dec si
        std
        repe movsb
        jmp short loc_48A9
; --------------------------------------------------

loc_48FF:
        mov ax, 30h ; '0'
        sub cx, 2
        jbe loc_490A
        cld
        repe stosb

loc_490A:
        mov cx, [bx+4]
        dec cx
        dec cx
        xor bp, bp
        mov al, [si+1]
        add al, [bx+1]
        jnz loc_4935
        inc bp
        call    sub_4AAC
        ja  loc_4935
        jb  loc_4933
        mov byte ptr [di], 0
        mov byte ptr [di+1], 1
        mov si, di
        mov cx, [si+4]
        dec cx
        dec cx
        sub di, cx
        jmp short loc_496B
; --------------------------------------------------

loc_4933:
        xchg    si, bx

loc_4935:
        dec bx
        std
        push    di
        movsw
        inc si
        inc di
        push    cx
        xor ah, ah
        or  bp, bp
        jz  loc_4954

loc_4942:
        lodsb
        add ah, [bx]
        sub al, ah
        mov ah, 0
        aas
        neg ah
        add al, 30h ; '0'
        stosb
        dec bx
        loop    loc_4942
sub_484E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4952    proc near
        jmp short loc_4968
; --------------------------------------------------

loc_4954:
        lodsb
        add al, ah
        xor ah, ah
        add al, [bx]
        aaa
        add al, 30h ; '0'
        stosb
        dec bx
        loop    loc_4954
        mov al, ah
        add al, [di]
        mov [di], al

loc_4968:
        pop cx
        inc cx
        pop si

loc_496B:
        call    sub_4972
        clc
        jmp loc_48D7
sub_4952    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4972    proc near
        push    cx
        mov word ptr [si+2], 4
        mov ax, 30h ; '0'
        cld
        repe scasb
        inc cx
        dec di
        pop bx
        sub cx, bx
        jz  locret_499A
        mov al, [si]
        xor ah, ah
        add di, ax
        sub di, si
        jbe loc_4995
        neg di
        sub cx, di
        jnb locret_499A

loc_4995:
        mov ax, cx
        call    sub_4A37

locret_499A:
        ret
sub_4972    endp


; ---------- S U B  R O U T I N E --------------------------


sub_499B    proc near
        pop bp
        push    es
        push    ds
        pop es
        assume es:nothing
        push    bp
        push    ax
        push    dx
        push    cx
        mov ax, cx
        call    sub_8A92
        pop cx
        pop dx
        pop ax
sub_499B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_49AB    proc near
        pop bp
        push    ax
        push    dx
        push    cx
        push    bp
        call    sub_8683
        jb  locret_49DA
        mov bx, si
        add bx, cx
        push    word ptr [bx]
        dec bx
        dec bx
        mov ax, dx
        call    sub_8E4F
        jb  locret_49DA
        add si, cx
        pop ax
        and ax, 14h
        mov cx, [si]
        and cx, 14h
        cmp ax, cx
        stc
        jnz locret_49DA
        dec si
        dec si
        xchg    si, bx
        clc

locret_49DA:
        ret
sub_49AB    endp ; sp = -4

; --------------------------------------------------
        call    sub_499B
        test    ax, 14h
        jz  loc_49EA
        mov ax, 4
        stc
        jmp loc_48D7
; --------------------------------------------------

loc_49EA:
        inc si
        inc si
        inc bx
        inc bx
        mov cx, [si+2]
        mov dx, [bx+2]
        sub si, cx
        mov di, bx
        sub di, dx
        add dx, di
        cld

loc_49FD:
        mov ax, di
        add ax, cx
        cmp ax, dx
        ja  loc_4A24
        push    si
        push    cx
        push    di
        repe cmpsb
        pop di
        pop cx
        pop si
        jz  loc_4A12
        inc di
        jmp short loc_49FD
; --------------------------------------------------

loc_4A12:
        xor ax, ax
        mov dx, di
        sub bx, [bx+2]
        sub dx, bx
        call    loc_4F93
        mov ax, 100h
        stosw
        jmp short loc_4A2F
; --------------------------------------------------

loc_4A24:
        mov di, 1582h
        cld
        mov al, 31h ; '1'
        stosb
        mov ax, 0FF00h
        stosw

loc_4A2F:
        pop ax
        push    ax
        call    loc_4F27
        jmp loc_48D7

; ---------- S U B  R O U T I N E --------------------------


sub_4A37    proc near
        push    si
        push    ax
        or  ax, ax
        js  loc_4A41
        jnz loc_4A66
        jmp short loc_4A62
; --------------------------------------------------

loc_4A41:
        inc si
        inc si
        mov di, si
        sub si, [si+2]
        dec si
        add [di+2], ax
        sub di, [di+2]
        dec di
        mov cx, si
        sub cx, ds:8F8h
        jbe loc_4A5E
        inc cx
        jz  loc_4A5E
        std
        repe movsb

loc_4A5E:
        sub ds:8F8h, ax

loc_4A62:
        clc
        pop ax
        pop si
        ret
; --------------------------------------------------

loc_4A66:
        push    ax
        neg ax
        add ax, ds:8F8h
        cmp ax, ds:66h
        jbe loc_4A7D
        cmp ax, ds:0CAh
        ja  loc_4A8E
        pop ax
        jbe loc_4A85
        push    ax

loc_4A7D:
        push    si
        call    sub_D0CE
        pop si
        pop ax
        jnb loc_4A66

loc_4A85:
        mov ax, 4Bh ; 'K'
        call    sub_CB4F
        pop bx
        pop si
        ret
; --------------------------------------------------

loc_4A8E:
        mov di, ax
        pop ax
        inc si
        inc si
        add [si+2], ax
        sub si, [si+2]
        mov cx, si
        mov ds:8F8h, di
        sub cx, di
        jbe loc_4AAA
        mov si, di
        add si, ax
        cld
        repe movsb

loc_4AAA:
        jmp short loc_4A62
sub_4A37    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4AAC    proc near
        push    bx
        push    si
        push    di
        push    cx
        push    ax
        cld
        xor ax, ax
        xor cx, cx
        mov al, [si]
        mov cl, [bx]
        neg ax
        neg cx
        add ax, [si+4]
        add cx, [bx+4]
        sub ax, cx
        pushf
        jz  loc_4AE6
        ja  loc_4ACF
        neg ax
        xchg    si, bx

loc_4ACF:
        push    si
        inc si
        inc si
        sub si, [si+2]
        mov di, si
        mov cx, ax
        mov ax, 30h ; '0'
        repe scasb
        pop cx
        mov si, di
        jz  loc_4AED
        popf
        jmp short loc_4B0B
; --------------------------------------------------

loc_4AE6:
        mov cx, si
        inc si
        inc si
        sub si, [si+2]

loc_4AED:
        sub cx, si
        mov di, bx
        inc di
        inc di
        sub di, [di+2]
        sub bx, di
        popf
        jnb loc_4AFF
        xchg    di, si
        xchg    bx, cx

loc_4AFF:
        cmp cx, bx
        lahf
        jbe loc_4B06
        xchg    cx, bx

loc_4B06:
        repe cmpsb
        jnz loc_4B0B
        sahf

loc_4B0B:
        pop ax
        pop cx
        pop di
        pop si
        pop bx
        ret
sub_4AAC    endp

; --------------------------------------------------
        push    bx
        push    si
        mov ax, cx
        mov cx, [si+4]
        add cx, [bx+4]
        call    sub_8E7A
        pop si
        pop bx
        jb  locret_4B3B
        add di, 3
        xchg    bx, si
        add si, 3
        mov cx, [si+1]
        inc cx
        inc cx
        std
        repe movsb
        mov si, bx
        inc si
        mov cx, [si+3]
        repe movsb
        clc

locret_4B3B:
        ret
; --------------------------------------------------

loc_4B3C:
        mov ax, 4Ch ; 'L'

loc_4B3F:
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_4B43:
        mov ax, 4
        jmp short loc_4B3F
; --------------------------------------------------

loc_4B48:
        jmp loc_4C3A

; ---------- S U B  R O U T I N E --------------------------


sub_4B4B    proc near
        mov byte ptr ds:2410h, 1
        call    sub_4B5E
        mov byte ptr ds:2410h, 0
        jnb locret_4B5D
        call    sub_CB4F

locret_4B5D:
        ret
sub_4B4B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4B5E    proc near
        mov dl, 2
        xor dh, dh
        mov byte ptr ds:86Dh, 3Dh ; '='
        call    sub_4ED
        mov byte ptr ds:86Dh, 0
        jb  loc_4B3C
        sar bx, 1
        inc bx
        mov ds:1627h, bx
        mov si, 870h
        call    sub_4B90
        jb  loc_4B43
        mov word ptr ds:167Eh, 0
        call    sub_55C5
        jb  loc_4B43
        call    sub_8DD4
        clc
        ret
sub_4B5E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4B90    proc near
        mov word ptr ds:1580h, 80h ; '?'
sub_4B90    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4B96    proc near
        push    es
        push    ds
        pop es
        mov ds:0D72h, si
        mov ds:1572h, sp
        mov ds:1578h, sp
        mov byte ptr ds:1574h, 0

loc_4BAA:
        xor ax, ax
        mov ds:1570h, ax
        mov ds:157Ch, ax
        mov ds:157Ah, ax

loc_4BB5:
                    ; sub_4B96+1AEj ...
        call    sub_4DC3
        jnb loc_4B48
        or  ax, ax
        jz  loc_4BC1
        jmp short loc_4C30
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_4BC1:
        cmp cl, 7
        jnz loc_4C04
        cmp word ptr ds:1570h, 0
        jnz loc_4BEA
        mov si, ds:0D72h
        mov al, [si-2]
        cmp al, 20h ; ' '
        jz  loc_4BE4
        cmp al, 9
        jz  loc_4BE4
        cmp al, 0Ah
        jz  loc_4BE4
        cmp al, 0Dh
        jnz loc_4BEA

loc_4BE4:
        mov word ptr ds:1570h, 4

loc_4BEA:
        push    word ptr ds:1578h
        push    word ptr ds:1570h
        push    word ptr ds:157Ah
        push    word ptr ds:157Eh
        mov ds:1578h, sp
        inc byte ptr ds:1574h
        jmp short loc_4BAA
; --------------------------------------------------

loc_4C04:
        cmp cl, 0Dh
        jnz loc_4C2A
        mov ax, ds:157Ah
        or  ax, ax
        jz  loc_4C2A
        mov ds:157Ch, ax
        cmp byte ptr ds:1574h, 0
        jnz loc_4C27
        cmp sp, ds:1578h
        jb  loc_4C2A
        mov sp, ds:1572h
        pop es
        assume es:nothing
        clc
        ret
; --------------------------------------------------

loc_4C27:
        jmp loc_4CE4
; --------------------------------------------------

loc_4C2A:
        call    sub_8DD4
        mov ax, 4

loc_4C30:
        mov sp, ds:1572h
        stc
        pop es
        ret
; --------------------------------------------------

loc_4C37:
        jmp loc_4D47
; --------------------------------------------------

loc_4C3A:
                    ; sub_4B96+1A8j
        cmp word ptr ds:157Ah, 0
        jnz loc_4C56
        mov ds:157Ah, ax
        mov ds:157Eh, cx
        cmp cl, 8
        jz  loc_4C50
        jmp loc_4BB5
; --------------------------------------------------

loc_4C50:
        mov ds:157Ch, ax
        jmp loc_4CE4
; --------------------------------------------------

loc_4C56:
        mov ds:157Ch, ax

loc_4C59:
        mov word ptr ds:1570h, 0
        cmp ch, ds:157Fh
        ja  loc_4C37
        mov ds:1576h, cx
        mov cx, ds:157Eh
        mov bl, cl
        xor bh, bh
        mov ax, ds:157Ah
        mov dx, ds:157Ch
        mov cx, ds:1580h
        shl bx, 1
        xor bp, bp
        call    word ptr [bx+1636h]
        jb  loc_4C30
        push    cx
        mov ax, ds:157Ah
        call    sub_8A92
        mov ax, ds:157Ch
        call    sub_8A92
        pop cx
        mov ax, ds:157Ah
        call    sub_8E35
        mov ax, ds:157Ch
        inc ax
        cmp ax, 0A0h ; '?'
        jb  loc_4CA6
        mov ax, 80h ; '?'

loc_4CA6:
        cmp ax, ds:1580h
        jnz loc_4CBE
        dec word ptr ds:1580h
        cmp word ptr ds:1580h, 80h ; '?'
        jnb loc_4CBE
        mov word ptr ds:1580h, 0A0h ; '?'

loc_4CBE:
                    ; sub_4B96+120j
        mov ax, ds:157Ah
        mov ds:157Ch, ax
        mov cx, ds:1576h
        mov ds:157Eh, cx
        cmp sp, ds:1578h
        jz  loc_4CDD
        pop word ptr ds:157Eh
        pop word ptr ds:157Ah
        jmp loc_4C59
; --------------------------------------------------

loc_4CDD:
        cmp byte ptr ds:1576h, 8
        jnz loc_4D44

loc_4CE4:
        mov ax, sp
        add ax, 8
        cmp ax, ds:1572h
        ja  loc_4D41
        dec byte ptr ds:1574h
        pop word ptr ds:157Eh
        pop word ptr ds:157Ah
        pop word ptr ds:1570h
        pop word ptr ds:1578h
        cmp word ptr ds:1570h, 0
        jz  loc_4D1D
        mov ax, ds:157Ch
        call    sub_8683
        jb  loc_4D41
        add si, cx
        call    sub_541D
        mov ax, [si+4]
        mov ds:157Ch, ax

loc_4D1D:
        mov si, ds:0D72h
        mov al, 3Dh ; '='
        cmp si, ds:8C7h
        jnb loc_4D2E
        lodsb
        inc word ptr ds:0D72h

loc_4D2E:
        mov cx, ax
        cmp al, 30h ; '0'
        jb  loc_4D38
        cmp al, 39h ; '9'
        jbe loc_4D44

loc_4D38:
        call    sub_4E65
        mov ax, ds:157Ch
        jmp loc_4C3A
; --------------------------------------------------

loc_4D41:
                    ; sub_4B96+17Aj
        jmp loc_4C2A
; --------------------------------------------------

loc_4D44:
                    ; sub_4B96+1A0j
        jmp loc_4BB5
; --------------------------------------------------

loc_4D47:
        push    word ptr ds:157Ah
        push    word ptr ds:157Eh
        mov ds:157Eh, cx
        mov ax, ds:157Ch
        mov ds:157Ah, ax
        jmp loc_4BB5
sub_4B96    endp

; --------------------------------------------------

loc_4D5C:
        push    bp
        mov ds:1C55h, si
        call    sub_6D99
        jb  loc_4DAB
        mov ax, di
        push    es
        push    cs
        pop es
        assume es:seg000
        mov di, 4D8Bh
        mov cx, 8
        nop
        repne scasw
        pop es
        assume es:nothing
        jnz loc_4DAB
        sub di, 4D8Dh
        push    si
        cld
        call    cs:off_4D9B[di]
        pop si
        jb  loc_4D89
        or  ax, ax
        jz  loc_4DAB

loc_4D89:
        pop bp
        ret
; --------------------------------------------------
        db 0B6h, 0, 0B8h, 0, 0BAh, 0, 5Ch, 0  ; was: unicode 0, <--\-->
        db 0CCh, 0, 0D2h, 0, 0CEh, 0, 0B2h, 0
off_4D9B    dw offset sub_4F77
        dw offset sub_4F8B
        dw offset sub_4FC3
        dw offset sub_509B
        dw offset sub_4FFD
        dw offset sub_5003
        dw offset sub_50D5
        dw offset sub_4F47
; --------------------------------------------------

loc_4DAB:
        call    sub_4DB7
        pop bp
        mov cx, di
        sub cx, 1582h
        jmp short loc_4DD2

; ---------- S U B  R O U T I N E --------------------------


sub_4DB7    proc near
        mov cx, ds:8C7h
        sub cx, si
        call    sub_7010
        ret
sub_4DB7    endp

; --------------------------------------------------

loc_4DC1:
        jmp short loc_4D5C

; ---------- S U B  R O U T I N E --------------------------


sub_4DC3    proc near
        cld
        mov si, ds:0D72h
        xor cx, cx
        xor bp, bp
        dec bp
        mov di, 1582h
        xor ax, ax

loc_4DD2:
        mov ax, 3Dh ; '='
        cmp si, ds:8C7h
        jnb loc_4E04
        lodsb
        cmp al, 2Ch ; ','
        jz  loc_4DD2
        cmp ax, ds:971h
        jz  loc_4DC1
        cmp al, 2Eh ; '.'
        jnz loc_4DF2
        or  bp, bp
        jns loc_4E31
        mov bp, cx
        jmp short loc_4DD2
; --------------------------------------------------

loc_4DF2:
        cmp al, 30h ; '0'
        jb  loc_4E04
        cmp al, 39h ; '9'
        ja  loc_4E04
        inc cx
        stosb
        cmp di, 15D0h
        jb  loc_4DD2
        jmp short loc_4E31
; --------------------------------------------------

loc_4E04:
        mov ds:0D72h, si
        or  cx, cx
        jnz loc_4E3C
        mov cx, ax
        call    sub_4E65
        cmp cl, 4
        jb  sub_4DC3
        jz  loc_4E21
        cmp cl, 14h
        jnb loc_4E21
        xor ax, ax
        stc
        ret
; --------------------------------------------------

loc_4E21:
        cmp word ptr ds:1570h, 0
        mov ax, 90h ; '?'
        jnz loc_4E3A
        mov ds:1570h, cx
        jmp short sub_4DC3
; --------------------------------------------------

loc_4E31:
        mov ds:0D72h, si
        mov cx, ax

loc_4E37:
        mov ax, 4

loc_4E3A:
        stc
        ret
; --------------------------------------------------

loc_4E3C:
        mov ds:0D72h, si
        push    ax
        xor ax, ax
        or  bp, bp
        js  loc_4E55
        mov ax, cx
        sub ax, bp
        xor ax, ax
        or  bp, bp

loc_4E4F:
        js  loc_4E55
        mov ax, cx
        sub ax, bp

loc_4E55:
        stosb
        xor ax, ax
        inc ax
        stosb
        mov si, di
        call    sub_541D
        call    sub_4F24
        pop cx
        jb  loc_4E37
sub_4DC3    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4E65    proc near
                    ; sub_4DC3+4Bp ...
        push    ax
        mov ax, cx

loc_4E68:
        mov di, 15D2h
        mov cx, 10h
        cld
        repne scasb
        mov al, 2Bh ; '+'
        mov ch, 1
        jnz loc_4E68
        cmp di, 15DEh
        jbe loc_4EB3
        cmp di, 15E1h
        ja  loc_4EC5
        mov si, ds:0D72h
        cmp si, ds:8C7h
        jnb loc_4EB3
        mov ax, [si-1]
        push    di
        mov di, 15E2h
        mov cx, 4
        cmp al, ah
        jb  loc_4E9D
        xchg    al, ah

loc_4E9D:
        repne scasw
        jnz loc_4EB2
        inc word ptr ds:0D72h
        pop cx
        sub di, 15E4h
        shr di, 1
        add di, 1617h
        jmp short loc_4EB6
; --------------------------------------------------

loc_4EB2:
        pop di

loc_4EB3:
        add di, 35h ; '5'

loc_4EB6:
        mov ch, [di]
        sub di, 1608h
        mov bx, di
        mov cl, bl
        pop ax
        clc
        ret
; --------------------------------------------------

loc_4EC3:
        jmp short loc_4E68
; --------------------------------------------------

loc_4EC5:
        mov si, ds:0D72h
        mov di, 1624h
        mov cx, 3

loc_4ECF:
        lodsb
        call    sub_BF90
        stosb
        loop    loc_4ECF
        mov di, 15E7h
        mov al, 2Bh ; '+'
        cmp si, ds:8C7h
        ja  loc_4EC3

loc_4EE1:
        cmp di, 1608h
        jnb loc_4EC3
        mov cx, 3
        add di, cx
        mov si, 1624h
        push    di
        repe cmpsb
        pop di
        jnz loc_4EE1
        sub di, 15EAh
        mov ax, di
        mov cl, 3
        div cl
        xor ah, ah
        mov di, ax
        add di, 161Bh
        add word ptr ds:0D72h, 3
        jmp short loc_4EB6
sub_4E65    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4F0E    proc near
        mov ax, ds:1580h
        inc word ptr ds:1580h
        cmp word ptr ds:1580h, 0A0h ; '?'
        jb  locret_4F23
        mov word ptr ds:1580h, 80h ; '?'

locret_4F23:
        ret
sub_4F0E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4F24    proc near
        call    sub_4F0E

loc_4F27:
        push    ax
        push    di
        call    sub_8A92
        pop di
        mov cx, di
        sub cx, 1582h
        push    di
        call    sub_8E7A
        pop si
        pop ax
        jb  locret_4F46
        inc di
        mov word ptr [di+1], 4
        dec si
        std
        repe movsb
        clc

locret_4F46:
        ret
sub_4F24    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4F47    proc near
        mov bx, si
        call    sub_6E0A
        cmp ax, 1
        jz  loc_4F53
        stc
        ret
; --------------------------------------------------

loc_4F53:
        mov dx, 2000h
        mov al, ds:18EBh
        cmp al, 0
        mov ax, ds:264h
        jnz loc_4F64
        jz  loc_4F65

loc_4F62:
        jnz loc_4F65

loc_4F64:
        inc dx

loc_4F65:
        rol dx, 1
        jb  loc_4F71
        test    ax, 4
        mov ax, ds:0
        jmp short loc_4F62
; --------------------------------------------------

loc_4F71:
        shr dx, 1
        xor ax, ax
        jmp short loc_4F93
sub_4F47    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4F77    proc near
        mov dx, ds:0C2h
        sub dx, ds:0C0h
        xor ax, ax
        add dx, ds:0C6h
        adc ax, ds:0C4h
        jmp short loc_4F93
sub_4F77    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4F8B    proc near
        xor ax, ax
        xor dx, dx
        mov dl, ds:4

loc_4F93:
        mov di, 1582h
        cld
        push    ax
        mov ax, 30h ; '0'
        mov cx, 0Ah
        repe stosb
        pop ax
        xchg    ax, dx
        call    sub_2E22
        pushf
        push    di
        mov di, 1582h
        mov ax, 30h ; '0'
        mov cx, 0Ah
        repe scasb
        dec di
        pop cx
        sub cx, di
        mov si, di
        mov di, 1582h
        jbe loc_4FBF
        repe movsb

loc_4FBF:
        xor ax, ax
        popf

locret_4FC2:
        ret
sub_4F8B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4FC3    proc near
        push    si
        call    sub_4F0E
        call    sub_8A92
        xor cx, cx
        push    ax
        call    sub_8E7A
        pop ax
        pop si
        jb  locret_4FC2
        mov cx, 18h
        cmp byte ptr ds:90Dh, 0
        jnz loc_4FE1
        mov cx, 10h

loc_4FE1:
        mov [di+2], cx

loc_4FE4:
        push    ax
        call    sub_4DB7
        mov al, 3Dh ; '='
        cmp si, ds:8C7h
        jnb loc_4FF1
        lodsb

loc_4FF1:
        mov cx, ax
        pop ax
        mov ds:0D72h, si
        call    sub_4E65
        clc
        ret
sub_4FC3    endp


; ---------- S U B  R O U T I N E --------------------------


sub_4FFD    proc near
        push    si
        mov ax, ds:850h
        jmp short loc_500C
sub_4FFD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5003    proc near
        push    si
        call    sub_4DB7
        call    sub_18CC
        jb  loc_506F

loc_500C:
        push    ax
        call    sub_8683
        pop ax
        jb  loc_506F
        mov bx, cx
        add bx, si
        test    word ptr [bx], 4
        jz  loc_502C

loc_501D:
        push    ax
        call    sub_4F0E
        mov bx, ax
        pop ax
        call    sub_5077
        pop si
        jb  locret_5076
        jmp short loc_4FE4
; --------------------------------------------------

loc_502C:
        push    word ptr ds:8C7h
        mov ds:8C7h, bx
        mov cx, 10h
        sub sp, cx
        mov dx, es
        push    ss
        pop es
        assume es:nothing
        mov bx, si
        mov di, sp
        mov si, 1570h
        cld
        repe movsb
        mov si, bx
        mov es, dx
        call    sub_4B96
        mov cx, 10h
        mov bx, ds
        push    ss
        pop ds
        assume ds:nothing
        mov dx, si
        mov si, sp
        mov di, 1570h
        cld
        repe movsb
        mov sp, si
        mov si, dx
        mov ds, bx
        pop word ptr ds:8C7h
        pop si
        jb  locret_5076
        jmp loc_4FE4
; --------------------------------------------------

loc_506F:
        mov ax, 13h

loc_5072:
        call    sub_CB4F
        pop si

locret_5076:
        ret
sub_5003    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5077    proc near
        push    ax
        push    bx
        push    cx
        mov ax, bx
        call    sub_8A92
        pop cx
        call    sub_8E7A
        pop bx
        pop ax
        jb  locret_5076
        push    bx
        push    di
        call    sub_8683
        pop di
        pop ax
        jb  locret_5076
        inc cx
        add si, cx
        inc cx
        add di, 3
        repe movsb
        clc
        ret
sub_5077    endp


; ---------- S U B  R O U T I N E --------------------------


sub_509B    proc near
        push    si
        call    sub_4DB7
        call    sub_18CC
        jnb loc_50AB

loc_50A4:
        jmp short loc_506F
; --------------------------------------------------

loc_50A6:
        mov ax, 8Fh ; '?'
        jmp short loc_5072
; --------------------------------------------------

loc_50AB:
        push    ax
        call    sub_8683
        pop ax
        jb  loc_50A4
        mov bx, si
        add bx, cx
        test    word ptr [bx], 10h
        jnz loc_50A6
        test    word ptr [bx], 4
        jnz loc_50C5
        jmp loc_501D
; --------------------------------------------------

loc_50C5:
        push    ax
        call    sub_4F0E
        mov bx, ax
        pop ax
        call    sub_173C
        jb  loc_50A6
        pop si
        jmp loc_4FE4
sub_509B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_50D5    proc near
        push    si
        call    sub_1281
        or  ah, ah
        jz  loc_50EF
        mov byte ptr ds:870h, 0FFh
        or  ax, 1
        xchg    al, ah
        mov ds:871h, ax
        mov cx, 3
        jmp short loc_50F5
; --------------------------------------------------

loc_50EF:
        mov ds:870h, al
        mov cx, 1

loc_50F5:
        mov si, 870h
        call    sub_4F0E
        push    ax
        call    sub_1762
        pop ax
        jnb loc_5105
        jmp loc_5072
; --------------------------------------------------

loc_5105:
        pop si
        jmp loc_4FE4
sub_50D5    endp

; --------------------------------------------------
        call    sub_52CA
        sub ds:1635h, al
        mov bl, ds:1635h
        mov bh, al
        cmp al, ds:1635h
        jnb loc_511F
        mov al, ds:1635h

loc_511F:
        inc al
        inc al
        mov ds:1635h, al
        mov ah, cl
        dec ah
        dec ah
        mov al, ds:162Fh
        sub ah, bh
        sub al, bl
        mov bx, ds:1629h
        sub ah, al
        mov al, ah
        jnb loc_5147
        neg ah
        mov bx, ds:162Bh
        add ds:1635h, ah

loc_5147:
        push    ax
        mov ax, bx
        call    sub_8683
        pop ax
        jb  loc_51AB
        add si, cx
        add [si-2], ah
        add al, ds:1635h
        cbw
        mov cx, ax
        add cx, 3
        mov ds:162Fh, cx
        mov ax, ds:162Dh
        call    sub_8E7A
        jb  loc_51AB

loc_516B:
        mov byte ptr ds:1631h, 0

loc_5170:
        mov ax, ds:1629h
        mov dx, ds:162Bh
        mov cx, 3
        call    sub_4830
        jb  loc_51AB
        mov ax, 3
        call    sub_8683
        jb  loc_51AB
        add si, cx
        cmp byte ptr [si-1], 0FFh
        jz  loc_51AD
        inc byte ptr ds:1631h
        cmp byte ptr ds:1631h, 9
        ja  loc_51AB
        mov ax, ds:1629h
        call    sub_8A92
        mov ax, ds:1629h
        mov cx, 3
        call    sub_8E35
        jnb loc_5170

loc_51AB:
        jmp short loc_51E2
; --------------------------------------------------

loc_51AD:
        add byte ptr ds:1631h, 30h ; '0'
        mov ax, ds:162Dh
        call    sub_8683
        jb  loc_51AB
        add si, cx
        sub si, ds:162Fh
        mov al, ds:1631h
        mov [si], al
        dec word ptr ds:162Fh
        jz  loc_51DA
        mov ax, ds:162Bh
        call    sub_8683
        jb  loc_51E2
        add si, cx
        inc byte ptr [si-2]
        jmp short loc_516B
; --------------------------------------------------

loc_51DA:
        jmp loc_5296
; --------------------------------------------------
        mov ax, 4
        stc
        ret
; --------------------------------------------------

loc_51E2:
        pop cx
        mov ax, 4
        stc
        jmp loc_48D7
; --------------------------------------------------
        call    sub_52CA

loc_51ED:
        mov ax, 3
        call    sub_8A92
        mov ax, 3
        pop cx
        inc cx
        push    cx
        call    sub_8E7A
        jb  loc_51E2
        mov ax, 30h ; '0'
        inc di
        push    di
        repe stosb
        mov ax, ds:1629h
        call    sub_8683
        pop di
        jb  loc_5268
        add si, cx
        sub cx, 2
        mov word ptr [di+1], 4
        dec si
        movsb
        movsb
        sub di, ds:1632h
        push    cx
        push    di
        std
        repe movsb
        mov ax, ds:162Bh
        call    sub_8683
        pop di
        pop cx
        jb  loc_5268
        dec word ptr ds:162Fh
        add si, ds:162Fh
        lodsb
        sub al, 30h ; '0'
        xor ah, ah
        mov dx, ax
        mov si, di
        std

loc_5240:
        lodsb
        sub al, 30h ; '0'
        mul dl
        add al, dh
        aam
        add al, 30h ; '0'
        stosb
        mov dh, ah
        loop    loc_5240
        add dh, 30h ; '0'
        mov [di], dh
        mov ax, 4
        call    sub_8683
        jnb loc_526B
        mov cx, 3
        mov ax, ds:162Dh
        call    sub_8E35
        jmp short loc_5278
; --------------------------------------------------

loc_5268:
        jmp loc_51E2
; --------------------------------------------------

loc_526B:
        mov cx, ds:162Dh
        mov ax, 3
        mov dx, 4
        call    near ptr byte_4858+1

loc_5278:
        cmp word ptr ds:162Fh, 0
        jz  loc_5296
        mov ax, 4
        call    sub_8A92
        mov ax, 4
        mov cx, ds:162Dh
        call    sub_8E35
        inc word ptr ds:1632h
        jmp loc_51ED
; --------------------------------------------------

loc_5296:
        mov ax, 3
        call    sub_8A92
        mov ax, 4
        call    sub_8A92
        mov ax, ds:162Dh
        call    sub_8683
        jb  loc_5268
        mov di, si
        add si, cx
        mov al, ds:1634h
        dec si
        mov [si], al
        mov al, ds:1635h
        dec si
        mov [si], al
        dec cx
        dec cx
        call    sub_4972
        pop cx
        pop cx
        pop dx
        pop ax
        pop es
        assume es:nothing
        clc
        ret
; --------------------------------------------------

loc_52C6:
        pop bp
        jmp loc_48D7

; ---------- S U B  R O U T I N E --------------------------


sub_52CA    proc near
        pop bp
        push    es
        push    ax
        push    dx
        push    cx
        push    bp
        push    ds
        pop es
        assume es:nothing
        mov ds:1629h, ax
        mov ds:162Bh, dx
        mov ds:162Dh, cx
        mov ax, cx
        call    sub_8A92
        mov ax, ds:162Bh
        call    sub_8683
        jb  loc_52C6
        add si, cx
        mov al, [si-1]
        mov ds:1634h, al
        mov byte ptr [si-1], 1
        mov al, [si-2]
        mov ds:1635h, al
        sub cx, 2
        mov ds:162Fh, cx
        mov word ptr ds:1632h, 0
        mov ax, ds:1629h
        call    sub_8683
        jb  loc_52C6
        add si, cx
        mov al, [si-2]
        add ds:1635h, al
        mov ah, [si-1]
        mov byte ptr [si-1], 1
        cmp ds:1634h, ah
        mov byte ptr ds:1634h, 1
        jz  loc_5331
        mov byte ptr ds:1634h, 0FFh

loc_5331:
        pop bp
        push    cx
        push    bp
        ret
sub_52CA    endp ; sp = -0Ah

; --------------------------------------------------
        inc bp
        inc bp
        inc bp
        inc bp
        inc bp
        mov ds:1682h, bp
        call    sub_499B
        jb  loc_5398
        test    ax, 10h
        jnz loc_5398
        test    ax, 4
        jz  loc_539F
        mov al, [si+1]
        mov ah, [bx+1]
        cmp ah, al
        jnz loc_535E
        push    ax
        call    sub_4AAC
        pop bx
        jnz loc_5361

loc_535E:
        mov bx, 0

loc_5361:
        mov cx, ds:1682h
        mov ax, 0Bh
        jz  loc_5372
        mov ax, 2Ch ; ','
        jb  loc_5372
        mov ax, 15h

loc_5372:
        or  bx, bx
        jns loc_5378
        not ax

loc_5378:
        shr ax, cl
        pop cx
        push    cx
        push    ax
        mov ax, cx
        xor cx, cx
        call    sub_8E7A
        pop ax
        jb  loc_539B
        shr ax, 1
        mov ax, 18h
        jb  loc_5391
        xor ax, 8

loc_5391:
        mov [di+2], ax
        clc
        jmp loc_48D7
; --------------------------------------------------

loc_5398:
        mov ax, 4

loc_539B:
        stc
        jmp loc_48D7
; --------------------------------------------------

loc_539F:
        push    es
        push    ds
        pop es
        inc si
        inc si
        inc bx
        inc bx
        push    si
        mov cx, [si+2]
        sub si, cx
        mov ax, [bx+2]
        mov di, bx
        sub di, ax
        cmp ax, cx
        jbe loc_53B9
        mov cx, ax

loc_53B9:
        cld
        repe cmpsb
        pop si
        pop es
        assume es:nothing
        jnz loc_53C6
        mov ax, [si+2]
        cmp ax, [bx+2]

loc_53C6:
        jmp short loc_535E
; --------------------------------------------------
        inc bp
        inc bp
        mov ds:1682h, bp
        call    sub_499B
        jb  loc_5398
        inc si
        inc si
        inc bx
        inc bx
        test    ax, 10h
        mov ax, 8Fh ; '?'
        jz  loc_539B
        mov cx, [si]
        mov bp, [bx]
        mov bx, ds:1682h
        shl bx, 1
        jmp cs:off_53EE[bx]
; --------------------------------------------------
off_53EE    dw offset loc_53FC
        dw offset loc_53F8
        dw offset loc_53F4
; --------------------------------------------------

loc_53F4:
        xor cx, bp
        jmp short loc_53FE
; --------------------------------------------------

loc_53F8:
        or  cx, bp
        jmp short loc_53FE
; --------------------------------------------------

loc_53FC:
        and cx, bp

loc_53FE:
        and cx, 8
        or  cx, 10h
        pop ax
        push    ax
        push    cx
        xor cx, cx
        call    sub_8E7A
        pop ax
        jb  loc_539B
        mov [di+2], ax
        clc
        jmp loc_48D7
; --------------------------------------------------
        mov ax, 4
        stc
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_541D    proc near
                    ; sub_4DC3+99p
        mov bx, ds:1570h
        mov word ptr ds:1570h, 0
        or  bx, bx
        jnz loc_542C
        ret
; --------------------------------------------------

loc_542C:
        sub bl, 14h
        jnb loc_5435
        neg byte ptr [si-1]
        ret
; --------------------------------------------------

loc_5435:
        xor bh, bh
        shl bx, 1
        call    word ptr [bx+166Ch]
        ret
sub_541D    endp

; --------------------------------------------------
        xor word ptr [si], 8
        ret
; --------------------------------------------------
        mov byte ptr [si-1], 1
        ret
; --------------------------------------------------
        test    word ptr [si], 14h
        jnz loc_5485
        mov cx, [si+2]
        sub si, cx
        cld
        or  cx, cx
        jz  loc_5461

loc_5458:
        lodsb
        call    sub_BF90
        mov [si-1], al
        loop    loc_5458

loc_5461:
        clc
        ret
; --------------------------------------------------
        test    word ptr [si], 14h
        jnz loc_5485
        mov dx, [si+2]
        xor ax, ax
        call    loc_4F93
        mov ax, 100h
        stosw
        call    sub_4F24
        jb  loc_5485
        push    ax
        call    sub_8683
        pop ax
        jb  loc_5485
        add si, cx
        clc
        ret
; --------------------------------------------------

loc_5485:
        mov ax, 4

loc_5488:
        call    sub_CB4F

locret_548B:
        ret
; --------------------------------------------------
        test    word ptr [si], 14h
        jnz loc_5485
        cmp word ptr [si+2], 3
        jnz loc_5485
        mov ax, [si-2]
        xchg    ah, al
        and ax, 7FFEh
        mov bx, ax
        mov ax, cs:[bx-2130h]
        mov ds:870h, ax
        call    sub_4F0E
        push    ax
        call    sub_8A92
        pop ax
        mov si, 870h
        mov cx, 2
        push    ax
        call    sub_1762
        pop ax
        jb  loc_5488
        call    sub_8683
        pushf
        add si, cx
        popf
        ret
; --------------------------------------------------
        mov word ptr ds:1570h, 0
        jmp short loc_54D5
; --------------------------------------------------
        mov word ptr ds:1570h, 1

loc_54D5:
        mov byte ptr ds:2410h, 1
        test    word ptr ds:0, 20h
        jz  loc_54FD
        mov ax, 1
        call    sub_8554
        jb  locret_548B
        mov ax, 1
        call    sub_8683
        jb  locret_548B
        add cx, si
        mov ds:8C7h, cx
        call    sub_4B90
        jmp short loc_5529
; --------------------------------------------------

loc_54FD:
        mov si, ds:0C2h
        call    sub_556F
        jb  loc_5561
        mov ds:0D72h, si
        push    word ptr ds:66h
        pop word ptr ds:8C7h
        mov word ptr ds:1580h, 80h ; '?'
        or  ah, ah
        jns loc_5522
        xor word ptr ds:1570h, 4

loc_5522:
        push    es
        push    ds
        pop es
        assume es:nothing
        call    sub_4DC3
        pop es
        assume es:nothing

loc_5529:
        jb  loc_5561
        push    ax
        mov ax, 7Fh ; ''
        call    sub_8683
        jb  loc_5545
        mov cx, ds:1580h
        pop dx
        call    near ptr byte_4858+1
        jb  loc_5561
        push    cx
        mov ax, 7Fh ; ''
        call    sub_8A92

loc_5545:
        pop cx
        mov ax, 7Fh ; ''
        call    sub_8E35
        call    sub_8DD4
        call    sub_55B6
        jb  loc_5561
        or  word ptr ds:0, 40h
        clc
        mov byte ptr ds:2410h, 0
        ret
; --------------------------------------------------

loc_5561:
        push    ax
        call    sub_8DD4
        pop ax
        mov byte ptr ds:2410h, 0
        call    sub_CB4F
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_556F    proc near
        std
        xor cx, cx

loc_5572:
        lodsb
        mov ah, 0FFh
        cmp al, 2Dh ; '-'
        jz  loc_55AE
        mov ah, 1
        cmp al, 2Bh ; '+'
        jz  loc_55AE
        cmp al, 2Eh ; '.'
        jz  loc_558B
        cmp al, 30h ; '0'
        jb  loc_55AE
        cmp al, 39h ; '9'
        ja  loc_55AE

loc_558B:
        inc cx
        cmp si, ds:0C0h
        jnb loc_5572
        sub si, ds:0C2h
        push    si
        call    sub_D4BA
        pop si
        pushf
        add si, ds:0C2h
        popf
        jnb loc_5572
        or  ax, ax
        jnz loc_55B4

loc_55A7:
        or  cx, cx
        jz  loc_55B1
        inc si
        clc
        ret
; --------------------------------------------------

loc_55AE:
        inc si
        jmp short loc_55A7
; --------------------------------------------------

loc_55B1:
        mov ax, 4Dh ; 'M'

loc_55B4:
        stc
        ret
sub_556F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_55B6    proc near
        mov word ptr ds:167Eh, 1
        mov word ptr ds:1627h, 5
        mov ax, 7Fh ; ''
sub_55B6    endp


; ---------- S U B  R O U T I N E --------------------------


sub_55C5    proc near
        call    sub_5600
        jb  loc_55FB
        push    es
        push    ds
        pop es
        assume es:nothing
        mov al, 20h ; ' '
        sub dx, di
        jbe loc_55D9
        shr dx, 1
        mov cx, dx
        repe stosw

loc_55D9:
        pop es
        assume es:nothing
        mov cx, di
        mov si, 870h
        sub cx, si
        sar cx, 1
        mov ds:1680h, cx
        mov ax, ds:1A26h
        mul word ptr ds:167Eh
        mov di, ax
        add di, ds:1627h
        shl di, 1
        call    sub_773
        clc
        ret
; --------------------------------------------------

loc_55FB:
        mov ax, 50h ; 'P'

loc_55FE:
        stc
        ret
sub_55C5    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5600    proc near
        call    sub_8683
        jb  loc_55FE
        add si, cx
        cmp word ptr [si+2], 1Eh
        ja  loc_55FB
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, 870h
        mov ah, ds:96Dh
        mov dx, di
        add dx, 3Ch ; '<'
        test    word ptr [si], 18h
        jz  loc_5634
        mov cx, 4
        test    word ptr [si], 8
        mov si, 1684h
        jnz loc_566A
        add si, cx
        inc cx
        jmp short loc_566A
; --------------------------------------------------
        db 90h              ; EVEN -> loc_5634 (1 byte NOP)
loc_5634:
        dec si
        dec si
        cld
        lodsb
        mov bx, ax
        xor bh, bh
        lodsb
        or  al, al
        jns loc_5644
        mov al, 2Dh ; '-'
        stosw

loc_5644:
        sub si, cx
        sub cx, 2
        sub cx, bx
        jbe loc_5651

loc_564D:
        lodsb
        stosw
        loop    loc_564D

loc_5651:
        or  bx, bx
        jz  loc_566E
        mov al, 2Eh ; '.'
        stosw
        add bx, cx
        or  cx, cx
        jns loc_5664
        mov al, 30h ; '0'
        neg cx
        repe stosw

loc_5664:
        mov cx, bx
        or  cx, cx
        jle loc_566E

loc_566A:
        lodsb
        stosw
        loop    loc_566A

loc_566E:
        pop es
        assume es:nothing
        clc
        ret
sub_5600    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5671    proc near
        mov ax, 7Fh ; ''
        call    sub_8A92
        ret
sub_5671    endp

; --------------------------------------------------
        call    sub_55B6
        jb  locret_56A9
        push    word ptr ds:0
        or  word ptr ds:0, 2
        mov si, 870h
        mov cx, ds:1680h

loc_568E:
        lodsw
        cmp al, 20h ; ' '
        jz  loc_569C
        push    cx
        push    si
        call    sub_2262
        pop si
        pop cx
        loop    loc_568E

loc_569C:
        pop word ptr ds:0
        call    sub_5671
        or  word ptr ds:0, 40h

locret_56A9:
        ret
; --------------------------------------------------
        db 0, 0, 0, 0, 0, 0    ; ALIGN 8 padding (6 bytes to offset 56B0h)
        call    sub_5796
        jmp short loc_56B8
; --------------------------------------------------
        call    sub_56CA

loc_56B8:
        jb  loc_56C5
        or  word ptr ds:2, 1
        call    sub_2AAA
        clc
        ret
; --------------------------------------------------

loc_56C5:
        call    sub_3450
        stc
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_56CA    proc near
        call    sub_5755
        jnb loc_56D6

loc_56CF:
        mov ax, 2
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_56D6:
        mov byte ptr ds:1690h, 0
        push    word ptr ds:8C7h
        call    sub_5836
        pop word ptr ds:8C7h
        jnb loc_56E9
        ret
; --------------------------------------------------

loc_56E9:
        call    sub_587B
        jb  loc_56F9
        call    sub_5897
        mov ax, 1
        call    sub_CB4F
        stc
        ret
; --------------------------------------------------

loc_56F9:
        call    sub_A54E
        call    sub_4ED
        jb  loc_570A
        call    loc_585F
        jb  loc_570A
        inc byte ptr ds:1690h

loc_570A:
        call    sub_3450
        call    sub_D157
        call    sub_421
        xor word ptr ds:0, 4
        mov ax, ds:0C0h
        mov ds:66h, ax
        mov ds:64h, ax
        call    sub_5AF5
        call    sub_EE6C
        call    sub_CF7E
        cmp byte ptr ds:1690h, 0
        jnz loc_5733
        ret
; --------------------------------------------------

loc_5733:
        call    loc_57BF
        pushf
        call    sub_D02B
        popf
        ret
sub_56CA    endp

; --------------------------------------------------
        mov byte ptr ds:1690h, 1
        call    sub_5836
        jb  locret_5754
        test    word ptr ds:0, 4
        jz  loc_57BF
        mov ax, 22h ; '"'
        call    sub_CB4F

locret_5754:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_5755    proc near
        test    word ptr ds:0, 200h
        jnz locret_578E
        test    word ptr ds:0, 8000h
        jnz locret_578E
        test    word ptr ds:0, 4
        jnz locret_578E
        call    sub_5A98
        jb  loc_578D
        test    word ptr ds:0, 200h
        jnz locret_578E
        test    word ptr ds:0, 8000h
        jnz locret_578E
        test    word ptr ds:0, 4
        jnz locret_578E
        call    sub_5A98

loc_578D:
        stc

locret_578E:
        ret
sub_5755    endp

; --------------------------------------------------

loc_578F:
        mov ax, 3
        call    sub_CB4F
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_5796    proc near
        call    sub_5755
        jnb loc_579E
        jmp loc_56CF
; --------------------------------------------------

loc_579E:
        mov byte ptr ds:1690h, 0
        call    sub_5836
        jnb sub_57A9
        ret
sub_5796    endp


; ---------- S U B  R O U T I N E --------------------------


sub_57A9    proc near
        call    sub_587B
        jb  loc_578F
        mov ax, ds:0C0h
        mov ds:66h, ax
        mov ds:0C2h, ax
        call    sub_3450
        call    sub_D157
        jmp short loc_57C4
; --------------------------------------------------

loc_57BF:
        call    sub_587B
        jb  loc_578F

loc_57C4:
        mov ax, 4
        not ax
        and ds:0, ax
        call    sub_58A4
        jnb loc_57DE
        cmp byte ptr ds:1690h, 0
        jnz loc_57DC
        call    sub_D157

loc_57DC:
        stc
        ret
; --------------------------------------------------

loc_57DE:
        cmp byte ptr ds:1690h, 0
        jnz loc_5814
        mov di, ds:0BEh
        push    word ptr [di]
        push    di
        call    sub_421
        pop di
        pop word ptr [di]
        add di, [di]
        mov ds:0C0h, di
        xor word ptr ds:0, 4
        mov ax, ds:0C0h
        mov ds:64h, ax
        mov ds:0C2h, ax
        call    sub_5AF5
        call    sub_EE6C
        call    sub_CF7E
        call    sub_D02B
        ret
; --------------------------------------------------

loc_5814:
        mov ax, ds:0C2h
        mov cx, 0Ah
        push    word ptr ds:0C2h
        mov dx, 0FFFFh
        call    sub_2B8E
        mov ds:2A84h, dx
        mov ds:64h, ax
        pop word ptr ds:0C2h
        call    sub_EE6C
        call    sub_2AAA
        ret
sub_57A9    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5836    proc near
        mov ax, ds:8C7h
        sub ax, 870h
        add ax, 3
        mov dl, al
        mov dh, 0
        call    sub_A54E
        jb  loc_5874
        cmp byte ptr ds:1690h, 0
        jnz loc_585F
sub_5836    endp


; ---------- S U B  R O U T I N E --------------------------


sub_584F    proc near
        mov si, 870h
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, 14h
        cld
        mov cx, 28h ; '('
        repe movsw
        pop es
        assume es:nothing

loc_585F:
        mov si, 870h
        mov di, 8D0h
sub_584F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5865    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        mov ax, 2900h
        int 21h     ; DOS - PARSE FILENAME
                    ; DS:SI -> string to parse
                    ; ES:DI -> buffer to fill with unopened FCB
                    ; AL = bit mask to control parsing
        pop es
        assume es:nothing
        cmp al, 0FFh
        jz  loc_5874
        clc
        ret
; --------------------------------------------------

loc_5874:
        mov ax, 4
        call    sub_CB4F
        ret
sub_5865    endp


; ---------- S U B  R O U T I N E --------------------------


sub_587B    proc near
        mov ah, 0Fh
        xor bx, bx
        mov ds:8F0h, bx
        mov ds:8F2h, bx
        mov ds:8F3h, bx

loc_588B:
        mov dx, 8D0h
sub_587B    endp


; ---------- S U B  R O U T I N E --------------------------


sub_588E    proc near
        int 21h     ; DOS - OPEN DISK FILE
                    ; DS:DX -> FCB
                    ; Return: AL = 00h file found, FFh file not found
        cmp al, 0
        clc
        jz  locret_5896
        stc

locret_5896:
        ret
sub_588E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5897    proc near
        mov ah, 10h
        jmp short loc_588B
sub_5897    endp

; --------------------------------------------------

loc_589B:
        mov ax, 12h
        call    sub_CB4F
        jmp loc_5941

; ---------- S U B  R O U T I N E --------------------------


sub_58A4    proc near
        mov word ptr ds:64h, 0
        xor ax, ax
        mov word ptr ds:8DEh, 1
        mov ds:8F1h, ax
        mov ds:8F3h, ax
        mov ds:8F0h, al

loc_58BB:
        mov cx, ds:0C8h
        cmp cx, ds:8F8h
        jbe loc_58C9
        mov cx, ds:8F8h

loc_58C9:
        sub cx, ds:66h
        sub cx, 0Ah
        jbe loc_589B
        mov ax, cx
        xor bx, bx
        add ax, ds:8F1h
        adc bx, ds:8F3h
        cmp bx, ds:8E2h
        jnz loc_58E8
        cmp ax, ds:8E0h

loc_58E8:
        jbe loc_58F2
        mov cx, ds:8E0h
        sub cx, ds:8F1h

loc_58F2:
        mov bx, cx
        mov ax, ds:0C2h
        add ax, cx
        mov cx, ds:0C2h
        push    ax
        push    cx
        push    bx
        push    cx
        call    sub_D7FE
        pop dx
        mov ah, 1Ah
        int 21h     ; DOS - SET DISK TRANSFER AREA ADDRESS
                    ; DS:DX -> disk transfer buffer
        pop cx
        mov dx, 8D0h
        mov ah, 27h
        int 21h     ; DOS - RANDOM BLOCK READ
                    ; DS:DX -> FCB
                    ; CX = number of records to be read
        pop di
        pop dx
        push    ax
        mov si, di
        push    dx
        call    sub_D919
        mov ax, di
        pop cx
        call    sub_D7FE
        pop ax
        cmp al, 0
        jnz loc_5947
        mov ax, ds:8F1h
        mov bx, ds:8F3h
        cmp bx, ds:8E2h
        jnz loc_5936
        cmp ax, ds:8E0h

loc_5936:
        jnb loc_5940
        call    sub_D0C0
        jb  loc_5941
        jmp loc_58BB
; --------------------------------------------------

loc_5940:
        clc

loc_5941:
        pushf
        call    sub_5897
        popf
        ret
; --------------------------------------------------

loc_5947:
        mov ax, 30h ; '0'
        call    sub_CB4F
        jmp short loc_5941
sub_58A4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_594F    proc near
        cmp byte ptr ds:18EBh, 0
        jz  loc_5963
        mov ax, 4Fh ; 'O'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_595D:
        jmp loc_5A48
; --------------------------------------------------

loc_5960:
        jmp loc_59EC
; --------------------------------------------------

loc_5963:
        mov si, 1691h
        mov cx, 18EBh
        call    sub_CD28
        or  ax, ax
        jnz loc_5973
        call    sub_1270

loc_5973:
        call    sub_BF90
        cmp al, 56h ; 'V'
        ja  sub_594F
        jz  loc_598A
        cmp al, 48h ; 'H'
        jz  loc_5960
        cmp al, 4Eh ; 'N'
        jz  loc_595D
        cmp al, 41h ; 'A'
        jnz sub_594F
        stc

locret_5989:
        ret
; --------------------------------------------------

loc_598A:
        call    sub_5BCF
        jb  loc_5963
        sub ax, 2
        jbe loc_59A1
        sub ax, ds:1A26h
        jnb loc_59A1
        neg ax
        cmp ax, 3
        ja  loc_59A9

loc_59A1:
        mov ax, 51h ; 'Q'
        call    sub_CB4F
        jmp short loc_5963
; --------------------------------------------------

loc_59A9:
        push    ax
        call    sub_5B7F
        pop cx
        jb  locret_5989
        call    sub_59BA
        call    sub_5A98
        call    sub_5A98
        ret
sub_594F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_59BA    proc near
        neg cx
        add cx, ds:1A26h
        mov ds:0CEh, cx
        add bx, ds:0C0h
        mov ds:0C8h, bx
        push    bx
        push    ax
        push    word ptr ds:0CEh
        inc byte ptr ds:18EBh
        call    sub_5AB4
        pop ax
        add ax, 3
        mov ds:0CCh, al
        sub ds:0CEh, ax
        jmp short loc_5A5E
sub_59BA    endp

; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_59E7:
        jmp short loc_59A1
; --------------------------------------------------

loc_59E9:
        jmp loc_5963
; --------------------------------------------------

loc_59EC:
        call    sub_5BCF
        jb  loc_59E9
        cmp ax, 2
        jb  loc_59E7
        sub ax, ds:0D0h
        jnb loc_59E7
        neg ax
        push    ax
        call    sub_5B7F
        pop cx
        jb  loc_5A0F
        call    sub_5A12
        call    sub_5A98
        call    sub_5A98
        ret
; --------------------------------------------------

loc_5A0F:
        jmp locret_5989

; ---------- S U B  R O U T I N E --------------------------


sub_5A12    proc near
        neg cx
        add cx, ds:864h
        mov ds:0D0h, cx
        dec word ptr ds:0D0h
        add bx, ds:0C0h
        mov ds:0C8h, bx
        push    bx
        push    ax
        push    word ptr ds:0D0h
        inc byte ptr ds:18EBh
        call    sub_5AB4
        pop word ptr ds:0D2h
        inc word ptr ds:0D2h
        mov cx, ds:0D2h
        sub ds:0D0h, cx
        jmp short loc_5A5E
; --------------------------------------------------
        ret
; --------------------------------------------------

loc_5A48:
        call    sub_5B7F
        jb  loc_5A0F
        add bx, ds:0C0h
        mov ds:0C8h, bx
        push    bx
        push    ax
        inc byte ptr ds:18EBh
        call    sub_5AB4

loc_5A5E:
        call    sub_5CC3
        pop ax
        pop bx
        mov byte ptr [bx], 1Ah
        inc bx
        mov byte ptr [bx], 0Dh
        xor ax, ax
        mov [bx], ax
        inc bx
        inc bx
        mov [bx], al
        inc bx
        mov ds:0BEh, bx
        mov word ptr [bx], 2
        add bx, [bx]
        mov ds:0C0h, bx
        mov ds:66h, bx
        mov ds:0E7h, bx
        mov ds:0E9h, bx
        call    sub_D157
        call    sub_419
        call    sub_EE6C
        clc
        ret
sub_5A12    endp ; sp = -4


; ---------- S U B  R O U T I N E --------------------------


sub_5A98    proc near
        cmp byte ptr ds:18EBh, 0
        jnz loc_5AA3
        call    sub_594F
        ret
; --------------------------------------------------

loc_5AA3:
        call    sub_5ABB
        call    sub_8275
        call    sub_5AF5
        call    sub_EE6C
        call    sub_28F7
        clc
        ret
sub_5A98    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5AB4    proc near
        call    sub_5ABB
        call    sub_8275
        ret
sub_5AB4    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5ABB    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        mov si, 4B9h
        mov di, 214h
        mov cx, 50h ; 'P'
        repe movsb
        mov ax, 0FFFFh
        mov ds:214h, ax
        mov ds:1C4h, ax
        pop es
sub_5ABB    endp

        assume es:nothing

; ---------- S U B  R O U T I N E --------------------------


sub_5AD4    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        mov si, 0
        mov di, si
        mov bx, 264h
        push    word ptr ds:66h

loc_5AE4:
        lodsb
        xchg    al, [bx]
        stosb
        inc bx
        cmp si, 1C4h
        jb  loc_5AE4
        pop word ptr ds:0CAh
        pop es
        assume es:nothing
        ret
sub_5AD4    endp ; sp =  2


; ---------- S U B  R O U T I N E --------------------------


sub_5AF5    proc near
        mov si, 18EEh
        test    word ptr ds:0, 4
        jnz loc_5B03
        mov si, 14h

loc_5B03:
        mov di, 98Fh
        call    sub_5B24
        call    sub_DE15
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jz  loc_5B1D
        mov si, 18EEh
        mov di, 9B3h
        call    sub_5B24

loc_5B1D:
        call    sub_8142
        call    sub_19C9
        ret
sub_5AF5    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5B24    proc near
        cmp word ptr ds:1A26h, 50h ; 'P'
        jnb loc_5B2C
        ret
; --------------------------------------------------

loc_5B2C:
        mov bp, si
        xchg    si, di
        cld
        lodsb
        mov dl, al
        lodsb
        mov dh, al
        xor ah, ah
        lodsb
        shr ax, 1
        mov cx, ax
        lodsb
        push    si
        add si, ax
        xchg    si, di
        push    es
        push    ds
        pop es
        assume es:nothing

loc_5B47:
        lodsb
        or  al, al
        jnz loc_5B4F
        dec si
        mov al, 20h ; ' '

loc_5B4F:
        stosb
        inc di
        loop    loc_5B47
        mov cx, di
        pop es
        assume es:nothing
        pop si
        sub cx, si
        mov ax, ds:1A26h
        mul dh
        xor dh, dh
        add ax, dx
        shl ax, 1
        mov di, ax
        mov ax, 20h ; ' '
        mov ah, ds:96Dh
        shr cx, 1
        cmp byte ptr ds:[bp+0], 0
        jz  loc_5B7B
        call    sub_773
        jmp short locret_5B7E
; --------------------------------------------------

loc_5B7B:
        call    sub_75A

locret_5B7E:
        ret
sub_5B24    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5B7F    proc near
        cmp byte ptr ds:18EBh, 0
        jz  loc_5B8D
        mov ax, 4Fh ; 'O'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_5B8D:
        mov ax, ds:8F8h
        sub ax, ds:66h
        cmp ax, 1F40h
        ja  loc_5BA5
        call    sub_D0CE
        jnb loc_5B8D
        mov ax, 4Eh ; 'N'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_5BA5:
        mov bx, ds:8F8h
        sub bx, ds:0C0h
        shr bx, 1
        mov cx, ds:66h
        sub cx, ds:0C0h
        cmp cx, bx
        jb  loc_5BC3
        push    ax
        call    sub_D0CE
        pop ax
        jnb loc_5BA5
        ret
; --------------------------------------------------

loc_5BC3:
        mov bx, ds:8F8h
        sub bx, ds:0C0h
        shr bx, 1
        clc
        ret
sub_5B7F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5BCF    proc near
        call    sub_1270
        sub ax, 30h ; '0'
        jb  loc_5BF3
        cmp ax, 9
        ja  loc_5BF3
        mul word ptr ds:18ECh
        push    ax
        call    sub_1270
        pop bx
        sub ax, 30h ; '0'
        jb  loc_5BF3
        cmp ax, 9
        ja  loc_5BF3
        add ax, bx
        clc
        ret
; --------------------------------------------------

loc_5BF3:
        mov ax, 52h ; 'R'
        call    sub_CB4F
        ret
sub_5BCF    endp

; --------------------------------------------------
        test    word ptr ds:0, 4
        jnz loc_5C09
        mov ax, 53h ; 'S'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_5C09:
        cmp byte ptr ds:18EBh, 0
        jnz loc_5C17
        mov ax, 54h ; 'T'
        call    sub_CB4F
        ret
; --------------------------------------------------

loc_5C17:
        mov ax, ds:1A26h
        mov ds:228h, ax
        mov ds:0CEh, ax
        mov ax, ds:864h
        mov ds:0D0h, ax
        mov word ptr ds:0C8h, 0FFFFh
        xor ax, ax
        mov ds:0CAh, ax
        mov ds:0D2h, ax
        mov ds:0CCh, al
        mov ds:0CDh, al
        mov si, ds:68h
        cld
        lodsw
        mov [si], ax
        mov ax, [si+4]
        mov [si+2], ax
        push    word ptr ds:0BEh
        call    sub_5AB4
        pop ax
        mov cx, ds:0BEh
        cmp cx, ax
        jbe loc_5C8D
        xchg    ax, ds:0BEh
        sub ax, ds:0BEh
        sub ds:0C0h, ax
        sub ds:0E7h, ax
        sub ds:0E9h, ax
        mov cx, ax
        mov ax, ds:0C0h
        add cx, ax
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz loc_5C8A
        mov word ptr ds:15Fh, 1
        call    sub_D7FE
        call    sub_13A5
        jmp short loc_5C8D
; --------------------------------------------------
        db 90h              ; EVEN -> loc_5C8A (1 byte NOP)
loc_5C8A:
        call    sub_D7FE

loc_5C8D:
        mov word ptr ds:0CAh, 0
        mov word ptr ds:0C8h, 0FFFFh
        dec byte ptr ds:18EBh
        mov byte ptr ds:0CCh, 0
        mov ax, ds:1A26h
        mov ds:0CEh, ax
        mov word ptr ds:0D2h, 0
        mov byte ptr ds:0CDh, 0
        mov ax, ds:864h
        mov ds:0D0h, ax
        call    sub_5AF5
        call    sub_EE6C
        call    sub_28F7
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_5CC3    proc near
        push    ax
        push    di
        push    si
        mov ax, ds:0CEh
        cmp ax, ds:1A26h
        jnb loc_5D21
        mov cx, ds:0D0h
        cmp word ptr ds:86Bh, 0AC1h
        jnz loc_5CDC
        inc cx

loc_5CDC:
        mov dx, 3
        cmp word ptr ds:86Bh, 0AC1h
        jnz loc_5CE8
        dec dx

loc_5CE8:
        mov dh, dl
        add dh, cl
        add dh, ds:0D2h
        dec dh
        mov al, ds:0CCh
        xor ah, ah
        sub ax, 3
        ja  loc_5CFF
        mov ax, ds:0CEh

loc_5CFF:
        mov dl, al
        call    sub_57D
        mov di, bx
        cld
        mov ah, ds:0DAFh
        mov al, 20h ; ' '
        call    sub_764
        mov al, ds:862h
        call    sub_764
        mov al, 20h ; ' '
        call    sub_764
        loop    loc_5CDC

loc_5D1D:
        pop si
        pop di
        pop ax
        ret
; --------------------------------------------------

loc_5D21:
        mov ax, ds:0D0h
        cmp ax, ds:864h
        jnb loc_5D1D
        mov dx, ds:0D2h
        sub dx, 1
        ja  loc_5D37
        mov dx, ds:0D0h

loc_5D37:
        db 81h, 0C2h, 3, 0  ; add dx, 3
        mov dh, dl
        mov dl, ds:0CCh
        call    sub_57D
        mov di, bx
        mov cx, ds:0CEh
        mov al, ds:863h
        mov ah, ds:0DAFh
        cld
        call    sub_75A
        jmp short loc_5D1D
sub_5CC3    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5D57    proc near
        or  cx, cx
        jz  locret_5D93
        push    es
        push    ds
        mov es, di
        mov ds, si
        assume ds:nothing

loc_5D61:
        xor di, di
        xor si, si
        mov bx, cx
        cmp cx, 1000h
        jbe loc_5D70
        mov cx, 1000h

loc_5D70:
        shl cx, 1
        shl cx, 1
        shl cx, 1
        cld
        repe movsw
        mov bp, es
        add bp, 1000h
        mov es, bp
        assume es:nothing
        mov bp, ds
        add bp, 1000h
        mov ds, bp
        assume ds:nothing
        mov cx, bx
        sub cx, 1000h
        ja  loc_5D61
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing

locret_5D93:
        ret
sub_5D57    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5D94    proc near
        or  cx, cx
        jz  locret_5D93
        push    es
        push    ds
        mov ds, si
        mov es, di

loc_5D9E:
        mov bp, es
        sub bp, 1000h
        mov es, bp
        assume es:nothing
        mov bp, ds
        sub bp, 1000h
        mov ds, bp
        assume ds:nothing
        mov di, 0FFFEh
        mov si, di
        mov bx, cx
        cmp cx, 1000h
        jbe loc_5DBE
        mov cx, 1000h

loc_5DBE:
        shl cx, 1
        shl cx, 1
        shl cx, 1
        std
        repe movsw
        mov cx, bx
        sub cx, 1000h
        ja  loc_5D9E
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        ret
sub_5D94    endp

; --------------------------------------------------
        db 14 dup(0)        ; CALIGN 10h -> sub_5DE0 (14 bytes 00)
; ---------- S U B  R O U T I N E --------------------------


sub_5DE0    proc near
        push    bx
        push    word ptr ds:0Eh
        push    word ptr ds:12h
        test    word ptr ds:0, 10h
        jz  loc_5E20
        mov ax, ds:0C2h
        cmp ax, ds:0Eh
        jnb loc_5DFE
        xchg    ax, ds:0Eh

loc_5DFE:
        mov ds:10h, ax
        mov al, ds:4
        cmp byte ptr ds:4, 0FFh
        jz  loc_5E20
        test    word ptr ds:0, 2000h
        jz  loc_5E20
        cmp al, ds:12h
        jnb loc_5E1D
        xchg    al, ds:12h

loc_5E1D:
        mov ds:13h, al

loc_5E20:
        push    ds
        push    di
        push    es
        mov di, 1A49h
        push    ds
        pop es
        assume es:nothing
        call    sub_5E89
        mov bx, es
        mov cx, ds:0CEh
        pop es
        assume es:nothing
        pop di
        push    si
        mov al, ds:0CDh
        xor ah, ah
        shl ax, 1
        add ax, 1A49h
        mov si, ax
        mov al, ds:0CCh
        xor ah, ah
        shl ax, 1
        add di, ax
        test    word ptr ds:0, 1000h
        jz  loc_5E57
        add di, cx
        add di, cx
        jmp short loc_5E69
; --------------------------------------------------

loc_5E57:
        cld
        mov ax, es
        cmp ax, ds:86Eh
        jnz loc_5E65
        call    sub_773
        jmp short loc_5E69
; --------------------------------------------------

loc_5E65:
        mov ds, bx
        repe movsw

loc_5E69:
        pop si
        pop ds
        mov ax, ds:1A26h
        sub ax, ds:0CEh
        shl ax, 1
        add di, ax
        mov bl, ds:21Ah
        mov ds:19FCh, bl
        pop bx
        mov ds:12h, bl
        pop word ptr ds:0Eh
        pop bx
        ret
sub_5DE0    endp


; ---------- S U B  R O U T I N E --------------------------


sub_5E89    proc near
        mov ds:1A2Dh, sp
        push    word ptr ds:0C2h
        pop word ptr ds:1A31h
        push    word ptr ds:4
        pop word ptr ds:1A33h
        mov byte ptr ds:1A2Ch, 0
        call    sub_6801
        db 81h, 3Eh, 05Fh, 1, 0, 0  ; cmp word ptr ds:15Fh, 0
        jz  loc_5EB0
        call    sub_7084

loc_5EB0:
        push    word ptr ds:1A47h
        push    word ptr ds:220h
        push    word ptr ds:4
        push    word ptr ds:0C2h
        push    di
        push    si
        call    sub_604A
        pushf
        call    sub_6783
        push    si
        mov ax, 20h ; ' '
        mov ah, ds:0DAFh
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  loc_5F09
        cmp byte ptr ds:1A0Ch, 0
        jz  loc_5F0C
        or  cx, cx
        jz  loc_5F0C
        cmp di, ds:1A0Dh
        jbe loc_5F0C
        mov ax, cx
        mov cx, di
        sub cx, ds:1A0Dh
        mov si, di
        add di, ax
        add di, ax
        push    di
        dec di
        inc cx
        dec si
        cmp byte ptr ds:19F8h, 0
        jz  loc_5F0F
        sub si, cx
        sub di, cx
        jmp short loc_5F12
; --------------------------------------------------

loc_5F09:
        jmp loc_5FDF
; --------------------------------------------------

loc_5F0C:
        jmp loc_5F91
; --------------------------------------------------

loc_5F0F:
        std
        repe movsb

loc_5F12:
        cmp word ptr ds:1A31h, 0FFFFh
        jnz loc_5F60
        mov dl, ds:1A33h
        xor dh, dh
        shl dx, 1
        add dx, ds:1A06h
        cmp dx, si
        jbe loc_5F60
        sub dx, di
        ja  loc_5F47
        push    word ptr ds:1A35h
        pop word ptr ds:0C2h
        dec word ptr ds:0C2h
        mov dx, si
        sub dx, ds:1A06h
        shr dx, 1
        mov ds:4, dl
        jmp short loc_5F7B
; --------------------------------------------------

loc_5F47:
        shr dx, 1
        dec dx
        add dx, ds:1A37h
        cmp dx, ds:0C2h
        jnb loc_5F60
        mov ds:0C2h, dx
        mov dx, ds:1A33h
        mov ds:4, dl

loc_5F60:
        cmp byte ptr ds:1A33h, 0FFh
        jnz loc_5F7B
        mov dl, ds:4
        xor dh, dh
        shl dx, 1
        add dx, ds:1A06h
        cmp dx, si
        jbe loc_5F7B
        add ds:4, al

loc_5F7B:
        mov cx, ax
        mov al, ds:1A0Ch
        mov ah, ds:1A0Fh
        sub di, cx
        sub di, cx
        inc di
        inc di
        call    sub_603A
        pop di
        jmp short loc_5FDF
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_5F91:
        cmp byte ptr ds:21Bh, 0
        jz  loc_5FA6
        cmp byte ptr [si-1], 0Ah
        jz  loc_5FA6
        cmp byte ptr [si-1], 0Dh
        jz  loc_5FA6
        jmp short loc_5FDF
; --------------------------------------------------

loc_5FA6:
                    ; sub_5E89+113j ...
        or  cx, cx
        jz  loc_5FDF
        cmp byte ptr ds:21Eh, 1
        jb  loc_5FDF
        ja  loc_5FB5
        shr cx, 1

loc_5FB5:
        mov dx, cx
        pop si
        popf
        pop si
        pop di
        pop word ptr ds:0C2h
        pop ax
        mov ds:4, al
        pop word ptr ds:220h
        pop word ptr ds:1A47h
        mov ds:1A33h, dx
        call    sub_70B2
        mov dx, ds:1A33h
        call    sub_604F
        pushf
        call    sub_6783
        jmp short loc_5FEE
; --------------------------------------------------

loc_5FDF:
                    ; sub_5E89+105j ...
        pop si
        pop word ptr ds:1A24h
        add sp, 0Ch
        call    sub_6014
        push    word ptr ds:1A24h

loc_5FEE:
        mov cl, ds:0CDh
        xor ch, ch
        add cx, ds:0CEh
        shl cx, 1
        add cx, ds:1A06h
        sub cx, di
        jbe loc_600E
        shr cx, 1
        mov ax, 20h ; ' '
        mov ah, ds:0DAFh
        call    sub_603A

loc_600E:
        popf
        mov sp, ds:1A2Dh
        ret
sub_5E89    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6014    proc near
                    ; sub_6736+1Cp
        mov ax, ds:214h
        cmp si, ax
        jnb locret_6039
        db 81h, 3Eh, 05Fh, 1, 0, 0  ; cmp word ptr ds:15Fh, 0
        jz  locret_6039
        mov ds:1A10h, cx
        pop word ptr ds:19FAh
        call    sub_70B2
        push    word ptr ds:19FAh
        call    sub_6811
        mov cx, ds:1A10h

locret_6039:
        ret
sub_6014    endp


; ---------- S U B  R O U T I N E --------------------------


sub_603A    proc near
                    ; sub_5E89+182p ...
        cld
        cmp byte ptr ds:19F8h, 0
        jnz loc_6045
        repe stosw
        ret
; --------------------------------------------------

loc_6045:
        add di, cx
        add di, cx
        ret
sub_603A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_604A    proc near
        call    sub_7600
sub_604A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_604D    proc near
        xor dx, dx
sub_604D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_604F    proc near
        xor ax, ax
        mov ds:1A0Ch, al
        mov ds:1A3Bh, ax
        mov ds:19FEh, ax
        mov ds:1A2Ch, al
        mov ds:1C4Bh, ax
        mov ds:19F6h, ax
        mov ds:19F0h, ax
        push    dx
        call    sub_67A3
        pop dx
        push    word ptr ds:228h
        pop word ptr ds:1A00h
        mov al, ds:21Ah
        mov ds:19FCh, al
        mov bp, ds:66h
        mov ds:1A06h, di
        mov byte ptr ds:[bp+0], 1Ah
        cld
        xor bp, bp
        mov ds:1A14h, bp
        mov bx, ds:1A00h
        shl bx, 1
        add bx, di
        mov ds:19F4h, bx
        cmp dx, 0
        jz  loc_60A3
        add word ptr ds:19F4h, 2

loc_60A3:
        db 81h, 3Eh, 05Fh, 1, 0, 0  ; cmp word ptr ds:15Fh, 0
        jz  loc_60DA
        add dx, ds:226h
        push    word ptr ds:226h
        pop word ptr ds:19FEh
        add dx, ds:224h
        cmp byte ptr ds:21Fh, 0
        jnz loc_60CA
        sub dx, ds:224h
        add dx, ds:222h

loc_60CA:
        mov cx, dx
        or  cx, cx
        jz  loc_60DA
        mov ax, 20h ; ' '
        mov ah, ds:0DAFh
        call    sub_603A

loc_60DA:
        mov ds:1A08h, di
        mov bx, ds:0C2h
        cmp bx, 0FFFFh
        jnz loc_6102
        cmp ds:4, dl
        ja  loc_60F2
        call    sub_2214
        jmp short loc_6102
; --------------------------------------------------

loc_60F2:
        mov cl, ds:4
        xor ch, ch
        shl cx, 1
        add cx, ds:1A06h
        mov ds:19F0h, cx

loc_6102:
        mov ds:1A0Ah, di
        cmp byte ptr ds:4, 0FFh
        jnz loc_6115
        push    word ptr ds:0C2h
        pop word ptr ds:19F6h

loc_6115:
        push    word ptr ds:19F0h
        pop word ptr ds:19F2h
        mov bx, 18F0h
        cmp di, ds:19F4h
        jb  loc_615C
        mov ds:19F4h, di
        add word ptr ds:19F4h, 2
        jmp short loc_615C
; --------------------------------------------------

loc_6131:
        lodsb
        xlat
        or  al, al
        jnz loc_613C
        call    sub_632C
        jb  loc_613E

loc_613C:
        inc di
        inc di

loc_613E:
        loop    loc_6131
        call    sub_6210
        jnb loc_6131
        jmp short loc_6161
; --------------------------------------------------

loc_6147:
        cmp byte ptr ds:19F8h, 0
        jnz loc_6131

loc_614E:
        lodsb
        xlat
        or  al, al
        jnz loc_6159
        call    sub_632C
        jb  loc_615A

loc_6159:
        stosw

loc_615A:
        loop    loc_614E

loc_615C:
        call    sub_6210
        jnb loc_6147

loc_6161:
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  loc_61AE
        cld

loc_616A:
        lodsb
        or  al, al
        jz  loc_616A
        dec si
        push    ax
        mov cx, di
        sub cx, ds:1A06h
        shr cx, 1
        sub cx, 0FFh
        neg cx
        mov ah, ds:19FCh

loc_6183:
                    ; sub_604F+146j ...
        lodsb
        cmp al, 20h ; ' '
        jnz loc_6197
        sub cx, 1
        jl  loc_6183
        call    sub_6796
        push    cx
        call    sub_6210
        pop cx
        jmp short loc_6183
; --------------------------------------------------

loc_6197:
        or  al, al
        jz  loc_6183
        dec si
        pop ax
        cmp byte ptr [si], 1Ah
        jz  loc_61A7
        cmp byte ptr [si], 0Dh
        jnz loc_61AE

loc_61A7:
        lodsb
        call    sub_63FD
        call    sub_E570

loc_61AE:
                    ; sub_604F+156j
        mov byte ptr ds:21Fh, 1
        cmp al, 20h ; ' '
        jz  loc_620B
        cmp al, 0Dh
        jz  loc_620B
        cmp al, 9
        jz  loc_620B
        cmp al, 1Ah
        jz  loc_620B
        cmp word ptr ds:1A14h, 0
        jz  loc_620B
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz loc_61EC
        push    es
        push    ds
        pop es
        assume es:nothing
        mov si, 1A18h
        mov di, 0D9h ; '?'
        push    cx
        mov cx, 6
        cld
        repe movsw
        pop cx
        push    word ptr ds:1A16h
        pop word ptr ds:0D7h
        pop es
        assume es:nothing

loc_61EC:
        mov si, ds:1A14h
        mov di, ds:1A12h
        cmp di, ds:19F2h
        ja  loc_6200
        mov word ptr ds:0C2h, 0FFFFh

loc_6200:
        cmp byte ptr [si-1], 7Eh ; '~'
        jnz loc_620B
        mov al, 2Dh ; '-'
        mov [di-2], ax

loc_620B:
                    ; sub_604F+16Aj ...
        call    sub_66DD
        clc
        ret
sub_604F    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6210    proc near
                    ; sub_604F+10Dp ...
        mov cx, 0FFFFh
        mov dl, ds:21Ah
        mov ds:19FCh, dl
        mov dx, ds:0Eh
        sub dx, si
        ja  loc_6265
        mov dx, ds:10h
        sub dx, si
        jbe loc_626B
        test    word ptr ds:0, 2000h
        jz  loc_625B
        mov dl, ds:12h
        xor dh, dh
        shl dx, 1
        add dx, ds:1A06h
        sub dx, di
        ja  loc_6257
        mov dl, ds:13h
        xor dh, dh
        shl dx, 1
        add dx, ds:1A06h
        sub dx, di
        jbe loc_626B
        shr dx, 1
        jmp short loc_625B
; --------------------------------------------------

loc_6257:
        shr dx, 1
        jmp short loc_6265
; --------------------------------------------------

loc_625B:
        mov al, ds:219h
        xor al, ds:21Ah
        mov ds:19FCh, al

loc_6265:
        cmp dx, cx
        jnb loc_626B
        mov cx, dx

loc_626B:
        mov dx, ds:19F6h
        or  dx, dx
        jz  loc_6282
        sub dx, si
        ja  loc_627C
        call    sub_2214
        jmp short loc_6282
; --------------------------------------------------

loc_627C:
        cmp dx, cx
        jnb loc_6282
        mov cx, dx

loc_6282:
        mov dx, ds:19F4h
        sub dx, di
        jbe loc_62B5
        shr dx, 1
        cmp dx, cx
        jnb loc_6292
        mov cx, dx

loc_6292:
        mov dx, ds:19F0h
        or  dx, dx
        jz  loc_62AB
        sub dx, di
        ja  loc_62A3
        call    sub_2214
        jmp short loc_62AB
; --------------------------------------------------

loc_62A3:
        shr dx, 1
        cmp dx, cx
        jnb loc_62AB
        mov cx, dx

loc_62AB:
        mov ah, ds:19FCh
        cld
        mov bx, 18F0h
        clc
        ret
; --------------------------------------------------

loc_62B5:
        mov ah, ds:19FCh
        mov cx, 1
        stc
        ret
sub_6210    endp


; ---------- S U B  R O U T I N E --------------------------


sub_62BE    proc near
        push    ax
        lodsb
        call    sub_16A7
        shl al, 1
        shl al, 1
        shl al, 1
        shl al, 1
        push    ax
        lodsb
        call    sub_16A7
        pop dx
        add al, dl
        pop dx
        mov ah, dh
        ret
sub_62BE    endp

; --------------------------------------------------

loc_62D7:
        call    sub_62E1
        add word ptr ds:1A12h, 2
        clc
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_62E1    proc near
        pushf
        mov ds:1A14h, si
        mov ds:1A12h, di
        db 81h, 3Eh, 05Fh, 1, 2, 0  ; cmp word ptr ds:15Fh, 2
        jnz loc_6310
        push    es
        push    ds
        pop es
        assume es:nothing
        push    si
        push    di
        push    cx
        mov si, ds:0D7h
        mov ds:1A16h, si
        mov si, 0D9h ; '?'
        mov di, 1A18h
        mov cx, 6
        cld
        repe movsw
        pop cx
        pop di
        pop si
        pop es
        assume es:nothing

loc_6310:
        popf
        ret
sub_62E1    endp

; --------------------------------------------------

loc_6312:
        push    bx
        call    sub_6A78
        pop bx
        mov ah, ds:19FCh
        cld
        cmp al, 1Ah
        jnz loc_6323
        jmp sub_63FD
; --------------------------------------------------

loc_6323:
        or  al, al
        jnz loc_6328
        stc

loc_6328:
        mov cx, 1
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_632C    proc near
                    ; sub_604F+105p
        mov al, [si-1]
        cmp al, 20h ; ' '
        jz  loc_62D7
        jb  loc_635D
        cmp al, ds:971h
        jz  loc_6312
        ja  loc_6360
        cmp al, 2Dh ; '-'
        jnz loc_6345
        cmp al, [si]
        jz  loc_6359

loc_6345:
        call    sub_62E1
        add word ptr ds:1A12h, 2
        cmp al, 2Dh ; '-'
        jz  loc_6359

loc_6351:
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jnb loc_635B

loc_6359:
        clc
        ret
; --------------------------------------------------

loc_635B:
        stc
        ret
; --------------------------------------------------

loc_635D:
        jmp short loc_63D8
; --------------------------------------------------
        db 90h              ; EVEN -> loc_6360 (1 byte NOP)
loc_6360:
        push    ax
        push    si
        cmp byte ptr [si], 80h ; '?'
        jnb loc_63B4
        call    sub_62BE
        cmp al, 0FFh
        jnz loc_6391
        db 81h, 3Eh, 05Fh, 1, 6, 0  ; cmp word ptr ds:15Fh, 6
        jb  loc_6391
        pop si
        pop ax
        call    sub_6796
        lodsb
        call    sub_6796
        lodsb
        add word ptr ds:19F4h, 4
        add word ptr ds:1A00h, 2
        sub word ptr ds:1C4Bh, 4
        clc
        ret
; --------------------------------------------------

loc_6391:
        add sp, 4
sub_632C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6394    proc near
        sub cx, 2
        jnz loc_63AF
        cmp word ptr ds:19F6h, 0
        jz  loc_63AF
        cmp si, ds:19F6h
        jbe loc_63AF
        sub si, 3
        call    sub_2214
        add si, 3

loc_63AF:
        mov cx, 1
        clc
        ret
sub_6394    endp ; sp =  4

; --------------------------------------------------

loc_63B4:
        lodsw
        call    sub_6394
        add sp, 4
        xchg    al, ah
        mov bx, ax
        and bx, 7FFEh
        mov bx, cs:[bx-2130h]
        mov ah, 0Fh
        mov al, bl
        call    sub_6796
        mov al, bh
        call    sub_6796
        mov al, 20h ; ' '
        clc
        ret
; --------------------------------------------------

loc_63D8:
        cmp al, 0Dh
        jz  sub_63FD
        jb  loc_63F5
        cmp al, 1Ah
        jz  sub_63FD
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jnb loc_63ED
        mov al, ds:19F9h

loc_63ED:
        clc
        ret
; --------------------------------------------------

loc_63EF:
        jmp loc_6351
; --------------------------------------------------

loc_63F2:
        jmp loc_635B
; --------------------------------------------------

loc_63F5:
        cmp al, 9
        jz  loc_643D
        ja  loc_63EF
        jb  loc_63F2

; ---------- S U B  R O U T I N E --------------------------


sub_63FD    proc near
                    ; seg000:6320j ...
        call    sub_6533
        add sp, 2
        cmp di, ds:1A06h
        ja  $+2
        dec si
        call    sub_2214
        cmp al, 1Ah
        jnz loc_6416

loc_6411:
        call    sub_66DD
        clc
        ret
; --------------------------------------------------

loc_6416:
        inc si
        mov byte ptr ds:21Fh, 0
        mov al, [si]
        cmp al, 0Ah
        jnz loc_6423
        inc si

loc_6423:
        db 81h, 3Eh, 05Fh, 1, 3, 0  ; cmp word ptr ds:15Fh, 3
        jnb loc_6411
        mov al, ds:977h
        inc di
        inc di
        cmp byte ptr ds:19F8h, 0
        jnz loc_6411
        mov es:[di-2], ax
        jmp short loc_6411
sub_63FD    endp

; --------------------------------------------------

loc_643D:
        call    sub_62E1
        call    sub_6533
        or  bp, bp
        jnz loc_646E
        mov dx, di
        sub dx, ds:1A06h
        add dx, ds:1C4Bh
        shr dx, 1
        sub dx, ds:19FEh
        mov bp, 22Ch

loc_645A:
        cmp dl, ds:[bp+0]
        jb  loc_646E
        inc bp
        cmp bp, 241h
        jbe loc_645A

loc_6467:
        mov al, 20h ; ' '
        mov cx, 1
        clc
        ret
; --------------------------------------------------

loc_646E:
        mov dl, ds:4
        mov ds:1A40h, dl
        mov ds:1A45h, si
        push    word ptr ds:1C4Bh
        pop word ptr ds:1A3Dh
        push    word ptr ds:0C2h
        pop word ptr ds:1A41h
        mov ds:1A39h, bp
        mov dx, ds:[bp+0]
        mov ds:1A43h, dx
        db 3Eh, 8Ah, 96h, 16h, 00h    ; mov dl, ds:[bp+0016h] (mod=10)
        mov ds:1A3Fh, dl
        cmp dl, 3
        stc
        jz  loc_64DB
        mov dx, ds:228h
        cmp dl, ds:[bp+0]
        jbe loc_6467
        mov al, 20h ; ' '
        mov dl, ds:[bp+0]
        xor dh, dh
        add dx, ds:19FEh
        shl dx, 1
        add dx, ds:1A06h
        mov bp, dx
        sub bp, di
        cmp byte ptr ds:25Bh, 0
        jz  loc_64F0
        db 81h, 3Eh, 05Fh, 1, 4, 0  ; cmp word ptr ds:15Fh, 4
        jbe loc_64F0
        mov ds:1C4Bh, bp
        mov al, 9
        clc

loc_64DB:
        pushf
        cmp byte ptr ds:1A3Fh, 0
        jz  loc_64E7
        mov ds:1A3Bh, di

loc_64E7:
        popf
        mov ds:1A08h, di
        mov cx, 1
        ret
; --------------------------------------------------

loc_64F0:
        cmp di, dx
        jb  loc_64F7
        stc
        jmp short loc_64DB
; --------------------------------------------------

loc_64F7:
        cmp byte ptr ds:19F8h, 0
        jz  loc_6502
        inc di
        inc di
        jmp short loc_6503
; --------------------------------------------------

loc_6502:
        stosw

loc_6503:
        cmp word ptr ds:19F0h, 0
        jz  loc_6521
        cmp dx, ds:19F0h
        jbe loc_6521
        push    dx
        dec si
        dec di
        dec di
        call    sub_2214
        inc di
        inc di
        inc si

loc_651A:
        mov al, 20h ; ' '
        pop dx
        jb  loc_64DB
        jmp short loc_64F0
; --------------------------------------------------

loc_6521:
        loop    loc_64F0
        push    dx
        push    di
        mov di, dx
        call    sub_6210
        pop di
        jmp short loc_651A
; --------------------------------------------------

loc_652D:
        jmp loc_666B
; --------------------------------------------------

loc_6530:
        jmp loc_6666

; ---------- S U B  R O U T I N E --------------------------


sub_6533    proc near
        xor bp, bp
        cmp word ptr ds:1A3Bh, 0
        jz  loc_652D
        pushf
        push    ax
        push    si
        push    cx
        push    es
        push    ds
        pop es
        assume es:nothing
        mov si, di
        mov dl, ds:1A44h
        xor dh, dh
        cmp dx, ds:1A00h
        jbe loc_6555
        mov dx, ds:1A00h

loc_6555:
        cmp byte ptr ds:1A3Fh, 3
        jnz loc_6578
        mov dl, ds:1A43h
        inc dl
        mov si, ds:1A3Bh
        mov cx, di
        sub cx, si
        jbe loc_6576
        shr cx, 1

loc_656E:
        lodsb
        inc si
        cmp al, 2Eh ; '.'
        jz  loc_6578
        loop    loc_656E

loc_6576:
        inc si
        inc si

loc_6578:
        add dx, ds:19FEh
        shl dx, 1
        add dx, ds:1A06h
        add dx, ds:1C4Bh
        sub dx, si
        jbe loc_6530
        cmp byte ptr ds:1A3Fh, 2
        jnz loc_6593
        shr dx, 1

loc_6593:
        shr dx, 1
        shl dx, 1
        push    dx
        add dx, di
        cmp dx, ds:19F4h
        pop dx
        ja  loc_6530
        dec di
        mov si, di
        add di, dx
        mov cx, si
        std
        push    di
        inc cx
        sub cx, ds:1A3Bh
        jbe loc_65C0
        push    cx
        repe movsb
        pop cx
        test    word ptr ds:0, 2000h
        jz  loc_65C0
        call    sub_6672

loc_65C0:
        mov cx, dx
        shr cx, 1
        mov al, ds:1A40h
        cmp al, ds:4
        jz  loc_65D1
        add ds:4, cl

loc_65D1:
        cmp word ptr ds:0C2h, 0FFFFh
        jnz loc_65E3
        mov al, ds:4
        cmp al, ds:1A44h
        jnb loc_6648
        jmp short loc_65EC
; --------------------------------------------------

loc_65E3:
        mov ax, ds:1A41h
        cmp ax, ds:0C2h
        jz  loc_6648

loc_65EC:
        inc word ptr ds:1A47h
        add ds:4, cl
        cmp word ptr ds:1A47h, 1
        ja  loc_6648
        sub ds:4, cl
        sub ds:4, cl
        mov ax, si
        sub ax, ds:1A06h
        add ax, ds:1C4Bh
        mov word ptr ds:0C2h, 0
        shr ax, 1
        sub ax, ds:19FEh
        inc ax
        cmp al, ds:4
        jb  loc_6648
        pushf
        push    word ptr ds:1A45h
        pop word ptr ds:0C2h
        add ax, cx
        mov word ptr ds:1A47h, 0
        popf
        jz  loc_6645
        mov ax, ds:1A3Bh
        sub ax, ds:1A06h
        add ax, ds:1A3Dh
        shr ax, 1
        dec word ptr ds:0C2h

loc_6645:
        mov ds:4, al

loc_6648:
        dec di
        mov al, 20h ; ' '
        mov ah, ds:19FCh
        mov bp, di
        add bp, 2
        cmp bp, ds:1A12h
        jbe loc_665D
        mov ah, [di+3]

loc_665D:
        repe stosw
        pop di
        inc di
        mov bp, ds:1A39h
        inc bp

loc_6666:
        pop es
        assume es:nothing
        pop cx
        pop si
        pop ax
        popf

loc_666B:
        mov word ptr ds:1A3Bh, 0
        ret
sub_6533    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6672    proc near
        push    si
        push    di
        push    dx
        push    bx
        mov bl, ds:12h
        xor bh, bh
        shl bx, 1
        add bx, ds:1A06h
        mov dl, ds:13h
        xor dh, dh
        shl dx, 1
        add dx, ds:1A06h
        inc si
        inc di
        mov ax, ds:0Eh
        sub ax, ds:1A45h
        shl ax, 1
        add ax, si
        cmp ax, bx
        jbe loc_66A1
        mov bx, ax

loc_66A1:
        mov ax, ds:10h
        sub ax, ds:1A45h
        shl ax, 1
        add ax, di
        cmp ax, dx
        jnb loc_66B2
        mov dx, ax

loc_66B2:
        shr cx, 1
        jz  loc_66D8
        mov al, ds:219h

loc_66B9:
        cmp si, bx
        jb  loc_66CE
        cmp si, dx
        jnb loc_66D8
        cmp di, dx
        jb  loc_66C8

loc_66C5:
        xor [di+1], al

loc_66C8:
        inc si
        inc si
        inc di
        inc di
        loop    loc_66B9

loc_66CE:
        cmp di, bx
        jb  loc_66C8
        cmp di, dx
        jnb loc_66C8
        jmp short loc_66C5
; --------------------------------------------------

loc_66D8:
        pop bx
        pop dx
        pop di
        pop si
        ret
sub_6672    endp


; ---------- S U B  R O U T I N E --------------------------


sub_66DD    proc near
                    ; sub_63FD+14p
        call    sub_6533
        mov dx, si
        dec di
        call    sub_2214
        inc di
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  locret_66FC
        cmp si, ds:216h
        jb  locret_66FC
        mov ds:216h, si
        call    sub_6941

locret_66FC:
        ret
sub_66DD    endp

; --------------------------------------------------
        cmp byte ptr [si], 1Ah
        jnz loc_6704
        stc
        ret
; --------------------------------------------------

loc_6704:
        call    sub_5E89
        clc
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_6709    proc near
        push    di
        push    es
        push    ds
        pop es
        assume es:nothing
        mov word ptr ds:1A47h, 0
        push    si
        mov di, 1A49h
        call    sub_5E89
        pop ax
        cmp word ptr ds:1A47h, 1
        jnz loc_6730
        mov word ptr ds:0C2h, 0FFFFh
        mov si, ax
        mov di, 1A49h
        call    sub_5E89

loc_6730:
        mov bx, si
        pop es
        assume es:nothing
        pop di
        clc
        ret
sub_6709    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6736    proc near
                    ; sub_7429+112p ...
        push    di
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, 1A49h
        call    sub_6801
        mov ds:1A2Fh, sp
        call    sub_7084
        push    word ptr ds:1A2Fh
        call    sub_604D
        pop word ptr ds:1A2Fh
        call    sub_6014
        mov sp, ds:1A2Fh
        mov bx, si
        pop es
        assume es:nothing
        pop di
        clc
        ret
sub_6736    endp

; --------------------------------------------------
        mov al, ds:19FCh
        mov ds:1A0Fh, al
        mov al, [bx]
        mov ds:1A0Ch, al
        push    word ptr ds:1C58h
        pop word ptr ds:1A0Dh
        push    word ptr ds:1C55h
        pop word ptr ds:1A35h
        push    word ptr ds:1C53h
        pop word ptr ds:1A37h
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_6783    proc near
                    ; sub_5E89+151p
        mov cx, ds:1A00h
        shl cx, 1
        add cx, ds:1A06h
        sub cx, di
        jnb loc_6793
        xor cx, cx

loc_6793:
        shr cx, 1
        ret
sub_6783    endp


; ---------- S U B  R O U T I N E --------------------------


sub_6796    proc near
                    ; sub_632C+4Cp ...
        cld
        cmp byte ptr ds:19F8h, 0
        jnz loc_67A0
        stosw
        ret
; --------------------------------------------------

loc_67A0:
        inc di
        inc di
        ret
sub_6796    endp


; ---------- S U B  R O U T I N E --------------------------


sub_67A3    proc near
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jnb loc_67AC
        ret
; --------------------------------------------------

loc_67AC:
        push    si
        push    di
        push    es
        push    ds
        pop es
        assume es:nothing
        cld

loc_67B2:
        lodsb
        cmp al, ds:971h
        jnz loc_67E5
        push    si
        mov ds:1C55h, si
        call    sub_7016
        mov ds:1C53h, si
        pop si
        jb  loc_67E5
        push    si
        call    sub_6D99
        pop si
        jb  loc_67E5
        mov ax, di
        mov di, 0ECBh
        mov cx, 7
        cld
        repne scasw
        jnz loc_67DF
        call    sub_6B61

loc_67DF:
        mov si, ds:1C53h
        jmp short loc_67B2
; --------------------------------------------------

loc_67E5:
        pop es
        assume es:nothing
        pop di
        pop si
        ret
sub_67A3    endp

seg000      ends

        end
