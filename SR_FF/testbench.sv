module rs_flipflop_tb();
  wire q;
  reg a,b,clk;
  rs_flipflop UUT(.q(q),.a(a),.b(b),.clk(clk));
  initial begin
    a=0;b=0; #2 clk=0;
  end
  always 
    #25 clk = ~clk;
  initial begin
    $dumpfile("rsfp.vcd");
    $dumpvars;
    #25 a=0; b=1;
	#25 a=0; b=0;
	#25 a=1; b=0;
	#25 a=0; b=0;
	#25 a=0; b=1;
    #25 a=1; b=0;
	#250 $finish;
  end
endmodule

    
    
    
