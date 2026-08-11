# parity-generator-
Parity Generator using Verilog

Project Description

A parity generator is a combinational circuit that generates a parity bit to make the total number of 1s in a binary data sequence either even or odd.

 Objective

To design and simulate a 4-bit parity generator using Verilog HDL.

Features

- 4-bit binary input
- Supports even and odd parity generation
- Combinational logic design
- Verilog HDL implementation
- Testbench for functional verification

 Logic

For 4-bit input "data[3:0]":

- Even parity: "parity = data[3] ^ data[2] ^ data[1] ^ data[0]"
- Odd parity: "parity = ~(data[3] ^ data[2] ^ data[1] ^ data[0])"

Project Structure

parity-generator/
│
├── README.md
├── parity_generator.v
└── parity_generator_tb.v

 Verilog Code

The RTL module generates either even or odd parity based on the "odd" control input.

Testbench

The testbench applies different 4-bit input combinations and checks the generated parity output.

 Simulation

The design can be simulated using:

- EDA Playground
- ModelSim
- QuestaSim
- Vivado
- Icarus Verilog

Expected Result

Data| Even Parity| Odd Parity
0000| 0| 1
0001| 1| 0
0011| 0| 1
0111| 1| 0
1111| 0| 1

Conclusion

The 4-bit parity generator was successfully designed and verified using Verilog HDL. The simulation confirms correct generation of both even and odd parity bits.
author: Harshitha 