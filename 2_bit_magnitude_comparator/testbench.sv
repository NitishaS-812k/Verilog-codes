module bit2_magnitude_comparator_tb();
  wire x,y,z;
  reg a,b;
  
  bit2_magnitude_comparator_ UUT(.b(b), .a(a),.x(x), .y(y), .z(z));
  initial 
    begin
      $monitor("%d %d : %d %d %d ",a,b,x,y,z);
      #2 a=0;b=0;
      #2 b=1;
      #2 a=1; b=0;
      #2 b=1;
      #2 $finish;
 	 end
endmodule 
