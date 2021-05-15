// Code your design here
module Full_Subtractor(output D, B, input X, Y, Z);
  assign D = X ^ Y ^ Z;
  assign B = ~X & (Y^Z) | Y & Z;
endmodule