.subckt carry2 C2 G1 P1 G0 vdd gnd
.param width_N={10*LAMBDA}
.param width_P={40*LAMBDA}

M1 C2_bar G1 n1 vdd CMOSP W={width_P} L={LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M2 n1 P1 vdd vdd CMOSP W={width_P} L={LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M3 n1 G0 vdd vdd CMOSP W={width_P} L={LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M4 C2_bar G1 gnd gnd CMOSN W={width_N} L={LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M5 C2_bar P1 n2 gnd CMOSN W={width_N*2} L={LAMBDA}
+ AS={5*width_N*2*LAMBDA} PS={10*LAMBDA+2*2*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+2*2*width_N}
M6 n2 G0 gnd gnd CMOSN W={width_N*2} L={LAMBDA}
+ AS={5*width_N*2*LAMBDA} PS={10*LAMBDA+2*2*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+2*2*width_N}

x_carry2 C2 C2_bar vdd gnd inv
.ends carry2
