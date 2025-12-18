.subckt and2 Y A B vdd gnd
.param width_N={20*LAMBDA}
.param width_P={20*LAMBDA}

M1 Y_bar A n1 gnd CMOSN W={width_N} L={LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 n1 B gnd gnd CMOSN W={width_N} L={LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M3 Y_bar A vdd vdd CMOSP W={width_P} L={LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M4 Y_bar B vdd vdd CMOSP W={width_P} L={LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

x_and2 Y Y_bar vdd gnd inv
.ends and2

