////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sca_unlock_top_translate.v
// /___/   /\     Timestamp: Sat Jan 23 20:05:20 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -mhf -insert_glbl false -w -dir netgen/translate -ofmt verilog -sim sca_unlock_top.ngd sca_unlock_top_translate.v 
// Device	: 6slx9tqg144-2
// Input file	: sca_unlock_top.ngd
// Output file	: /home/kaveh/projects/scadobf/ise/xl9_cw/netgen/translate/sca_unlock_top_translate.v
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
  wire LED1_OBUF_BUFG_293;
  wire LED2_OBUF_294;
  wire H3_IBUF_295;
  wire H5_IBUF_296;
  wire H8_IBUF_297;
  wire H9_BUFGP;
  wire H4_OBUF_299;
  wire shift_out_data_int;
  wire H7_OBUF_301;
  wire LED3_OBUF_302;
  wire LED1_OBUF_314;
  wire \H9_BUFGP/IBUFG_292 ;
  X_ZERO   XST_GND (
    .O(LED3_OBUF_302)
  );
  sca_unlock   u0 (
    .flip_clk(H5_IBUF_296),
    .sca_reset(H3_IBUF_295),
    .sca_clk(LED1_OBUF_BUFG_293),
    .sca_data_in(LED2_OBUF_294),
    .shift_out_enable(H8_IBUF_297),
    .shift_out_clk(H9_BUFGP),
    .sca_data_out(H4_OBUF_299),
    .shift_out_data(shift_out_data_int)
  );
  X_LUT2 #(
    .INIT ( 4'hB ))
  Mmux_H711 (
    .ADR0(shift_out_data_int),
    .ADR1(H8_IBUF_297),
    .O(H7_OBUF_301)
  );
  X_BUF   H1_IBUF (
    .I(H1),
    .O(LED1_OBUF_314)
  );
  X_BUF   H2_IBUF (
    .I(H2),
    .O(LED2_OBUF_294)
  );
  X_BUF   H3_IBUF (
    .I(H3),
    .O(H3_IBUF_295)
  );
  X_BUF   H5_IBUF (
    .I(H5),
    .O(H5_IBUF_296)
  );
  X_BUF   H8_IBUF (
    .I(H8),
    .O(H8_IBUF_297)
  );
  X_CKBUF   LED1_OBUF_BUFG (
    .O(LED1_OBUF_BUFG_293),
    .I(LED1_OBUF_314)
  );
  X_IPAD #(
    .LOC ( "P138" ))
  H1_238 (
    .PAD(H1)
  );
  X_IPAD #(
    .LOC ( "P40" ))
  H9_239 (
    .PAD(H9)
  );
  X_IPAD #(
    .LOC ( "P139" ))
  H2_240 (
    .PAD(H2)
  );
  X_IPAD #(
    .LOC ( "P140" ))
  H3_241 (
    .PAD(H3)
  );
  X_IPAD #(
    .LOC ( "P142" ))
  H5_242 (
    .PAD(H5)
  );
  X_IPAD #(
    .LOC ( "P39" ))
  H8_243 (
    .PAD(H8)
  );
  X_OPAD #(
    .LOC ( "P43" ))
  LED1_244 (
    .PAD(LED1)
  );
  X_OPAD #(
    .LOC ( "P44" ))
  LED2_245 (
    .PAD(LED2)
  );
  X_OPAD #(
    .LOC ( "P45" ))
  LED3_246 (
    .PAD(LED3)
  );
  X_OPAD #(
    .LOC ( "P141" ))
  H4_247 (
    .PAD(H4)
  );
  X_OPAD #(
    .LOC ( "P38" ))
  H7_248 (
    .PAD(H7)
  );
  X_CKBUF   \H9_BUFGP/BUFG  (
    .I(\H9_BUFGP/IBUFG_292 ),
    .O(H9_BUFGP)
  );
  X_CKBUF   \H9_BUFGP/IBUFG  (
    .I(H9),
    .O(\H9_BUFGP/IBUFG_292 )
  );
  X_OBUF   LED1_OBUF (
    .I(LED1_OBUF_314),
    .O(LED1)
  );
  X_OBUF   LED2_OBUF (
    .I(LED2_OBUF_294),
    .O(LED2)
  );
  X_OBUF   LED3_OBUF (
    .I(LED3_OBUF_302),
    .O(LED3)
  );
  X_OBUF   H4_OBUF (
    .I(H4_OBUF_299),
    .O(H4)
  );
  X_OBUF   H7_OBUF (
    .I(H7_OBUF_301),
    .O(H7)
  );
endmodule

