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
    
    input wire H4, // flip_clk
    
    output wire H5, // flip_clk_out
    output wire H6, // xor_out
    output wire H7, // sca_data_out
    input wire H8 // xor_out_select
    );


    wire flip_clk;
    wire sca_clk;
    wire sca_data_in;
    wire sca_data_out;
    wire sca_reset;
    
    assign flip_clk = H4;
    
    assign sca_clk = H1;
    assign sca_data_in = H2;
    assign sca_reset = H3;
        
    //wire xor_out;
    //assign H5 = flip_clk;
    wire shift_out_out;
    wire mux_in;
    
    assign mux_in = H8;
    assign H6 = mux_in ? sca_reset : shift_out_out;
    assign H7 = sca_data_out;
    
    (* S = "true" *)(* keep_hierarchy = "yes" *)
    sca_unlock u0 (
        flip_clk,
        sca_reset,
        shift_out_out,
        sca_data_in,
        sca_data_out,
        mux_in,
        sca_clk
        );
         
    assign LED1 = sca_clk;
    assign LED2 = sca_data_in;
    assign LED3 = sca_reset;
    //assign LED3 = xor_out;
    
endmodule

module sca_unlock (
    input wire flip_clk,
    input wire reset,
    output wire shift_out_tip,
    input wire sca_data_in,
    output wire sca_data_out,
    input wire mux_in,
    input wire sca_clk
    );

    parameter num_ins = #NUM_INS;
    parameter num_outs = #NUM_OUTS;

    localparam integer shift_reg_len = num_ins * 2;

    wire [shift_reg_len-1:0] w_shift_reg;

    serial_receiver #(shift_reg_len) SR (sca_data_in, sca_data_out, sca_clk, reset, w_shift_reg);

    reg [num_ins-1:0] dut_inputs;
    //wire [num_outs-1:0] dut_outputs;
    reg [num_outs-1:0] shift_out;

    localparam integer num_instances = #NUM_COPY;
    wire [num_outs-1:0] dut_outputs [num_instances-1:0];
    genvar n;
    wire [num_instances-1:0] xor_outs;
    // Design under test instantiation
    for (n = 0; n < num_instances; n = n + 1) begin : dut_gen
        (* S = "true" *)(* keep_hierarchy = "yes" *) #CIR_NAME dut(dut_inputs, dut_outputs[n]);
        assign xor_outs[n] = ^dut_outputs[n];
    end
    
    assign xor_out = ^xor_outs;

    integer i, k;
    always @(*) begin
        for (i = 0; i < num_ins; i = i + 1) begin
            dut_inputs[i] <= w_shift_reg[num_ins + i] ? flip_clk : w_shift_reg[i];  
        end
    end
    
    assign shift_out_tip = xor_out;

//    always @(negedge sca_clk or negedge reset) begin
//        if (~reset) begin
//            shift_out <= 0;
//        end
//        else begin
//            shift_out_tip <= shift_out[num_outs - 1];
//            if (mux_in) begin
//                for (k = 0; k < num_outs - 1; k = k + 1) begin
//                    shift_out[k + 1] <= shift_out[k];
//                end                
//            end
//            else begin
//                shift_out <= dut_outputs[0];
//            end
//        end
//    end



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




