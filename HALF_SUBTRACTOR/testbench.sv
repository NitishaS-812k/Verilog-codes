// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module Half_Subtractor_2_tb;
  wire D, B;
  reg X, Y;
  Half_Subtractor UUT (D, B, X, Y);
  initial begin
    X = 0; Y = 0;
    #1  X = 0; Y = 1;
    #1  X = 1; Y = 0;
    #1  X = 1; Y = 1;
  end
  initial begin
    $monitor ("%t, X = %d| Y = %d| B = %d| D = %d", $time, X, Y, B, D);
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule