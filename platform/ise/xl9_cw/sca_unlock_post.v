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
    output wire LED1, // LED1
    output wire LED2, // LED2
    output wire LED3, // LED3

    input wire H1, // sca_clk 
    input wire H2, // sca_data_in
    input wire H3, // sca_reset
    output wire H4, // sca_data_out
        
    input wire H5, // flip_clk
    //output wire H6, // flip_clk_out
    
    output wire H7, // shift_out
    input wire H8, // shift_out_enable
    input wire H9 // shift_out_clk
    );

    wire sca_clk;
    wire sca_data_in;
    wire sca_reset;
    wire sca_data_out;
    wire flip_clk;
    wire shift_out_data;
    wire shift_out_enable;
    wire shift_out_clk;
    
    assign sca_clk = H1;
    assign sca_data_in = H2;
    assign sca_reset = H3;
    assign H4 = sca_data_out;
    assign flip_clk = H5; 
    //assign H6 = flip_clk;
    assign H7 = shift_out_data;
    assign shift_out_enable = H8;
    assign shift_out_clk = H9;
    
    wire shift_out_data_int;
    assign shift_out_data = shift_out_enable ? shift_out_data_int : 1'b1;
    
    (* S = "true" *)(* keep_hierarchy = "yes" *)
    sca_unlock u0 (
        flip_clk,
        sca_reset,
        
        sca_clk,
        sca_data_in,
        sca_data_out,
        
        shift_out_data_int,
        shift_out_enable,
        shift_out_clk
        );
         
    assign LED1 = sca_clk;
    assign LED2 = sca_data_in;
    assign LED3 = 1'b0;
    //assign LED3 = xor_out;
    
endmodule

module sca_unlock (
    input wire flip_clk,
    input wire sca_reset,
    
    input wire sca_clk,
    input wire sca_data_in,
    output wire sca_data_out,
    
    output wire shift_out_data,
    input wire shift_out_enable,
    input wire shift_out_clk
    );

    parameter num_ins = 46;
    parameter num_outs = 7;

    localparam integer shift_reg_len = num_ins * 2;

    wire [shift_reg_len-1:0] w_shift_reg;

    serial_receiver #(shift_reg_len) SR (sca_data_in, sca_data_out, sca_clk, sca_reset, w_shift_reg);

    reg [num_ins-1:0] dut_inputs;
    wire [num_outs-1:0] dut_outputs;

    (* S = "true" *)(* keep_hierarchy = "yes" *) c432_enc dut(dut_inputs, dut_outputs);    
//    localparam integer num_instances = 1;
//    wire [num_outs-1:0] dut_outputs [num_instances-1:0];
//    genvar n;
//    wire [num_instances-1:0] xor_outs;
//    // Design under test instantiation
//    for (n = 0; n < num_instances; n = n + 1) begin : dut_gen
//        (* S = "true" *)(* keep_hierarchy = "yes" *) c432_enc dut(dut_inputs, dut_outputs[n]);
//        assign xor_outs[n] = ^dut_outputs[n];
//    end
//    
//    assign xor_out = ^xor_outs;

//    wire [num_outs-1:0] dut_outputs;    
//    c432_enc dut(dut_inputs, dut_outputs);
//    assign xor_out = ^dut_outputs;

    integer i, k;
    always @(*) begin
        for (i = 0; i < num_ins; i = i + 1) begin
            dut_inputs[i] <= w_shift_reg[num_ins + i] ? flip_clk : w_shift_reg[i];  
        end
    end

    wire [num_outs-1 : 0] out_data;
    scan_chain #(num_outs) out_scan(1'b0, shift_out_data, shift_out_clk, shift_out_enable, sca_reset, dut_outputs, out_data);
    
endmodule


module scan_chain
    #(
    parameter len = 8
    )(
    input wire scan_in,
    output wire scan_out,
    input wire scan_clk,
    input wire scan_enable,
    input wire reset,
    input wire [len-1 : 0] par_in,
    output wire [len-1 : 0] par_out
    );
    
    reg [len-1 : 0] shift_reg;
    
    assign par_out = shift_reg;
    assign scan_out = shift_reg[len-1];
    integer k;
    always @(negedge scan_clk or negedge reset) begin
        if (~reset) begin
            shift_reg <= 0;
        end
        else begin
            if (scan_enable) begin
                shift_reg[0] <= scan_in;
                for (k = 0; k < len-1; k = k + 1) begin
                    shift_reg[k + 1] <= shift_reg[k];
                end
            end
            else begin
                shift_reg <= par_in;
            end
        end
    end 
    
endmodule


module serial_receiver 
    #(
    parameter data_len = 8
    )(
    input wire sda_in,
    output wire sda_out,
    input wire sclk,
    input wire reset,
    output wire [data_len-1 : 0] data_out
    );

    reg [data_len-1 : 0] shift_reg;

    assign data_out = shift_reg;
    assign sda_out = shift_reg[data_len-1];
    
    integer k;
    always @(negedge sclk or negedge reset) begin
        if (~reset) begin
            shift_reg <= 0;
        end
        else begin
            shift_reg[0] <= sda_in;
            for (k = 0; k < data_len - 1; k = k + 1) begin
                shift_reg[k + 1] <= shift_reg[k];
            end
        end
    end

endmodule




