module display(
    input logic[31:0] data_in,
    output logic[6:0] segments
);
    always_comb begin
        case(data_in[3:0])  // Only using lower 4 bits for display
            4'h0: segments = 7'b1000000;  // 0
            4'h1: segments = 7'b1111001;  // 1
            4'h2: segments = 7'b0100100;  // 2
            4'h3: segments = 7'b0110000;  // 3
            4'h4: segments = 7'b0011001;  // 4
            4'h5: segments = 7'b0010010;  // 5
            4'h6: segments = 7'b0000010;  // 6
            4'h7: segments = 7'b1111000;  // 7
            4'h8: segments = 7'b0000000;  // 8
            4'h9: segments = 7'b0010000;  // 9
            4'hA: segments = 7'b0001000;  // A
            4'hB: segments = 7'b0000011;  // b
            4'hC: segments = 7'b1000110;  // C
            4'hD: segments = 7'b0100001;  // d
            4'hE: segments = 7'b0000110;  // E
            4'hF: segments = 7'b0001110;  // F
            default: segments = 7'b1111111;
        endcase
    end
endmodule