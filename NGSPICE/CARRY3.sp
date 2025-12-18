.subckt carry3 C3 G2 P2 G1 P1 G0 vdd gnd
.param width_N={10*LAMBDA}
.param width_P_base={20*LAMBDA}

M1    C3_bar  G2      gnd     gnd     CMOSN W={width_N} L={LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2    C3_bar  P2      n1_nmos gnd     CMOSN W={width_N*3} L={LAMBDA}
+ AS={5*width_N*3*LAMBDA} PS={10*LAMBDA+2*3*width_N} AD={5*3*width_N*LAMBDA} PD={10*LAMBDA+2*3*width_N}
M3    n1_nmos G1      gnd     gnd     CMOSN W={width_N*2} L={LAMBDA}
+ AS={5*width_N*2*LAMBDA} PS={10*LAMBDA+2*2*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+2*2*width_N}
M4    n1_nmos P1      n2_nmos gnd     CMOSN W={width_N*3} L={LAMBDA}
+ AS={5*width_N*3*LAMBDA} PS={10*LAMBDA+2*3*width_N} AD={5*3*width_N*LAMBDA} PD={10*LAMBDA+2*3*width_N}
M5    n2_nmos G0      gnd     gnd     CMOSN W={width_N*3} L={LAMBDA}
+ AS={5*width_N*3*LAMBDA} PS={10*LAMBDA+2*3*width_N} AD={5*3*width_N*LAMBDA} PD={10*LAMBDA+2*3*width_N}

M6  n1_pmos G2      vdd     vdd     CMOSP W={width_P_base*3} L={LAMBDA}
+ AS={5*width_P_base*3*LAMBDA} PS={10*LAMBDA+2*3*width_P_base} AD={5*3*width_P_base*LAMBDA} PD={10*LAMBDA+2*3*width_P_base}
M7  C3_bar  P2      n1_pmos vdd     CMOSP W={width_P_base*2} L={LAMBDA}
+ AS={5*width_P_base*2*LAMBDA} PS={10*LAMBDA+2*2*width_P_base} AD={5*2*width_P_base*LAMBDA} PD={10*LAMBDA+2*2*width_P_base}
M8  n2_pmos G1      n1_pmos vdd     CMOSP W={width_P_base*3} L={LAMBDA}
+ AS={5*width_P_base*3*LAMBDA} PS={10*LAMBDA+2*3*width_P_base} AD={5*3*width_P_base*LAMBDA} PD={10*LAMBDA+2*3*width_P_base}
M9  C3_bar  P1      n2_pmos vdd     CMOSP W={width_P_base*3} L={LAMBDA}
+ AS={5*width_P_base*3*LAMBDA} PS={10*LAMBDA+2*3*width_P_base} AD={5*3*width_P_base*LAMBDA} PD={10*LAMBDA+2*3*width_P_base}
M10  C3_bar  G0      n2_pmos vdd     CMOSP W={width_P_base*3} L={LAMBDA}
+ AS={5*width_P_base*3*LAMBDA} PS={10*LAMBDA+2*3*width_P_base} AD={5*3*width_P_base*LAMBDA} PD={10*LAMBDA+2*3*width_P_base}

x_carry3 C3 C3_bar vdd gnd inv
.ends carry3