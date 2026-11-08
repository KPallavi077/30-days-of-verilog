# Day 26: Encoder vs Decoder in real life

A concept day. I built a 4:2 encoder, a 4:2 priority encoder and a 2:4 decoder in Verilog. This page explains how they differ and where they are used.

## Encoder
Many input lines, a binary code out. Like a keyboard: many keys, one code for the key that was pressed.

## Decoder
A binary code in, one output line active. Like an address decoder: a binary address selects exactly one memory chip.

## Differences

| | Encoder | Decoder |
|---|---|---|
| Direction | many lines to binary code | binary code to many lines |
| Inputs | 2^n | n |
| Outputs | n | 2^n |
| Active lines | one input at a time | exactly one output (one-hot) |
| Built from | OR gates | AND gates (minterms) |
| Example IC | 74148 (8:3 priority encoder) | 74138 (3:8 decoder) |

## Where they are used
- Encoder: keyboards, interrupt controllers (priority encoder), flash ADCs, button panels
- Decoder: memory address decoding, BCD to 7-segment display drivers, CPU instruction decoding, selecting one of many devices

## Exam notes
- 8:3 encoder: Y2 = I4+I5+I6+I7, Y1 = I2+I3+I6+I7, Y0 = I1+I3+I5+I7
- 3:8 decoder: Yk is minterm k of A2 A1 A0
- A plain encoder fails if two inputs are high; a priority encoder fixes this
- A decoder with an enable input is a DEMUX
- A decoder plus an OR gate can build any logic function

## Notes


![Notes page 1](encoder_vs_decoder_1.png)




![Notes page 2](encoder_vs_decoder_2.png)



## Code
- [Day 23: 2:4 decoder](../Day23_2to4_Decoder)
- [Day 24: 4:2 encoder](../Day24_4to2_Encoder)
- [Day 25: 4:2 priority encoder](../Day25_4to2_Priority_Encoder)
