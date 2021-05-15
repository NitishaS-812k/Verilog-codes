module demux1_4_tb();
  reg x,y;
  wire a,b,c,d;
  
  demux1_4 UUT(.c(c),.b(b), .a(a), .d(d), .x(x), .y(y));
  initial 
    begin
      $monitor("%d %d : %d %d %d %d",x,y,a,b,c,d);
    	#2 x=0;y=0;
		#2 y=1;
		#2 x=1; y=0;
		#2 y=1;
		#2 $finish;
 	 end
endmodule 
