.subckt d_flop Q D clk vdd gnd
.param Width_N = 10*LAMBDA
.param Width_P = 20*LAMBDA

M3 l1 D vdd vdd CMOSP W={Width_P} L={2*LAMBDA}
+ AS={5*Width_P*LAMBDA} PS={10*LAMBDA+2*Width_P}
+ AD={5*Width_P*LAMBDA} PD={10*LAMBDA+2*Width_P}
M2 X clk l1 vdd CMOSP W={Width_P} L={2*LAMBDA}
+ AS={5*Width_P*LAMBDA} PS={10*LAMBDA+2*Width_P}
+ AD={5*Width_P*LAMBDA} PD={10*LAMBDA+2*Width_P}
M1 X D gnd gnd CMOSN W={Width_N} L={2*LAMBDA}
+ AS={5*Width_N*LAMBDA} PS={10*LAMBDA+2*Width_N}
+ AD={5*Width_N*LAMBDA} PD={10*LAMBDA+2*Width_N}

M6 Y clk vdd vdd CMOSP W={Width_P} L={2*LAMBDA}
+ AS={5*Width_P*LAMBDA} PS={10*LAMBDA+2*Width_P}
+ AD={5*Width_P*LAMBDA} PD={10*LAMBDA+2*Width_P}
M5 Y X l2 gnd CMOSN W={Width_N} L={2*LAMBDA}
+ AS={5*Width_N*LAMBDA} PS={10*LAMBDA+2*Width_N}
+ AD={5*Width_N*LAMBDA} PD={10*LAMBDA+2*Width_N}
M4 l2 clk gnd gnd CMOSN W={Width_N} L={2*LAMBDA}
+ AS={5*Width_N*LAMBDA} PS={10*LAMBDA+2*Width_N}
+ AD={5*Width_N*LAMBDA} PD={10*LAMBDA+2*Width_N}

M9 Q_bar Y vdd vdd CMOSP W={Width_P} L={2*LAMBDA}
+ AS={5*Width_P*LAMBDA} PS={10*LAMBDA+2*Width_P}
+ AD={5*Width_P*LAMBDA} PD={10*LAMBDA+2*Width_P}
M8 Q_bar clk l3 gnd CMOSN W={Width_N} L={2*LAMBDA}
+ AS={5*Width_N*LAMBDA} PS={10*LAMBDA+2*Width_N}
+ AD={5*Width_N*LAMBDA} PD={10*LAMBDA+2*Width_N}
M7 l3 Y gnd gnd CMOSN W={Width_N} L={2*LAMBDA}
+ AS={5*Width_N*LAMBDA} PS={10*LAMBDA+2*Width_N}
+ AD={5*Width_N*LAMBDA} PD={10*LAMBDA+2*Width_N}

x1 Q Q_bar vdd gnd inv

.ends D_flipflop