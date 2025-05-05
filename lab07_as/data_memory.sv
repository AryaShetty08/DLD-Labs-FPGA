module data_memory(
    input logic clk, rst,
    input logic[31:0] A, //address
    input logic[31:0] WD, //input data
    input logic WE, //enable input
    output logic[31:0] RD,
    output logic[31:0] prode //to check the data in data memory
); //output data

logic[31:0] dm_regs[255:0];
integer i;

assign RD = dm_regs[A]; //read from address
assign prode = dm_regs[2]; //read from second register for pre lab

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        for (i = 0; i < 256; i = i + 1) begin
            dm_regs[i] <= i; // initialized to i
        end
    end
    else begin
        if (WE) begin 
            dm_regs[A] <= WD;
        end
    end
end

endmodule