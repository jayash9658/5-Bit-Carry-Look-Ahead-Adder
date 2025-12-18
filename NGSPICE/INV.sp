.subckt inv Vout Vin vdd gnd
.param width_N={10*LAMBDA}
.param width_P={20*LAMBDA}
M1      Vout       Vin       gnd     gnd  CMOSN   W={width_N}   L={LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2      Vout       Vin       vdd     vdd  CMOSP   W={width_P}   L={LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv 
