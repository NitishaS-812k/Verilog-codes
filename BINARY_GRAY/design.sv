module binary_gray(a,b,c,d,w,x,y,z);
  input w,x,y,z;
  output a,b,c,d;
  xor x1(b,w,x);
  xor x2(c,y,x);
  xor x3(d,y,z);
  assign a = w;

endmodule 
