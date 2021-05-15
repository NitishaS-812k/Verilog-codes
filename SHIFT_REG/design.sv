// Code your design here
module Shift_reg(q, data_in, clk, rst);
  input data_in, clk, rst;
  output reg q;
  reg d1,d2,d3;
  always @ (posedge clk)
    begin
      if (rst == 1) begin
        q <= 0; d1 <= 0; d2 <= 0; d3<=0;
      end
      else begin
        q <= d3; d3 <= d2; d2 <= d1; d1<= q;
      end
    end
endmodule