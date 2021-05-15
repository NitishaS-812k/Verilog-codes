// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module dec2_4_tb ();
  reg a,b;
  wire y0,y1,y2,y3;
  dec2_4 UUT (a,b,y0,y1,y2,y3);
  initial begin
    $dumpfile("dec2_4_wave.vcd");
    $dumpvars(0, dec2_4_tb);
    $monitor("%d %d -> %d %d %d %d",a,b,y0,y1,y2,y3);
    #2 a=0; b=0;
    #2 b=1;
    #2 a=1; b=0;
    #2 b=1;
    #5 $finish;
  end
endmodule