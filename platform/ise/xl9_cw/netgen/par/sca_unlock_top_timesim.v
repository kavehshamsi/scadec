////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sca_unlock_top_timesim.v
// /___/   /\     Timestamp: Sat Jan 23 20:16:10 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf sca_unlock_top.pcf -mhf -sdf_anno true -sdf_path netgen/par -insert_glbl false -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim sca_unlock_top.ncd sca_unlock_top_timesim.v 
// Device	: 6slx9tqg144-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: sca_unlock_top.ncd
// Output file	: /home/kaveh/projects/scadobf/ise/xl9_cw/netgen/par/sca_unlock_top_timesim.v
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
  wire H5_IBUF_0;
  wire H3_IBUF_0;
  wire LED1_OBUF_BUFG_1024;
  wire LED2_OBUF_0;
  wire H8_IBUF_0;
  wire H9_BUFGP;
  wire H4_OBUF_1028;
  wire shift_out_data_int;
  wire LED1_OBUF_0;
  wire H7_OBUF_1032;
  wire \H9_BUFGP/IBUFG_0 ;
  wire LED1_OBUF_983;
  wire LED2_OBUF_986;
  wire H3_IBUF_989;
  wire H5_IBUF_994;
  wire H8_IBUF_999;
  wire \H9_BUFGP/IBUFG_1002 ;
  wire \NlwBufferSignal_LED1_OBUF/I ;
  wire \NlwBufferSignal_LED2_OBUF/I ;
  wire \NlwBufferSignal_H4_OBUF/I ;
  wire \NlwBufferSignal_H7_OBUF/I ;
  wire \NlwBufferSignal_H9_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_LED1_OBUF_BUFG/IN ;
  initial $sdf_annotate("netgen/par/sca_unlock_top_timesim.sdf");
  sca_unlock   u0 (
    .flip_clk(H5_IBUF_0),
    .sca_reset(H3_IBUF_0),
    .sca_clk(LED1_OBUF_BUFG_1024),
    .sca_data_in(LED2_OBUF_0),
    .shift_out_enable(H8_IBUF_0),
    .shift_out_clk(H9_BUFGP),
    .sca_data_out(H4_OBUF_1028),
    .shift_out_data(shift_out_data_int)
  );
  X_OPAD #(
    .LOC ( "PAD138" ))
  LED1_304 (
    .PAD(LED1)
  );
  X_OBUF #(
    .LOC ( "PAD138" ))
  LED1_OBUF (
    .I(\NlwBufferSignal_LED1_OBUF/I ),
    .O(LED1)
  );
  X_OPAD #(
    .LOC ( "PAD137" ))
  LED2_307 (
    .PAD(LED2)
  );
  X_OBUF #(
    .LOC ( "PAD137" ))
  LED2_OBUF (
    .I(\NlwBufferSignal_LED2_OBUF/I ),
    .O(LED2)
  );
  X_OPAD #(
    .LOC ( "PAD136" ))
  LED3_310 (
    .PAD(LED3)
  );
  X_OBUF #(
    .LOC ( "PAD136" ))
  LED3_OBUF (
    .I(1'b0),
    .O(LED3)
  );
  X_IPAD #(
    .LOC ( "PAD7" ))
  H1_314 (
    .PAD(H1)
  );
  X_BUF #(
    .LOC ( "PAD7" ))
  H1_IBUF (
    .O(LED1_OBUF_983),
    .I(H1)
  );
  X_BUF #(
    .LOC ( "PAD7" ))
  \ProtoComp5.IMUX  (
    .I(LED1_OBUF_983),
    .O(LED1_OBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD6" ))
  H2_318 (
    .PAD(H2)
  );
  X_BUF #(
    .LOC ( "PAD6" ))
  H2_IBUF (
    .O(LED2_OBUF_986),
    .I(H2)
  );
  X_BUF #(
    .LOC ( "PAD6" ))
  \ProtoComp5.IMUX.1  (
    .I(LED2_OBUF_986),
    .O(LED2_OBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD5" ))
  H3_322 (
    .PAD(H3)
  );
  X_BUF #(
    .LOC ( "PAD5" ))
  H3_IBUF (
    .O(H3_IBUF_989),
    .I(H3)
  );
  X_BUF #(
    .LOC ( "PAD5" ))
  \ProtoComp5.IMUX.2  (
    .I(H3_IBUF_989),
    .O(H3_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD4" ))
  H4_325 (
    .PAD(H4)
  );
  X_OBUF #(
    .LOC ( "PAD4" ))
  H4_OBUF (
    .I(\NlwBufferSignal_H4_OBUF/I ),
    .O(H4)
  );
  X_IPAD #(
    .LOC ( "PAD3" ))
  H5_329 (
    .PAD(H5)
  );
  X_BUF #(
    .LOC ( "PAD3" ))
  H5_IBUF (
    .O(H5_IBUF_994),
    .I(H5)
  );
  X_BUF #(
    .LOC ( "PAD3" ))
  \ProtoComp5.IMUX.3  (
    .I(H5_IBUF_994),
    .O(H5_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD144" ))
  H7_332 (
    .PAD(H7)
  );
  X_OBUF #(
    .LOC ( "PAD144" ))
  H7_OBUF (
    .I(\NlwBufferSignal_H7_OBUF/I ),
    .O(H7)
  );
  X_IPAD #(
    .LOC ( "PAD143" ))
  H8_336 (
    .PAD(H8)
  );
  X_BUF #(
    .LOC ( "PAD143" ))
  H8_IBUF (
    .O(H8_IBUF_999),
    .I(H8)
  );
  X_BUF #(
    .LOC ( "PAD143" ))
  \ProtoComp5.IMUX.4  (
    .I(H8_IBUF_999),
    .O(H8_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD142" ))
  H9_340 (
    .PAD(H9)
  );
  X_BUF #(
    .LOC ( "PAD142" ))
  \H9_BUFGP/IBUFG  (
    .O(\H9_BUFGP/IBUFG_1002 ),
    .I(H9)
  );
  X_BUF #(
    .LOC ( "PAD142" ))
  \ProtoComp5.IMUX.5  (
    .I(\H9_BUFGP/IBUFG_1002 ),
    .O(\H9_BUFGP/IBUFG_0 )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y3" ))
  \H9_BUFGP/BUFG  (
    .I(\NlwBufferSignal_H9_BUFGP/BUFG/IN ),
    .O(H9_BUFGP)
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y2" ))
  LED1_OBUF_BUFG (
    .I(\NlwBufferSignal_LED1_OBUF_BUFG/IN ),
    .O(LED1_OBUF_BUFG_1024)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y10" ),
    .INIT ( 64'hFFFFFFFF0F0F0F0F ))
  Mmux_H711 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR5(shift_out_data_int),
    .ADR2(H8_IBUF_0),
    .O(H7_OBUF_1032)
  );
  X_BUF   \NlwBufferBlock_LED1_OBUF/I  (
    .I(LED1_OBUF_0),
    .O(\NlwBufferSignal_LED1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_LED2_OBUF/I  (
    .I(LED2_OBUF_0),
    .O(\NlwBufferSignal_LED2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_H4_OBUF/I  (
    .I(H4_OBUF_1028),
    .O(\NlwBufferSignal_H4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_H7_OBUF/I  (
    .I(H7_OBUF_1032),
    .O(\NlwBufferSignal_H7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_H9_BUFGP/BUFG/IN  (
    .I(\H9_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_H9_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_LED1_OBUF_BUFG/IN  (
    .I(LED1_OBUF_0),
    .O(\NlwBufferSignal_LED1_OBUF_BUFG/IN )
  );
endmodule

