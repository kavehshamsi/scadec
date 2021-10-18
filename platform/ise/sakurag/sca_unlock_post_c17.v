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
   /* Clock, Reset */
    input wire         M_CLK_OSC,
    // output wire        M_CLK_INH_B,
    inout wire         M_CLK_EXT0_P,
    // inout wire         M_CLK_EXT0_N,
    input wire         M_RESET_B,

   /* User LED */
    output wire [9:0]  M_LED,

   /* User Push Switch */
    // input wire [1:0]   M_PUSHSW,

   /* User DIP Switch */
    // input wire [7:0]   M_DIPSW,

   /* User Header Pin */
    inout wire [1:0]  M_HEADER,
    //inout wire         M_HEADER_CLK_P,
    inout wire         M_HEADER_CLK_N

   /* USB I/F (FT2232H) */
    // input wire         FTDI_BCBUS0_RXF_B,
    // input wire         FTDI_BCBUS1_TXE_B,
    // output wire        FTDI_BCBUS2_RD_B,
    // output wire        FTDI_BCBUS3_WR_B,
    // output wire        FTDI_BCBUS4_SIWUB,
    // input wire         FTDI_BCBUS5,
    // input wire         FTDI_BCBUS6,
    // output wire        FTDI_BCBUS7_PWRSAV_B,
    // inout wire [7:0]   FTDI_BDBUS_D,
    // input wire         FTDI_PWREN_B,
    // input wire         FTDI_SUSPEND_B,
    // output wire        M_FTDI_RESET_B,

   /* FPGA Interconnect */
    // inout wire [50:0]  MC_IC_D,

   /* Main FPGA Configuration */
    // output wire        M_CCLK_R0,
    // output wire        M_CSO_B,
    // output wire        M_D0_DIN_MISO,
    // input wire         M_D1,
    // input wire         M_D2,
    // input wire         M_D3,
    // input wire         M_D4,
    // input wire         M_D5,
    // input wire         M_D6,
    // input wire         M_D7,
    // output wire        M_DOUT_BUSY,
    // input wire         M_HSWAPEN,
    // output wire        M_INIT_B,
    // input wire         M_M0,
    // input wire         M_M1,
    // output wire        M_MOSI_CSI_B,
    // output wire        M_RDWR_B,

   /* Reserved I/O */
    // inout wire         M_RSVIO_0_P,
    // inout wire         M_RSVIO_0_N
   );

    parameter num_ins = 8;
    parameter num_outs = 2;

    wire clk, sda_top, sclk_top;
    assign clk = M_CLK_OSC;

    assign sda_top = M_HEADER[0];
    assign sclk_top = M_HEADER_CLK_N;
    wire flip_clk;
    assign flip_clk = M_CLK_EXT0_P;

    wire reset;
    assign reset = M_RESET_B;

    localparam integer num_ins_log2 = (`CLOG2(num_ins));
    localparam integer shift_reg_num_bytes = (num_ins_log2 / 8) + 1 + 2;
    localparam integer shift_reg_len = shift_reg_num_bytes * 8;
     
    wire [shift_reg_len-1:0] w_shift_reg;

    serial_receiver #(shift_reg_len) SR (sda_top, sclk_top, clk, reset, w_shift_reg);
    
    reg [num_ins-1:0] dut_inputs = 0;
    wire [num_outs-1:0] dut_outputs;
    
    // Design under test instantiation
    c17_xor dut(dut_inputs, dut_outputs);

    // connect leds
    assign M_LED = dut_outputs[`MIN(9, num_outs)-1:0];

    reg [16:0] flipbit_index = 0;
    
    reg [32:0] flip_freq_counter = 0;

    integer i;    
    // DUT controller
    always @(posedge flip_clk) begin
        if (~reset) begin
            flipbit_index <= 0;
            flip_freq_counter <= 0;
            dut_inputs <= 0;
        end
        
        flipbit_index <= w_shift_reg[15:0];
        dut_inputs[shift_reg_len - 17 : 0] <= w_shift_reg[shift_reg_len - 1: 16];
        
        flip_freq_counter <= flip_freq_counter + 1;
        if (flip_freq_counter == 10000000) begin
            flip_freq_counter <= 0;
            dut_inputs[flip_freq_counter] <= ~dut_inputs[flip_freq_counter];
        end
    end

endmodule


module serial_receiver 
#(
parameter data_len = 8
)(
    input wire sda,
    input wire sclk,
    input wire clk,
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


