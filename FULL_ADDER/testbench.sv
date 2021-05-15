// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module fadder_tb ();
  reg a,b,c;
  wire s,co;
  full_adder UUT (s,co,a,b,c);
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,fadder_tb);
    $monitor("%d %d %d -> %d %d",a,b,c,s,co);
    #2 a=0; b=0; c=0;
    #2 c=1;
    #2 b=1; c=0;
    #2 c=1;
    #5 $finish;
  end
endmodule