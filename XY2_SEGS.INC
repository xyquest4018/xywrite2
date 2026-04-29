;=============================================================================
; PROJECT:   XyWrite II Plus v1.10 (79,904 bytes)
; TOOLS:     MASM 3.1 / LINK 3.05 (Year: 1985)
; MZ_HEADER: Checksum=239Ah, Relocs=24
; ENTRY:     0000:01D9h
;=============================================================================
; FILE:      XY2_SEGS.INC -- Segment Forward Declarations for EDITOR2.EXE
; PURPOSE:   Declares all 6 segments so every source file can reference them.
;            Must be INCLUDEd at the top of every XY2_*.ASM file.
;=============================================================================
;
; Segment Layout (from IDA 4.3 MAP):
;   seg000  0000:0000  62,432 B  CODE   Main code
;   seg001  0F3E:0000     128 B  UNK    Unknown data 1
;   seg002  0F46:0000   1,600 B  UNK    Unknown data 2
;   seg003  0FAA:0000   2,816 B  STACK  Stack
;   seg004  105A:0000  12,416 B  UNK    Data/BSS
;   seg005  1362:0000       0 B  (end)  Sentinel
;
; Relocation Zones (24 relocs, 4 zones):
;   Zone 0: seg000 relocs 0-15  (offsets 0x0000-0x0895)
;   Zone 1: seg004 relocs 16-18 (offsets 0x14D6-0x14DE)
;   Zone 2: seg000 relocs 19-22 (offsets 0x3D0F-0x9F89)
;   Zone 3: seg004 reloc  23    (offset  0x25BE)
; ========================================================================

; --- seg000: Main code segment (62,432 bytes) ---
seg000		segment	byte public 'CODE'
seg000		ends

; --- seg001: Unknown data 1 (128 bytes) ---
seg001		segment	byte public 'UNK'
seg001		ends

; --- seg002: Unknown data 2 (1,600 bytes) ---
seg002		segment	byte public 'UNK'
seg002		ends

; --- seg003: Stack segment (2,816 bytes) ---
seg003		segment	byte stack 'STACK'
seg003		ends

; --- seg004: Data/BSS segment (12,416 bytes) ---
seg004		segment	para public 'DATA'
seg004		ends

; --- seg005: Zero-length sentinel ---
seg005		segment	byte public 'END'
seg005		ends

; ========================================================================
; Alignment macros REMOVED — MASM 3.1 cannot use EVEN on BYTE segments
; (Error 70) and cannot evaluate $ MOD n in IF (Error 42).
; All alignment padding replaced with explicit db bytes in source files.
; ========================================================================
