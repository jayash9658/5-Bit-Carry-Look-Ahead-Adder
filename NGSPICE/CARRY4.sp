.subckt carry4 C4 G3 P3 G2 P2 G1 P1 G0 vdd gnd
.param width_N={10*LAMBDA}
.param width_P_base={20*LAMBDA}

M1    C4_bar  G3      gnd     gnd     CMOSN W={width_N} L={LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2    C4_bar  P3      n1_nmos gnd     CMOSN W={width_N*4} L={LAMBDA}
+ AS={5*width_N*4*LAMBDA} PS={10*LAMBDA+2*4*width_N} AD={5*width_N*4*LAMBDA} PD={10*LAMBDA+2*4*width_N}
M3    n1_nmos G2      gnd     gnd     CMOSN W={width_N*2} L={LAMBDA}
+ AS={5*width_N*2*LAMBDA} PS={10*LAMBDA+2*2*width_N} AD={5*width_N*2*LAMBDA} PD={10*LAMBDA+2*2*width_N}
M4    n1_nmos P2      n2_nmos gnd     CMOSN W={width_N*4} L={LAMBDA}
+ AS={5*width_N*4*LAMBDA} PS={10*LAMBDA+2*4*width_N} AD={5*width_N*4*LAMBDA} PD={10*LAMBDA+2*4*width_N}
M5    n2_nmos G1      gnd     gnd     CMOSN W={width_N*3} L={LAMBDA}
+ AS={5*width_N*3*LAMBDA} PS={10*LAMBDA+2*3*width_N} AD={5*width_N*3*LAMBDA} PD={10*LAMBDA+2*3*width_N}
M6    n2_nmos P1      n3_nmos gnd     CMOSN W={width_N*4} L={LAMBDA}
+ AS={5*width_N*4*LAMBDA} PS={10*LAMBDA+2*4*width_N} AD={5*width_N*4*LAMBDA} PD={10*LAMBDA+2*4*width_N}
M7    n3_nmos G0      gnd     gnd     CMOSN W={width_N*4} L={LAMBDA}
+ AS={5*width_N*4*LAMBDA} PS={10*LAMBDA+2*4*width_N} AD={5*width_N*4*LAMBDA} PD={10*LAMBDA+2*4*width_N}

M8  n1_pmos G3      vdd     vdd     CMOSP W={width_P_base*4} L={LAMBDA}
+ AS={5*width_P_base*4*LAMBDA} PS={10*LAMBDA+2*4*width_P_base} AD={5*width_P_base*4*LAMBDA} PD={10*LAMBDA+2*4*width_P_base}
M9  C4_bar  P3      n1_pmos vdd     CMOSP W={width_P_base*2} L={LAMBDA}
+ AS={5*width_P_base*2*LAMBDA} PS={10*LAMBDA+2*2*width_P_base} AD={5*width_P_base*2*LAMBDA} PD={10*LAMBDA+2*2*width_P_base}
M10 n2_pmos G2      n1_pmos vdd     CMOSP W={width_P_base*4} L={LAMBDA}
+ AS={5*width_P_base*4*LAMBDA} PS={10*LAMBDA+2*4*width_P_base} AD={5*width_P_base*4*LAMBDA} PD={10*LAMBDA+2*4*width_P_base}
M11 C4_bar  P2      n2_pmos vdd     CMOSP W={width_P_base*3} L={LAMBDA}
+ AS={5*width_P_base*3*LAMBDA} PS={10*LAMBDA+2*3*width_P_base} AD={5*width_P_base*3*LAMBDA} PD={10*LAMBDA+2*3*width_P_base}
M12 n3_pmos G1      n2_pmos vdd     CMOSP W={width_P_base*4} L={LAMBDA}
+ AS={5*width_P_base*4*LAMBDA} PS={10*LAMBDA+2*4*width_P_base} AD={5*width_P_base*4*LAMBDA} PD={10*LAMBDA+2*4*width_P_base}
M13 C4_bar  P1      n3_pmos vdd     CMOSP W={width_P_base*4} L={LAMBDA}
+ AS={5*width_P_base*4*LAMBDA} PS={10*LAMBDA+2*4*width_P_base} AD={5*width_P_base*4*LAMBDA} PD={10*LAMBDA+2*4*width_P_base}
M14 C4_bar  G0      n3_pmos vdd     CMOSP W={width_P_base*4} L={LAMBDA}
+ AS={5*width_P_base*4*LAMBDA} PS={10*LAMBDA+2*4*width_P_base} AD={5*width_P_base*4*LAMBDA} PD={10*LAMBDA+2*4*width_P_base}

x_carry4 C4 C4_bar vdd gnd inv
.ends carry4
