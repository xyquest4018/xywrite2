;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_MN01.ASM
; SEGMENT:   seg000 (CODE)
; ZONE:      Gap -- Non-relocating code, part 1 (split from original)
; LINES:     3995
;=============================================================================

        INCLUDE XY2_SEGS.INC

; --- PUBLIC declarations ---
        PUBLIC loc_102A, loc_1040, loc_1046, loc_106C, loc_10DE, loc_1125
        PUBLIC loc_1131, loc_114B, loc_1162, loc_1166, loc_116A, loc_1185
        PUBLIC loc_11A9, loc_11C4, loc_11E6, loc_11F0, loc_1201, loc_1215
        PUBLIC loc_1225, loc_1233, loc_1939, loc_A73, loc_A7E, loc_A89
        PUBLIC loc_A90, loc_CAD, loc_CD2, loc_CDC, loc_E83, loc_E98
        PUBLIC loc_EA4, loc_EBA, loc_ED3, loc_EDD, loc_F79, loc_F9A
        PUBLIC loc_FAF, loc_FCA, loc_FD0, locret_A88, sub_110D, sub_1270
        PUBLIC sub_1281, sub_13A5, sub_13F7, sub_1577, sub_16A7, sub_173C
        PUBLIC sub_1762, sub_18CC, sub_1936, sub_1992, sub_19C9, sub_1AFC
        PUBLIC sub_1B54, sub_1C25, sub_1C4A, sub_1D19, sub_1F34, sub_1FD2
        PUBLIC sub_20F3, sub_A57, sub_AA8, sub_C77, sub_CE6, sub_E2C
        PUBLIC sub_F60

seg000      segment byte public 'CODE'
        assume cs:seg000

        assume es:nothing, ss:nothing, ds:nothing


        EXTRN off_85D:DWORD
; --- NEAR EXTRNs (same segment) ---
        EXTRN byte_1:BYTE
        EXTRN byte_7A5:BYTE
        EXTRN loc_220D:NEAR
        EXTRN loc_2C49:NEAR
        EXTRN loc_4E4F:NEAR
        EXTRN loc_542C:NEAR
        EXTRN loc_5947:NEAR
        EXTRN sub_2117:NEAR
        EXTRN sub_2160:NEAR
        EXTRN sub_2166:NEAR
        EXTRN sub_2196:NEAR
        EXTRN sub_21ED:NEAR
        EXTRN sub_21F8:NEAR
        EXTRN sub_27D3:NEAR
        EXTRN sub_27F5:NEAR
        EXTRN sub_2802:NEAR
        EXTRN sub_2836:NEAR
        EXTRN sub_28F7:NEAR
        EXTRN sub_2A9F:NEAR
        EXTRN sub_2AAA:NEAR
        EXTRN sub_2AE7:NEAR
        EXTRN sub_2B8B:NEAR
        EXTRN sub_2C4C:NEAR
        EXTRN sub_3130:NEAR
        EXTRN sub_3D15:NEAR
        EXTRN sub_4249:NEAR
        EXTRN sub_4252:NEAR
        EXTRN sub_4550:NEAR
        EXTRN sub_4771:NEAR
        EXTRN sub_47C4:NEAR
        EXTRN sub_4952:NEAR
        EXTRN sub_4B90:NEAR
        EXTRN sub_5077:NEAR
        EXTRN sub_5600:NEAR
        EXTRN sub_56CA:NEAR
        EXTRN sub_5796:NEAR
        EXTRN sub_57A9:NEAR
        EXTRN sub_57D:NEAR
        EXTRN sub_584F:NEAR
        EXTRN sub_5AF5:NEAR
        EXTRN sub_5B24:NEAR
        EXTRN sub_5DE0:NEAR
        EXTRN sub_63A:NEAR
        EXTRN sub_6801:NEAR
        EXTRN sub_6D99:NEAR
        EXTRN sub_7010:NEAR
        EXTRN sub_7018:NEAR
        EXTRN sub_701D:NEAR
        EXTRN sub_705B:NEAR
        EXTRN sub_7084:NEAR
        EXTRN sub_70B2:NEAR
        EXTRN sub_7368:NEAR
        EXTRN sub_73F0:NEAR
        EXTRN sub_75A:NEAR
        EXTRN sub_75F:NEAR
        EXTRN sub_764:NEAR
        EXTRN sub_769:NEAR
        EXTRN sub_76E:NEAR
        EXTRN sub_773:NEAR
        EXTRN sub_778:NEAR
        EXTRN sub_77D:NEAR
        EXTRN sub_787:NEAR
        EXTRN sub_791:NEAR
        EXTRN sub_792D:NEAR
        EXTRN sub_796:NEAR
        EXTRN sub_79B:NEAR
        EXTRN sub_8574:NEAR
        EXTRN sub_85EB:NEAR
        EXTRN sub_8683:NEAR
        EXTRN sub_87FD:NEAR
        EXTRN sub_88EE:NEAR
        EXTRN sub_8A92:NEAR
        EXTRN sub_8DD4:NEAR
        EXTRN sub_8DED:NEAR
        EXTRN sub_97E0:NEAR
        EXTRN sub_A07B:NEAR
        EXTRN sub_A54E:NEAR
        EXTRN sub_A9D5:NEAR
        EXTRN sub_BD02:NEAR
        EXTRN sub_BD37:NEAR
        EXTRN sub_BD6E:NEAR
        EXTRN sub_BF90:NEAR
        EXTRN sub_CB4F:NEAR
        EXTRN sub_CCAF:NEAR
        EXTRN sub_CD17:NEAR
        EXTRN sub_CDE8:NEAR
        EXTRN sub_CF5B:NEAR
        EXTRN sub_CF7E:NEAR
        EXTRN sub_CFBD:NEAR
        EXTRN sub_D02B:NEAR
        EXTRN sub_D4BA:NEAR
        EXTRN sub_D4E9:NEAR
        EXTRN sub_D7FE:NEAR
        EXTRN sub_DD0B:NEAR
        EXTRN sub_E4D3:NEAR
        EXTRN sub_E570:NEAR
        EXTRN sub_EE6C:NEAR
        EXTRN sub_EE7F:NEAR
        EXTRN word_7A7:WORD
        EXTRN word_7A9:WORD
        EXTRN word_865:WORD
        EXTRN word_867:WORD

byte_897    db 40h dup(0), 0FBh, 53h, 51h, 56h, 57h, 1Eh, 6, 0FCh
        db 2Eh, 8Bh, 1Eh, 5Ch, 0, 8Eh, 0DBh, 8Eh, 0C3h, 0Ah, 0E4h
        db 74h, 48h, 0FEh, 0CCh, 74h, 3, 0EBh, 4Ch, 90h, 0E8h
        db 53h, 0, 74h, 2Dh, 0FFh, 36h, 6Ah, 25h, 0FFh, 36h, 68h
        db 25h, 0FFh, 36h, 64h, 25h, 0FFh, 36h, 66h, 25h, 1Eh
        db 7, 0E8h, 38h, 0, 8Fh, 6, 66h, 25h, 8Fh, 6, 64h, 25h
        db 8Fh, 6, 68h, 25h, 8Fh, 6, 6Ah, 25h, 8Bh, 1Eh, 6Ah, 25h
        db 3Bh, 1Eh, 6Ch, 25h, 7, 1Fh, 5Fh, 5Eh, 59h, 5Bh, 0CAh
        db 2, 0, 0C7h, 6, 68h, 25h, 2 dup(0FFh), 0E8h, 12h, 0
        db 74h, 0F5h, 1Eh, 7, 0E8h, 7, 0, 7, 1Fh, 5Fh, 5Eh, 59h
        db 5Bh, 0CFh, 0E8h, 0ADh, 0D2h, 0C3h, 8Bh, 1Eh, 6Ah, 25h
        db 3Bh, 1Eh, 6Ch, 25h, 75h, 6, 0E8h, 12h, 0, 75h, 1, 0C3h
        db 8Bh, 1Eh, 6Ah, 25h, 8Bh, 7, 0C3h, 0, 2, 8, 0Ah, 1, 3
        db 2 dup(8), 0BFh, 18h, 0, 6, 0CDh, 18h, 7, 80h, 0F9h
        db 0, 75h, 1, 0C3h, 0BBh, 0ABh, 7, 2Ch, 56h, 2Eh, 0D7h
        db 86h, 0E0h, 0D0h, 0E8h, 24h, 7, 0BBh, 60h, 9, 2Eh, 0D7h
        db 86h, 0C4h, 1Eh, 7, 0BFh, 0Ch, 26h, 8Bh, 0Eh, 8, 26h
        db 0FCh, 0F2h, 0AEh, 75h, 65h, 4Fh, 8Ah, 0D8h, 81h, 0C7h
        db 16h, 26h, 81h, 0EFh, 0Ch, 26h, 8Ah, 3Dh, 0BFh, 20h
        db 26h, 8Bh, 0Eh, 0Ah, 26h, 0F2h, 0AEh, 75h, 2, 33h, 0FFh
        db 8Ah, 0C3h, 85h, 0FFh, 74h, 7, 8, 3Eh, 60h, 25h, 0EBh
        db 36h, 90h, 0FFh, 36h, 6Eh, 8, 7, 55h, 50h, 8Ah, 0E7h
        db 86h, 0C4h, 0BBh, 0D2h, 25h, 3Ah, 47h, 2, 74h, 0Dh, 81h
        db 0C3h, 8, 0, 81h, 0FBh, 2, 26h, 7Ch, 0F1h, 0EBh, 14h
        db 90h, 80h, 7Fh, 7, 1, 75h, 0Ah, 84h, 6, 60h, 25h, 75h
        db 7, 8, 6, 7Bh, 26h, 0E8h, 5Bh, 0D4h, 58h, 5Dh, 8Bh, 1Eh
        db 6Ah, 25h, 3Bh, 1Eh, 6Ch, 25h, 0C3h, 0Ah, 26h, 60h, 25h
        db 50h, 8Ah, 26h, 7Bh, 26h, 0B9h, 7, 0, 0B0h, 1, 80h, 0FCh
        db 0, 74h, 13h, 84h, 0E0h, 74h, 0Bh, 32h, 0E0h, 50h, 51h
        db 6, 0E8h, 0EFh, 0D3h, 7, 59h, 58h, 0D0h, 0C0h, 0E2h
        db 0E8h, 58h, 0C6h, 6, 7Bh, 26h, 0, 8Bh, 1Eh, 6Ch, 25h
        db 8Bh, 0F3h, 0E8h, 0DAh, 0D2h, 56h, 53h, 50h, 0E8h, 9Ch
        db 0DAh, 58h, 5Bh, 5Eh, 72h, 8, 1Eh, 6, 0FFh, 0D2h, 7
        db 1Fh, 0EBh, 0AFh, 3Bh, 1Eh, 6Ah, 25h, 74h, 8, 89h, 4
        db 89h, 1Eh, 6Ch, 25h, 0EBh, 0A1h, 0E8h, 46h, 0FDh, 0EBh
        db 9Ch

; ---------- S U B  R O U T I N E --------------------------


sub_A57     proc near
        push    es
        push    si
        push    dx
        push    cx
        push    ax
        push    ds
        pop es
        assume es:nothing
        mov cx, 5
        mov si, 0B84h

loc_A64:
        lodsb
        mov dl, al
        mov ah, 2
        int 21h     ; DOS - DISPLAY OUTPUT
                    ; DL = character to send to standard output
        loop    loc_A64
        pop ax
        pop cx
        pop dx
        pop si
        pop es
        assume es:nothing
        ret
sub_A57     endp

; --------------------------------------------------

