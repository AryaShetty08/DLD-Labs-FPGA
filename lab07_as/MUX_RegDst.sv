module MUX_RegDst(
    input logic[4:0] rt,
    input logic[4:0] rd,
    input logic RegDst,
    output logic[4:0] RegDst_out
);

assign RegDst_out = RegDst ? rd : rt;

endmodule