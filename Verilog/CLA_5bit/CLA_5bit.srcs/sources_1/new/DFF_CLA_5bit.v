`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2025 17:22:22
// Design Name: 
// Module Name: DFF_CLA_5bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DFF_CLA_5bit(
  input [4:0] A,
  input [4:0] B,
  input Cin,
  input clk,
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
    .Q(A_reg)
  );

  D_FF_5bit input_reg_B (
    .D(B), 
    .clk(clk), 
    .Q(B_reg)
  );

  always @(posedge clk) begin
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
    .Q(Sum)
  );

  always @(posedge clk) begin
      Cout_reg <= Cout_comb;
  end

  assign Cout = Cout_reg;

endmodule