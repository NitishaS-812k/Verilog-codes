module demux1_4(a,b,c,d,x,y);
  input x,y;
  output a,b,c,d;
  wire s,t;
  not n1(t,x);
  not n2(s,y);
  and a1(a,t,s);
  and a2(b,t,y);
  and a1(c,x,s);
  and a2(d,x,y);
endmodule 
