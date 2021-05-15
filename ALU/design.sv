// Code your design here
module ALU (input E1,E2_bar, input [3:0] in1, in2, input [2:0] sel, output reg[3:0] out);
  always @ (*) begin
    if ( !E2_bar && E1)
      out <= 0;
    else begin
      case(sel)
        3'b000: out=in1 + in2;
        3'b001: out=in1 - in2;
        3'b010: out=in1 * in2;
        3'b011: out=in1 & in2;
        3'b100: out=in1 | in2;
        3'b101: out=in1 ^ in2;
        3'b110: out=! in1;
        3'b111: out=! in2;
        default: out=1'b0;
      endcase
    end
  end
endmodule 