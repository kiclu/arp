# CPU

# 1. ISA

The ISA choice for this project is quite easy. RV32I is the core RISC-V ISA and
it comes with just about everything needed for a small embedded system. Beind RISC 
with a few dozen instructions and with load-store architecture, it is quite simple
to implement it on an FPGA board.

# 2. Instruction set overview

## 2.1. Integer Computational Instructions
### 2.1.1. Integer Register-Register Instructions
| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| ADD           | Add                               | xD ← xL + xR
| SUB           | Subtract                          | xD ← xL - xR
| SLL           | Shift left logical                | xD ← xL << xR
| SLT           | Set less than                     | xD ← (xL < xR) ? 1 : 0
| SLTU          | Set less than unsigned            | xD ← (xL < xR) ? 1 : 0
| XOR           | Bitwise XOR                       | xD ← xL ⊕ xR
| SRL           | Shift right logical               | xD ← xL >> xR
| SRA           | Shift right arithmetic            | xD ← xL >> xR
| OR            | Bitwise OR                        | xD ← xL \| xR
| AND           | Bitwise AND                       | xD ← xL & xR

### 2.1.2. Integer Register-Immediate Instructions
| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| ADDI          | Add immediate                     | xD ← xL + imm12
| SLLI          | Shift left logical immediate      | xD ← xL << shamt
| SLTI          | Set less than immediate           | xD ← (xL < imm12) ? 1 : 0
| SLTU          | Set less than unsigned immediate  | xD ← (xL < imm12) ? 1 : 0
| XORI          | Bitwise XOR immediate             | xD ← xL ⊕ imm12
| SRLI          | Shift right logical immediate     | xD ← xL >> shamt
| SRAI          | Shift right arithmetic immediate  | xD ← xL >> shamt
| ORI           | Bitwise OR immediate              | xD ← xL \| imm12
| ANDI          | Bitwise AND immediate             | xD ← xL & imm12

| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| LUI           | Load upper immediate              | xD ← imm20 << 12
| AUIPC         | Add upper immediate to PC         | xD ← PC + imm20 << 12

## 2.2. Control Transfer Instructions
There are two types of control transfer instructions: unconditional jumps and conditional branches.

### 2.2.1. Unconditional Jumps
| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| JAL           | Jump and link                     | xD ← PC + 4; PC ← PC + offs20
| JALR          | Jump and link register            | xD ← PC + 4; PC ← xL + offs12

### 2.2.2. Conditional Branches
| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| BEQ           | Branch equal                      | if xL == xR then PC ← PC + offs12
| BNE           | Branch not equal                  | if xL != xR then PC ← PC + offs12
| BLT           | Branch less than                  | if xL < xR then PC ← PC + offs12
| BGE           | Branch greater equal              | if xL >= xR then PC ← PC + offs12
| BLTU          | Branch less than unsigned         | if xL < xR then PC ← PC + offs12
| BGEU          | Branch greater equal unsigned     | if xL >= xR then PC ← PC + offs12

## 2.3. Load and Store Instructions
RV32I is a byte-addressed, little-endian load-store architecture.
Both load and store instructions support one, two and four byte transfers.

| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| LB            | Load byte                         | xD ← MEM[xB + offs12]
| LH            | Load halfword                     | xD ← MEM[xB + offs12]
| LW            | Load word                         | xD ← MEM[xB + offs12]
| LBU           | Load byte unsigned                | xD ← MEM[xB + offs12]
| LHU           | Load halfword unsigned            | xD ← MEM[xB + offs12]

| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| SB            | Store byte                        | MEM[xB + offs12] ← xS
| SH            | Store halfword                    | MEM[xB + offs12] ← xS
| SW            | Store word                        | MEM[xB + offs12] ← xS
| SBU           | Store byte unsigned               | MEM[xB + offs12] ← xS
| SHU           | Store halfword unsigned           | MEM[xB + offs12] ← xS

While the base ISA supports misaligned memory access for two and four byte data, the authors of RISC-V Instruction Set Manual do not recommend it, also almost nothing would be gained by implementing it in this project, and therefore strictly using naturally aligned addresses is the clear choice here. This does mean that aligned addresses are **MANDATORY**.
