module binary_gray_tb();
  reg w,x,y,z;
  wire a,b,c,d;
  
  binary_gray UUT(.c(c),.b(b), .a(a), .d(d), .w(w), .x(x), .y(y), .z(z));
  initial 
    begin
      $monitor("%d %d %d %d : %d %d %d %d",w,x,y,z,a,b,c,d);
      #2 w=0;x=0;y=0;z=0;
      #2 z=1;
      #2 y=1; z=0;
      #2 y=1; z=1;
      #2 x=1;
      #2 y=0; z=0;
      #2 w=1;
      #2 x=0; y=1;z=1;
      #2 x=1; y=0; z=1;
      #2 $finish;
 	 end
endmodule 
