// Code your testbench here
// or browse Examples
`timescale  1ns/1ns
module shift_tb ();
  reg clk,rst,d;
  wire q;
  
  Shift_reg UUT(q, d, clk, rst);
  initial begin 
    d<=1; #2 clk <= 0; #3 rst<=1; #6 rst<=0; 
  end
  always
    #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    #10 d=0;;
    #20 d=1;
    #30 d=1;
    #500 $finish;
  end
endmodule