loc_A73:
        push    ax
        push    dx
        mov al, 0
        mov dx, 10Ch
        out dx, al
        pop dx
        pop ax
        ret
; --------------------------------------------------

loc_A7E:
        mov ah, 17h
        int 49h     ; Texas Instruments PC - VIDEO I/O--
        mov cs:word_7A9, dx
        ret
; --------------------------------------------------

locret_A88:
        ret
; --------------------------------------------------

loc_A89:
        pushf
        call    cs:off_85D
        ret
; --------------------------------------------------

loc_A90:
        sub ax, ax
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_A93     proc near
        push    es
        push    ds
        push    ax
        mov ax, cs
        mov es, ax
        assume es:seg000
        mov ds, ax
        assume ds:seg000
        mov cx, 1Eh
        mov di, 700h
        repe movsb
        pop ax
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        ret
sub_A93     endp


; ---------- S U B  R O U T I N E --------------------------


sub_AA8     proc near
        push    di
        push    si
        mov di, 0
        mov cs:word_7A7, di
        call    cs:off_ABA[di]
        pop si
        pop di
        ret
; --------------------------------------------------
off_ABA     dw offset loc_AD4
        dw offset loc_AF4
        dw offset loc_B00
        dw offset loc_B34
        dw offset sub_4249
        dw offset sub_2C4C+1
        dw offset loc_5947+1
        dw offset sub_4550
        dw offset sub_4952
        dw offset loc_4E4F
        dw offset loc_542C
        dw offset loc_2C49
        dw offset sub_4252
; --------------------------------------------------

loc_AD4:
        mov ax, 0B800h
        mov es, ax
        assume es:nothing
        int 11h     ; EQUIPMENT DETERMINATION
                    ; Return: AX = equipment flag bits
        and ax, 30h
        cmp ax, 30h ; '0'
        jnz loc_AEE
        mov ax, 0B000h

loc_AE6:
        mov es, ax
        assume es:nothing
        mov cs:byte_1+5Dh, 0FFh

loc_AEE:
        mov ax, es
        mov ds:86Eh, ax
        ret
; --------------------------------------------------

loc_AF4:
        mov cs:word_7A7, 2
        mov ax, 0B800h
        jmp short loc_AE6
; --------------------------------------------------

loc_B00:
        mov si, 0CEAh
        mov byte ptr ds:0CE9h, 10h
        call    sub_C3F
        mov cs:word_7A7, 4
        mov ax, 877h
        mov cs:word_865, ax
        mov ax, 883h
        mov cs:word_867, ax
        mov ah, 17h
        int 49h     ; Texas Instruments PC - VIDEO I/O--
        mov cs:word_7A9, dx
        mov ax, 0DE00h
        mov si, 71Eh
        call    sub_A93
        jmp short loc_AE6
; --------------------------------------------------

loc_B34:
        mov al, 38h ; '8'
        mov ds:1C66h, al
        mov byte ptr ds:19F9h, 10h
        mov word ptr ds:838h, 13h
        mov byte ptr ds:0CE9h, 2
        mov si, 0CF7h
        call    sub_C3F
        mov cs:word_7A7, 8
        mov ax, 869h
        mov cs:word_865, ax
        mov ax, 86Fh
        mov cs:word_867, ax
        push    es
        push    ds
        push    cs
        pop ds
        assume ds:seg000
        mov al, 24h ; '$'
        mov ah, 25h ; '%'
        mov dx, 6D7h
        int 21h     ; DOS - SET INTERRUPT VECTOR
                    ; AL = interrupt number
                    ; DS:DX = new vector to be used for specified interrupt
        pop ds
        assume ds:nothing
        cld
        call    sub_A57
        mov word ptr ds:864h, 15h
        mov word ptr ds:0D0h, 15h
        mov word ptr ds:334h, 15h
        mov byte ptr ds:866h, 1
        mov si, 18F0h
        mov byte ptr [si+0AEh], 0AEh ; '?'
        mov byte ptr [si+0ABh], 0
        mov word ptr ds:977h, 0B6h ; '?'
        mov word ptr ds:975h, 12h
        mov byte ptr ds:863h, 12h
        mov byte ptr ds:862h, 19h
        push    cs
        pop es
        assume es:seg000
        mov si, 0B78h
        mov di, 0E438h
        mov cx, 0Ch
        repe movsb
        push    ds
        pop es
        assume es:nothing
        mov di, 2428h
        mov cx, 252Eh
        call    sub_C1C
        mov di, 1691h
        mov cx, 18EBh
        call    sub_C1C
        mov di, 1E33h
        mov cx, 1E53h
        call    sub_C1C
        mov word ptr ds:971h, 0ABh ; '?'
        mov word ptr ds:973h, 0BBh ; '?'
        mov si, 0B91h
        mov di, 0D10h
        inc di
        inc di
        mov cx, 0B9Ah
        sub cx, si
        repe movsb
        mov si, 0B9Ah
        mov di, 6F1h
        mov cx, 0FFh
        repe movsb
        mov si, 0C99h
        mov di, 9D1h
        add di, 0A0h ; '?'
        mov cx, 50h ; 'P'
        repe movsb
        pop es
        assume es:nothing
        mov si, 73Ch
        call    sub_A93
        mov ax, 0EE00h
        jmp loc_AE6
sub_AA8     endp


; ---------- S U B  R O U T I N E --------------------------


sub_C1C     proc near
        sub cx, di
        mov bx, 0Ch

loc_C21:
        dec bx
        mov al, [bx+0B60h]
        mov ah, [bx+0B6Ch]
        push    di
        push    cx
        cld

loc_C2D:
        repne scasb
        jnz loc_C38
        mov [di-1], ah
        or  cx, cx
        jnz loc_C2D

loc_C38:
        pop cx
        pop di
        or  bx, bx
        jnz loc_C21
        ret
sub_C1C     endp


; ---------- S U B  R O U T I N E --------------------------


sub_C3F     proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, 0DADh
        mov cx, 1Ch
        shr cx, 1
        cld
        xor ah, ah

loc_C4D:
        lodsb
        stosw
        loop    loc_C4D
        mov al, ds:0DB1h
        mov ds:96Fh, al
        mov al, ds:0DAFh
        mov ds:96Dh, al
        mov di, 219h
        sub di, 214h
        mov ah, ds:0CE9h
        xchg    al, ah
        mov [di+4B9h], ax
        mov [di+548h], ax
        pop es
        assume es:nothing
        call    sub_4771
        ret
sub_C3F     endp


; ---------- S U B  R O U T I N E --------------------------


sub_C77     proc near
        mov di, cs:word_7A7
        jmp cs:off_C81[di]
; --------------------------------------------------
off_C81     dw offset loc_C85
        dw offset loc_C9F
; --------------------------------------------------

loc_C85:
        in  al, 60h     ; AT Keyboard controller 8042.
        push    ax
        in  al, 61h     ; PC/XT PPI port B bits:
                    ; 0: Tmr 2 gate -- OR  03H=spkr ON
                    ; 1: Tmr 2 data ?  AND  0fcH=spkr OFF
                    ; 3: 1=read high switches
                    ; 4: 0=enable RAM parity checking
                    ; 5: 0=enable I/O channel check
                    ; 6: 0=hold keyboard clock low
                    ; 7: 0=enable kbrd
        mov ah, al
        or  al, 80h
        out 61h, al     ; PC/XT PPI port B bits:
                    ; 0: Tmr 2 gate -- OR  03H=spkr ON
                    ; 1: Tmr 2 data ?  AND  0fcH=spkr OFF
                    ; 3: 1=read high switches
                    ; 4: 0=enable RAM parity checking
                    ; 5: 0=enable I/O channel check
                    ; 6: 0=hold keyboard clock low
                    ; 7: 0=enable kbrd
        xchg    ah, al
        out 61h, al     ; PC/XT PPI port B bits:
                    ; 0: Tmr 2 gate -- OR  03H=spkr ON
                    ; 1: Tmr 2 data ?  AND  0fcH=spkr OFF
                    ; 3: 1=read high switches
                    ; 4: 0=enable RAM parity checking
                    ; 5: 0=enable I/O channel check
                    ; 6: 0=hold keyboard clock low
                    ; 7: 0=enable kbrd
        pop ax
        cmp al, 0FFh
        jz  loc_C9D
        mov ah, al
        clc
        ret
; --------------------------------------------------

loc_C9D:
        stc
        ret
; --------------------------------------------------

loc_C9F:
        in  al, 0E0h
        not al
        mov ah, al
        mov al, 80h ; '?'
        out 0E0h, al
        mov al, ah
        clc
        ret
sub_C77     endp

; --------------------------------------------------

loc_CAD:
        push    ax
        push    bx
        push    cx
        mov bx, 0C0h ; '?'
        in  al, 61h     ; PC/XT PPI port B bits:
                    ; 0: Tmr 2 gate -- OR  03H=spkr ON
                    ; 1: Tmr 2 data ?  AND  0fcH=spkr OFF
                    ; 3: 1=read high switches
                    ; 4: 0=enable RAM parity checking
                    ; 5: 0=enable I/O channel check
                    ; 6: 0=hold keyboard clock low
                    ; 7: 0=enable kbrd
        push    ax

loc_CB6:
        and al, 0FCh
        out 61h, al     ; PC/XT PPI port B bits:
                    ; 0: Tmr 2 gate -- OR  03H=spkr ON
                    ; 1: Tmr 2 data ?  AND  0fcH=spkr OFF
                    ; 3: 1=read high switches
                    ; 4: 0=enable RAM parity checking
                    ; 5: 0=enable I/O channel check
                    ; 6: 0=hold keyboard clock low
                    ; 7: 0=enable kbrd
        mov cx, 48h ; 'H'

loc_CBD:
        loop    loc_CBD
        or  al, 2
        out 61h, al     ; PC/XT PPI port B bits:
                    ; 0: Tmr 2 gate -- OR  03H=spkr ON
                    ; 1: Tmr 2 data ?  AND  0fcH=spkr OFF
                    ; 3: 1=read high switches
                    ; 4: 0=enable RAM parity checking
                    ; 5: 0=enable I/O channel check
                    ; 6: 0=hold keyboard clock low
                    ; 7: 0=enable kbrd
        mov cx, 48h ; 'H'

loc_CC6:
        loop    loc_CC6
        dec bx
        jnz loc_CB6
        pop ax
        out 61h, al     ; PC/XT PPI port B bits:
                    ; 0: Tmr 2 gate -- OR  03H=spkr ON
                    ; 1: Tmr 2 data ?  AND  0fcH=spkr OFF
                    ; 3: 1=read high switches
                    ; 4: 0=enable RAM parity checking
                    ; 5: 0=enable I/O channel check
                    ; 6: 0=hold keyboard clock low
                    ; 7: 0=enable kbrd

loc_CCE:
        pop cx
        pop bx
        pop ax
        ret
; --------------------------------------------------

loc_CD2:
        push    ax
        push    bx
        push    cx
        mov ax, 0Ah
        int 48h     ; PCjr - Cordless Keyboard Translation
        jmp short loc_CCE
; --------------------------------------------------

loc_CDC:
        push    di
        push    es
        mov di, 1Eh
        int 18h     ; TRANSFER TO ROM BASIC
                    ; causes transfer to ROM-based BASIC (IBM-PC)
                    ; often reboots a compatible; often has no effect at all
        pop es
        pop di
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_CE6     proc near
        mov di, cs:word_865
        mov si, cs:word_867
        push    es
        xor ax, ax
        mov es, ax
        assume es:seg000
        cld

