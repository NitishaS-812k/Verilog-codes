module rs_flipflop(input a, input b, input clk, output q);
  reg q;
  always@(posedge clk)
    case({a,b})
      2'b00 : q = q;
      2'b01 : q = 0;
      2'b10 : q = 1;
      2'b11 : q = ~q;
    endcase
endmodule
