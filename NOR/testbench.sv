// Code your testbench here
// or browse Examples

`timescale  1ns/1ns
module NOR_TB ();
 reg a,b;
 wire y;
 NOR UUT (y,a,b);

 initial begin
   $dumpfile("wave.vcd");
   $dumpvars(0,NOR_TB);
   $monitor("%d %d -> %d",a,b,y);
	#2 a=0; b=0; 
 	#2 b=1;
 	#2 a=1; b=0; 
 	#2 b=1;
    #5 $finish;
 end
endmodule