loc_CF6:
        mov bx, cs:[di]
        inc di
        inc di
        or  bx, bx
        jnz loc_D01
        pop es
        assume es:nothing
        ret
; --------------------------------------------------

loc_D01:
        mov ax, cs:[si]
        inc si
        inc si
        xchg    ax, es:[bx]
        mov cs:[si-2], ax
        mov ax, cs:[si]
        inc si
        inc si
        xchg    ax, es:[bx+2]
        mov cs:[si-2], ax
        jmp short loc_CF6
sub_CE6     endp

; --------------------------------------------------
        db 0CFh, 9Ch, 53h, 80h, 0FCh, 0Ah, 77h, 54h, 8Ah, 0DCh
        db 32h, 0FFh, 0D1h, 0E3h, 2Eh, 0FFh, 0A7h, 2Fh, 0Dh, 78h
        db 0Dh, 45h, 0Dh, 6Ch, 0Dh, 78h, 0Dh, 78h, 0Dh, 78h, 0Dh
        db 70h, 0Dh, 70h, 0Dh, 7Fh, 0Dh, 74h, 0Dh, 78h, 0Dh, 50h
        db 52h, 0B4h, 17h, 0CDh, 49h, 2Eh, 89h, 16h, 0A9h, 7, 5Ah
        db 58h, 80h, 0FDh, 4, 77h, 2, 0B5h, 1, 80h, 0FDh, 0Bh
        db 72h, 2, 0B5h, 9, 80h, 0F9h, 0Bh, 72h, 2, 0B1h, 0Bh
        db 80h, 0CDh, 40h, 0EBh, 0Ch, 86h, 0D6h, 0EBh, 8, 0B4h
        db 13h, 0EBh, 4, 5Bh, 32h, 0FFh, 53h, 5Bh, 9Dh, 0CDh, 49h
        db 0CAh, 2, 0, 5Bh, 9Dh, 0CDh, 49h, 0CAh, 2, 0

; ---------- S U B  R O U T I N E --------------------------


sub_D86     proc near
        push    di
        mov di, 8

loc_D8A:
        push    es
        int 18h     ; TRANSFER TO ROM BASIC
                    ; causes transfer to ROM-based BASIC (IBM-PC)
                    ; often reboots a compatible; often has no effect at all
        pop es
        pop di
        ret
sub_D86     endp


; ---------- S U B  R O U T I N E --------------------------


sub_D90     proc near
        push    di
        mov di, 0Ah
        jmp short loc_D8A
sub_D90     endp

; --------------------------------------------------
        sti
        pushf
        push    cx
        push    di
        push    ds
        push    es
        push    bx
        cld
        mov bx, word ptr cs:byte_1+5Bh
        mov ds, bx
        mov es, bx
        cmp ah, 0Ah
        ja  loc_DBB
        mov bl, ah
        xor bh, bh
        shl bx, 1
        mov di, bx
        pop bx
        push    bx
        call    cs:off_DC4[di]

loc_DBB:
        pop bx
        pop es
        pop ds
        pop di
        pop cx
        popf
        db 0CAh, 2, 0       ; retf 2 (outside proc context)
; --------------------------------------------------
off_DC4     dw offset sub_E7F
        dw offset sub_E0F
        dw offset sub_E2C
        dw offset sub_E7F
        dw offset sub_E7F
        dw offset sub_E7F
        dw offset sub_DDA
        dw offset sub_E7F
        dw offset sub_DDE
        dw offset sub_DED
        dw offset sub_E09

; ---------- S U B  R O U T I N E --------------------------


sub_DDA     proc near
        call    sub_778
        ret
sub_DDA     endp


; ---------- S U B  R O U T I N E --------------------------


sub_DDE     proc near
        mov bh, ds:4
        mov bl, ds:5
        call    sub_1006
        call    sub_11DD
        ret
sub_DDE     endp


; ---------- S U B  R O U T I N E --------------------------


sub_DED     proc near
        push    ax
        push    dx
        mov dl, 1
        mov ah, bl

loc_DF3:
        mov bx, 0EE00h
        mov es, bx
        assume es:nothing
        mov bh, ds:4
        mov bl, ds:5
        call    sub_1006
        call    sub_FE7
        pop dx
        pop ax
        ret
sub_DED     endp


; ---------- S U B  R O U T I N E --------------------------


sub_E09     proc near
        push    ax
        push    dx
        mov dl, 0
        jmp short loc_DF3
sub_E09     endp


; ---------- S U B  R O U T I N E --------------------------


sub_E0F     proc near
        push    ax
        call    sub_D86
        mov ax, 0EE00h
        mov es, ax
        mov di, 0F2Dh
        mov al, 8
        cmp ch, 4
        jnz loc_E24
        mov al, 1

loc_E24:
        mov es:[di], al
        call    sub_D90
        pop ax
        ret
sub_E0F     endp


; ---------- S U B  R O U T I N E --------------------------


sub_E2C     proc near
        push    ax
        mov al, dh
        xor ah, ah
        mov cl, 50h ; 'P'
        mul cl
        mov word ptr cs:byte_7A5, ax
        mov al, dl
        xor ah, ah
        add word ptr cs:byte_7A5, ax
        mov cx, word ptr cs:byte_7A5
        shl cx, 1
        mov word ptr cs:byte_7A5, cx
        mov cl, 0Ah
        inc ax
        div cl
        add ax, 3030h
        mov ds:0B8Eh, al
        mov ds:0B8Fh, ah
        mov al, dh
        xor ah, ah
        inc ax
        div cl
        add ax, 3030h
        mov ds:0B8Bh, al
        mov ds:0B8Ch, ah
        mov cx, 8
        mov si, 0B89h

loc_E74:
        lodsb
        mov dl, al
        mov ah, 2
        int 21h     ; DOS - DISPLAY OUTPUT
                    ; DL = character to send to standard output
        loop    loc_E74
        pop ax
        ret
sub_E2C     endp


; ---------- S U B  R O U T I N E --------------------------


sub_E7F     proc near
        call    sub_E570
        ret
sub_E7F     endp

; --------------------------------------------------

loc_E83:
        mov ah, 2
        xor dx, dx
        int 17h     ; PRINTER - GET STATUS
                    ; DX = printer port (0-3)
                    ; Return: AH = status
        test    ah, 28h
        jnz loc_E96
        test    ah, 80h
        mov ah, 0
        jz  loc_E96
        ret
; --------------------------------------------------

loc_E96:
        stc
        ret
; --------------------------------------------------

loc_E98:
        xor ah, ah
        int 17h     ; PRINTER - OUTPUT CHARACTER
                    ; AL = character, DX = printer port (0-3)
                    ; Return: AH = status bits
        test    ah, 1
        jnz loc_E96
        mov ah, 0
        ret
; --------------------------------------------------

loc_EA4:
        mov ah, 2
        xor dx, dx
        int 4Bh
        xor ax, 4000h
        test    ah, 0E0h
        jnz loc_E96
        test    ah, 10h
        mov ah, 0
        jnz loc_E96
        ret
; --------------------------------------------------

loc_EBA:
        push    ax

loc_EBB:
        mov ah, 2
        xor dx, dx
        int 4Bh
        test    ah, 10h
        jnz loc_EBB
        pop ax
        xor ah, ah
        int 4Bh
        test    ah, 1
        jnz loc_E96
        mov ah, 0
        ret
; --------------------------------------------------

loc_ED3:
        push    dx
        mov dl, al
        mov ah, 5
        int 21h     ; DOS - PRINTER OUTPUT
                    ; DL = character to print
        pop dx
        clc
        ret
; --------------------------------------------------

loc_EDD:
        clc
        ret
; --------------------------------------------------
        db 0                ; EVEN -> 0EE0 (1 byte 00)
        add [bx+si], cx
        or  [si], ax
        add ax, 0D0Ch
        add al, [bp+di]
        or  cl, [bp+di]
        push    es
        pop es
        push    cs
        db 0Fh, 2Eh, 89h, 26h, 97h ; IDA: ucomiss xmm1,... (actually pop cs + start of mov cs:[0897h],sp)
        or  ds:168Ch, ch
        cwd
        or  ds:0BC17h, cl
        xlat
        or  [bp+di+51h], dl
        push    dx
        push    es
        push    si
        push    di
        push    ds
        push    ax
        mov bx, word ptr cs:byte_1+5Bh
        mov ds, bx
        mov es, bx
        assume es:nothing
        and ax, 877Fh
        mov bx, 0EDFh
        xchg    ah, al
        shl al, 1
        adc al, 0
        and al, 0Fh
        xlat    byte ptr cs:[bx]
        xchg    al, ah
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
        jb  loc_F39
        call    dx
        jmp short loc_F45
; --------------------------------------------------

loc_F39:
        cmp bx, ds:256Ah
        jz  loc_F5B
        mov [si], ax
        mov ds:256Ch, bx

loc_F45:
        mov ax, 0FFFFh
        pop di
        pop ds
        pop di
        pop si
        pop es
        pop dx
        pop cx
        pop bx
        mov ss, word ptr cs:byte_897+2
        assume ss:seg000
        mov sp, word ptr cs:byte_897
        iret
; --------------------------------------------------

loc_F5B:
        call    sub_79B
        jmp short loc_F45

; ---------- S U B  R O U T I N E --------------------------


sub_F60     proc near
        cmp cs:byte_1+5Dh, 0
        jnz locret_F78
        mov dx, 3DAh
        push    ax

loc_F6C:
        in  al, dx      ; Video status bits:
                    ; 0: retrace.  1=display is in vert or horiz retrace.
                    ; 1: 1=light pen is triggered; 0=armed
                    ; 2: 1=light pen switch is open; 0=closed
                    ; 3: 1=vertical sync pulse is occurring.
        test    al, 8
        jnz loc_F6C

loc_F71:
        in  al, dx      ; Video status bits:
                    ; 0: retrace.  1=display is in vert or horiz retrace.
                    ; 1: 1=light pen is triggered; 0=armed
                    ; 2: 1=light pen switch is open; 0=closed
                    ; 3: 1=vertical sync pulse is occurring.
        test    al, 8
        jz  loc_F71
        pop ax
        ret
; --------------------------------------------------

locret_F78:
        ret
sub_F60     endp

; --------------------------------------------------

loc_F79:
        cmp cs:byte_1+5Dh, 0
        jz  loc_F83
        stosw
        ret
; --------------------------------------------------

loc_F83:
        push    bx
        mov bx, ax
        mov dx, 3DAh

loc_F89:
        in  al, dx      ; Video status bits:
                    ; 0: retrace.  1=display is in vert or horiz retrace.
                    ; 1: 1=light pen is triggered; 0=armed
                    ; 2: 1=light pen switch is open; 0=closed
                    ; 3: 1=vertical sync pulse is occurring.
        test    al, 1
        jnz loc_F89
        cli

loc_F8F:
        in  al, dx      ; Video status bits:
                    ; 0: retrace.  1=display is in vert or horiz retrace.
                    ; 1: 1=light pen is triggered; 0=armed
                    ; 2: 1=light pen switch is open; 0=closed
                    ; 3: 1=vertical sync pulse is occurring.
        test    al, 1
        jz  loc_F8F
        mov ax, bx
        stosw
        pop bx
        sti
        ret
; --------------------------------------------------

loc_F9A:
        shr di, 1
        add di, cs:word_7A9
        mov es:1800h, ah
        stosb
        sub di, cs:word_7A9
        shl di, 1
        ret
; --------------------------------------------------

loc_FAF:
        push    di
        call    sub_100C
        call    sub_D86
        cmp al, 0FFh
        jnz loc_FBC
        mov al, 20h ; ' '

