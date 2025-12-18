# 5-Bit-Carry-Look-Ahead-Adder
This project presents the complete design flow of a 5-bit Carry Lookahead Adder (CLA), starting from transistor-level circuit design to hardware verification on an FPGA. The goal is to study speed improvement using carry lookahead logic and to understand the impact of physical layout parasitics on real circuit performance.

The CLA was first implemented at the transistor level using NGspice, followed by physical layout design in Magic VLSI. Both pre-layout and post-layout simulations were performed and compared to analyze the effects of parasitic resistance and capacitance introduced during layout. Finally, the same architecture was implemented in Verilog and verified on an FPGA, ensuring functional correctness across abstraction levels.

Project Workflow

Circuit Design (NGspice)

Designed a 5-bit Carry Lookahead Adder using CMOS logic

Verified correct sum and carry generation through transient simulations

Layout Design (Magic VLSI)

Created full custom layout following design rules

Extracted parasitics (RC) from the layout

Pre- vs Post-Layout Analysis

Compared timing and waveform behavior

Observed delay variations due to layout parasitics

RTL Design & FPGA Verification

Implemented the same 5-bit CLA in Verilog

Simulated functionality using testbenches

Synthesized and verified on FPGA hardware

Key Learnings

Speed advantages of Carry Lookahead Adders over Ripple Carry Adders

Impact of layout-level parasitics on circuit performance

Correlation between transistor-level, RTL-level, and hardware behavior

End-to-end VLSI design flow from SPICE → Layout → RTL → FPGA

Tools Used

NGspice – Transistor-level design and simulation

Magic VLSI – Layout design and parasitic extraction

Verilog HDL – RTL modeling

FPGA Toolchain – Hardware synthesis and verification

This project demonstrates a full-stack digital VLSI design approach, bridging the gap between circuit-level design and real hardware implementation.
