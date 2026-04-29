## ✅ PROJECT COMPLETE

**XyWrite II Plus v1.10 — EDITOR2.EXE (79,904 bytes)**
**Binary-exact reconstruction achieved.**

| Verification | Result |
|-------------|--------|
| File size | 79,904 = 79,904 ✅ |
| MD5 | 6568206614EF4FB53F94135A73C53E82 ✅ |
| SHA-256 | 1D178498743C647273B4968E7DC346F8A65AA3F3C8945EDB4A9E0ECECF8EF6E6 ✅ |
| Relocations | 24/24 (100%) ✅ |
| MZ Header | 14/14 fields ✅ |
| Byte identity | 79,904/79,904 (100%) ✅ |

*This is the first bit-perfect reconstruction of XyWrite II Plus v1.10 in history.*

## 1. BUILD INFRASTRUCTURE

### Build Order (13 files)
```
STRT → MN01 → MN1B → D001 → MN02 → MN2B → MN2C → MN2D → D002 → SEG1 → SEG2 → STAK → ENDS
```
This order matches the zone interleaving:
1. seg000 Zone 0 (STRT)
2. seg000 Gap (MN01, MN1B)
3. seg004 Zone 1 (D001)
4. seg000 Zone 2 (MN02, MN2B, MN2C, MN2D)
5. seg004 Zone 3 (D002)
6. Non-relocating (SEG1, SEG2, STAK, ENDS)

### Toolchain Paths (DOSBox-X)
```batch
mount C F:\RE\REVERSE\XyWrite\XyWrite2\build
mount D F:\RE\REVERSE\XyWrite\Tools
C:
BUILD31_305.BAT
```
- Assembler: `D:\MASM31\MASM` (MASM 3.1, reports "Version 3.00")
- Linker: `D:\LINKVERS\V3.05\LINK` (LINK 3.05)
- Response file: `LINK3605.RSP` (13 OBJ files, /MAP /NOI /LIN /CP:65535)
- Output: `LINK3605\EDITOR2.EXE`

### The MZ Header Challenge

#### RelocTableOfs: 0x001E vs 0x0020
After all code/data fixes, the only remaining differences were in the MZ header (100 bytes, offsets 0x0012-0x007F). 
All 79,392 bytes of code and data from offset 0x0080 onwards were 100% identical.

**Root cause:** Every Microsoft LINK from v1.08 through v5.60 writes RelocTableOfs = 0x001E (30). The standard MZ header is 28 bytes (0x1C), 
then LINK writes 2 bytes of linker version info at 0x1C-0x1D, then starts the relocation table at 0x1E.

The original EDITOR2.EXE has RelocTableOfs = 0x0020 (32) with bytes `0E 0D 00 04` at 0x1C-0x1F. This means the original was built with 
a linker that uses a 32-byte pre-reloc header (4 reserved bytes instead of 2). This linker is not in any toolchain collection tested:

#### The DEBUG Fix (Period-Authentic)
Since no available linker produces RelocTableOfs = 0x0020, a post-link header patch is required. DOS developers in 1985 routinely used DEBUG scripts in build processes.

**FIXHDR.SCR** — DEBUG script that runs in DOSBox after LINK:
```
M 11E 17D 120        ; Shift 96-byte reloc table from 0x1E to 0x20
E 11C 0E 0D 00 04    ; Write reserved bytes
E 118 20              ; Set RelocTableOfs = 0x0020
E 112 9A 23           ; Write checksum = 0x239A
W                     ; Save
Q                     ; Quit
```

Operations (file offsets → DEBUG addresses at CS:0100):
1. **M 11E 17D 120** — Move 96 bytes (reloc table) from 0x1E→0x20. DEBUG handles overlapping moves correctly (copies backwards when dest > src).
2. **E 11C 0E 0D 00 04** — Write the 4 reserved header bytes that the original linker produced.
3. **E 118 20** — Patch RelocTableOfs from 0x1E to 0x20.
4. **E 112 9A 23** — Write the pre-computed MZ checksum.

**Checksum algorithm:** The original linker uses ones-complement: `checksum = ~(sum of all 16-bit words with checksum=0)`. Verified: `~0xDC65 = 0x239A`.