loc_FBC:
        mov es:[di+1000h], ah
        stosb
        call    sub_D90
        pop di
        add di, 2
        ret
; --------------------------------------------------

loc_FCA:
        call    sub_F60
        repe stosw
        ret
; --------------------------------------------------

loc_FD0:
        push    dx
        push    di
        mov dl, 1
        call    sub_100C
        push    di
        call    sub_FE7
        pop dx
        sub di, dx
        xchg    di, dx
        pop di
        add di, dx
        add di, dx
        pop dx
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_FE7     proc near
        cmp cx, 0
        jle locret_1005
        call    sub_D86
        cmp al, 0FFh
        jnz loc_FF5
        mov al, 20h ; ' '

loc_FF5:
        cmp dl, 0
        jz  loc_FFF
        mov es:[di+1000h], ah

loc_FFF:
        stosb
        loop    loc_FF5
        call    sub_D90

locret_1005:
        ret
sub_FE7     endp


; ---------- S U B  R O U T I N E --------------------------


sub_1006    proc near
        push    ax
        push    cx
        mov ax, bx
        jmp short loc_1016
sub_1006    endp


; ---------- S U B  R O U T I N E --------------------------


sub_100C    proc near
        push    ax
        push    cx
        shr di, 1
        mov ax, di
        mov cl, 50h ; 'P'
        div cl

loc_1016:
        mov cl, ah
        xor ch, ch
        mov di, cx
        xor ah, ah
        mov cl, 87h ; '?'
        mul cl
        add di, ax
        add di, 12h
        pop cx
        pop ax
        ret
sub_100C    endp

; --------------------------------------------------

loc_102A:
        shr di, 1
        add di, cs:word_7A9
        mov es:1800h, ah
        repe stosb
        sub di, cs:word_7A9
        shl di, 1
        ret
; --------------------------------------------------

loc_1040:
        call    sub_F60
        repe movsw
        ret
; --------------------------------------------------

loc_1046:
        cmp cx, 0
        jz  locret_106B
        call    sub_100C
        push    di
        mov di, si
        call    sub_100C
        mov si, di
        pop di
        call    sub_D86

loc_105A:
        mov ah, es:[si+1000h]
        mov es:[di+1000h], ah
        lodsb
        stosb
        loop    loc_105A
        call    sub_D90

locret_106B:
        ret
; --------------------------------------------------

loc_106C:
        cmp di, 0
        jnz loc_1076
        cmp cx, 50h ; 'P'
        ja  loc_10B8

loc_1076:
        push    dx
        push    di
        cmp di, 0A0h ; '?'
        jnb loc_1091
        mov dx, cx
        shl dx, 1
        add dx, di
        sub dx, 0A0h ; '?'
        jle loc_1091
        call    sub_E570
        sar dx, 1
        sub cx, dx

loc_1091:
        call    sub_100C
        push    di
        call    sub_D86
        mov dx, 0FFh

loc_109B:
        lodsw
        cmp al, dl
        jnz loc_10A2
        mov al, 20h ; ' '

loc_10A2:
        mov es:[di+1000h], ah
        stosb
        loop    loc_109B
        call    sub_D90
        pop ax
        sub di, ax
        xchg    ax, di
        pop di
        add di, ax
        add di, ax
        pop dx
        ret
; --------------------------------------------------

loc_10B8:
        call    sub_100C
        call    sub_D86
        push    dx
        mov dl, 2

loc_10C1:
        mov cx, 50h ; 'P'

loc_10C4:
        lodsw
        mov es:[di+1000h], ah
        stosb
        loop    loc_10C4
        dec dl
        jz  loc_10D6
        add di, 37h ; '7'
        jmp short loc_10C1
; --------------------------------------------------

loc_10D6:
        pop dx
        call    sub_D90
        mov di, 140h
        ret
; --------------------------------------------------

loc_10DE:
        shr di, 1
        shr si, 1
        add di, cs:word_7A9
        add si, cs:word_7A9
        or  cx, cx
        jz  loc_10FE

loc_10F0:
        lodsb
        mov ah, es:1800h
        mov es:1800h, ah
        stosb
        loop    loc_10F0

loc_10FE:
        sub di, cs:word_7A9
        shl di, 1
        sub si, cs:word_7A9
        shl si, 1
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_110D    proc near
        shr di, 1
        add di, cs:word_7A9

loc_1114:
        lodsw
        mov es:1800h, ah
        stosb
        loop    loc_1114
        sub di, cs:word_7A9
        shl di, 1
        ret
sub_110D    endp

; --------------------------------------------------

loc_1125:
        mov ah, ds:96Dh
        call    sub_F60

loc_112C:
        lodsb
        stosw
        loop    loc_112C
        ret
; --------------------------------------------------

loc_1131:
        shr di, 1
        add di, cs:word_7A9
        mov ah, ds:96Dh
        mov es:1800h, ah
        repe movsb
        sub di, cs:word_7A9
        shl di, 1
        ret
; --------------------------------------------------

loc_114B:
        call    sub_100C
        call    sub_D86
        mov ah, ds:96Dh

loc_1155:
        lodsb
        mov es:[di+1000h], ah
        stosb
        loop    loc_1155
        call    sub_D90
        ret
; --------------------------------------------------

loc_1162:
        mov al, ds:2560h
        ret
; --------------------------------------------------

loc_1166:
        mov al, ds:2680h
        ret
; --------------------------------------------------

loc_116A:
        push    ax
        mov ax, 200h
        int 4Ah     ; AT/CONV/PS - User Alarm
        push    bx
        and al, 87h
        mov bx, 0EDFh
        shl al, 1
        adc al, 0
        and al, 0Fh
        xlat    byte ptr cs:[bx]
        pop bx
        mov dl, al
        pop ax
        mov al, dl
        ret
; --------------------------------------------------

loc_1185:
        cmp cs:byte_1+5Dh, 0
        jz  loc_1194
        mov ax, es:[si]

loc_1190:
        push    ax
        lodsw
        pop ax
        ret
; --------------------------------------------------

loc_1194:
        push    ds
        push    es
        pop ds
        assume ds:nothing
        mov dx, 3DAh

loc_119A:
        in  al, dx      ; Video status bits:
                    ; 0: retrace.  1=display is in vert or horiz retrace.
                    ; 1: 1=light pen is triggered; 0=armed
                    ; 2: 1=light pen switch is open; 0=closed
                    ; 3: 1=vertical sync pulse is occurring.
        test    al, 1
        jnz loc_119A
        cli

loc_11A0:
        in  al, dx      ; Video status bits:
                    ; 0: retrace.  1=display is in vert or horiz retrace.
                    ; 1: 1=light pen is triggered; 0=armed
                    ; 2: 1=light pen switch is open; 0=closed
                    ; 3: 1=vertical sync pulse is occurring.
        test    al, 1
        jz  loc_11A0
        lodsw
        pop ds
        assume ds:nothing
        sti
        ret
; --------------------------------------------------

loc_11A9:
        shr si, 1
        add si, cs:word_7A9
        nop
        mov al, es:[si]
        push    ax
        lodsb
        pop ax
        mov ah, es:1800h
        sub si, cs:word_7A9
        shl si, 1
        ret
; --------------------------------------------------

loc_11C4:
        push    si
        push    di
        mov di, si
        call    sub_100C

loc_11CB:
        call    sub_D86
        mov al, es:[di]
        mov ah, es:[di+1000h]
        call    sub_D90
        pop di
        pop si
        jmp short loc_1190

; ---------- S U B  R O U T I N E --------------------------


sub_11DD    proc near
        push    si
        push    di
        mov ax, 0EE00h
        mov es, ax
        assume es:nothing
        jmp short loc_11CB
sub_11DD    endp

; --------------------------------------------------

loc_11E6:
        call    sub_F60
        mov ah, ds:96Dh
        repe scasw
        ret
; --------------------------------------------------

loc_11F0:
        shr di, 1
        add di, cs:word_7A9
        repe scasb
        sub di, cs:word_7A9
        shl di, 1
        ret
; --------------------------------------------------

loc_1201:
        push    dx
        push    di
        call    sub_100C
        push    di
        repe scasb
        mov dx, di
        pop di
        sub dx, di
        pop di
        add di, dx
        add di, dx
        pop dx
        ret
; --------------------------------------------------

loc_1215:
        call    sub_F60

loc_1218:
        push    cx
        repe movsw
        pop cx
        add si, ax
        add di, ax
        cmp si, bx
        jb  loc_1218
        ret
; --------------------------------------------------

loc_1225:
        push    cx

loc_1226:
        call    sub_110D
        pop cx
        add si, ax
        add di, ax
        cmp si, bx
        jb  loc_1226
        ret
; --------------------------------------------------

loc_1233:
        push    dx
        call    sub_D86
        push    di
        call    sub_100C
        pop dx

loc_123C:
        push    ax
        push    bx
        push    cx
        push    di

loc_1240:
        lodsw
        mov es:[di+1000h], ah
        stosb
        loop    loc_1240
        pop di
        pop cx
        pop bx
        pop ax
        add dx, ax
        add di, 87h ; '?'
        add si, ax
        cmp si, bx
        jb  loc_123C
        mov di, dx
        call    sub_D90
        pop dx
        ret
; --------------------------------------------------
        test    word ptr ds:0, 1
        jnz loc_126C
        call    sub_CFBD
        ret
; --------------------------------------------------

loc_126C:
        call    sub_CF7E
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_1270    proc near
        call    sub_A07B
        test    word ptr ds:867h, 2000h
        jz  loc_1284
        call    sub_15D1
        jb  sub_1270
        ret
sub_1270    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1281    proc near
        call    sub_A07B

loc_1284:
        cmp byte ptr ds:0D56h, 1
        jnz loc_12D7
        mov byte ptr ds:0D56h, 0
        call    sub_CD17
        mov dx, 5
        xor cx, cx

loc_1298:
        loop    loc_1298
        dec dx
        jnz loc_1298
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        mov ds, word ptr cs:byte_1+1D6h
        mov si, 80h ; '?'
        lodsb
        xor ah, ah
        dec al
        jle loc_12CB
        mov di, 870h
        inc si
        mov cx, ax
        xor ch, ch
        repe movsb
        xor ax, ax
        stosb
        push    es
        pop ds
        assume ds:nothing
        pop es
        assume es:nothing
        call    sub_584F
        jb  loc_12D7
        call    sub_57A9
        jmp short loc_12D7
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_12CB:
        push    es
        pop ds
        pop es

loc_12CE:
        mov ah, 1
        int 16h     ; KEYBOARD - CHECK BUFFER, DO NOT CLEAR
                    ; Return: ZF clear if character in buffer
                    ; AH = scan code, AL = character
                    ; ZF set if no character in buffer
        jz  loc_12CE
        call    sub_CDE8

loc_12D7:
        mov ah, 1
        int 16h     ; KEYBOARD - CHECK BUFFER, DO NOT CLEAR
                    ; Return: ZF clear if character in buffer
                    ; AH = scan code, AL = character
                    ; ZF set if no character in buffer
        jz  sub_1281
        xor ah, ah
        int 16h     ; KEYBOARD - READ CHAR FROM BUFFER, WAIT IF EMPTY
                    ; Return: AH = scan code, AL = character
        clc
        ret
sub_1281    endp


; ---------- S U B  R O U T I N E --------------------------


sub_12E3    proc near
        test    word ptr ds:867h, 2000h
        jz  loc_12ED

loc_12EB:
        stc
        ret
; --------------------------------------------------

