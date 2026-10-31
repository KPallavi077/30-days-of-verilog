# Day 22: MUX and DEMUX in real life

A concept day. I built a 2:1 MUX, a 4:1 MUX and a 1:4 DEMUX in Verilog, and this page explains what they do in real systems.

## MUX = selector
Many inputs, one output. The select lines choose which input reaches the output.

## DEMUX = distributor
One input, many outputs. The select lines choose which output receives the input.

## Comparison

| | MUX | DEMUX |
|---|---|---|
| Job | chooses 1 of many inputs | sends 1 input to 1 of many outputs |
| Data inputs | 2^n | 1 |
| Outputs | 1 | 2^n |
| Select lines | n | n |
| Also called | data selector | data distributor |

## Working together
A MUX at the sender and a DEMUX at the receiver let many signals share one wire, as long as both use the same select value.

## Where they are used
- MUX: phone and data links, reading many sensors with one ADC, ALU operand selection, FPGA look-up tables
- DEMUX: the receiving end of a shared wire, sending data to a chosen register, selecting one of several devices or memory chips
- A DEMUX with D used as the enable input is a decoder

## Notes


![Notes page 1](mux_demux_real_1.png)




![Notes page 2](mux_demux_real_2.png)



## Code
- [Day 19: 2:1 MUX](../Day19_2to1_MUX)
- [Day 20: 4:1 MUX](../Day20_4to1_MUX)
- [Day 21: 1:4 DEMUX](../Day21_1to4_DEMUX)
