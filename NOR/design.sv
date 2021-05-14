// Code your design here
module NOR(output Y, input A,B);
  assign Y = ~(A||B);
endmodule