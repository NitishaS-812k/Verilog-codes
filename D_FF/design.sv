// Code your design here
module D_Flip_flop ( q, data_in, clk, rst );
  input data_in, clk, rst;
  output reg q;
  always @ ( posedge clk )
    begin
      if (rst == 1)
        q = 0;
      else
        q = data_in;
    end
endmodule