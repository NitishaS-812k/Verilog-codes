// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module encounter8_3_tb ();

    // Inputs
  reg [7:0] Din;
  reg En;
    
    // Outputs
  wire [2:0] Eo;
    
    // Instantiate the Unit Under Test (UUT)
  encoder8_3 uut(.Eo(Eo), 
                 .Din(Din), 
                 .En(En)
    );
    
    initial begin
      $monitor("%d -> %d", Din, Eo);
        Din = 8'o0;
        En = 1'b1;
        #10 Din = 8'o0;
        #10 Din = 8'o1;
        #10 Din = 8'o2;
        #10 Din = 8'o3;
        #10 Din = 8'o4;
        #10 Din = 8'o5;
        #10 Din = 8'o6;
        #10 Din = 8'o7;
    end
    
endmodule