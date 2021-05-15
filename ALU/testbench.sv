// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module alu_tb();
  wire out;
  reg E1, E2_b;
  reg [3:0] in1,in2;
  reg [2:0]sel;
  ALU UUT(E1, E2_b, in1, in2, sel, out);
  initial
    begin
      $monitor("%d: %d %d--> %d",sel, in1, in2, out);
      E1=0; E2_b=1; in1=10; in2=5;
      #2 sel=0;
      #2 sel=1;
      #2 sel=3;
      #2 sel=4;
      #2 sel=5;
      #2 sel=6;
      #2 sel=7;
      #500 $finish;
    end
endmodule