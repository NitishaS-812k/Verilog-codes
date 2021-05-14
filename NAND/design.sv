// Code your design here
module NAND(output Y, input A,B);
  assign Y = ~(A&B);
endmodule