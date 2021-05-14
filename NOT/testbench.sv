// Code your testbench here
// or browse Examples

`timescale  1ns/1ns
module NOT_TB ();
 reg a;
 wire y;
 NOT UUT (y,a);

 initial begin
   $dumpfile("wave.vcd");
   $dumpvars(0,NOT_TB);
   $monitor("%d  -> %d",a,y);
	#2 a=0; 
 	#2 a=1;
    #5 $finish;
 end
endmodule
