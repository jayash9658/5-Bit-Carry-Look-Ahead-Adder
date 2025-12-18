.subckt xor2 Y A B vdd gnd
.param width_N={20*LAMBDA}
.param width_P={40*LAMBDA}

x_a A_bar A   vdd gnd inv
x_b B_bar B   vdd gnd inv

M1 n1 A vdd vdd CMOSP W={width_P} L={LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M2 n1 B vdd vdd CMOSP W={width_P} L={LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M3 Y A_bar n1 vdd CMOSP W={width_P} L={LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M4 Y B_bar n1 vdd CMOSP W={width_P} L={LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M5 Y A n2 gnd CMOSN W={width_N} L={LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M6 n2 B gnd gnd CMOSN W={width_N} L={LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M7 Y A_bar n3 gnd CMOSN W={width_N} L={LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M8 n3 B_bar gnd gnd CMOSN W={width_N} L={LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

.ends xor2