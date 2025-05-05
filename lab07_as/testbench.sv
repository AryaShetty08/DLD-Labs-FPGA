module testbench();

    // Test signals
    logic clk, rst;
    logic [31:0] WriteData;      // From register file to data memory
    logic [31:0] ALUResult;      // ALU result/memory address
    logic [31:0] ReadData;       // Data read from memory
    logic [31:0] probe_register_file;
    logic [6:0] display_led;

    // Instantiate the top module
    top uut(
        .clk(clk),
        .rst(rst),
        .WriteData(WriteData),
        .ALUResult(ALUResult),
        .ReadData(ReadData),
        .probe_register_file(probe_register_file),
        .display_led(display_led)
    );

    // Reset generation
    initial begin
        rst = 1;                 // Start with reset active
        #50;                     // Wait 50 time units
        rst = 0;                 // Release reset
        #500;                    // Run simulation for 500 more time units
        $finish;                 // End simulation
    end

    // Clock generation
    initial begin
        clk = 0;
        forever #25 clk = ~clk;  // Toggle clock every 25 time units
    end

    // Monitor changes
    initial begin
        $monitor("Time=%0t rst=%b ALUResult=%h WriteData=%h ReadData=%h probe_reg=%h",
                 $time, rst, ALUResult, WriteData, ReadData, probe_register_file);
    end

    // Optional waveform dumping
    initial begin
        $dumpfile("top_test.vcd");
        $dumpvars(0, testbench);
    end

    // Test sequence
    initial begin
        // Wait for reset to complete
        @(negedge rst);
        @(posedge clk);

        // Test case 1: Let the load instruction execute
        repeat(3) @(posedge clk);

        // Test case 2: Let the store instruction execute
        repeat(3) @(posedge clk);

        // Add more specific test cases here
    end

endmodule

// Optional: Memory pre-loading module
module memory_init();
    initial begin
        // Pre-load data memory with test values if needed
        testbench.uut.data_mem.dm_regs[5] = 32'hABCD1234;  // Test data at address 5
        testbench.uut.data_mem.dm_regs[2] = 32'h00000000;  // Clear address 2
        
        // Pre-load register file with test values if needed
        testbench.uut.r_f.rf[6] = 32'h55555555;  // Test data in register 6
    end
endmodule