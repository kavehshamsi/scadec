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
    inout wire         M_CLK_EXT0_N,
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
    inout wire         M_HEADER_CLK_N,

    /* USB I/F (FT2232H) */
    // input wire         FTDI_BCBUS0_RXF_B,
    // input wire         FTDI_BCBUS1_TXE_B,
    // output wire        FTDI_BCBUS2_RD_B,
    // output wire        FTDI_BCBUS3_WR_B,
    // output wire        FTDI_BCBUS4_SIWUB,
    // input wire         FTDI_BCBUS5,
    // input wire         FTDI_BCBUS6,
    // output wire        FTDI_BCBUS7_PWRSAV_B,
    inout wire [7:0]   FTDI_BDBUS
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

    reg flip_clk;
    reg [6:0] counter;
    always @(posedge M_CLK_OSC) begin
        if (counter == 16) begin
            counter <= 0;
            flip_clk <= ~flip_clk;
        end
        else begin
            counter <= counter + 1;
        end
    end
    
    //assign flip_clk = M_CLK_EXT0_P;
    assign M_CLK_EXT0_N = flip_clk;
    
    wire [9:0] leds;
    sca_unlock u0 (
        flip_clk,
        FTDI_BDBUS[2],
        leds,
        FTDI_BDBUS[0],
        FTDI_BDBUS[1]
        );
         
//   parameter num_instance = 100;
//   
//   wire [9:0] leds [num_instance -1 :0];
//   genvar i;
//   generate
//       for ( i = 0; i < num_instance; i = i+1 ) begin
//            sca_unlock u0 (   /* Clock, Reset */
//                //input wire         M_CLK_OSC,
//                // output wire        M_CLK_INH_B,
//                M_CLK_EXT0_P,
//                M_CLK_EXT0_N,
//                M_RESET_B,

//               /* User LED */
//                leds[i],
//                M_HEADER[1:0],
//                M_HEADER_CLK_N
//                );
//       end
//    endgenerate
    assign M_LED = leds;
endmodule

module sca_unlock (
    input wire flip_clk,
    input wire reset,
    output wire [9:0] M_LED,
    input wire sca_data,
    input wire sca_clk
    );

    parameter num_ins = 51;
    parameter num_outs = 7;

    localparam integer num_ins_log2 = (`CLOG2(num_ins));
    localparam integer shift_reg_num_bytes = (num_ins_log2 / 8) + 1 + 2;
    localparam integer shift_reg_len = shift_reg_num_bytes * 8;

    wire [shift_reg_len-1:0] w_shift_reg;

    serial_receiver #(shift_reg_len) SR (sca_data, sca_clk, reset, w_shift_reg);

    reg [num_ins-1:0] dut_inputs = 0;
    wire [num_outs-1:0] dut_outputs;
    reg [num_outs-1:0] r_dut_outputs = 0;

    // Design under test instantiation
    c432_xor15 dut(dut_inputs, dut_outputs);

    // connect leds
    (* keep = "true" *) wire flip_all_out;
    assign flip_all_out = ^dut_outputs[num_outs-1:0];
    assign M_LED[9] = 0;
    reg [15:0] flipbit_index = 0;
    //assign M_LED[8] = flip_clk;
    assign M_LED[7] = reset;
    assign M_LED[6] = sca_data;
    assign M_LED[5] = sca_clk;
    assign M_LED[4:0] = 0;
    
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




