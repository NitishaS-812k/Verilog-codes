// Code your design here
module encoder8_3(Eo, Din, En);
    input [7:0] Din;
    input En;
    output [2:0]Eo;
    
    reg [2:0]Eo;
    
    always @ ( En or Din)
    begin
        if (En)
        begin
            case (Din)
            8'o0: Eo = 3'b000;
            8'o1: Eo = 3'b001;
            8'o2: Eo = 3'b010;
            8'o3: Eo = 3'b011;
            8'o4: Eo = 3'b100;
            8'o5: Eo = 3'b101;
            8'o6: Eo = 3'b110;
            8'o7: Eo = 3'b111;
            default: $display("Error!");
            endcase
        end
    end
endmodule