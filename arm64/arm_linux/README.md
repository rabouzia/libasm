# ARM64 Registers and Common Instructions (Linux)

## ARM64 Registers

ARM64 has 31 general-purpose registers (`X0-X30`), a stack pointer (`SP`), and a zero register (`XZR`). The lower 32 bits of these registers can be accessed using `W0-W30`.

| Register | Description                          |
|----------|--------------------------------------|
| `X0-X7`  | Argument/result registers (used for function arguments and return values) |
| `X8`     | Indirect result location register    |
| `X9-X15` | Temporary registers                  |
| `X16-X17`| Intra-procedure call temporary registers |
| `X18`    | Platform register (reserved for platform use) |
| `X19-X28`| Callee-saved registers               |
| `X29`    | Frame pointer (`FP`)                 |
| `X30`    | Link register (`LR`, holds return address) |
| `SP`     | Stack pointer                        |
| `XZR`    | Zero register (always reads as `0`)  |
| `W0-W30` | 32-bit versions of `X0-X30`          |

---

## Common ARM64 Instructions

Here are some common ARM64 instructions:

| Instruction | Description                                      | Example                     |
|-------------|--------------------------------------------------|-----------------------------|
| `MOV`       | Move value between registers                     | `MOV X0, X1`                |
| `ADD`       | Add two registers                                | `ADD X0, X1, X2`            |
| `SUB`       | Subtract two registers                           | `SUB X0, X1, X2`            |
| `MUL`       | Multiply two registers                           | `MUL X0, X1, X2`            |
| `LDR`       | Load value from memory into register             | `LDR X0, [X1]`              |
| `STR`       | Store value from register into memory            | `STR X0, [X1]`              |
| `B`         | Branch (unconditional jump)                      | `B label`                   |
| `BL`        | Branch with link (call a function)               | `BL function_name`          |
| `RET`       | Return from subroutine                           | `RET`                       |
| `CMP`       | Compare two registers                            | `CMP X0, X1`                |
| `B.EQ`      | Branch if equal (after `CMP`)                    | `B.EQ label`                |
| `B.NE`      | Branch if not equal (after `CMP`)                | `B.NE label`                |
| `AND`       | Bitwise AND                                      | `AND X0, X1, X2`            |
| `ORR`       | Bitwise OR                                       | `ORR X0, X1, X2`            |
| `EOR`       | Bitwise XOR                                      | `EOR X0, X1, X2`            |
| `LSL`       | Logical shift left                               | `LSL X0, X1, #2`            |
| `LSR`       | Logical shift right                              | `LSR X0, X1, #2`            |
| `ASR`       | Arithmetic shift right                           | `ASR X0, X1, #2`            |
| `CBZ`       | Compare and branch if zero                       | `CBZ X0, label`             |
| `CBNZ`      | Compare and branch if not zero                   | `CBNZ X0, label`            |
| `ADRP`      | Compute the address of a 4KB page                | `ADRP X0, label`            |
| `ADR`       | Compute the address of a label                   | `ADR X0, label`             |
| `STP`       | Store pair of registers                          | `STP X0, X1, [SP, #16]`     |
| `LDP`       | Load pair of registers                           | `LDP X0, X1, [SP, #16]`     |

---

## Example ARM64 Code for Linux

Here’s a simple example of ARM64 assembly code for Linux:

```assembly
.global _start
_start:
    MOV X0, #10         // Move 10 into X0
    MOV X1, #20         // Move 20 into X1
    ADD X2, X0, X1      // X2 = X0 + X1 (30)
    SUB X3, X1, X0      // X3 = X1 - X
