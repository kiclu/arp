# ARP
## 1. DE0 Pin assignments
### 1.1. SDRAM
| Signal name   | FPGA Pin  | Description                   |
|---------------|-----------|-------------------------------|
| DRAM_ADDR[0]  | PIN_C4    | SDRAM Address[0]              |
| DRAM_ADDR[1]  | PIN_A3    | SDRAM Address[1]              |
| DRAM_ADDR[2]  | PIN_B3    | SDRAM Address[2]              |
| DRAM_ADDR[3]  | PIN_C3    | SDRAM Address[3]              |
| DRAM_ADDR[4]  | PIN_A5    | SDRAM Address[4]              |
| DRAM_ADDR[5]  | PIN_C6    | SDRAM Address[5]              |
| DRAM_ADDR[6]  | PIN_B6    | SDRAM Address[6]              |
| DRAM_ADDR[7]  | PIN_A6    | SDRAM Address[7]              |
| DRAM_ADDR[8]  | PIN_C7    | SDRAM Address[8]              |
| DRAM_ADDR[9]  | PIN_B7    | SDRAM Address[9]              |
| DRAM_ADDR[10] | PIN_B4    | SDRAM Address[10]             |
| DRAM_ADDR[11] | PIN_A7    | SDRAM Address[11]             |
| DRAM_ADDR[12] | PIN_C8    | SDRAM Address[12]             |
| DRAM_DQ[0]    | PIN_D10   | SDRAM Data[0]                 |
| DRAM_DQ[1]    | PIN_G10   | SDRAM Data[1]                 |
| DRAM_DQ[2]    | PIN_H10   | SDRAM Data[2]                 |
| DRAM_DQ[3]    | PIN_E9    | SDRAM Data[3]                 |
| DRAM_DQ[4]    | PIN_F9    | SDRAM Data[4]                 |
| DRAM_DQ[5]    | PIN_G9    | SDRAM Data[5]                 |
| DRAM_DQ[6]    | PIN_H9    | SDRAM Data[6]                 |
| DRAM_DQ[7]    | PIN_F8    | SDRAM Data[7]                 |
| DRAM_DQ[8]    | PIN_A8    | SDRAM Data[8]                 |
| DRAM_DQ[9]    | PIN_B9    | SDRAM Data[9]                 |
| DRAM_DQ[10]   | PIN_A9    | SDRAM Data[10]                |
| DRAM_DQ[11]   | PIN_C10   | SDRAM Data[11]                |
| DRAM_DQ[12]   | PIN_B10   | SDRAM Data[12]                |
| DRAM_DQ[13]   | PIN_A10   | SDRAM Data[13]                |
| DRAM_DQ[14]   | PIN_E10   | SDRAM Data[14]                |
| DRAM_DQ[15]   | PIN_F10   | SDRAM Data[15]                |
| DRAM_BA_0     | PIN_B5    | SDRAM Bank Address[0]         |
| DRAM_BA_1     | PIN_A4    | SDRAM Bank Address[1]         |
| DRAM_LDQM     | PIN_E7    | SDRAM Low-byte Data Mask      |
| DRAM_UDQM     | PIN_B8    | SDRAM High-byte Data Mask     |
| DRAM_RAS_N    | PIN_F7    | SDRAM Row Address Strobe      |
| DRAM_CAS_N    | PIN_G8    | SDRAM Column Address Strobe   |
| DRAM_WE_N     | PIN_D6    | SDRAM Write Enable            |
| DRAM_CS_N     | PIN_G7    | SDRAM Chip Select             |
| DRAM_CKE      | PIN_E6    | SDRAM Clock Enable            |
| DRAM_CLK      | PIN_E5    | SDRAM Clock                   |

