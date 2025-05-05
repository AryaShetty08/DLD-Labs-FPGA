module top(
    input logic clk, rst,
	 input logic[1:0] sw,
    output logic[31:0] ReadData,
    output logic[31:0] prode_data_memory,
    output logic[31:0] prode_register_file,
	 output logic[4:0] RegDst_out,
	 output logic[31:0] MemtoReg_out,
	 output logic[31:0] ALUResult,
	 output logic[31:0] ALUSrc_out,
    output logic[6:0] display_ledsource, //output for in-lab
    output logic[6:0] display_ledlwRF, //output for in-lab
    output logic[6:0] display_ledswDM //output for in-lab
);

	 logic [31:0] inst_0 = 32'b0;
    logic [31:0] inst_1 = 32'b010101_00000_00001_0000000000000101;  // Load Data_memory[5] to Register_File[1]
    //lw $2, 0($0)
    logic [31:0] inst_2 = 32'b010100_00000_01001_0000000000000010;  // Store Register_File[9] to Data_memory[2]
    //sw $2, 4($0)
    logic[31:0] inst_ex;
    assign inst_ex = (sw==1)? inst_1: (sw==2)? inst_2 : inst_0;
	 logic[31:0] SignImm;
	 logic[31:0] rd1, rd2;
	
    register_file r_f(
        .clk(clk),
        .rst(rst),
        .A1(inst_ex[25:21]),.A2(inst_ex[20:16]),.A3(RegDst_out), //rs, rt, write register
        .WD3(MemtoReg_out), //write data
        .WE3(inst_ex[26]),
        .RD1(rd1),
        .RD2(rd2),
        .prode(prode_register_file)
    );

    data_memory data_mem(
        .clk(clk),
        .rst(rst),
        .A(ALUResult), //address
        .WD(rd2),
        .WE(~inst_ex[26]),
        .RD(ReadData),
		  .prode(prode_data_memory)
    );

    sign_extend sign_ext(
        .Imm(inst_ex[15:0]),
        .SignImm(SignImm)
    );

    MUX_MemtoReg mux_memtoreg(
        .ALUResult(ALUResult),
        .RD(ReadData),
        .MUX_MemtoReg(inst_ex[26]),
        .MemtoReg_out(MemtoReg_out)
    );

    MUX_ALUSrc mux_alusrc(
        .RD2(rd2),
        .SignImm(SignImm),
        .ALUSrc(1),
        .ALUSrc_out(ALUSrc_out)
    );

    MUX_RegDst mux_regdst(
        .rt(inst_ex[20:16]),
        .rd(inst_ex[15:11]),
        .RegDst(0),
        .RegDst_out(RegDst_out)
    );

    ALU t1(
        .SrcA(rd1),
        .SrcB(ALUSrc_out),
        .ALUControl(3'b010), //always add for I
        .ALUResult(ALUResult)
    );

    display t2(.data_in(ReadData), 
    .segments(display_ledsource));
	 
	 display t3(.data_in(prode_register_file), 
    .segments(display_ledlwRF));

    display t4(.data_in(prode_data_memory), 
    .segments(display_ledswDM));




endmodule