// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module half_adder_tb ();
  reg a,b;
  wire s,co;
  half_adder UUT (s,co,a,b);
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,half_adder_tb);
    $monitor("%d %d  -> %d %d",a,b,s,co);
    #2 a=0; b=0;
    #2 b=1;
    #2 a=1;b=0;
    #2 b =1;
    #5 $finish;
  end
endmodule