module alu (input [31:0] srca,
            input [31:0] srcb,
            input [2:0] alucontrol,
            output reg [31:0] aluout,
            output zero);

    // Can i assume this is going to be sequential, or is there 
    // a chance I have a glitch where the alout is not 0 and the 
    // appropriate flag doesn't get set?
    assign zero = (aluout == 0);

    always @ (*)
        case (alucontrol)
            3'b000: aluout <= srca & srcb; // AND 
            3'b001: aluout <= srca | srcb; // OR
            3'b010: aluout <= srca + srcb; // ADD 
            // 3'b011 DNE
            // 3'b100 DNE
            // 3'b101 DNE 
            3'b110: aluout <= srca - srcb; // AND 
            3'b111: aluout <= srca < srcb; // SET LESS THAN
            default: aluout <= 32'bx;
        endcase


endmodule