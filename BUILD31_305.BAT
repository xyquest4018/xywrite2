@echo off
REM =====================================================
REM XyWrite II Plus - Build Script for MASM 3.1 + LINK 3.05
REM Target: EDITOR2.EXE (79,904 bytes)
REM MD5: 6568206614EF4FB53F94135A73C53E82
REM =====================================================
REM Total: 13 ASM files (XY2_XXXX naming convention)
REM Link order: STRT MN01 MN1B D001 MN02 MN2B MN2C MN2D D002 SEG1 SEG2 STAK ENDS
REM Output directory: LINK305
REM =====================================================

echo ===================================================== > LOG305_1.TXT
echo  XyWrite 2 Build - 13 ASM files                       >> LOG305_1.TXT
echo  MASM 3.1 + LINK 3.05                                 >> LOG305_1.TXT
echo ===================================================== >> LOG305_1.TXT
echo. >> LOG305_1.TXT

echo =====================================================
echo  XyWrite 2 Build - 13 ASM files
echo  MASM 3.1 + LINK 3.05
echo =====================================================
echo  Output: LINK305\EDITOR2.EXE
echo  Log:    LOG305_1.TXT
echo.

if not exist LINK305\NUL MD LINK305
if exist LINK305\*.OBJ del LINK305\*.OBJ
if exist LINK305\*.EXE del LINK305\*.EXE
if exist LINK305\*.MAP del LINK305\*.MAP
if exist LINK305\*.LST del LINK305\*.LST

REM =====================================================
REM seg000 Zone 0 - Entry point + startup (relocs 0-15)
REM =====================================================
echo.
echo --- seg000 Zone 0 ---

echo [ 1/13] XY2_STRT.ASM  (zone 0 - entry point)
D:\MASM31\MASM XY2_STRT.ASM,LINK305\XY2_STRT.OBJ,LINK305\XY2_STRT.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

REM =====================================================
REM seg000 Gap - Non-relocating code (parts 1-2)
REM =====================================================
echo.
echo --- seg000 Gap (no relocs) ---

echo [ 2/13] XY2_MN01.ASM  (gap code part 1)
D:\MASM31\MASM XY2_MN01.ASM,LINK305\XY2_MN01.OBJ,LINK305\XY2_MN01.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

echo [ 3/13] XY2_MN1B.ASM  (gap code part 2)
D:\MASM31\MASM XY2_MN1B.ASM,LINK305\XY2_MN1B.OBJ,LINK305\XY2_MN1B.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

REM =====================================================
REM seg004 Zone 1 - Data first portion (relocs 16-18)
REM =====================================================
echo.
echo --- seg004 Zone 1 ---

echo [ 4/13] XY2_D001.ASM  (zone 1 - data)
D:\MASM31\MASM XY2_D001.ASM,LINK305\XY2_D001.OBJ,LINK305\XY2_D001.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

REM =====================================================
REM seg000 Zone 2 - Remaining code (relocs 19-22, parts 1-4)
REM =====================================================
echo.
echo --- seg000 Zone 2 ---

echo [ 5/13] XY2_MN02.ASM  (zone 2 code part 1)
D:\MASM31\MASM XY2_MN02.ASM,LINK305\XY2_MN02.OBJ,LINK305\XY2_MN02.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

echo [ 6/13] XY2_MN2B.ASM  (zone 2 code part 2)
D:\MASM31\MASM XY2_MN2B.ASM,LINK305\XY2_MN2B.OBJ,LINK305\XY2_MN2B.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

echo [ 7/13] XY2_MN2C.ASM  (zone 2 code part 3)
D:\MASM31\MASM XY2_MN2C.ASM,LINK305\XY2_MN2C.OBJ,LINK305\XY2_MN2C.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

echo [ 8/13] XY2_MN2D.ASM  (zone 2 code part 4)
D:\MASM31\MASM XY2_MN2D.ASM,LINK305\XY2_MN2D.OBJ,LINK305\XY2_MN2D.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

REM =====================================================
REM seg004 Zone 3 - Data remainder (reloc 23)
REM =====================================================
echo.
echo --- seg004 Zone 3 ---

echo [ 9/13] XY2_D002.ASM  (zone 3 - remaining data)
D:\MASM31\MASM XY2_D002.ASM,LINK305\XY2_D002.OBJ,LINK305\XY2_D002.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

REM =====================================================
REM Non-relocating segments (seg001, seg002, seg003, seg005)
REM =====================================================
echo.
echo --- Non-relocating segments ---

echo [10/13] XY2_SEG1.ASM  (seg001 - 128 bytes)
D:\MASM31\MASM XY2_SEG1.ASM,LINK305\XY2_SEG1.OBJ,LINK305\XY2_SEG1.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

echo [11/13] XY2_SEG2.ASM  (seg002 - 1600 bytes)
D:\MASM31\MASM XY2_SEG2.ASM,LINK305\XY2_SEG2.OBJ,LINK305\XY2_SEG2.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

echo [12/13] XY2_STAK.ASM  (seg003 - stack)
D:\MASM31\MASM XY2_STAK.ASM,LINK305\XY2_STAK.OBJ,LINK305\XY2_STAK.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

echo [13/13] XY2_ENDS.ASM  (seg005 - sentinel)
D:\MASM31\MASM XY2_ENDS.ASM,LINK305\XY2_ENDS.OBJ,LINK305\XY2_ENDS.LST; >> LOG305_1.TXT
if errorlevel 1 goto error

REM =====================================================
REM LINK
REM =====================================================
echo.
echo --- Linking ---

echo LINK: 13 OBJ files -> EDITOR2.EXE
D:\LINKVERS\V3.05\LINK @LINK305.RSP >> LOG305_1.TXT
if errorlevel 1 goto linkerr

REM =====================================================
REM POST-LINK: Fix MZ header (RelocTableOfs 1Eh->20h)
REM Original was built with a linker that uses 32-byte
REM pre-reloc header. LINK 3.05 uses 30 bytes. DEBUG
REM shifts the reloc table 2 bytes and writes checksum.
REM Period-authentic: DOS devs used DEBUG scripts in 1985.
REM =====================================================
echo.
echo --- Header Fix (DEBUG) ---
echo Patching MZ header: RelocTableOfs 1Eh-^>20h + checksum
COPY LINK305\EDITOR2.EXE EDITOR2.BIN > NUL
DEBUG EDITOR2.BIN < FIXHDR.SCR > NUL
COPY EDITOR2.BIN LINK305\EDITOR2.EXE > NUL
DEL EDITOR2.BIN

echo.
echo =====================================================
echo  BUILD SUCCESSFUL
echo  Output: LINK305\EDITOR2.EXE
echo  Check LOG305_1.TXT for full log
echo =====================================================
goto end

:error
echo.
echo *** ASSEMBLY ERROR - check LOG305_1.TXT ***
echo.
goto end

:linkerr
echo.
echo *** LINK ERROR - check LOG305_1.TXT ***
echo.

:end