loc_12ED:
        mov ah, 1
        int 16h     ; KEYBOARD - CHECK BUFFER, DO NOT CLEAR
                    ; Return: ZF clear if character in buffer
                    ; AH = scan code, AL = character
                    ; ZF set if no character in buffer
        jz  loc_12EB
        clc
        ret
sub_12E3    endp

; --------------------------------------------------
        call    sub_CF7E
        jb  locret_1326
        mov ax, ds:64h
        mov ds:0C2h, ax
        call    sub_2AE7
        ret
; --------------------------------------------------
        call    sub_CF7E
        jb  locret_1326
        mov bx, ds:0D0h
        dec bx
        shl bx, 1
        mov ax, [bx+2754h]
        mov ds:0C2h, ax
        call    sub_2AE7
        mov si, ds:0C2h
        cmp byte ptr [si], 0Dh
        jz  locret_1326
        call    sub_20AE

locret_1326:
        ret
; --------------------------------------------------
        call    sub_CF7E
        jb  locret_1326
        mov ax, ds:64h
        mov dx, ds:2A84h
        call    sub_2B8B
        mov ds:64h, ax
        mov ds:2A84h, dx
        mov al, ds:5
        sub ax, 3
        inc ax
        cmp al, ds:0D0h
        jb  loc_1351
        call    sub_EE6C
        call    sub_28F7
        ret
; --------------------------------------------------

loc_1351:
        call    sub_2AE7
        ret
; --------------------------------------------------
        call    sub_CF7E
        jb  locret_1326
        mov ax, ds:2756h
        mov ds:64h, ax
        mov ax, ds:2A86h
        mov ds:2A84h, ax
        mov ax, 3
        cmp al, ds:5
        jb  loc_1351
        call    sub_EE6C
        call    sub_28F7
        ret
; --------------------------------------------------
        mov al, ds:15Fh
        inc al
        cmp al, 1
        jbe loc_139B
        call    sub_1933
        mov si, ds:0C0h
        mov cx, ds:66h
        call    sub_73F0
        call    sub_13F7
        mov si, 0D55h
        mov di, 9B3h
        call    sub_5B24
        xor al, al

loc_139B:
        mov ds:15Fh, al
        call    sub_EE6C
        call    sub_2A9F
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_13A5    proc near
        test    word ptr ds:0, 4
        jnz locret_13CB
        mov ax, word ptr ss:byte_1+1
        mov bp, word ptr ss:byte_1+11h
        add bp, [bp+2]
        sub ax, bp
        jbe loc_13CC
        mov ds:1D19h, ax
        call    sub_792D
        jnb loc_13CC
        mov ax, 12h
        call    sub_CB4F

locret_13CB:
        ret
; --------------------------------------------------

loc_13CC:
        call    sub_BD37
        call    sub_13F7
        mov word ptr ds:13Dh, 0
        call    sub_D02B
        mov byte ptr ds:15Fh, 2
        mov si, ds:0C0h
        mov cx, ds:66h
        call    sub_7368
        mov byte ptr ds:934h, 1
        call    sub_EE6C
        call    sub_BD6E
        ret
sub_13A5    endp


; ---------- S U B  R O U T I N E --------------------------


sub_13F7    proc near
        mov di, 4
        mov bp, word ptr ss:byte_1+0Dh
        mov [bp+0], di
        mov bp, word ptr ss:byte_1+0Fh
        mov [bp+0], di
        mov bp, word ptr ss:byte_1+11h
        mov [bp+0], di
        ret
sub_13F7    endp

; --------------------------------------------------
        push    word ptr ds:0C2h
        pop word ptr ds:0D5h
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, ds:0Eh

loc_1422:
        mov cx, ds:10h
        sub cx, di
        jbe loc_1461
        mov ax, ds:971h
        cld
        repne scasb
        jnz loc_1461
        dec di
        mov ds:0C2h, di
        call    sub_7018
        jb  loc_1461
        mov si, ds:0C2h
        inc si
        cld
        lodsw
        call    sub_BF90
        xchg    ah, al
        call    sub_BF90
        xchg    ah, al
        mov di, cx
        cmp ax, ds:0DF7h
        jnz loc_1422
        mov ax, ds:0C2h
        call    sub_D7FE
        mov di, ds:0C2h
        jmp short loc_1422
; --------------------------------------------------

loc_1461:
        push    word ptr ds:0D5h
        pop word ptr ds:0C2h
        pop es
        assume es:nothing
        ret
; --------------------------------------------------
        push    ax
        mov si, ds:0Eh
        call    sub_6801
        pop ax
        cmp al, ds:21Ah
        jnz loc_147B
        ret
; --------------------------------------------------

loc_147B:
        or  word ptr ds:0, 1000h
        push    word ptr ds:0C2h
        pop word ptr ds:0D5h
        mov bx, ds:10h
        sub bx, ds:0Eh
        push    word ptr ds:21Ah
        push    bx
        push    word ptr ds:0Eh
        push    ax
        call    sub_85EB
        pop ax
        pop word ptr ds:0C2h
        call    sub_3130
        pop bx
        add ds:0C2h, bx
        mov cx, ds:0C2h
        cmp cx, ds:66h
        jbe loc_14BF
        sub cx, ds:66h
        sub bx, cx
        sub ds:0C2h, cx

loc_14BF:
        add bx, ax
        pop ax
        push    bx
        call    sub_3130
        mov cx, ds:0C2h
        mov ds:10h, cx
        sub cx, ax
        pop ax
        sub cx, ax
        cmp cx, ds:0C0h
        jnb loc_14DD
        mov cx, ds:0C0h

loc_14DD:
        mov ds:0Eh, cx
        or  word ptr ds:0, 20h
        push    word ptr ds:0D5h
        pop word ptr ds:0C2h
        xor word ptr ds:0, 1000h
        ret
; --------------------------------------------------
        call    sub_56CA
        jb  locret_1501

loc_14FB:
        or  word ptr ds:867h, 1000h

locret_1501:
        ret
; --------------------------------------------------
        call    sub_5796
        jb  locret_1501
        jmp short loc_14FB
; --------------------------------------------------
        call    sub_15B8
        or  word ptr ds:0, 4000h
        call    sub_A54E
        pushf
        xor word ptr ds:0, 4000h
        popf
        mov ds:0D1Dh, dx
        inc word ptr ds:848h
        mov ax, ds:848h
        jnb loc_1534
        call    sub_8683
        mov ax, ds:848h
        jnb loc_1551
        jmp short loc_15AD
; --------------------------------------------------

loc_1534:
        mov bx, 870h
        mov ax, ds:848h
        inc byte ptr ds:2410h
        call    sub_CCAF
        mov byte ptr ds:2410h, 0
        mov ax, ds:848h
        jnb loc_1551
        mov ax, 66h ; 'f'
        jmp short loc_15B0
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_1551:
        push    ax
        mov si, ds:0D1Dh
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, 870h
        call    sub_3D15
        pop es
        assume es:nothing
        jb  loc_1563
        inc di

loc_1563:
        mov word ptr [di], 0
        mov cx, di
        mov si, 870h
        sub cx, si
        mov ax, ds:850h
        call    sub_1762
        pop ax
        jmp short loc_157C

; ---------- S U B  R O U T I N E --------------------------


sub_1577    proc near
        push    ax
        call    sub_15B8
        pop ax

loc_157C:
        mov si, ds:0D23h
        cmp si, 0D4Dh
        jnb loc_15A8
        mov bx, ds:0D21h
        mov [si], bx
        mov bx, ds:0D1Fh
        mov [si+2], bx
        add word ptr ds:0D23h, 4
        mov ds:0D21h, ax
        xor ax, ax
        mov ds:0D1Fh, ax
        or  word ptr ds:867h, 2000h
        clc
        ret
; --------------------------------------------------

loc_15A8:
        mov ax, 8Eh ; '?'
        jmp short loc_15B0
; --------------------------------------------------

loc_15AD:
        mov ax, 65h ; 'e'

loc_15B0:
        dec word ptr ds:848h
        call    sub_CB4F
        ret
sub_1577    endp


; ---------- S U B  R O U T I N E --------------------------


sub_15B8    proc near
        test    word ptr ds:867h, 2000h
        jnz locret_15CD
        mov ax, ds:846h
        dec ax
        mov ds:848h, ax
        mov ax, 0D25h
        mov ds:0D23h, ax

locret_15CD:
        ret
sub_15B8    endp

; --------------------------------------------------

loc_15CE:
        jmp short loc_15DA
; --------------------------------------------------
        db 90h

; ---------- S U B  R O U T I N E --------------------------


sub_15D1    proc near
        call    sub_16B4
        jb  loc_15CE
        cmp al, 1Ah
        jnz loc_161E

loc_15DA:
        mov ax, ds:0D21h
        cmp ax, ds:848h
        jnz loc_15F0
        dec word ptr ds:848h
        cmp ax, ds:846h
        jz  loc_15F0
        call    sub_8A92

loc_15F0:
        mov si, ds:0D23h
        std
        lodsw
        lodsw
        mov ds:0D1Fh, ax
        mov ax, [si]
        mov ds:0D21h, ax
        mov ds:0D23h, si
        cmp si, 0D25h
        ja  loc_161C
        mov ax, 2000h
        mov bx, ax
        add bx, 64h ; 'd'
        call    sub_8DED
        xor word ptr ds:867h, 2000h
        stc
        ret
; --------------------------------------------------

loc_161C:
        jmp short sub_15D1
; --------------------------------------------------

loc_161E:
        xor ah, ah
        cmp ax, ds:971h
        jnz loc_166F
        push    es
        push    ds
        pop es
        assume es:nothing
        push    cx
        push    si
        push    ax
        call    sub_6D99
        pop ax
        pop si
        pop cx
        jb  loc_166E
        sub di, 0BCh ; '?'
        jb  loc_166E
        mov ds:1C55h, si
        sub cx, ds:0D1Fh
        push    ax
        push    di
        push    si
        call    sub_7010
        pop ax
        pop di
        jb  loc_1667
        push    si
        sub si, ax
        add ds:0D1Fh, si
        pop si
        mov ds:0D51h, si
        cld
        call    cs:off_16DF[di]
        or  ax, ax
        pop bp
        pop es
        assume es:nothing
        jnz loc_166F

loc_1664:
        jmp sub_15D1
; --------------------------------------------------

loc_1667:
        mov ax, 55h ; 'U'
        call    sub_CB4F
        pop ax

loc_166E:
        pop es

loc_166F:
        or  ax, ax
        jz  loc_1664
        cmp ax, 0FFh
        jnz loc_169D
        call    sub_16B4
        jb  loc_169F
        cmp al, 80h ; '?'
        jb  loc_168A
        push    ax
        call    sub_16B4
        pop dx
        mov ah, dl
        clc
        ret
; --------------------------------------------------

loc_168A:
        call    sub_16A7
        jb  loc_169F
        mov cx, 4
        shl ax, cl
        push    ax
        call    sub_16A2
        pop bx
        jb  loc_169F
        add ax, bx

loc_169D:
        clc
        ret
; --------------------------------------------------

loc_169F:
        jmp loc_15DA
sub_15D1    endp


; ---------- S U B  R O U T I N E --------------------------


sub_16A2    proc near
        call    sub_15D1
        jb  locret_16B3
sub_16A2    endp


; ---------- S U B  R O U T I N E --------------------------


sub_16A7    proc near
        sub al, 30h ; '0'
        cmp al, 9
        jbe loc_16AF
        sub al, 7

loc_16AF:
        and ax, 0Fh
        clc

locret_16B3:
        ret
sub_16A7    endp


; ---------- S U B  R O U T I N E --------------------------


