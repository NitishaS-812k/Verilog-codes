// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module OddPar_9bit_tb ();
  reg [8:0] d;
  wire p;
  OddPar_9bit UUT (d,p);
  initial begin
    $dumpfile("oddpar_wave.vcd");
    $dumpvars(0, OddPar_9bit_tb);
    $monitor("%d %d %d %d %d %d %d %d %d ->%d",d[0],d[1],d[2],d[3],d[4],d[5],d[6],d[7],d[8],p);
    #2 d=256;
    #2 d=357;
    #5 $finish;
  end
endmodule