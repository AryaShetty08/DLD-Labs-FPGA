module ALU(
    input logic[31:0] SrcA,
    input logic[31:0] SrcB,
    input logic[2:0] ALUControl,
    output logic[31:0] ALUResult
);
    parameter ADD = 3'b010;  // ALUControl = 010 for ADD
    parameter SUB = 3'b110;  // ALUControl = 110 for SUB

    always_comb begin
        case (ALUControl)
            ADD: ALUResult = SrcA + SrcB;
            SUB: ALUResult = SrcA - SrcB;
            default: ALUResult = 32'b0;
        endcase
    end
endmodule