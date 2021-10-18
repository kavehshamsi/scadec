////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: c432_xor8_sim.v
// /___/   /\     Timestamp: Thu Feb  6 11:02:09 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf sca_unlock_top.pcf -mhf -sdf_anno true -sdf_path netgen/par -insert_glbl false -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim sca_unlock_top.ncd sca_unlock_top_timesim.v 
// Device	: 6slx9tqg144-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: sca_unlock_top.ncd
// Output file	: /home/kaveh/projects/scadobf/ise/xl9_cw/netgen/par/sca_unlock_top_timesim.v
// # of Modules	: 3
// Design Name	: sca_unlock_top
// Module Name: c432_xor8
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

module c432_xor8 (
dut_inputs, dut_outputs
);
  input [43 : 0] dut_inputs;
  output [6 : 0] dut_outputs;
  wire out1110;
  wire out118_0;
  wire G296gat;
  wire N18_0;
  wire G224gat;
  wire out1111_414;
  wire out1112_0;
  wire out116_416;
  wire G349gat;
  wire n0168_0;
  wire G421gat8_419;
  wire G418gat;
  wire G411gat_421;
  wire G357gat;
  wire N01_0;
  wire xenc4;
  wire out121_425;
  wire out12;
  wire xenc0_0;
  wire xenc5;
  wire n0268;
  wire n0266;
  wire N6_0;
  wire G199gat;
  wire n0272;
  wire G417gat;
  wire N10_0;
  wire N12_0;
  wire G421gat1_438;
  wire N2;
  wire G421gat2_440;
  wire G421gat6_441;
  wire G421gat5_0;
  wire G421gat4_443;
  wire out143_444;
  wire out112_445;
  wire G236gat;
  wire xenc1;
  wire out113_448;
  wire xenc3_0;
  wire G239gat;
  wire N4;
  wire out115_452;
  wire out114_0;
  wire out11;
  wire out14;
  wire out142_456;
  wire out141_457;
  wire G233gat;
  wire G227gat;
  wire N14_0;
  wire G421gat7_461;
  wire N8;
  wire G247gat;
  wire G243gat;
  wire G251gat;
  wire N16_0;
  wire G421gat3_467;
  wire G230gat;
  wire out111_0;
  wire N14;
  wire xenc0;
  wire N10;
  wire N01;
  wire n0168;
  wire N18;
  wire out1112_151;
  wire N12;
  wire out118;
  wire N16;
  wire G421gat5_249;
  wire out114_285;
  wire xenc3;
  wire N6;
  wire out111_317;
  wire [4 : 4] NlwRenamedSig_OI_dut_outputs;
  assign
    dut_outputs[4] = NlwRenamedSig_OI_dut_outputs[4];
  initial $sdf_annotate("netgen/par/c432_xor8_sim.sdf");
  X_LUT6 #(
    .LOC ( "SLICE_X2Y43" ),
    .INIT ( 64'h00B000B0000000B0 ))
  out6 (
    .ADR2(dut_inputs[33]),
    .ADR3(N12_0),
    .ADR5(G357gat),
    .ADR1(dut_inputs[31]),
    .ADR0(G199gat),
    .ADR4(dut_inputs[36]),
    .O(G418gat)
  );
  X_BUF   \u0/dut_outputs<0><4>/u0/dut_outputs<0><4>_CMUX_Delay  (
    .I(N14),
    .O(N14_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y44" ),
    .INIT ( 64'hFFFFFFEEFFFFFFEE ))
  G430gat1 (
    .ADR2(1'b1),
    .ADR0(n0272),
    .ADR4(G417gat),
    .ADR1(n0266),
    .ADR3(n0268),
    .ADR5(1'b1),
    .O(NlwRenamedSig_OI_dut_outputs[4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y44" ),
    .INIT ( 32'hFFFF5050 ))
  G432gat_SW0 (
    .ADR2(G418gat),
    .ADR0(n0272),
    .ADR4(G417gat),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(N14)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y44" ),
    .INIT ( 64'h00000000CF450000 ))
  out2 (
    .ADR4(dut_inputs[20]),
    .ADR5(N6_0),
    .ADR3(G357gat),
    .ADR2(dut_inputs[18]),
    .ADR1(G199gat),
    .ADR0(dut_inputs[23]),
    .O(n0268)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y44" ),
    .INIT ( 64'hAAAAFEEEAAAAEFEE ))
  G432gat (
    .ADR4(n0268),
    .ADR3(xenc5),
    .ADR5(dut_inputs[2]),
    .ADR2(G411gat_421),
    .ADR1(N14_0),
    .ADR0(n0266),
    .O(dut_outputs[6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y43" ),
    .INIT ( 64'h7FFF5FFF77FF55FF ))
  G411gat (
    .ADR3(dut_inputs[42]),
    .ADR2(G357gat),
    .ADR5(dut_inputs[9]),
    .ADR1(G296gat),
    .ADR4(dut_inputs[43]),
    .ADR0(N01_0),
    .O(G411gat_421)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y43" ),
    .INIT ( 64'hFFFFF0F0F0F0FFFF ))
  G421gat7 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(G418gat),
    .ADR4(dut_inputs[2]),
    .ADR5(G411gat_421),
    .O(G421gat8_419)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y44" ),
    .INIT ( 64'hFFAAFFAAFFAAFFFB ))
  G431gat1 (
    .ADR5(G417gat),
    .ADR4(n0272),
    .ADR2(G418gat),
    .ADR1(xenc5),
    .ADR3(n0266),
    .ADR0(n0268),
    .O(dut_outputs[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y44" ),
    .INIT ( 64'hCC88CC888C888888 ))
  G421gat6 (
    .ADR1(dut_inputs[10]),
    .ADR3(G421gat5_0),
    .ADR5(G421gat6_441),
    .ADR4(G421gat1_438),
    .ADR2(dut_inputs[12]),
    .ADR0(G421gat4_443),
    .O(G421gat7_461)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y44" ),
    .INIT ( 64'hFFFFAAAAFFFFAA22 ))
  G421gat8 (
    .ADR2(1'b1),
    .ADR0(G421gat1_438),
    .ADR5(NlwRenamedSig_OI_dut_outputs[4]),
    .ADR3(G421gat8_419),
    .ADR1(xenc5),
    .ADR4(G421gat7_461),
    .O(dut_outputs[3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 64'h0A0F000002030000 ))
  out5 (
    .ADR4(dut_inputs[29]),
    .ADR2(N10_0),
    .ADR5(G357gat),
    .ADR3(dut_inputs[27]),
    .ADR0(G199gat),
    .ADR1(dut_inputs[32]),
    .O(n0272)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hA0F02030AAFF2233 ))
  out122 (
    .ADR4(dut_inputs[16]),
    .ADR1(dut_inputs[26]),
    .ADR2(dut_inputs[39]),
    .ADR5(dut_inputs[42]),
    .ADR0(dut_inputs[31]),
    .ADR3(dut_inputs[33]),
    .O(out121_425)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hFFFF75FFFFFF7575 ))
  G421gat1 (
    .ADR4(N2),
    .ADR3(G357gat),
    .ADR5(dut_inputs[14]),
    .ADR1(G199gat),
    .ADR2(dut_inputs[16]),
    .ADR0(dut_inputs[26]),
    .O(G421gat1_438)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'h0A0A8A8AAA0AAA8A ))
  G421gat5 (
    .ADR0(G357gat),
    .ADR1(dut_inputs[40]),
    .ADR4(G296gat),
    .ADR2(dut_inputs[26]),
    .ADR3(dut_inputs[16]),
    .ADR5(G199gat),
    .O(G421gat6_441)
  );
  X_BUF   \u0/dut_gen[0].dut/xenc1/u0/dut_gen[0].dut/xenc1_DMUX_Delay  (
    .I(xenc0),
    .O(xenc0_0)
  );
  X_BUF   \u0/dut_gen[0].dut/xenc1/u0/dut_gen[0].dut/xenc1_AMUX_Delay  (
    .I(N10),
    .O(N10_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'h9999999999999999 ))
  \Mxor_xenc1_xo<0>1  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR0(dut_inputs[29]),
    .ADR1(dut_inputs[1]),
    .ADR5(1'b1),
    .O(xenc1)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'h00FFAA55 ))
  \Mxor_xenc0_xo<0>1  (
    .ADR2(1'b1),
    .ADR3(dut_inputs[0]),
    .ADR4(dut_inputs[27]),
    .ADR0(dut_inputs[29]),
    .ADR1(1'b1),
    .O(xenc0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'h80FF80FF00FF80FF ))
  \Mxor_G236gat_xo<0>1  (
    .ADR0(xenc4),
    .ADR1(out121_425),
    .ADR2(out12),
    .ADR4(dut_inputs[10]),
    .ADR5(dut_inputs[8]),
    .ADR3(xenc0_0),
    .O(G236gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'h00000000DD000D00 ))
  out3 (
    .ADR3(dut_inputs[24]),
    .ADR5(N8),
    .ADR4(G357gat),
    .ADR0(dut_inputs[22]),
    .ADR1(G199gat),
    .ADR2(dut_inputs[28]),
    .O(G417gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'h5500550055005500 ))
  out3_SW0 (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(dut_inputs[25]),
    .ADR0(G296gat),
    .ADR5(1'b1),
    .O(N8)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'h55550000 ))
  out5_SW0 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(dut_inputs[30]),
    .ADR3(1'b1),
    .ADR0(G296gat),
    .O(N10)
  );
  X_BUF   \u0/dut_gen[0].dut/G247gat/u0/dut_gen[0].dut/G247gat_DMUX_Delay  (
    .I(n0168),
    .O(n0168_0)
  );
  X_BUF   \u0/dut_gen[0].dut/G247gat/u0/dut_gen[0].dut/G247gat_BMUX_Delay  (
    .I(N01),
    .O(N01_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y43" ),
    .INIT ( 64'hAA55FF00AA55FF00 ))
  \Mxor_G247gat_xo<0>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(G199gat),
    .ADR0(dut_inputs[39]),
    .ADR4(dut_inputs[42]),
    .ADR5(1'b1),
    .O(G247gat)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y43" ),
    .INIT ( 32'h0A050000 ))
  n01681 (
    .ADR1(1'b1),
    .ADR2(dut_inputs[43]),
    .ADR3(G199gat),
    .ADR0(dut_inputs[39]),
    .ADR4(dut_inputs[42]),
    .O(n0168)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y43" ),
    .INIT ( 64'hFF0F00F0FF0F00F0 ))
  \Mxor_G227gat_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(G199gat),
    .ADR3(dut_inputs[13]),
    .ADR2(dut_inputs[15]),
    .ADR5(1'b1),
    .O(G227gat)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y43" ),
    .INIT ( 32'hFFFF5555 ))
  G411gat_SW0 (
    .ADR1(1'b1),
    .ADR0(dut_inputs[39]),
    .ADR4(G199gat),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .O(N01)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y43" ),
    .INIT ( 64'hBFFFFBFFFBFFBFFF ))
  out1112 (
    .ADR4(n0168_0),
    .ADR2(dut_inputs[6]),
    .ADR5(G296gat),
    .ADR0(dut_inputs[9]),
    .ADR1(dut_inputs[42]),
    .ADR3(G247gat),
    .O(out1111_414)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 64'h00AA000A00220002 ))
  out1 (
    .ADR0(dut_inputs[15]),
    .ADR3(N4),
    .ADR4(G357gat),
    .ADR1(dut_inputs[13]),
    .ADR5(G199gat),
    .ADR2(dut_inputs[19]),
    .O(n0266)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 64'hA020000000000000 ))
  out123 (
    .ADR0(xenc4),
    .ADR5(out121_425),
    .ADR4(out12),
    .ADR2(xenc0_0),
    .ADR1(dut_inputs[10]),
    .ADR3(dut_inputs[8]),
    .O(G199gat)
  );
  X_BUF   \u0/dut_gen[0].dut/out143/u0/dut_gen[0].dut/out143_DMUX_Delay  (
    .I(out1112_151),
    .O(out1112_0)
  );
  X_BUF   \u0/dut_gen[0].dut/out143/u0/dut_gen[0].dut/out143_BMUX_Delay  (
    .I(N18),
    .O(N18_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 64'hF3F3FFFFF3F3FFFF ))
  out144 (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(dut_inputs[38]),
    .ADR1(dut_inputs[37]),
    .ADR4(G243gat),
    .ADR5(1'b1),
    .O(out143_444)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 32'hFF7BFFFF ))
  out1113 (
    .ADR0(G296gat),
    .ADR3(dut_inputs[41]),
    .ADR2(dut_inputs[38]),
    .ADR1(dut_inputs[37]),
    .ADR4(G243gat),
    .O(out1112_151)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 64'hB3BB333333333333 ))
  \Mxor_G243gat_xo<0>1  (
    .ADR4(xenc0_0),
    .ADR0(out121_425),
    .ADR5(out12),
    .ADR3(dut_inputs[10]),
    .ADR2(dut_inputs[8]),
    .ADR1(xenc4),
    .O(G243gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 64'hCCCC3C3CCCCC3C3C ))
  \Mxor_G224gat_xo<0>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(G199gat),
    .ADR4(dut_inputs[16]),
    .ADR2(dut_inputs[26]),
    .ADR5(1'b1),
    .O(G224gat)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 32'hFF0FFF0F ))
  out1111_SW0 (
    .ADR0(1'b1),
    .ADR3(dut_inputs[14]),
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(dut_inputs[26]),
    .O(N18)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y43" ),
    .INIT ( 64'hBFBFBFBF00BFBFBF ))
  out142 (
    .ADR0(dut_inputs[25]),
    .ADR1(dut_inputs[24]),
    .ADR2(G233gat),
    .ADR5(dut_inputs[40]),
    .ADR3(dut_inputs[26]),
    .ADR4(G224gat),
    .O(out141_457)
  );
  X_BUF   \u0/dut_gen[0].dut/out12/u0/dut_gen[0].dut/out12_AMUX_Delay  (
    .I(N12),
    .O(N12_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'h8CAF8CAF00008CAF ))
  out121 (
    .ADR5(dut_inputs[22]),
    .ADR4(dut_inputs[24]),
    .ADR0(dut_inputs[18]),
    .ADR2(dut_inputs[20]),
    .ADR1(dut_inputs[13]),
    .ADR3(dut_inputs[15]),
    .O(out12)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'h000050000C0C5000 ))
  G421gat2 (
    .ADR4(G199gat),
    .ADR2(G296gat),
    .ADR3(dut_inputs[16]),
    .ADR0(dut_inputs[8]),
    .ADR1(dut_inputs[40]),
    .ADR5(dut_inputs[11]),
    .O(G421gat2_440)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'h00AA00AA00AA00AA ))
  G421gat1_SW0 (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(dut_inputs[40]),
    .ADR3(G296gat),
    .ADR5(1'b1),
    .O(N2)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 32'h00F000F0 ))
  out6_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(dut_inputs[34]),
    .ADR4(1'b1),
    .ADR3(G296gat),
    .O(N12)
  );
  X_BUF   \u0/dut_gen[0].dut/xenc4/u0/dut_gen[0].dut/xenc4_DMUX_Delay  (
    .I(N16),
    .O(N16_0)
  );
  X_BUF   \u0/dut_gen[0].dut/xenc4/u0/dut_gen[0].dut/xenc4_BMUX_Delay  (
    .I(out118),
    .O(out118_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'h00CCFF3300CCFF33 ))
  \Mxor_xenc4_xo<0>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(dut_inputs[4]),
    .ADR3(dut_inputs[35]),
    .ADR1(dut_inputs[37]),
    .ADR5(1'b1),
    .O(xenc4)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 32'hC0CCC0CC ))
  \Mxor_xenc5_xo<0>_SW0  (
    .ADR0(1'b1),
    .ADR2(G199gat),
    .ADR4(1'b1),
    .ADR3(dut_inputs[35]),
    .ADR1(dut_inputs[37]),
    .O(N16)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'h8A00CF0075FF30FF ))
  \Mxor_xenc5_xo<0>  (
    .ADR5(dut_inputs[5]),
    .ADR3(N16_0),
    .ADR2(dut_inputs[38]),
    .ADR4(dut_inputs[41]),
    .ADR0(G357gat),
    .ADR1(G296gat),
    .O(xenc5)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'hCC66CC66CC66CC66 ))
  \Mxor_G251gat_xo<0>1  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(G199gat),
    .ADR3(dut_inputs[8]),
    .ADR0(dut_inputs[10]),
    .ADR5(1'b1),
    .O(G251gat)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 32'hF7FDF7FD ))
  out119 (
    .ADR4(1'b1),
    .ADR2(dut_inputs[12]),
    .ADR1(G199gat),
    .ADR3(dut_inputs[8]),
    .ADR0(dut_inputs[10]),
    .O(out118)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'hAAFFFFFF8ACFCFCF ))
  out141 (
    .ADR5(xenc1),
    .ADR1(dut_inputs[30]),
    .ADR2(G236gat),
    .ADR0(dut_inputs[11]),
    .ADR3(dut_inputs[10]),
    .ADR4(G251gat),
    .O(out14)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y43" ),
    .INIT ( 64'hD5D8DDDDE4EAEEEE ))
  out1111 (
    .ADR1(out118_0),
    .ADR0(G296gat),
    .ADR5(dut_inputs[11]),
    .ADR2(N18_0),
    .ADR4(G224gat),
    .ADR3(dut_inputs[40]),
    .O(out1110)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y43" ),
    .INIT ( 64'h5FFFDFFFFFFFFFFF ))
  G213gat1 (
    .ADR2(xenc4),
    .ADR5(out121_425),
    .ADR0(out12),
    .ADR1(dut_inputs[10]),
    .ADR4(dut_inputs[8]),
    .ADR3(xenc0_0),
    .O(dut_outputs[0])
  );
  X_BUF   \u0/dut_gen[0].dut/out115/u0/dut_gen[0].dut/out115_BMUX_Delay  (
    .I(G421gat5_249),
    .O(G421gat5_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 64'hBFFFEFFF00000000 ))
  out116 (
    .ADR5(out114_0),
    .ADR1(xenc3_0),
    .ADR4(G296gat),
    .ADR2(dut_inputs[33]),
    .ADR0(dut_inputs[36]),
    .ADR3(G239gat),
    .O(out115_452)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 64'hCCFF0C0CCCFF0C0C ))
  G421gat31 (
    .ADR0(1'b1),
    .ADR4(G199gat),
    .ADR1(G296gat),
    .ADR3(dut_inputs[11]),
    .ADR2(dut_inputs[8]),
    .ADR5(1'b1),
    .O(G421gat3_467)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 32'h000F000F ))
  G421gat4 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(dut_inputs[11]),
    .ADR2(dut_inputs[8]),
    .O(G421gat5_249)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 64'hAA0EAA0AFF0FAA0A ))
  G421gat3 (
    .ADR3(G357gat),
    .ADR2(dut_inputs[12]),
    .ADR0(G421gat2_440),
    .ADR4(G421gat3_467),
    .ADR5(dut_inputs[26]),
    .ADR1(dut_inputs[14]),
    .O(G421gat4_443)
  );
  X_BUF   \u0/dut_gen[0].dut/G233gat/u0/dut_gen[0].dut/G233gat_DMUX_Delay  (
    .I(out114_285),
    .O(out114_0)
  );
  X_BUF   \u0/dut_gen[0].dut/G233gat/u0/dut_gen[0].dut/G233gat_CMUX_Delay  (
    .I(N6),
    .O(N6_0)
  );
  X_BUF   \u0/dut_gen[0].dut/G233gat/u0/dut_gen[0].dut/G233gat_BMUX_Delay  (
    .I(xenc3),
    .O(xenc3_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 64'hF0F00FF0F0F00FF0 ))
  \Mxor_G233gat_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(G199gat),
    .ADR4(dut_inputs[22]),
    .ADR3(dut_inputs[24]),
    .ADR5(1'b1),
    .O(G233gat)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 32'hCFFFFCFF ))
  out115 (
    .ADR0(1'b1),
    .ADR1(dut_inputs[28]),
    .ADR2(G199gat),
    .ADR4(dut_inputs[22]),
    .ADR3(dut_inputs[24]),
    .O(out114_285)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 64'h0000FF000000FF00 ))
  out1_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(dut_inputs[17]),
    .ADR4(G296gat),
    .ADR5(1'b1),
    .O(N4)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 32'h0000CCCC ))
  out2_SW0 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(dut_inputs[21]),
    .ADR3(1'b1),
    .ADR4(G296gat),
    .O(N6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 64'hCCCC3C3CCCCC3C3C ))
  \Mxor_G239gat_xo<0>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(G199gat),
    .ADR4(dut_inputs[31]),
    .ADR2(dut_inputs[33]),
    .ADR5(1'b1),
    .O(G239gat)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 32'h40BF10EF ))
  \Mxor_xenc3_xo<0>1  (
    .ADR3(dut_inputs[3]),
    .ADR0(dut_inputs[34]),
    .ADR1(G199gat),
    .ADR4(dut_inputs[31]),
    .ADR2(dut_inputs[33]),
    .O(xenc3)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 64'hDFFFFFFFFFFFFFFF ))
  G319gat1 (
    .ADR3(out14),
    .ADR0(out143_444),
    .ADR1(n0168_0),
    .ADR4(out142_456),
    .ADR5(out141_457),
    .ADR2(xenc3_0),
    .O(dut_outputs[1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y43" ),
    .INIT ( 64'hDF7FFFFFFFFFFFFF ))
  G360gat1 (
    .ADR0(out1111_414),
    .ADR4(out1112_0),
    .ADR2(out116_416),
    .ADR5(out1110),
    .ADR1(dut_inputs[7]),
    .ADR3(G349gat),
    .O(dut_outputs[2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y44" ),
    .INIT ( 64'hFFAAFFAACC88CC88 ))
  out117 (
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(out11),
    .ADR0(out112_445),
    .ADR1(out113_448),
    .ADR5(out115_452),
    .O(out116_416)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y44" ),
    .INIT ( 64'h2000000080000000 ))
  out1114 (
    .ADR0(out1111_414),
    .ADR3(out1112_0),
    .ADR4(out116_416),
    .ADR2(out1110),
    .ADR5(dut_inputs[7]),
    .ADR1(G349gat),
    .O(G357gat)
  );
  X_BUF   \u0/dut_gen[0].dut/out112/u0/dut_gen[0].dut/out112_BMUX_Delay  (
    .I(out111_317),
    .O(out111_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 64'hFDFFFEFF00000000 ))
  out113 (
    .ADR5(out111_0),
    .ADR4(dut_inputs[30]),
    .ADR0(G296gat),
    .ADR3(G236gat),
    .ADR1(dut_inputs[32]),
    .ADR2(xenc1),
    .O(out112_445)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 64'hCC33CCCCCC33CCCC ))
  \Mxor_G230gat_xo<0>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(G199gat),
    .ADR3(dut_inputs[18]),
    .ADR4(dut_inputs[20]),
    .ADR5(1'b1),
    .O(G230gat)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 32'hF3FCFFFF ))
  out112 (
    .ADR0(1'b1),
    .ADR2(dut_inputs[23]),
    .ADR1(G199gat),
    .ADR3(dut_inputs[18]),
    .ADR4(dut_inputs[20]),
    .O(out111_317)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 64'hDFDF00DFDFDFDFDF ))
  out143 (
    .ADR4(dut_inputs[17]),
    .ADR5(dut_inputs[15]),
    .ADR3(G227gat),
    .ADR1(dut_inputs[21]),
    .ADR0(dut_inputs[20]),
    .ADR2(G230gat),
    .O(out142_456)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y44" ),
    .INIT ( 64'hBFFBEFFEFFFFFFFF ))
  G349gat1 (
    .ADR2(G199gat),
    .ADR3(dut_inputs[13]),
    .ADR0(dut_inputs[19]),
    .ADR4(dut_inputs[17]),
    .ADR1(G296gat),
    .ADR5(dut_inputs[15]),
    .O(G349gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y44" ),
    .INIT ( 64'h33CC314C33CC33CC ))
  out114 (
    .ADR1(G296gat),
    .ADR3(dut_inputs[25]),
    .ADR2(xenc3_0),
    .ADR0(dut_inputs[33]),
    .ADR4(dut_inputs[36]),
    .ADR5(G239gat),
    .O(out113_448)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 64'h0800000000000000 ))
  out145 (
    .ADR4(out14),
    .ADR3(out143_444),
    .ADR0(out142_456),
    .ADR2(n0168_0),
    .ADR5(out141_457),
    .ADR1(xenc3_0),
    .O(G296gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 64'h00FFFF0000F7FD00 ))
  out111 (
    .ADR4(G296gat),
    .ADR3(dut_inputs[21]),
    .ADR1(dut_inputs[30]),
    .ADR0(G236gat),
    .ADR2(dut_inputs[32]),
    .ADR5(xenc1),
    .O(out11)
  );
endmodule