sub_16B4    proc near
        mov ax, ds:0D21h
        call    sub_8683
        jb  locret_16DE
        mov ds:0D4Dh, si
        mov ds:0D4Fh, cx
        add ds:0D4Fh, si
        sub cx, 1
        jb  locret_16DE
        cmp cx, ds:0D1Fh
        jb  locret_16DE
        add si, ds:0D1Fh
        inc word ptr ds:0D1Fh
        cld
        lodsb
        clc

locret_16DE:
        ret
sub_16B4    endp

; --------------------------------------------------
off_16DF    dw offset sub_1779
        dw offset sub_177D
        dw offset sub_17F9
        dw offset sub_18C9
        dw offset sub_1860
        dw offset sub_18C9
        dw offset sub_185D
        dw offset sub_18C9
        dw offset sub_1773
        dw offset sub_16F7
        dw offset sub_1896
        dw offset sub_171E

; ---------- S U B  R O U T I N E --------------------------


sub_16F7    proc near
        call    sub_1281
        cmp ax, 0FFh
        jnz loc_1716
        mov ds:870h, al
        call    sub_1281
        mov ds:871h, al
        call    sub_1281
        mov ds:872h, al
        mov si, 870h
        mov cx, 3
        jmp short loc_175A
; --------------------------------------------------

loc_1716:
        clc
        ret
sub_16F7    endp

; --------------------------------------------------

loc_1718:
        mov ax, 93h ; '?'
        jmp loc_1849

; ---------- S U B  R O U T I N E --------------------------


sub_171E    proc near
        call    sub_18CC
        jb  loc_1718
        push    ax
        call    sub_8683
        pop ax
        mov bx, si
        add bx, cx
        test    word ptr [bx], 4
        jz  loc_1776
        mov bx, 1
        call    sub_173C
        jb  loc_178A
        jmp short loc_1776
sub_171E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_173C    proc near
        push    bx
        call    sub_5600
        pop bx
        jb  locret_1761
        mov si, 870h
        mov cx, di
        sub cx, si
        mov di, si
        cld
        shr cx, 1

loc_174F:
        lodsw
        stosb
        loop    loc_174F
        mov cx, di
        mov si, 870h
        sub cx, si

loc_175A:
        mov ax, bx
        push    ax
        call    sub_1762
        pop ax

locret_1761:
        ret
sub_173C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1762    proc near
        push    word ptr ds:2410h
        mov byte ptr ds:2410h, 1
        call    sub_8574
        pop ax
        mov ds:2410h, al
        ret
sub_1762    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1773    proc near
        mov ax, ds:850h

loc_1776:
        call    sub_1577
sub_1773    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1779    proc near
        xor ax, ax
        clc
        ret
sub_1779    endp


; ---------- S U B  R O U T I N E --------------------------


sub_177D    proc near
        mov di, ds:0D4Dh
        jmp short loc_1784
; --------------------------------------------------

loc_1783:
        pop di

loc_1784:
        mov ax, 0BCh ; '?'
        call    sub_17C2

loc_178A:
        jb  loc_17B7
        push    si
        mov cx, si
        dec cx
        mov si, ax
        inc si
        inc si
        sub cx, si
        mov di, ds:1C55h
        inc di
        inc di
        mov ax, ds:0D51h
        dec ax
        sub ax, di
        cmp ax, cx
        jnz loc_1783
        repe cmpsb
        jnz loc_1783
        inc si
        sub si, ds:0D4Dh
        mov ds:0D1Fh, si
        pop ax
        jmp short sub_1779
; --------------------------------------------------
        pop si

loc_17B7:
        mov ax, 91h ; '?'

loc_17BA:
        call    sub_CB4F
        stc

loc_17BE:
        mov ax, 0
        ret
sub_177D    endp ; sp =  2


; ---------- S U B  R O U T I N E --------------------------


sub_17C2    proc near
        mov ds:0D53h, ax
        jmp short loc_17C8
; --------------------------------------------------

loc_17C7:
        pop di

loc_17C8:
        mov cx, ds:0D4Fh
        mov ax, ds:971h
        sub cx, di
        repne scasb
        jnz loc_17F5
        push    di
        mov si, di
        call    sub_7010
        jb  loc_17C7
        mov bx, si
        pop si
        push    bx
        push    si
        call    sub_6D99
        pop ax
        jb  loc_17C7
        pop si
        xchg    si, di
        cmp si, ds:0D53h
        jnz loc_17C8
        xchg    si, di
        clc
        ret
; --------------------------------------------------

loc_17F5:
        stc
        ret
sub_17C2    endp ; sp =  2

; --------------------------------------------------

loc_17F7:
        jmp short sub_1779

; ---------- S U B  R O U T I N E --------------------------


sub_17F9    proc near
        dec si
        mov cx, si
        mov si, ds:1C55h
        inc si
        inc si
        mov ax, 20h ; ' '
        mov di, si
        mov bx, cx
        sub cx, di
        repe scasb
        jz  loc_1846
        dec di
        mov si, di
        mov cx, bx
        mov ds:8C7h, cx
        call    sub_4B90
        jb  loc_1849
        call    sub_8683
        jb  loc_1826
        or  cx, cx
        jz  loc_182E

loc_1826:
        call    sub_8DD4
        mov ax, 8Fh ; '?'
        jmp short loc_17BA
; --------------------------------------------------

loc_182E:
        test    word ptr [si], 8
        clc
        pushf
        call    sub_8DD4
        popf
        jnz loc_17F7
        mov ax, 0CAh ; '?'
        mov di, ds:0D51h
        call    sub_17C2
        jnb loc_1850

loc_1846:
        mov ax, 92h ; '?'

loc_1849:
        call    sub_CB4F

loc_184C:
        mov si, ds:0D4Fh

loc_1850:
        pushf
        sub si, ds:0D4Dh
        mov ds:0D1Fh, si
        popf
        jmp loc_17BE
sub_17F9    endp


; ---------- S U B  R O U T I N E --------------------------


sub_185D    proc near
        clc
        jmp short loc_184C
sub_185D    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1860    proc near
        dec si
        mov ds:8C7h, si
        call    sub_18CD
        jnb loc_186F

loc_186A:
        mov ax, 93h ; '?'
        jmp short loc_1849
; --------------------------------------------------

loc_186F:
        cmp dl, 2Ch ; ','
        jnz loc_186A
        push    ax
        mov si, di
        call    sub_4B90
        mov bx, ax
        pop bp
        jb  loc_1849
        mov ax, bp
        xchg    ax, bx
        push    bx
        push    ax
        call    sub_8683
        pop ax
        pop bx
        call    sub_5077
        jb  loc_184C
        call    sub_8DD4
        jmp sub_1779
sub_1860    endp

; --------------------------------------------------

loc_1894:
        jmp short loc_186A

; ---------- S U B  R O U T I N E --------------------------


sub_1896    proc near
        call    sub_18CC
        jb  loc_1894
        mov dx, ds:0D4Dh
        sub di, dx
        sub ds:0D51h, dx
        push    ax
        push    di
        call    sub_8A92
        mov ax, ds:0D21h
        call    sub_8683
        jb  loc_1894
        mov cx, ds:0D51h
        add cx, si
        dec cx
        pop di
        pop ax
        add si, di
        sub cx, si
        jb  loc_1894
        call    sub_1762
        jnb locret_18C8
        jmp short loc_1849
; --------------------------------------------------

locret_18C8:
        ret
sub_1896    endp


; ---------- S U B  R O U T I N E --------------------------


sub_18C9    proc near
        jmp sub_1779
sub_18C9    endp


; ---------- S U B  R O U T I N E --------------------------


sub_18CC    proc near
        dec si
sub_18CC    endp


; ---------- S U B  R O U T I N E --------------------------


sub_18CD    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        mov cx, si
        mov si, ds:1C55h
        inc si
        inc si
        mov ax, 20h ; ' '
        mov di, si
        sub cx, di
        cld
        repe scasb
        stc
        jz  loc_1931
        mov ax, [di-1]
        mov dx, ds:973h
        mov dh, 2Ch ; ','
        cmp ah, dl
        jz  loc_18F6
        cmp ah, dh
        jnz loc_190D

loc_18F6:
        call    sub_BF90
        call    sub_BD02
        cmp ah, ds:0B52h
        jz  loc_1909
        cmp ah, ds:0B53h
        stc
        jnz loc_1931

loc_1909:
        xor ah, ah
        jmp short loc_192D
; --------------------------------------------------

loc_190D:
        inc di
        cmp [di], dh
        jz  loc_1917
        cmp [di], dl
        stc
        jnz loc_1931

loc_1917:
        sub ax, 3030h
        mov dl, ah
        mov dh, 0Ah
        mul dh
        xor dh, dh
        add ax, dx
        cmp ax, 64h ; 'd'
        cmc
        jb  loc_1931
        add ax, 2000h

loc_192D:
        mov dl, [di]
        inc di
        clc

loc_1931:
        pop es
        assume es:nothing
        ret
sub_18CD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1933    proc near
        mov si, 4B9h
sub_1933    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1936    proc near
        mov di, 214h

loc_1939:
        push    es
        push    ds
        pop es
        assume es:nothing
        cld
        mov cx, 50h ; 'P'
        repe movsb
        mov ax, 0FFFFh
        mov ds:214h, ax
        mov ds:1C4h, ax
        pop es
        assume es:nothing
        ret
sub_1936    endp

; --------------------------------------------------
        add word ptr ds:86Bh, 50h ; 'P'
        cmp word ptr ds:86Bh, 0AC2h
        jnb loc_196A
        cmp word ptr ds:86Bh, 9D1h
        jnb loc_1970
        mov word ptr ds:86Bh, 9D1h
        jmp short loc_1970
; --------------------------------------------------

loc_196A:
        mov word ptr ds:86Bh, 0

loc_1970:
        mov word ptr ds:869h, 28h ; '('
        call    sub_1980
        call    sub_63A
        call    sub_5AF5
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_1980    proc near
        push    es
        push    ds
        pop es
        assume es:nothing
        mov di, 7F0h
        mov cx, 826h
        sub cx, di
        xor al, al
        cld
        repe stosb
        pop es
        assume es:nothing
        ret
sub_1980    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1992    proc near
        test    word ptr ds:0, 4
        jnz loc_19A2
        test    word ptr ds:0, 1
        jnz locret_19C8

loc_19A2:
        cmp word ptr ds:86Bh, 0AC1h
        jnz locret_19C8
        push    es
        push    ds
        pop es
        assume es:nothing
        mov al, ds:0CDh
        mov ah, ds:4
        mov di, 7F0h
        cld
        scasw
        jnz loc_19D4
        mov si, 222h
        mov cx, 826h
        sub cx, di
        repe cmpsb
        jnz loc_19D4
        pop es
        assume es:nothing

locret_19C8:
        ret
sub_1992    endp


; ---------- S U B  R O U T I N E --------------------------


sub_19C9    proc near
        cmp word ptr ds:86Bh, 0AC1h
        jnz locret_19C8
        push    es
        push    ds
        pop es
        assume es:nothing

loc_19D4:
        mov di, 7F0h
        mov al, ds:0CDh
        mov ah, ds:4
        stosw
        mov si, 222h
        mov cx, 8
        repe movsb
        mov si, 22Ch
        mov cx, 826h
        sub cx, di
        repe movsb
        mov si, 6F1h
        mov di, 2B07h
        mov cx, 0FFh
        repe movsb
        mov al, 0Dh
        stosb
        mov si, 7F0h
        mov dx, [si+6]
        add si, 0Ah
        mov di, si
        db 81h, 0C7h, 016h, 0  ; add di, 16h
        mov cx, 16h

