////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sca_unlock_top_synthesis.v
// /___/   /\     Timestamp: Sat Jan 23 20:14:51 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -mhf -insert_glbl false -w -dir netgen/synthesis -ofmt verilog -sim sca_unlock_top.ngc sca_unlock_top_synthesis.v 
// Device	: xc6slx9-2-tqg144
// Input file	: sca_unlock_top.ngc
// Output file	: /home/kaveh/projects/scadobf/ise/xl9_cw/netgen/synthesis/sca_unlock_top_synthesis.v
// # of Modules	: 3
// Design Name	: sca_unlock_top
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module sca_unlock_top (
  H1, H2, H3, H5, H8, H9, LED1, LED2, LED3, H4, H7
);
  input H1;
  input H2;
  input H3;
  input H5;
  input H8;
  input H9;
  output LED1;
  output LED2;
  output LED3;
  output H4;
  output H7;
  wire LED1_OBUF_BUFG_290;
  wire LED2_OBUF_291;
  wire H3_IBUF_292;
  wire H5_IBUF_293;
  wire H8_IBUF_294;
  wire H9_BUFGP_295;
  wire H4_OBUF_296;
  wire shift_out_data_int;
  wire H7_OBUF_298;
  wire LED3_OBUF_299;
  wire LED1_OBUF_311;
  GND   XST_GND (
    .G(LED3_OBUF_299)
  );
  sca_unlock   u0 (
    .flip_clk(H5_IBUF_293),
    .sca_reset(H3_IBUF_292),
    .sca_clk(LED1_OBUF_BUFG_290),
    .sca_data_in(LED2_OBUF_291),
    .shift_out_enable(H8_IBUF_294),
    .shift_out_clk(H9_BUFGP_295),
    .sca_data_out(H4_OBUF_296),
    .shift_out_data(shift_out_data_int)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  Mmux_H711 (
    .I0(shift_out_data_int),
    .I1(H8_IBUF_294),
    .O(H7_OBUF_298)
  );
  IBUF   H1_IBUF (
    .I(H1),
    .O(LED1_OBUF_311)
  );
  IBUF   H2_IBUF (
    .I(H2),
    .O(LED2_OBUF_291)
  );
  IBUF   H3_IBUF (
    .I(H3),
    .O(H3_IBUF_292)
  );
  IBUF   H5_IBUF (
    .I(H5),
    .O(H5_IBUF_293)
  );
  IBUF   H8_IBUF (
    .I(H8),
    .O(H8_IBUF_294)
  );
  OBUF   LED1_OBUF (
    .I(LED1_OBUF_311),
    .O(LED1)
  );
  OBUF   LED2_OBUF (
    .I(LED2_OBUF_291),
    .O(LED2)
  );
  OBUF   LED3_OBUF (
    .I(LED3_OBUF_299),
    .O(LED3)
  );
  OBUF   H4_OBUF (
    .I(H4_OBUF_296),
    .O(H4)
  );
  OBUF   H7_OBUF (
    .I(H7_OBUF_298),
    .O(H7)
  );
  BUFG   LED1_OBUF_BUFG (
    .O(LED1_OBUF_BUFG_290),
    .I(LED1_OBUF_311)
  );
  BUFGP   H9_BUFGP (
    .I(H9),
    .O(H9_BUFGP_295)
  );
endmodule

