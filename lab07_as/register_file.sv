module register_file(
    input logic clk, rst,
    input logic[4:0] A1, A2, A3,  
    input logic[31:0] WD3,        
    input logic WE3,              
    output logic[31:0] RD1, RD2,  
    output logic[31:0] prode      
);

    logic[31:0] rf_regs[31:0];
    integer i;

    assign RD1 = rf_regs[A1];
    assign RD2 = rf_regs[A2];
    assign prode = rf_regs[1];    

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 32; i = i + 1) begin
                rf_regs[i] <= i;
            end
        end
        else begin
            if (WE3) begin
                rf_regs[A3] <= WD3;
            end
        end
    end
endmodule