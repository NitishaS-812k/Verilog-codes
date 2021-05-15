module gray_binary_(a,b,c,d,w,x,y,z);
  input w,x,y,z;
  output a,b,c,d;
  assign a = w;
  xor x1(b,w,x);
  xor x2(c,y,b);
  xor x3(d,c,z);
  
endmodule 
