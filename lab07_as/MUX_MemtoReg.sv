module MUX_MemtoReg(
    input logic MUX_MemtoReg,
    input logic[31:0] ALUResult,
    input logic[31:0] RD, //from data memory
    output logic[31:0] MemtoReg_out
);

assign MemtoReg_out = MUX_MemtoReg ? RD : ALUResult;

endmodule