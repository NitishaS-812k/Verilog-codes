// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module mux81_tb();
  wire out;
  reg D0, D1, D2, D3, D4, D5, D6, D7, D8;
  reg [2:0]sel;
  mux81 UUT(.D0(D0), .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5),.D6(D6), .D7(D7), .sel(sel), .out(out));
  initial
    begin
      $monitor("%d --> %d",sel, out);
      D0=1; D1=0; D2=0; D3=1; D4=0; D5=0; D6=0; D7=1;
      #2 sel=0;
      #2 sel=1;
      #2 sel=2;
      #2 sel=3;
      #2 sel=4;
      #2 sel=5;
      #2 sel=6;
      #2 sel=7;
      #1000 $finish;
    end
endmodule