// Code your testbench here
// or browse Examples
module jk_ff_tb();
  reg j,k,clk;
  wire q;
  jk_ff UUT (j,k,clk,q);
  initial begin
    j <= 0; k <= 0;
    #2 clk <=0;
  end
  always #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("%d %d -> %d", j,k,q);
    #25 j <= 0; k <= 1;
    #25 j <= 0; k <= 0;
    #25 j <= 1; k <= 0;
    #25 j <= 0; k <= 0;
    #25 j <= 0; k <= 1;
    #500 $finish;
  end
endmodule
    
    
  