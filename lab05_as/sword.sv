module sword (input logic sw, reset, clk, output logic v);

    logic next_s1, s1;
    
    assign next_s1 = (sw | s1) & ~reset;
    
    d_ff ff1 (.d(next_s1), .clk(clk), .q(s1));
    
    assign v = s1;

endmodule