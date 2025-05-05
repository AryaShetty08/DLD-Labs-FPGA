module MUX_ALUSrc(
    input logic[31:0] RD2, //from register file
    input logic[31:0] SignImm, 
    input logic ALUSrc,
    output logic[31:0] ALUSrc_out
);
    assign ALUSrc_out = ALUSrc ? SignImm : RD2;

endmodule