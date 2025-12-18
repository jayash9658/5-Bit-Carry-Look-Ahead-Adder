`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2025 17:21:21
// Design Name: 
// Module Name: CLA_5bit
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


module CLA_5bit(
  input [4:0] A,
  input [4:0] B,
  input Cin,
  output [4:0] S,
  output Cout
);
  wire [4:0] G, P;
  wire c1, c2, c3, c4;

  
  assign G = A & B;
  assign P = A ^ B;

 
  assign c1 = G[0] | (P[0] & Cin);
  
  assign c2 = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
  
  assign c3 = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
  
  assign c4 = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
  
  assign Cout = G[4] | (P[4] & G[3]) | (P[4] & P[3] & G[2]) | (P[4] & P[3] & P[2] & G[1]) | (P[4] & P[3] & P[2] & P[1] & G[0]) | (P[4] & P[3] & P[2] & P[1] & P[0] & Cin);

  assign S[0] = P[0] ^ Cin;
  assign S[1] = P[1] ^ c1;
  assign S[2] = P[2] ^ c2;
  assign S[3] = P[3] ^ c3;
  assign S[4] = P[4] ^ c4;

endmodule