**Build batch integration:** BUILD31_305.BAT renames EDITOR2.EXE → EDITOR2.BIN, runs `DEBUG EDITOR2.BIN < FIXHDR.SCR`, then renames back.

# XYWrite2 – Refactor & Modernization TODO

## Code Documentation
- [ ] Comment all assembly routines (purpose, inputs, outputs, side effects)
- [ ] Add file-level headers describing each module
- [ ] Document calling conventions used across routines
- [ ] Explain any non-obvious optimizations or low-level tricks

## Code Organization
- [ ] Split large assembly files into smaller, logical modules
- [ ] Group related subroutines into dedicated files (e.g., text handling, I/O, UI)
- [ ] Standardize file naming conventions
- [ ] Ensure each file has a clear, single responsibility

## Labels & Naming
- [ ] Identify all ambiguous or auto-generated labels
- [ ] Rename labels to meaningful, descriptive names
- [ ] Establish naming conventions for:
  - [ ] Functions
  - [ ] Local labels
  - [ ] Global labels
  - [ ] Constants and macros

## Build System
- [ ] Organize build scripts for modular assembly files
- [ ] Ensure reproducible builds
- [ ] Add debug vs release build configurations
- [ ] Document build steps clearly

## Code Cleanup

## Reverse Engineering / Understanding
- [ ] Map out high-level architecture of the original codebase
- [ ] Identify core subsystems (editor, rendering, input, file I/O)
- [ ] Document data structures and memory layout
- [ ] Trace key execution paths (startup, editing loop, save/load)

## Testing & Validation
- [ ] Verify behavior matches original XYWrite functionality

## Project Management
- [ ] Track progress per module
- [ ] Maintain changelog of refactors
- [ ] Set milestones for incremental cleanup

## Bugs & Limitations
- [ ] Identify and document all existing bugs
- [ ] Reproduce bugs consistently with test cases
- [ ] Categorize bugs (critical, major, minor)
- [ ] Identify architectural or design limitations
- [ ] Document constraints imposed by legacy DOS environment
- [ ] Fix confirmed bugs systematically
- [ ] Refactor or redesign areas causing major limitations

## Feature Planning
- [ ] Identify missing or desirable features for XYWrite2
- [ ] Prioritize features (core vs optional)
- [ ] Ensure new features align with lightweight philosophy
- [ ] Avoid feature bloat—define strict inclusion criteria
- [ ] Create a roadmap for feature implementation

## Toolchain & Assembly Accuracy
- [ ] Identify the original assembler used (if possible) for XYWrite sources
- [ ] Evaluate modern compatible assemblers (MASM, TASM, NASM, FASM)
- [ ] Select the assembler that produces the most accurate binary output
- [ ] Identify and configure a compatible linker for the chosen assembler
- [ ] Ensure the build toolchain replicates original binary behavior as closely as possible

- [ ] Audit all `db`-encoded instruction sequences
  - [ ] Example: `db 81h, 0FFh, 6, 0` → replace with `cmp di, 6`
  - [ ] Example:
        - `db 32h, 0E4h` → `xor ah, ah`
        - `db 8Bh, 0C8h` → `mov cx, ax`
        - `db 36h, 29h, 0Eh, 3Ah, 37h` → `sub word ptr ss:[0x373a], cx`
        - `db 7Eh, 2` → `jle <label>`
        - `db 0F3h, 0A4h` → `rep movsb`
        - `db 8Bh, 0F3h` → `mov si, bx`

- [ ] Replace raw opcode (`db`) sequences with proper assembly mnemonics wherever possible
- [ ] Identify why raw opcodes were originally used:
  - [ ] Assembler limitations
  - [ ] Optimization tricks
  - [ ] Self-modifying code
  - [ ] Macro/workaround behavior

- [ ] Validate that rewritten instructions produce identical machine code
- [ ] Use disassembly tools to verify correctness of transformations
- [ ] Preserve behavior in edge cases (flags, segment overrides, etc.)

- [ ] Document any instructions that must remain as raw opcodes and explain why
- [ ] Establish guidelines for when `db` usage is acceptable vs prohibited

- [ ] Create automated or semi-automated process for opcode-to-mnemonic conversion (if feasible)
- [ ] Ensure final codebase is readable, maintainable, and assembler-friendly
