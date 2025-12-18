module D_FF_5bit(
  input [4:0] D,
  input clk,
  input reset,
  output reg [4:0] Q
);
  always @(posedge clk or posedge reset) begin
    if (reset)
      Q <= 5'b00000;
    else
      Q <= D;
  end
endmodule