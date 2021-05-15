module bit2_magnitude_comparator_(x,y,z,a,b);
  input a,b;
  output x,y,z;
  wire s,t;
  not n1(s,a);
  not n2(t,b);
  and x1(x,s,b);
  and x2(z,a,t);
  xnor x3(y,a,b);
  
endmodule 
