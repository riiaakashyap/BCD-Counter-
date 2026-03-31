# 🔢 BCD Counter - Verilog

This project implements a Binary-Coded Decimal (BCD) counter using Verilog HDL. It supports both up and down counting based on a control signal. The design is accompanied by a testbench for simulation.

## 📁 Project Structure
```bash

bcd-counter-verilog/
├── bcd_counter.v             # Main Verilog module
├── bcd_counter_tb.v          # Testbench for simulation
├── Images/
│   ├── schematic.png         # RTL schematic screenshot
│   └── simulation.png        # Simulation waveform
├── README.md                 # Project documentation
└── LICENSE                   # MIT License
```

## 📦 Module Overview

### 🔧 `bcd_counter.v`
- **Purpose**: Implements a 4-bit Binary-Coded Decimal (BCD) counter.
- **Inputs**:
  - `clk`: Clock signal
  - `reset`: Asynchronous reset (active high)
  - `up_down`: Mode select (`1` for count up, `0` for count down)
- **Output**:
  - `bcd_out`: 4-bit BCD output representing values from 0 to 9
- **Functionality**:
  - Counts upward from 0 to 9 when `up_down` is high
  - Counts downward from 9 to 0 when `up_down` is low
  - Rolls over appropriately at boundaries
  - Resets to 0 when `reset` is asserted

### 📐 `bcd_counter_tb.v`
- **Purpose**: Testbench to simulate the BCD counter behavior
- **Features**:
  - Generates clock with a 100ns period
  - Applies reset at the start of simulation
  - Tests both up and down counting modes
  - Monitors and displays counter values and simulation time


## 🖼️ Schematics

<img width="1490" height="644" alt="Schematics" src="https://github.com/user-attachments/assets/d988cc82-de21-4b2e-a626-b42c37f90999" />

The schematic shows the internal structure of the BCD counter, illustrating how the `clk`, `reset`, and `up_down` signals control the BCD output from 0 to 9.

## 📊 Simulation Output

<img width="1477" height="630" alt="Simulation" src="https://github.com/user-attachments/assets/1389d781-5d66-4302-ac99-2962a400e6c7" />

The simulation demonstrates:
- Initialization and reset behavior
- Proper counting from 0 to 9 in **up mode**
- Proper counting from 9 to 0 in **down mode**

## 📝 License

This project is licensed under the [MIT License](LICENSE).

## 👩‍💻 Author

**Reiya Sharma**
