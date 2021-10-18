/*------------------------------------------------------------------------
 Golden Top (.ucf) of Main FPGA on SAKURA-G (SAKURA-G-R1)

 Copyright (C) 2012,2013 MORITA TECH CO.,LTD.

 File name      : sakura_g_main_top.v
 Version        : 1.0
 Date           : Aug/19/2013
 Board Revision : SAKURA-G-R1
 ------------------------------------------------------------------------*/
`define CLOG2(x) \
((x <= 1) || (x > 512)) ? 0 : \
(x <= 2) ? 1 : \
(x <= 4) ? 2 : \
(x <= 8) ? 3 : \
(x <= 16) ? 4 : \
(x <= 32) ? 5 : \
(x <= 64) ? 6 : \
(x <= 128) ? 7: \
(x <= 256) ? 8: \
(x <= 512) ? 9 : 0

`define MAX(p,q) (p)>(q)?(p):(q)
`define MIN(p,q) (p)<(q)?(p):(q)


module sca_unlock_top
(
    input wire clk,
    input wire clk2,
    
    output wire LED1, // LED1
    output wire LED2, // LED2
    output wire LED3, // LED3

    input wire H1, // sca_clk 
    input wire H2, // sca_data
    input wire H3, // sca_reset
    
    input wire H4, // clk
    
    output wire H5, // flip_clk_out
    output wire H6 // xor_out
    );


    wire flip_clk;
    wire sca_clk;
    wire sca_data;
    wire sca_reset;
    
    assign flip_clk = H4;
    
    assign sca_clk = H1;
    assign sca_data = H2;
    assign sca_reset = H3;
        
    wire xor_out;
    assign H5 = flip_clk;

        
    sca_unlock u0 (
        flip_clk,
        sca_reset,
        xor_out,
        sca_data,
        sca_clk
        );

    assign H6 = xor_out;
         
    assign LED1 = sca_clk;
    assign LED2 = sca_data;
    assign LED3 = xor_out;
    
endmodule

module sca_unlock (
    input wire flip_clk,
    input wire reset,
    output wire xor_out,
    input wire sca_data,
    input wire sca_clk
    );

    parameter num_ins = #NUM_INS;
    parameter num_outs = #NUM_OUTS;

    localparam integer num_ins_log2 = (`CLOG2(num_ins));
    localparam integer shift_reg_num_bytes = (num_ins_log2 / 8) + 1 + 2;
    localparam integer shift_reg_len = shift_reg_num_bytes * 8;

    wire [shift_reg_len-1:0] w_shift_reg;

    serial_receiver #(shift_reg_len) SR (sca_data, sca_clk, reset, w_shift_reg);

    reg [num_ins-1:0] dut_inputs = 0;
    wire [num_outs-1:0] dut_outputs;
    reg [num_outs-1:0] r_dut_outputs = 0;

    // Design under test instantiation
    #CIR_NAME dut(dut_inputs, dut_outputs);

    // connect leds
    (* keep = "true" *) wire flip_all_out;
    assign xor_out = ^dut_outputs[num_outs-1:0];
    
    reg [15:0] flipbit_index = 0;

    
    integer i;    
    // DUT controller
    always @(posedge flip_clk or negedge reset) begin
        if (~reset) begin
            flipbit_index <= 0;
            dut_inputs <= 0;
        end
        else begin
            r_dut_outputs <= dut_outputs;
            for (i = 0; i < 16; i = i+1) begin
                flipbit_index[i] <= w_shift_reg[shift_reg_len - 1 - i];
            end
            dut_inputs[shift_reg_len - 17 : 0] <= w_shift_reg[shift_reg_len - 17: 0];
            dut_inputs[flipbit_index] <= ~dut_inputs[flipbit_index];
	      end
    end
endmodule


module serial_receiver 
    #(
    parameter data_len = 8
    )(
    input wire sda,
    input wire sclk,
    input wire reset,
    output wire [data_len-1 : 0] data_out
    );

    reg [data_len-1 : 0] shift_reg = 0;

    assign data_out = shift_reg;
    
    integer k;
    always @(negedge sclk or negedge reset) begin
        if (~reset) begin
            shift_reg <= 0;
        end
        else begin
            shift_reg[0] <= sda;
            for (k = 0; k < data_len - 1; k = k + 1) begin
                shift_reg[k + 1] <= shift_reg[k];
            end
        end
    end

endmodule




