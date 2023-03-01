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
| ADD           | Add                               | rD ← rL + rR
| SUB           | Subtract                          | rD ← rL - rR
| SLL           | Shift left logical                | rD ← rL << rR
| SLT           | Set less than                     | rD ← (rL < rR) ? 1 : 0
| SLTU          | Set less than unsigned            | rD ← (rL < rR) ? 1 : 0
| XOR           | Bitwise XOR                       | rD ← rL ⊕ rR
| SRL           | Shift right logical               | rD ← rL >> rR
| SRA           | Shift right arithmetic            | rD ← rL >> rR
| OR            | Bitwise OR                        | rD ← rL \| rR
| AND           | Bitwise AND                       | rD ← rL & rR

### 2.1.2. Integer Register-Immediate Instructions
| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| ADDI          | Add immediate                     | rD ← rL + imm12
| SLLI          | Shift left logical immediate      | rD ← rL << shamt
| SLTI          | Set less than immediate           | rD ← (rL < imm12) ? 1 : 0
| SLTU          | Set less than unsigned immediate  | rD ← (rL < imm12) ? 1 : 0
| XORI          | Bitwise XOR immediate             | rD ← rL ⊕ imm12
| SRLI          | Shift right logical immediate     | rD ← rL >> shamt
| SRAI          | Shift right arithmetic immediate  | rD ← rL >> shamt
| ORI           | Bitwise OR immediate              | rD ← rL \| imm12
| ANDI          | Bitwise AND immediate             | rD ← rL & imm12

| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| LUI           | Load upper immediate              | rD ← imm20 << 12
| AUIPC         | Add upper immediate to PC         | rD ← PC + imm20 << 12

## 2.2. Control Transfer Instructions
There are two types of control transfer instructions: unconditional jumps and conditional branches.

### 2.2.1. Unconditional Jumps
| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| JAL           | Jump and link                     | rD ← PC + 4; PC ← PC + offs20
| JALR          | Jump and link register            | rD ← PC + 4; PC ← rL + offs12

### 2.2.2. Conditional Branches
| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| BEQ           | Branch equal                      | if rL == rR then PC ← PC + offs12
| BNE           | Branch not equal                  | if rL != rR then PC ← PC + offs12
| BLT           | Branch less than                  | if rL < rR then PC ← PC + offs12
| BGE           | Branch greater equal              | if rL >= rR then PC ← PC + offs12
| BLTU          | Branch less than unsigned         | if rL < rR then PC ← PC + offs12
| BGEU          | Branch greater equal unsigned     | if rL >= rR then PC ← PC + offs12

## 2.3. Load and Store Instructions
RV32I is a byte-addressed, little-endian load-store architecture.
Both load and store instructions support one, two and four byte transfers.

| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| LB            | Load byte                         | rD ← MEM[rB + offs12]
| LH            | Load halfword                     | rD ← MEM[rB + offs12]
| LW            | Load word                         | rD ← MEM[rB + offs12]
| LBU           | Load byte unsigned                | rD ← MEM[rB + offs12]
| LHU           | Load halfword unsigned            | rD ← MEM[rB + offs12]

| Mnemonic      | Instruction                       | Description
| ------------- | --------------------------------- | ---------------------------------
| SB            | Store byte                        | MEM[rB + offs12] ← rS
| SH            | Store halfword                    | MEM[rB + offs12] ← rS
| SW            | Store word                        | MEM[rB + offs12] ← rS
| SBU           | Store byte unsigned               | MEM[rB + offs12] ← rS
| SHU           | Store halfword unsigned           | MEM[rB + offs12] ← rS

While the base ISA supports misaligned memory access for two and four byte data, 
the authors of RISC-V Instruction Set Manual do not recommend it, also almost nothing 
would be gained by implementing it in this project, and therefore strictly using 
naturally aligned addresses is the clear choice here. 
This does mean that aligned addresses are **MANDATORY**.

# 3. CPU timing control module

Each and every instruction is executed in exactly two clock cycles. Instruction
is fetched in the first clock cycle (IF), while the second cycle is used for
instruction decoding (ID), execution (EX), memory access (MEM) and register write-back (WB).
For the sake of simplicity, the first instruction cycle will from now on be shortened
to just **IF**, while the second will be shortened to **EX**.\
This design can further be improved by designing a simple pipeline where the processor
would only stall on load/store instructions and missed branch predictions.

To keep the CPU design clean, the whole control block has been moved into a new
module, CPU timing control module (**TC**). The truth table for all its output signals
is given below.

## 3.1. Instruction fetch (IF)
```
base[31..0] ← PC[31..0]
op[2..0] ← 010
LOAD ← 1
LD_IR ← 1
```
## 3.2. Instruction execute (EX)
### 3.2.1. OP
```
DATA_REG[31..0] ← ALU_OUT[31..0]
LD_PC ← 1
LD_REG ← 1
```
### 3.2.2. OP-IMM
```
DATA_REG[31..0] ← ALU_OUT[31..0]
ALUMX2 ← 1
LD_REG ← 1
LD_PC ← 1
```
### 3.2.3. BRANCH
```
BRANCH ← 1
LD_PC ← 1
```
### 3.2.4. LUI
```
DATA_REG[31..0] ← upper[19..0] << 12
LD_REG ← 1
LD_PC ← 1
```
### 3.2.5. AUIPC
```
DATA_REG[31..0] ← PC[31..0] + upper[19..0]<<12
LD_REG ← 1
LD_PC ← 1
```
### 3.2.6. JAL
```
DATA_REG[31..0] ← PC[31..0] + 4
LD_REG ← 1
JAL ← 1
LD_PC ← 1
```
### 3.2.7. JALR
```
DATA_REG[31..0] ← PC[31..0] + 4
LD_REG ← 1
JALR ← 1
LD_PC ← 1
```
### 3.2.8. LOAD
```
DATA_REG[31..0] ← DATA[31..0]
LD_REG ← 1
base[31..0] ← rB[31..0]
offs[11..0] ← upper[19..8]
op[2..0] ← func3[2..0]
LOAD ← 1
LD_PC ← 1
```
### 3.2.9. STORE
```
BUF_ENABLE ← 1
base[31..0] ← rB[31..0]
offs[11..0] ← st_offs[11..0]
op[2..0] ← func3[2..0]
STORE ← 1
LD_PC ← 1
```

# 4. Known bugs
