module game(input logic clk, n, s, e, w, reset, output logic s6, win, s5, d, s4, s3, sw, s2, s1, s0, v);
	 
    room room_1(.clk(clk), .n(n), .s(s), .e(e), .w(w), .reset(reset), .s6(s6), .win(win), .s5(s5), .d(d), .s4(s4), .s3(s3), .sw(sw), .s2(s2), .s1(s1), .s0(s0), .v(v));
    
    sword sword_1(.sw(sw), .reset(reset), .clk(clk), .v(v));

endmodule