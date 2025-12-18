`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2025 17:20:35
// Design Name: 
// Module Name: D_FF_5bit
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


module D_FF_5bit(
  input [4:0] D,
  input clk,
  output reg [4:0] Q
);
  always @(posedge clk) begin
      Q <= D;
  end
endmodule