loc_1A11:
        lodsb
        cmp al, 0FFh
        jz  loc_1A29
        add al, dl
        xor bx, bx
        mov bl, [di]
        inc di
        mov ah, [bx+0D12h]
        mov bx, 2B07h
        call    sub_1AC5
        loop    loc_1A11

loc_1A29:
        mov si, 7F0h
        mov bx, 2B07h
        lodsw
        lodsw
        add al, dl
        mov ah, ds:0D16h
        call    sub_1AC5
        lodsw
        mov ah, ds:0D17h
        add al, dl
        call    sub_1AC5
        lodsw
        mov ah, ds:0D19h
        call    sub_1AC5
        lodsw
        dec al
        mov ah, ds:0D1Ah
        call    sub_1AC5
        sub si, 9
        lodsb
        mov ah, ds:0D18h
        call    sub_1AC5
        call    sub_7084
        push    word ptr ds:1C4h
        pop word ptr ds:0D1Bh
        mov si, 548h
        call    sub_1936
        push    word ptr ds:0D1Bh
        pop word ptr ds:1C4h
        mov word ptr ds:214h, 0
        mov word ptr ds:216h, 0FFFFh
        mov si, 2B07h
        mov word ptr ds:228h, 0FFh
        mov word ptr ds:226h, 0
        mov dh, 2
        xor dl, dl
        call    sub_57D
        mov di, bx
        mov es, ds:86Eh
        assume es:nothing
        mov al, ds:1D12h
        mov ah, ds:21Ah
        push    ax
        mov byte ptr ds:1D12h, 1
        mov al, ds:96Dh
        mov ds:21Ah, al
        call    sub_5DE0
        pop ax
        mov ds:1D12h, al
        mov ds:21Ah, ah
        call    sub_70B2
        pop es
        ret
sub_19C9    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1AC5    proc near
        or  ah, ah
        jz  locret_1AD3
        push    bx
        push    ax
        xor ah, ah
        add bx, ax
        pop ax
        mov [bx], ah
        pop bx

locret_1AD3:
        ret
sub_1AC5    endp

; --------------------------------------------------
        push    word ptr ds:0C2h
        call    sub_1C10
        pop ax
        cmp ax, ds:0C2h
        jz  locret_1AE5
        call    sub_88EE

locret_1AE5:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_1AE6    proc near
        test    word ptr ds:2, 1
        stc
        jz  locret_1AE5
        pop bp
        mov ax, 1
        mov ds:15Fh, al
        push    es
        push    ds
        pop es
        assume es:nothing
        push    bp
        clc
        ret
sub_1AE6    endp ; sp = -2


; ---------- S U B  R O U T I N E --------------------------


sub_1AFC    proc near
        call    sub_1AE6
        jb  locret_1AE5
        mov di, ds:0C2h
        call    sub_1BAB
        jb  loc_1B36

loc_1B0A:
        call    sub_2836
        mov ds:0C2h, si
        mov di, si
        dec di
        call    sub_1BAB
        jb  loc_1B33
        mov cx, 0Ah
        mov ax, ds:973h
        cld
        repne scasb
        mov si, di
        push    si
        call    sub_2802
        pop ax
        cmp ax, si
        jz  loc_1B2F
        jmp short loc_1B0A
; --------------------------------------------------

loc_1B2F:
        mov ds:0C2h, si

loc_1B33:
        call    sub_27F5

loc_1B36:
        mov ax, ds:0C2h
        cmp ds:0D57h, ax
        mov word ptr ds:0D57h, 0
        jnb loc_1BA2
        pop es
        assume es:nothing
        mov ds:0D57h, ax
        call    sub_2AAA
        mov word ptr ds:0D57h, 0
        clc
        ret
sub_1AFC    endp ; sp =  2


; ---------- S U B  R O U T I N E --------------------------


sub_1B54    proc near
        call    sub_1AE6
        jb  locret_1AE5

loc_1B59:
        mov di, ds:0C2h

loc_1B5D:
        mov cx, ds:66h
        sub cx, di
        jbe loc_1B89
        mov ax, ds:971h
        cld
        repne scasb
        jz  loc_1B74
        call    sub_D4E9
        jnb loc_1B59
        jmp short loc_1B89
; --------------------------------------------------

loc_1B74:
        mov si, di
        dec si
        call    sub_1BD4
        jb  loc_1B5D
        mov ds:0C2h, si
        call    sub_27F5
        cmp si, ds:66h
        jb  loc_1B36

loc_1B89:
        mov di, ds:0C2h
        push    di
        call    sub_1BAB
        pop di
        jb  loc_1BA2
        push    di
        call    sub_2802
        pop di
        cmp di, si
        jnz loc_1B2F
        call    sub_1AFC
        jnb loc_1B2F

loc_1BA2:
        xor word ptr ds:2, 1
        pop es
        clc
        ret
sub_1B54    endp ; sp =  2


; ---------- S U B  R O U T I N E --------------------------


sub_1BAB    proc near
        mov cx, di
        sub cx, ds:0C0h
        jb  locret_1BD3
        inc cx
        mov ax, ds:971h
        std
        repne scasb
        jz  loc_1BCB
        mov ds:0D72h, di
        call    sub_D4BA
        mov di, ds:0D72h
        jnb sub_1BAB
        jmp short locret_1BD3
; --------------------------------------------------

loc_1BCB:
        mov si, di
        inc si
        call    sub_1BD4
        jb  sub_1BAB

locret_1BD3:
        ret
sub_1BAB    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1BD4    proc near
        call    sub_27D3
        mov ax, 0
        jb  locret_1C04
        push    si
        push    di
        add si, 3
        cld

loc_1BE2:
        lodsb
        cmp al, 20h ; ' '
        jz  loc_1BE2
        dec si
        mov bx, si
        lodsw
        call    sub_47C4
        jnb loc_1BF3
        call    sub_CF5B

loc_1BF3:
        push    ax
        mov ax, ds:0D93h
        call    sub_47C4
        mov bx, ax
        pop ax
        pop di
        pop si
        cmp ax, bx
        jz  locret_1C04
        stc

locret_1C04:
        ret
sub_1BD4    endp

; --------------------------------------------------
        db 11 dup(0)        ; CALIGN 10h -> sub_1C10 (11 bytes 00)
; ---------- S U B  R O U T I N E --------------------------


sub_1C10    proc near
        std
        call    sub_1C7A
        jb  loc_1C48

loc_1C16:
        call    sub_1CC0
        jb  loc_1C23
        call    sub_A9D5
        jb  loc_1C16
        call    sub_1D19

loc_1C23:
        jmp short loc_1C2B
sub_1C10    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1C25    proc near
        cld
        call    sub_1C7A
        jb  loc_1C48

loc_1C2B:
        mov ds:0C2h, si
        cmp si, ds:64h
        jb  loc_1C3D
        test    word ptr ds:0, 10h
        jz  loc_1C45

loc_1C3D:
        call    sub_2AAA
        call    loc_220D
        jmp short loc_1C48
; --------------------------------------------------

loc_1C45:
        call    sub_21ED

loc_1C48:
        clc
        ret
sub_1C25    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1C4A    proc near
        test    word ptr ds:0, 1
        stc
        jnz locret_1C79
        mov si, ds:0C2h
        mov al, [si]
        call    sub_A9D5
        jb  loc_1C68

loc_1C5E:
        call    sub_1CC0
        jb  loc_1C75
        call    sub_A9D5
        jnb loc_1C5E

loc_1C68:
        call    sub_1CC0
        jb  loc_1C75
        call    sub_A9D5
        jb  loc_1C68
        call    sub_1D19

loc_1C75:
        mov ds:0C2h, si

locret_1C79:
        ret
sub_1C4A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1C7A    proc near
        test    word ptr ds:0, 1
        stc
        jnz locret_1C79
        mov si, ds:0C2h
        pushf
        pop ax
        test    ax, 400h
        mov al, [si]
        jz  loc_1CAD
        jmp short loc_1C97
; --------------------------------------------------

loc_1C92:
        call    sub_1CC0
        jb  loc_1CBC

loc_1C97:
        call    sub_A9D5
        jb  loc_1C92

loc_1C9C:
        call    sub_1CC0
        jb  loc_1CBC
        call    sub_A9D5
        jnb loc_1C9C
        jmp short loc_1CBC
; --------------------------------------------------

loc_1CA8:
        call    sub_1D19
        jb  loc_1CBC

loc_1CAD:
        call    sub_A9D5
        jb  loc_1CA8

loc_1CB2:
        call    sub_1D19
        jb  loc_1CBC
        call    sub_A9D5
        jnb loc_1CB2

loc_1CBC:
        clc
        ret
sub_1C7A    endp

; --------------------------------------------------

loc_1CBE:
        dec si
        dec si

; ---------- S U B  R O U T I N E --------------------------


sub_1CC0    proc near
        cmp si, ds:0C0h
        ja  loc_1CD8
        push    word ptr ds:0C0h
        pop word ptr ds:0D72h
        call    sub_D4BA
        mov si, ds:0D72h
        jnb sub_1CC0
        ret
; --------------------------------------------------

loc_1CD8:
        dec si
        cmp byte ptr [si-2], 0FFh
        jz  loc_1CBE
        mov al, [si]
        cmp al, 0Ah
        jz  sub_1CC0
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  loc_1D15
        cmp al, ds:973h
        jnz loc_1D15
        push    si
        dec si
        call    sub_705B
        pop ax
        jnb loc_1CFF
        mov si, ax
        jmp short loc_1D13
; --------------------------------------------------

loc_1CFF:
        inc si
        mov ax, [si+1]
        call    sub_BF90
        xchg    ah, al
        call    sub_BF90
        xchg    ah, al
        cmp ax, ds:0DF7h
        jz  sub_1CC0

loc_1D13:
        mov al, [si]

loc_1D15:
        clc
        ret
sub_1CC0    endp

; --------------------------------------------------

loc_1D17:
        inc si
        inc si

; ---------- S U B  R O U T I N E --------------------------


sub_1D19    proc near
        cmp si, ds:66h
        jb  loc_1D31
        push    word ptr ds:66h
        pop word ptr ds:0D72h
        call    sub_D4E9
        mov si, ds:0D72h
        jnb sub_1D19
        ret
; --------------------------------------------------

loc_1D31:
        inc si
        cmp byte ptr [si-1], 0FFh
        jz  loc_1D17
        mov al, [si]
        cmp al, 0Ah
        jz  sub_1D19
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  loc_1D15
        cmp al, ds:971h
        jnz loc_1D15
        push    si
        inc si
        call    sub_701D
        pop ax
        jnb loc_1D58
        mov si, ax
        jmp short loc_1D13
; --------------------------------------------------

loc_1D58:
        dec si
        jmp short sub_1D19
sub_1D19    endp

; --------------------------------------------------
        test    word ptr ds:2, 1
        jz  loc_1D67
        call    sub_1AFC
        ret
; --------------------------------------------------

loc_1D67:
        call    sub_1D88
        jnb loc_1D6D

locret_1D6C:
        ret
; --------------------------------------------------

loc_1D6D:
        add ds:4, al

loc_1D71:
        sub ds:4, dl
        jnb loc_1D7A
        mov al, ds:4

loc_1D7A:
        jmp sub_2196
; --------------------------------------------------
        call    sub_1D88
        jb  locret_1D6C
        add ds:4, bl
        jmp short loc_1D71

; ---------- S U B  R O U T I N E --------------------------


sub_1D88    proc near
        test    word ptr ds:0, 1
        jz  loc_1D92
        stc
        ret
; --------------------------------------------------

