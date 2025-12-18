`timescale 1ns / 1ps
module DFF_CLA_5bit_tb;
  reg [4:0] A;
  reg [4:0] B;
  reg Cin;
  reg clk;
  reg reset;

  wire [4:0] Sum;
  wire Cout;

  DFF_CLA_5bit uut (
    .A(A), 
    .B(B), 
    .Cin(Cin), 
    .clk(clk), 
    .reset(reset), 
    .Sum(Sum), 
    .Cout(Cout)
  );

  always #5 clk = ~clk;

  initial begin
    $dumpfile("pipeline_wave.vcd");
    $dumpvars(0, DFF_CLA_5bit_tb);

    clk = 0;
    reset = 1;
    A = 0;
    B = 0;
    Cin = 0;
    #15;
    reset = 0;
    #4 A = 5'd1; B = 5'd2; Cin = 0;
    #8 A = 5'd10; B = 5'd5; Cin = 0;
    #6 A = 5'd15; B = 5'd15; Cin = 1;
    #3 A = 5'd31; B = 5'd1; Cin = 0;
    #4 A = 0; B = 0; Cin = 0;
    #10 $finish;
  end
endmodule