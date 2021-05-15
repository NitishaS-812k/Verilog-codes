// Code your design here
module OddPar_9bit (input [8:0] data, output parity);
  wire t;
  xor X1(t,data [0],data [1],data [2],data [3],data [4],data [5], data [6], data [7],data [8]);
  assign parity = ~t;
endmodule