### 1.2. VGA
| Signal name   | FPGA Pin  | Description           |
|---------------|-----------|-----------------------|
| VGA_R[0]      | PIN_H19   | VGA Red[0]            |
| VGA_R[1]      | PIN_H17   | VGA Red[1]            |
| VGA_R[2]      | PIN_H20   | VGA Red[2]            |
| VGA_R[3]      | PIN_H21   | VGA Red[3]            |
| VGA_G[0]      | PIN_H22   | VGA Green[0]          |
| VGA_G[1]      | PIN_J17   | VGA Green[1]          |
| VGA_G[2]      | PIN_K17   | VGA Green[2]          |
| VGA_G[3]      | PIN_J21   | VGA Green[3]          |
| VGA_B[0]      | PIN_K22   | VGA Blue[0]           |
| VGA_B[1]      | PIN_K21   | VGA Blue[1]           |
| VGA_B[2]      | PIN_J22   | VGA Blue[2]           |
| VGA_B[3]      | PIN_K18   | VGA Blue[3]           |
| VGA_HS        | PIN_L21   | VGA Horizontal Sync   |
| VGA_VS        | PIN_L22   | VGA Vertical Sync     |
### 1.3. PS/2
| Signal name   | FPGA Pin  | Description           |
|---------------|-----------|-----------------------|
| PS2_KBCLK     | PIN_P22   | PS/2 Clock            |
| PS2_KBDAT     | PIN_P21   | PS/2 Data             |
### 1.4. 7-segment display
| Signal name   | FPGA Pin  | Description           |
|---------------|-----------|-----------------------|
| HEX0_D[0]     | PIN_E11   | Digit0[0]             |
| HEX0_D[1]     | PIN_F11   | Digit0[1]             |
| HEX0_D[2]     | PIN_H12   | Digit0[2]             |
| HEX0_D[3]     | PIN_H13   | Digit0[3]             |
| HEX0_D[4]     | PIN_G12   | Digit0[4]             |
| HEX0_D[5]     | PIN_F12   | Digit0[5]             |
| HEX0_D[6]     | PIN_F13   | Digit0[6]             |
| HEX0_DP       | PIN_D13   | Digit0 Decimal Point  |
| HEX1_D[0]     | PIN_A13   | Digit1[0]             |
| HEX1_D[1]     | PIN_B13   | Digit1[1]             |
| HEX1_D[2]     | PIN_C13   | Digit1[2]             |
| HEX1_D[3]     | PIN_A14   | Digit1[3]             |
| HEX1_D[4]     | PIN_B14   | Digit1[4]             |
| HEX1_D[5]     | PIN_E14   | Digit1[5]             |
| HEX1_D[6]     | PIN_A15   | Digit1[6]             |
| HEX1_DP       | PIN_B15   | Digit1 Decimal Point  |
| HEX2_D[0]     | PIN_D15   | Digit2[0]             |
| HEX2_D[1]     | PIN_A16   | Digit2[1]             |
| HEX2_D[2]     | PIN_B16   | Digit2[2]             |
| HEX2_D[3]     | PIN_E15   | Digit2[3]             |
| HEX2_D[4]     | PIN_A17   | Digit2[4]             |
| HEX2_D[5]     | PIN_B17   | Digit2[5]             |
| HEX2_D[6]     | PIN_F14   | Digit2[6]             |
| HEX2_DP       | PIN_A18   | Digit2 Decimal Point  |
| HEX3_D[0]     | PIN_B18   | Digit3[0]             |
| HEX3_D[1]     | PIN_F15   | Digit3[1]             |
| HEX3_D[2]     | PIN_A19   | Digit3[2]             |
| HEX3_D[3]     | PIN_B19   | Digit3[3]             |
| HEX3_D[4]     | PIN_C19   | Digit3[4]             |
| HEX3_D[5]     | PIN_D19   | Digit3[5]             |
| HEX3_D[6]     | PIN_G15   | Digit3[6]             |
| HEX3_DP       | PIN_G16   | Digit3 Decimal Point  |
### 1.5. Debug interface
| Signal name   | FPGA Pin  | Description           |
|---------------|-----------|-----------------------|
| DBG_BTN[0]    | PIN_H2    | Debug Button[0]       |
| DBG_BTN[1]    | PIN_G3    | Debug Button[1]       |
| DBG_BTN[2]    | PIN_F1    | Debug Button[2]       |
| DBG_SW[0]     | PIN_J6    | Debug Switch[0]       |
| DBG_SW[1]     | PIN_H5    | Debug Switch[1]       |
| DBG_SW[2]     | PIN_H6    | Debug Switch[2]       |
| DBG_SW[3]     | PIN_G4    | Debug Switch[3]       |
| DBG_SW[4]     | PIN_G5    | Debug Switch[4]       |
| DBG_SW[5]     | PIN_J7    | Debug Switch[5]       |
| DBG_SW[6]     | PIN_H7    | Debug Switch[6]       |
| DBG_SW[7]     | PIN_E3    | Debug Switch[7]       |
| DBG_SW[8]     | PIN_E4    | Debug Switch[8]       |
| DBG_SW[9]     | PIN_D2    | Debug Switch[9]       |
| DBG_LED[0]    | PIN_J1    | Debug LED[0]          |
| DBG_LED[1]    | PIN_J2    | Debug LED[1]          |
| DBG_LED[2]    | PIN_J3    | Debug LED[2]          |
| DBG_LED[3]    | PIN_H1    | Debug LED[3]          |
| DBG_LED[4]    | PIN_F2    | Debug LED[4]          |
| DBG_LED[5]    | PIN_E1    | Debug LED[5]          |
| DBG_LED[6]    | PIN_C1    | Debug LED[6]          |
| DBG_LED[7]    | PIN_C2    | Debug LED[7]          |
| DBG_LED[8]    | PIN_B2    | Debug LED[8]          |
| DBG_LED[9]    | PIN_B1    | Debug LED[9]          |

## 2. TODO
- [ ] Fix GCA draw sprite wiring

## 3. Links

### 3.1. FPGA Development board
[DE0 User manual](https://w3.braude.ac.il/wp-content/uploads/2021/08/Altera-DE0.pdf)

### 3.2. CPU
[RISC-V Instruction set manual](https://riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf)\
[RISC-V Instruction set cheatsheet](https://itnext.io/risc-v-instruction-set-cheatsheet-70961b4bbe8)

### 3.3. SRAM
[Altera internal memory user guide](https://www.intel.com/programmable/technical-pdfs/654378.pdf)

### 3.4. GPU
[VGA timing](http://tinyvga.com/vga-timing/800x600@72Hz)\
[42S16400 SDRAM Datasheet](https://web.archive.org/web/20200113214256/http://www.issiusa.com/pdf/42S16400.pdf)\
[Bresenham's line algotithm](https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm)

### 3.5. PS/2 Controller
[PS/2 keyboard protocol](http://www-ug.eecg.toronto.edu/msl/nios_devices/datasheets/PS2%20Keyboard%20Protocol.htm)