loc_1D92:
        xor ax, ax
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  loc_1DA6
        mov si, ds:0C2h
        call    sub_6801
        mov ax, ds:226h

loc_1DA6:
        mov dl, ds:4
        xor dh, dh
        sub dx, ax
        mov si, 22Ch
        xor bx, bx
        xor ax, ax
        cmp dl, 0FFh
        jnb loc_1DC5
        cld

loc_1DBB:
        lodsb
        xchg    ax, bx
        cmp bl, dl
        jb  loc_1DBB
        ja  loc_1DC5
        mov bl, [si]

loc_1DC5:
        clc
        ret
sub_1D88    endp

; --------------------------------------------------
        inc ax
        inc ax
        test    word ptr ds:0, 1
        jz  loc_1DD6
        sub ax, 2
        jmp short loc_1DD8
; --------------------------------------------------

loc_1DD6:
        inc ax
        inc ax

loc_1DD8:
        inc ax
        inc ax
        inc ax
        inc ax
        inc ax
        push    ax
        inc bx
        push    bx
        push    di

loc_1DE1:
        call    sub_12E3
        pop di
        pop bx
        jb  loc_1DFB
        or  ah, ah
        jz  loc_1DFB
        and ax, 7FFEh
        cmp ax, di
        jnz loc_1DFB
        inc bx
        push    bx
        push    di
        call    sub_1270
        jmp short loc_1DE1
; --------------------------------------------------

loc_1DFB:
        pop di
        mov ds:0D62h, bx
        shl di, 1
        db 81h, 0FFh, 0Ch, 0  ; cmp di, 0Ch
        jb  loc_1E0D
        mov byte ptr ds:0D60h, 1

loc_1E0D:
        push    di
        push    bx
        call    cs:off_1E2A[di]
        pop bx
        pop di
        dec bx
        jnz loc_1E0D
        call    cs:off_1E3E[di]
        mov byte ptr ds:0D60h, 0
        mov word ptr ds:0D62h, 1
        ret
; --------------------------------------------------
off_1E2A    dw offset sub_1F3A
        dw offset sub_1FD8
        dw offset sub_2117
        dw offset sub_2166
        dw offset sub_1E6E
        dw offset sub_1ED9
        dw offset sub_2117
        dw offset sub_2166
        dw offset sub_1E52
        dw offset sub_1EBD
off_1E3E    dw offset sub_1FC5
        dw offset sub_2090
        dw offset sub_20F9
        dw offset sub_20F9
        dw offset sub_1E9C
        dw offset sub_1F24
        dw offset sub_20F9
        dw offset sub_20F9
        dw offset sub_1F14
        dw offset sub_1F14

; ---------- S U B  R O U T I N E --------------------------


sub_1E52    proc near
        mov word ptr ds:8, 2
        mov si, ds:0C2h
        call    sub_6801
        mov ax, ds:226h
        cmp ds:4, al
        ja  loc_1E69
        ret
; --------------------------------------------------

loc_1E69:
        dec byte ptr ds:4
        ret
sub_1E52    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1E6E    proc near
        test    word ptr ds:0, 1
        jz  loc_1E7E
        mov al, ds:4
        cmp al, 2
        ja  loc_1E7E
        ret
; --------------------------------------------------

loc_1E7E:
        call    sub_1FD8
        test    word ptr ds:0, 1
        jnz loc_1E96
        call    sub_1EAC
        cmp ax, ds:0C2h
        jbe loc_1E96
        call    loc_1F4C
        ret
; --------------------------------------------------

loc_1E96:
        or  byte ptr ds:0D61h, 1
        ret
sub_1E6E    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1E9C    proc near
        cmp byte ptr ds:0D61h, 0
        jz  loc_1EA6
        call    sub_2090

loc_1EA6:
        mov byte ptr ds:0D61h, 0
        ret
sub_1E9C    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1EAC    proc near
        mov al, ds:5
        xor ah, ah
        sub ax, 3
        shl ax, 1
        mov bx, ax
        mov ax, [bx+2754h]
        ret
sub_1EAC    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1EBD    proc near
        mov word ptr ds:8, 1
        mov si, ds:0C2h
        call    sub_6801
        mov ax, ds:228h
        cmp ds:4, al
        jb  loc_1ED4
        ret
; --------------------------------------------------

loc_1ED4:
        inc byte ptr ds:4
        ret
sub_1EBD    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1ED9    proc near
        test    word ptr ds:0, 1
        jz  loc_1EEB
        mov al, ds:4
        cmp al, ds:0Ah
        jb  loc_1EEB
        ret
; --------------------------------------------------

loc_1EEB:
        call    sub_1F3A
        test    word ptr ds:0, 1
        jnz loc_1F0E
        inc byte ptr ds:5
        call    sub_1EAC
        dec byte ptr ds:5
        cmp ax, ds:0C2h
        ja  loc_1F0E
        call    sub_1FD8
        call    sub_209C
        ret
; --------------------------------------------------

loc_1F0E:
        or  byte ptr ds:0D61h, 1
        ret
sub_1ED9    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1F14    proc near
        call    sub_28F7
        call    sub_21F8
        call    sub_EE7F
        mov word ptr ds:8, 0
        ret
sub_1F14    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1F24    proc near
        cmp byte ptr ds:0D61h, 0
        jz  loc_1F2E
        call    sub_1FC5

loc_1F2E:
        mov byte ptr ds:0D61h, 0
        ret
sub_1F24    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1F34    proc near
                    ; seg000:269Bp ...
        call    sub_1F3A
        jmp sub_1FC5
sub_1F34    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1F3A    proc near
        mov ax, ds:0C2h
        cmp ax, ds:0Eh
        jb  loc_1F49
        call    sub_87FD
        jmp short loc_1F4C
; --------------------------------------------------
        db 90h
; --------------------------------------------------

loc_1F49:
        call    sub_87FD

loc_1F4C:
        mov word ptr ds:8, 1
        test    word ptr ds:0, 1
        jnz loc_1FA9
        mov ax, ds:0C2h
        cmp ax, ds:66h
        jnb loc_1FBE

loc_1F63:
        inc word ptr ds:0C2h

loc_1F67:
        mov si, ds:0C2h
        cld
        lodsb
        cmp al, 0Ah
        jz  loc_1F63
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  locret_1FA8
        xor ah, ah
        cmp ax, ds:971h
        jnz locret_1FA8
        lodsw
        call    sub_BF90
        xchg    ah, al
        call    sub_BF90
        xchg    ah, al
        cmp ax, ds:0DF7h
        jnz locret_1FA8
        xor ah, ah
        mov cx, 0Ah

loc_1F97:
        lodsb
        cmp ax, ds:973h
        jz  loc_1FA2
        loop    loc_1F97
        jmp short locret_1FA8
; --------------------------------------------------

loc_1FA2:
        mov ds:0C2h, si
        jmp short loc_1F67
; --------------------------------------------------

locret_1FA8:
        ret
; --------------------------------------------------

loc_1FA9:
        mov al, ds:4
        cmp al, ds:0Ah
        jb  loc_1FB7
        mov byte ptr ds:4, 1

loc_1FB7:
        inc byte ptr ds:4
        call    sub_28F7

loc_1FBE:
        mov word ptr ds:8, 0
        ret
sub_1F3A    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1FC5    proc near
        call    sub_21ED
        call    sub_20FC
        mov word ptr ds:8, 0
        ret
sub_1FC5    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1FD2    proc near
        call    sub_1FD8
        jmp sub_2090
sub_1FD2    endp


; ---------- S U B  R O U T I N E --------------------------


sub_1FD8    proc near
        mov al, ds:4
        test    word ptr ds:0, 1
        jz  loc_1FF9
        cmp al, 2
        ja  loc_1FF1
        mov al, ds:0Ah
        mov ds:4, al
        inc byte ptr ds:4

loc_1FF1:
        dec byte ptr ds:4
        call    sub_28F7
        ret
; --------------------------------------------------

loc_1FF9:
        test    word ptr ds:2, 1
        jz  loc_202F
        mov si, ds:0C2h
        mov ax, ds:973h
        cmp [si-1], al
        jnz loc_202F
        call    sub_1AFC
        mov di, ds:0C2h
        mov cx, ds:66h
        sub cx, di
        jbe locret_202E
        push    es
        push    ds
        pop es
        assume es:nothing
        mov ax, ds:971h
        repne scasb
        dec di
        dec di
        mov ds:0C2h, di
        pop es
        assume es:nothing
        call    sub_2AAA

locret_202E:
        ret
; --------------------------------------------------

loc_202F:
        mov word ptr ds:8, 2
        mov ax, ds:0C2h
        cmp ax, ds:0C0h
        ja  loc_204A
        call    sub_D4BA
        jnb loc_1FF9
        mov word ptr ds:8, 0
        ret
; --------------------------------------------------

loc_204A:
        dec word ptr ds:0C2h

loc_204E:
        mov si, ds:0C2h
        std
        lodsb
        cmp al, 0Ah
        jz  loc_204A
        db 81h, 3Eh, 05Fh, 1, 1, 0  ; cmp word ptr ds:15Fh, 1
        jb  locret_208F
        xor ah, ah
        cmp ax, ds:973h
        jnz locret_208F
        mov cx, 0Ah

loc_206B:
        lodsb
        cmp ax, ds:971h
        jz  loc_2076
        loop    loc_206B
        jmp short locret_208F
; --------------------------------------------------

loc_2076:
        mov ax, [si+2]
        call    sub_BF90
        xchg    ah, al
        call    sub_BF90
        xchg    ah, al
        cmp ax, ds:0DF7h
        jnz locret_208F
        mov ds:0C2h, si
        jmp short loc_204E
; --------------------------------------------------

locret_208F:
        ret
sub_1FD8    endp


; ---------- S U B  R O U T I N E --------------------------


sub_2090    proc near
        call    sub_21ED
        call    sub_20FC
        mov word ptr ds:8, 0
sub_2090    endp


; ---------- S U B  R O U T I N E --------------------------


sub_209C    proc near
        mov ax, ds:0C2h
        cmp ax, ds:0Eh
        jb  loc_20A9
        call    sub_87FD
        ret
; --------------------------------------------------

loc_20A9:
        call    sub_87FD
        ret
sub_209C    endp

; --------------------------------------------------

locret_20AD:
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_20AE    proc near
        mov word ptr ds:8, 2
        test    word ptr ds:0, 1
        jnz loc_20D8
        mov byte ptr ds:4, 0FEh ; '?'
        push    word ptr ds:0C2h
        call    sub_2196
        pop ax
        cmp ax, ds:0C2h
        clc
        jnz locret_20AD
        xor ax, ax
        mov ds:4, al
        jmp sub_2160
; --------------------------------------------------

loc_20D8:
        jmp sub_2160
sub_20AE    endp

; --------------------------------------------------
        mov word ptr ds:8, 2
        test    word ptr ds:0, 1
        jnz loc_20D8
        mov byte ptr ds:4, 0FEh ; '?'
        call    sub_2196
        clc
        ret

; ---------- S U B  R O U T I N E --------------------------


sub_20F3    proc near
        call    sub_2117
        jmp sub_2196
sub_20F3    endp


; ---------- S U B  R O U T I N E --------------------------


sub_20F9    proc near
        call    sub_2196
sub_20F9    endp


; ---------- S U B  R O U T I N E --------------------------


sub_20FC    proc near
        cmp word ptr ds:0D62h, 1
        jbe locret_2116
        test    word ptr ds:0, 10h
        jz  locret_2116
        test    word ptr ds:0, 1
        jnz locret_2116
        call    sub_EE6C

locret_2116:
        ret
sub_20FC    endp

seg000      ends

        end
