`include "D_FF_5bit.v"
`include "CLA_5bit.v"

module DFF_CLA_5bit(
  input [4:0] A,
  input [4:0] B,
  input Cin,
  input clk,
  input reset,
  output [4:0] Sum,
  output Cout
);

  wire [4:0] A_reg, B_reg;
  reg Cin_reg;

  wire [4:0] S_comb;
  wire Cout_comb;
  
  reg Cout_reg;

  D_FF_5bit input_reg_A (
    .D(A), 
    .clk(clk), 
    .reset(reset), 
    .Q(A_reg)
  );

  D_FF_5bit input_reg_B (
    .D(B), 
    .clk(clk), 
    .reset(reset), 
    .Q(B_reg)
  );

  always @(posedge clk or posedge reset) begin
    if (reset)
      Cin_reg <= 1'b0;
    else
      Cin_reg <= Cin;
  end

  CLA_5bit adder_inst (
    .A(A_reg), 
    .B(B_reg), 
    .Cin(Cin_reg), 
    .S(S_comb), 
    .Cout(Cout_comb)
  );

  D_FF_5bit output_reg_S (
    .D(S_comb), 
    .clk(clk), 
    .reset(reset), 
    .Q(Sum)
  );

  always @(posedge clk or posedge reset) begin
    if (reset)
      Cout_reg <= 1'b0;
    else
      Cout_reg <= Cout_comb;
  end

  assign Cout = Cout_reg;

endmodule