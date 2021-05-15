'timescale 1ns/1ns
module counter_tb();
  reg clk, rstn;
  wire [3:0] out;
  counter UUT(.clk(clk), .rstn(rstn), .out(out));
  always #5 clk = ~clk;
  initial begin
    $monitor("%d", out);
    $dumpfile("dump1.vcd");
    $dumpvars(1);
    clk <= 0;
    rstn <= 0;
    #20 rstn <= 1;
    #500 $finish;
  end
endmodule