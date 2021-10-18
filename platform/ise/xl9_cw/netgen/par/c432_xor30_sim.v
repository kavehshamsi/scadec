////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: c432_xor30_sim.v
// /___/   /\     Timestamp: Wed Feb 12 01:13:45 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf sca_unlock_top.pcf -mhf -sdf_anno true -sdf_path netgen/par -insert_glbl false -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim sca_unlock_top.ncd sca_unlock_top_timesim.v 
// Device	: 6slx9tqg144-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: sca_unlock_top.ncd
// Output file	: /home/kaveh/projects/scadobf/ise/xl9_cw/netgen/par/sca_unlock_top_timesim.v
// # of Modules	: 3
// Design Name	: sca_unlock_top
// Module Name: c432_xor30
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

module c432_xor30 (
dut_inputs, dut_outputs
);
  input [65 : 0] dut_inputs;
  output [6 : 0] dut_outputs;
  wire G360gat1_760;
  wire xenc4;
  wire N34;
  wire xenc23;
  wire out163_764;
  wire G360gat10_765;
  wire G360gat36;
  wire G360gat37;
  wire xenc0;
  wire xenc171_769;
  wire G419gat;
  wire G420gat;
  wire N16;
  wire G418gat;
  wire n0290;
  wire n0294;
  wire n0288;
  wire G199gat;
  wire G154gat;
  wire G351gat;
  wire G360gat5_780;
  wire N97_0;
  wire N12;
  wire G360gat7_783;
  wire G360gat31;
  wire n0186;
  wire G360gat35;
  wire G360gat32;
  wire xenc16;
  wire G360gat11_789;
  wire N82_0;
  wire N4;
  wire N88_0;
  wire N6;
  wire G360gat8_794;
  wire N91_0;
  wire G360gat9_796;
  wire n0190;
  wire G360gat33;
  wire N10;
  wire N01;
  wire N56;
  wire xenc8;
  wire N45;
  wire out172_804;
  wire out171_805;
  wire out17;
  wire N28;
  wire N96;
  wire G354gat;
  wire N2;
  wire out16;
  wire out161_812;
  wire N20;
  wire N84;
  wire N74;
  wire out91;
  wire N38;
  wire N50;
  wire xenc27;
  wire xenc26;
  wire N39;
  wire N61;
  wire G360gat3_823;
  wire N26;
  wire xenc10;
  wire N58;
  wire N32;
  wire N14_0;
  wire out1631;
  wire out1632;
  wire G360gat2_831;
  wire xenc6;
  wire N22;
  wire N87;
  wire N24;
  wire N90;
  wire N73;
  wire xenc28;
  wire N63;
  wire N101;
  wire G233gat;
  wire N76;
  wire N108;
  wire N93;
  wire N94_0;
  wire N85_0;
  wire N60;
  wire N102;
  wire N104;
  wire N52;
  wire N36;
  wire N18;
  wire N81_0;
  wire N99;
  wire N77;
  wire G360gat6_856;
  wire N109;
  wire N106;
  wire N8;
  wire N64;
  wire N30;
  wire N71;
  wire N122;
  wire N94;
  wire N115;
  wire N85;
  wire N114;
  wire N82;
  wire N112;
  wire N81;
  wire N124;
  wire N97;
  wire N14;
  wire N120;
  wire N91;
  wire N118;
  wire N88;
  wire \NLW_N0_5.D6LUT_O_UNCONNECTED ;
  wire \NLW_N1.C6LUT_O_UNCONNECTED ;
  wire \NLW_N0_2.D6LUT_O_UNCONNECTED ;
  wire \NLW_N0.D6LUT_O_UNCONNECTED ;
  wire \NLW_N0_6.D6LUT_O_UNCONNECTED ;
  wire \NLW_N0_4.D6LUT_O_UNCONNECTED ;
  wire \NLW_N0_3.D6LUT_O_UNCONNECTED ;
  wire [2 : 2] NlwRenamedSig_OI_dut_outputs;
  assign
    dut_outputs[2] = NlwRenamedSig_OI_dut_outputs[2];
  initial $sdf_annotate("netgen/par/c432_xor30_sim.sdf");
  X_LUT6 #(
    .LOC ( "SLICE_X2Y39" ),
    .INIT ( 64'hA5A5AAAAA5A5AAAA ))
  out8_SW0 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR0(dut_inputs[1]),
    .ADR4(dut_inputs[61]),
    .ADR2(G199gat),
    .O(N4)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y37" ),
    .INIT ( 64'hF0F0FFFFF0F0FFFF ))
  xenc171_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(G199gat),
    .ADR4(dut_inputs[38]),
    .O(N01)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y40" ),
    .INIT ( 64'h00FF00FF00000000 ))
  out163_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(dut_inputs[44]),
    .ADR5(dut_inputs[46]),
    .O(N50)
  );
  X_BUF   \u0/dut/n0294/u0/dut/n0294_CMUX_Delay  (
    .I(N94),
    .O(N94_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X4Y33" ))
  G360gat12_SW9 (
    .IA(1'b0),
    .IB(N122),
    .O(N94),
    .SEL(N10)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'h0000000000000000 ))
  \N0_5.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0_5.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'hA9FFA6FF00000000 ))
  G360gat12_SW9_G (
    .ADR3(dut_inputs[54]),
    .ADR5(dut_inputs[51]),
    .ADR4(dut_inputs[13]),
    .ADR0(dut_inputs[21]),
    .ADR1(G351gat),
    .ADR2(G360gat5_780),
    .O(N122)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'hCDCE0000C8C40000 ))
  out5 (
    .ADR4(N26),
    .ADR1(N93),
    .ADR3(G354gat),
    .ADR0(dut_inputs[11]),
    .ADR2(G360gat11_789),
    .ADR5(N94_0),
    .O(n0294)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'hD0DDD0DD00000000 ))
  G360gat12_SW8 (
    .ADR4(1'b1),
    .ADR5(dut_inputs[51]),
    .ADR2(G199gat),
    .ADR3(dut_inputs[49]),
    .ADR0(dut_inputs[54]),
    .ADR1(dut_inputs[21]),
    .O(N93)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'hB333333333333333 ))
  out2_SW1 (
    .ADR1(dut_inputs[43]),
    .ADR3(out172_804),
    .ADR4(out171_805),
    .ADR0(xenc4),
    .ADR5(xenc16),
    .ADR2(out17),
    .O(N24)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'hD555555555555555 ))
  out5_SW1 (
    .ADR0(dut_inputs[52]),
    .ADR4(out172_804),
    .ADR5(out171_805),
    .ADR1(xenc4),
    .ADR3(xenc16),
    .ADR2(out17),
    .O(N26)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  out8_SW1 (
    .ADR0(dut_inputs[65]),
    .ADR5(out172_804),
    .ADR4(out171_805),
    .ADR1(xenc4),
    .ADR3(xenc16),
    .ADR2(out17),
    .O(N20)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 64'hFFFFFFFFA5F5FFAF ))
  out173 (
    .ADR1(1'b1),
    .ADR0(dut_inputs[3]),
    .ADR5(dut_inputs[43]),
    .ADR3(dut_inputs[40]),
    .ADR2(dut_inputs[42]),
    .ADR4(out163_764),
    .O(out172_804)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 64'h0A000A00000A000A ))
  G360gat371 (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(dut_inputs[54]),
    .ADR3(dut_inputs[49]),
    .ADR0(dut_inputs[51]),
    .ADR5(out1631),
    .O(G360gat37)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 64'h8888000080000000 ))
  G360gat5_SW2_SW0 (
    .ADR2(dut_inputs[52]),
    .ADR5(G360gat36),
    .ADR3(G360gat37),
    .ADR0(out172_804),
    .ADR1(out171_805),
    .ADR4(xenc16),
    .O(N73)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y36" ),
    .INIT ( 64'h0014002800410082 ))
  G360gat361 (
    .ADR1(dut_inputs[20]),
    .ADR4(dut_inputs[19]),
    .ADR3(dut_inputs[41]),
    .ADR0(dut_inputs[37]),
    .ADR5(xenc23),
    .ADR2(out1631),
    .O(G360gat36)
  );
  X_BUF   \u0/dut/G360gat11/u0/dut/G360gat11_CMUX_Delay  (
    .I(N85),
    .O(N85_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X4Y38" ))
  G360gat12_SW3 (
    .IA(N115),
    .IB(1'b1),
    .O(N85),
    .SEL(N4)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 64'h30FF60FF30FF90FF ))
  G360gat12_SW3_F (
    .ADR2(dut_inputs[31]),
    .ADR3(dut_inputs[64]),
    .ADR5(dut_inputs[13]),
    .ADR1(dut_inputs[21]),
    .ADR0(G351gat),
    .ADR4(G360gat5_780),
    .O(N115)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFF ))
  \N1.C6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N1.C6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 64'h7F7F7F7F7F7F7F00 ))
  G360gat11 (
    .ADR1(xenc4),
    .ADR5(G360gat9_796),
    .ADR0(out17),
    .ADR3(G360gat10_765),
    .ADR4(G360gat7_783),
    .ADR2(N74),
    .O(G360gat11_789)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 64'h000000000F0F1B27 ))
  out8 (
    .ADR5(N20),
    .ADR2(N84),
    .ADR0(dut_inputs[11]),
    .ADR3(G354gat),
    .ADR4(G360gat11_789),
    .ADR1(N85_0),
    .O(G420gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 64'hAAFF000022330000 ))
  G360gat12_SW10 (
    .ADR2(1'b1),
    .ADR4(dut_inputs[55]),
    .ADR5(G199gat),
    .ADR1(dut_inputs[53]),
    .ADR3(dut_inputs[58]),
    .ADR0(dut_inputs[21]),
    .O(N96)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 64'hF0D2D2F0D2F0F0D2 ))
  G360gat331 (
    .ADR2(dut_inputs[2]),
    .ADR1(dut_inputs[31]),
    .ADR3(dut_inputs[26]),
    .ADR0(dut_inputs[64]),
    .ADR4(dut_inputs[61]),
    .ADR5(out1631),
    .O(G360gat33)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y39" ),
    .INIT ( 64'h4000000000000000 ))
  out163_2 (
    .ADR4(xenc10),
    .ADR2(G154gat),
    .ADR1(xenc26),
    .ADR5(xenc23),
    .ADR0(N58),
    .ADR3(out16),
    .O(out1631)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'h7F80FF00FF00FF00 ))
  \Mxor_G233gat_xo<0>1  (
    .ADR3(N50),
    .ADR5(G154gat),
    .ADR0(xenc26),
    .ADR1(xenc23),
    .ADR4(out16),
    .ADR2(out161_812),
    .O(G233gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'hFFFFFFB7FFFFFF7B ))
  G354gat1_SW0 (
    .ADR4(dut_inputs[63]),
    .ADR2(dut_inputs[8]),
    .ADR3(dut_inputs[60]),
    .ADR5(dut_inputs[57]),
    .ADR1(dut_inputs[59]),
    .ADR0(G199gat),
    .O(N38)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'hAAAA5555AAAA5555 ))
  \Mxor_xenc8_xo<0>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(dut_inputs[8]),
    .ADR0(dut_inputs[57]),
    .O(xenc8)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'h2000000000000000 ))
  out163_3 (
    .ADR3(xenc10),
    .ADR4(G154gat),
    .ADR2(xenc26),
    .ADR5(xenc23),
    .ADR1(N58),
    .ADR0(out16),
    .O(out1632)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hFF00FF00EF10EF10 ))
  out173_SW0 (
    .ADR4(1'b1),
    .ADR3(dut_inputs[60]),
    .ADR1(dut_inputs[43]),
    .ADR2(dut_inputs[42]),
    .ADR5(dut_inputs[40]),
    .ADR0(dut_inputs[3]),
    .O(N60)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hFDFFF7F7FDFFFFFF ))
  G354gat1_SW1 (
    .ADR2(dut_inputs[63]),
    .ADR0(dut_inputs[59]),
    .ADR4(xenc8),
    .ADR5(N61),
    .ADR3(N60),
    .ADR1(G199gat),
    .O(N39)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hA00A5FF5A00A5FF5 ))
  \Mxor_xenc23_xo<0>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR4(dut_inputs[23]),
    .ADR3(dut_inputs[35]),
    .ADR2(dut_inputs[29]),
    .ADR0(dut_inputs[37]),
    .O(xenc23)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hFF00FF00FFFFFFFF ))
  out6_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR5(dut_inputs[53]),
    .ADR3(G199gat),
    .O(N12)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y42" ),
    .INIT ( 64'hFAF6AA66F0F00000 ))
  G360gat9 (
    .ADR3(dut_inputs[40]),
    .ADR1(dut_inputs[42]),
    .ADR5(G360gat8_794),
    .ADR0(G199gat),
    .ADR4(n0190),
    .ADR2(G360gat33),
    .O(G360gat9_796)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y33" ),
    .INIT ( 64'hFFFFFFFFCC33CCCC ))
  \Mxor_xenc12_xo<0>1_SW1_SW1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(dut_inputs[12]),
    .ADR4(G418gat),
    .ADR3(n0294),
    .ADR5(n0288),
    .O(N102)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y33" ),
    .INIT ( 64'hDDDDDDDD88DDD8DD ))
  G432gat1 (
    .ADR0(n0290),
    .ADR1(N101),
    .ADR2(G420gat),
    .ADR3(xenc0),
    .ADR4(G419gat),
    .ADR5(N102),
    .O(dut_outputs[6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y33" ),
    .INIT ( 64'h5FFFFFFFFFFFFFFF ))
  G309gat1 (
    .ADR1(1'b1),
    .ADR2(out17),
    .ADR5(out172_804),
    .ADR0(xenc4),
    .ADR3(xenc16),
    .ADR4(out171_805),
    .O(dut_outputs[1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y33" ),
    .INIT ( 64'hF0FFF0FFF0FFF0FF ))
  out5_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(dut_inputs[49]),
    .ADR2(G199gat),
    .O(N10)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'hF000F600F0009000 ))
  out2 (
    .ADR3(N24),
    .ADR2(N90),
    .ADR0(G354gat),
    .ADR1(dut_inputs[11]),
    .ADR4(G360gat11_789),
    .ADR5(N91_0),
    .O(n0290)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'hCC00CC00C840C480 ))
  out6 (
    .ADR1(N28),
    .ADR3(N96),
    .ADR4(G354gat),
    .ADR0(dut_inputs[11]),
    .ADR5(G360gat11_789),
    .ADR2(N97_0),
    .O(G418gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'h0000000000000001 ))
  out91_SW0 (
    .ADR4(G420gat),
    .ADR2(N16),
    .ADR0(G418gat),
    .ADR1(n0290),
    .ADR5(n0294),
    .ADR3(n0288),
    .O(N104)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'hD2D2D2D278D2D2D2 ))
  \Mxor_G421gat_xo<0>1  (
    .ADR1(dut_inputs[14]),
    .ADR2(dut_inputs[17]),
    .ADR3(xenc0),
    .ADR0(xenc171_769),
    .ADR5(G419gat),
    .ADR4(N104),
    .O(dut_outputs[3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y38" ),
    .INIT ( 64'h00FF0000AAFFAAAA ))
  G360gat10 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(dut_inputs[52]),
    .ADR0(G360gat36),
    .ADR4(G360gat37),
    .ADR5(xenc4),
    .O(G360gat10_765)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y38" ),
    .INIT ( 64'h0F69690F690F0F69 ))
  \Mxor_xenc4_xo<0>1  (
    .ADR0(dut_inputs[15]),
    .ADR2(dut_inputs[4]),
    .ADR5(dut_inputs[20]),
    .ADR1(N34),
    .ADR3(xenc23),
    .ADR4(out163_764),
    .O(xenc4)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 64'h0001001100030033 ))
  out171 (
    .ADR4(xenc6),
    .ADR0(xenc28),
    .ADR2(xenc27),
    .ADR5(G233gat),
    .ADR3(n0190),
    .ADR1(n0186),
    .O(out17)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 64'hDFFF8000FFFF0000 ))
  G354gat1 (
    .ADR1(N39),
    .ADR4(N38),
    .ADR2(out171_805),
    .ADR0(xenc4),
    .ADR5(xenc16),
    .ADR3(out17),
    .O(G354gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 64'h000C000C0804000C ))
  n01861 (
    .ADR2(dut_inputs[56]),
    .ADR3(dut_inputs[53]),
    .ADR1(dut_inputs[55]),
    .ADR4(xenc26),
    .ADR0(out161_812),
    .ADR5(N52),
    .O(n0186)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 64'h7DFFD7FFFFFF55FF ))
  out163_SW1 (
    .ADR1(dut_inputs[29]),
    .ADR4(dut_inputs[23]),
    .ADR2(dut_inputs[35]),
    .ADR5(dut_inputs[37]),
    .ADR3(G154gat),
    .ADR0(out16),
    .O(N52)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 64'hCCCCCCCCC63CC63C ))
  out173_SW1 (
    .ADR4(1'b1),
    .ADR1(dut_inputs[60]),
    .ADR5(dut_inputs[43]),
    .ADR3(dut_inputs[42]),
    .ADR0(dut_inputs[40]),
    .ADR2(dut_inputs[3]),
    .O(N61)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 64'h0000EB000000C300 ))
  n01901 (
    .ADR4(dut_inputs[65]),
    .ADR3(dut_inputs[64]),
    .ADR2(dut_inputs[61]),
    .ADR1(dut_inputs[26]),
    .ADR0(out161_812),
    .ADR5(N36),
    .O(n0190)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 64'h9060000050500000 ))
  n01901_SW0 (
    .ADR1(dut_inputs[29]),
    .ADR0(dut_inputs[23]),
    .ADR3(dut_inputs[35]),
    .ADR5(dut_inputs[37]),
    .ADR4(G154gat),
    .ADR2(out16),
    .O(N36)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y42" ),
    .INIT ( 64'hFF7575FFFFFF7575 ))
  G360gat12_SW2 (
    .ADR4(dut_inputs[1]),
    .ADR0(dut_inputs[64]),
    .ADR5(dut_inputs[61]),
    .ADR2(dut_inputs[31]),
    .ADR1(dut_inputs[21]),
    .ADR3(G199gat),
    .O(N84)
  );
  X_BUF   \u0/dut/N28/u0/dut/N28_CMUX_Delay  (
    .I(N82),
    .O(N82_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y33" ))
  G360gat12_SW1 (
    .IA(1'b0),
    .IB(N114),
    .O(N82),
    .SEL(dut_inputs[63])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y33" ),
    .INIT ( 64'h0000000000000000 ))
  \N0_2.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0_2.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y33" ),
    .INIT ( 64'h0000FFFF0014FFEB ))
  G360gat12_SW1_G (
    .ADR1(dut_inputs[13]),
    .ADR0(dut_inputs[11]),
    .ADR4(dut_inputs[21]),
    .ADR2(G351gat),
    .ADR3(G360gat5_780),
    .ADR5(G360gat11_789),
    .O(N114)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y33" ),
    .INIT ( 64'h80FF00FF00FF00FF ))
  out6_SW1 (
    .ADR3(dut_inputs[56]),
    .ADR4(out172_804),
    .ADR1(out171_805),
    .ADR5(xenc4),
    .ADR0(xenc16),
    .ADR2(out17),
    .O(N28)
  );
  X_BUF   \u0/dut/N18/u0/dut/N18_CMUX_Delay  (
    .I(N81),
    .O(N81_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y34" ))
  G360gat12_SW0 (
    .IA(1'b0),
    .IB(N112),
    .O(N81),
    .SEL(dut_inputs[63])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y34" ),
    .INIT ( 64'h0000000000000000 ))
  \N0.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y34" ),
    .INIT ( 64'h5555565955555555 ))
  G360gat12_SW0_G (
    .ADR1(dut_inputs[13]),
    .ADR5(dut_inputs[11]),
    .ADR0(dut_inputs[21]),
    .ADR3(G351gat),
    .ADR2(G360gat5_780),
    .ADR4(G360gat11_789),
    .O(N112)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y34" ),
    .INIT ( 64'h4CCCCCCCCCCCCCCC ))
  out7_SW1 (
    .ADR1(dut_inputs[60]),
    .ADR5(out172_804),
    .ADR4(out171_805),
    .ADR0(xenc4),
    .ADR3(xenc16),
    .ADR2(out17),
    .O(N18)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y34" ),
    .INIT ( 64'h02000100A2005100 ))
  out7 (
    .ADR0(dut_inputs[7]),
    .ADR3(N2),
    .ADR4(N18),
    .ADR2(G354gat),
    .ADR1(N81_0),
    .ADR5(N82_0),
    .O(G419gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'h80FF00FF00FF00FF ))
  out1_SW1 (
    .ADR3(dut_inputs[39]),
    .ADR0(out172_804),
    .ADR1(out171_805),
    .ADR2(xenc4),
    .ADR4(xenc16),
    .ADR5(out17),
    .O(N22)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'hF1E0F4B000000000 ))
  out1 (
    .ADR5(N22),
    .ADR2(N87),
    .ADR4(G354gat),
    .ADR1(dut_inputs[11]),
    .ADR0(G360gat11_789),
    .ADR3(N88_0),
    .O(n0288)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'hFFFFFFFFFF00FF00 ))
  \Mxor_xenc12_xo<0>1_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR5(n0290),
    .ADR3(n0288),
    .O(N99)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'hFFFFAAFAFFFFAA6A ))
  G431gat1 (
    .ADR0(dut_inputs[12]),
    .ADR2(xenc0),
    .ADR3(n0294),
    .ADR1(G418gat),
    .ADR5(G419gat),
    .ADR4(N99),
    .O(dut_outputs[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'h7FFFFFFF00000000 ))
  xenc171_SW1 (
    .ADR5(dut_inputs[62]),
    .ADR0(xenc4),
    .ADR1(xenc16),
    .ADR3(out172_804),
    .ADR4(out171_805),
    .ADR2(out17),
    .O(N56)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'hCF00CF0045004500 ))
  G360gat12_SW4 (
    .ADR4(1'b1),
    .ADR3(dut_inputs[37]),
    .ADR1(G199gat),
    .ADR2(dut_inputs[35]),
    .ADR0(dut_inputs[41]),
    .ADR5(dut_inputs[21]),
    .O(N87)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'hFFFFFFF0FFFFFFFF ))
  G430gat1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(n0294),
    .ADR2(n0290),
    .ADR3(n0288),
    .ADR5(xenc0),
    .O(dut_outputs[4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'h3333633633336666 ))
  \Mxor_xenc0_xo<0>  (
    .ADR1(dut_inputs[0]),
    .ADR5(dut_inputs[50]),
    .ADR2(dut_inputs[21]),
    .ADR4(N14_0),
    .ADR0(N45),
    .ADR3(NlwRenamedSig_OI_dut_outputs[2]),
    .O(xenc0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'h0440400404404004 ))
  G360gat351 (
    .ADR5(1'b1),
    .ADR0(dut_inputs[34]),
    .ADR4(dut_inputs[10]),
    .ADR3(dut_inputs[30]),
    .ADR1(dut_inputs[32]),
    .ADR2(out163_764),
    .O(G360gat35)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'hDCECFFFFFFFFFFFF ))
  xenc171 (
    .ADR2(dut_inputs[36]),
    .ADR4(dut_inputs[48]),
    .ADR0(dut_inputs[21]),
    .ADR5(N01),
    .ADR1(N56),
    .ADR3(NlwRenamedSig_OI_dut_outputs[2]),
    .O(xenc171_769)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'hFFFFFFEDFFFFFFB7 ))
  G360gat12 (
    .ADR1(dut_inputs[13]),
    .ADR0(dut_inputs[11]),
    .ADR2(G354gat),
    .ADR5(G351gat),
    .ADR3(G360gat5_780),
    .ADR4(G360gat11_789),
    .O(NlwRenamedSig_OI_dut_outputs[2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y37" ),
    .INIT ( 64'h00BB007700BB0077 ))
  out93_SW0 (
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR1(dut_inputs[34]),
    .ADR0(dut_inputs[21]),
    .ADR3(out91),
    .ADR4(NlwRenamedSig_OI_dut_outputs[2]),
    .O(N16)
  );
  X_BUF   \u0/dut/N77/u0/dut/N77_CMUX_Delay  (
    .I(N97),
    .O(N97_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y38" ))
  G360gat12_SW11 (
    .IA(1'b0),
    .IB(N124),
    .O(N97),
    .SEL(N12)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y38" ),
    .INIT ( 64'h0000000000000000 ))
  \N0_6.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0_6.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y38" ),
    .INIT ( 64'hC804C408CCCCCCCC ))
  G360gat12_SW11_G (
    .ADR5(dut_inputs[58]),
    .ADR1(dut_inputs[55]),
    .ADR4(dut_inputs[13]),
    .ADR3(dut_inputs[21]),
    .ADR0(G351gat),
    .ADR2(G360gat5_780),
    .O(N124)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y38" ),
    .INIT ( 64'hFFFFFFFFEDB7DD77 ))
  out174_SW1 (
    .ADR3(dut_inputs[5]),
    .ADR5(dut_inputs[50]),
    .ADR1(dut_inputs[46]),
    .ADR0(xenc28),
    .ADR2(out172_804),
    .ADR4(out171_805),
    .O(N77)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y38" ),
    .INIT ( 64'hEFCF4FCFCFCFCFCF ))
  G351gat1 (
    .ADR1(N76),
    .ADR2(G233gat),
    .ADR0(xenc4),
    .ADR3(xenc16),
    .ADR5(out17),
    .ADR4(N77),
    .O(G351gat)
  );
  X_BUF   \u0/dut/N2/u0/dut/N2_DMUX_Delay  (
    .I(N14),
    .O(N14_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y40" ),
    .INIT ( 64'hCC0CCC0CCC0CCC0C ))
  out7_SW0 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(dut_inputs[59]),
    .ADR3(G199gat),
    .ADR2(dut_inputs[57]),
    .ADR5(1'b1),
    .O(N2)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y40" ),
    .INIT ( 32'h00AAFFFF ))
  \Mxor_xenc0_xo<0>_SW0  (
    .ADR0(dut_inputs[44]),
    .ADR4(dut_inputs[46]),
    .ADR2(1'b1),
    .ADR3(G199gat),
    .ADR1(1'b1),
    .O(N14)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y40" ),
    .INIT ( 64'hFF0FFF0FFF0FFF0F ))
  out1_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(G199gat),
    .ADR2(dut_inputs[35]),
    .O(N6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y40" ),
    .INIT ( 64'hEEFECCFCAAFA00F0 ))
  G360gat7 (
    .ADR0(G360gat31),
    .ADR1(n0186),
    .ADR2(G360gat35),
    .ADR5(G360gat32),
    .ADR4(G360gat6_856),
    .ADR3(xenc16),
    .O(G360gat7_783)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y40" ),
    .INIT ( 64'h600630309009C0C0 ))
  G360gat6 (
    .ADR2(dut_inputs[6]),
    .ADR3(dut_inputs[62]),
    .ADR4(dut_inputs[48]),
    .ADR1(dut_inputs[27]),
    .ADR0(dut_inputs[38]),
    .ADR5(G199gat),
    .O(G360gat6_856)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 64'h0000FFFFFF0000FF ))
  \Mxor_xenc26_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(dut_inputs[26]),
    .ADR5(dut_inputs[61]),
    .ADR3(dut_inputs[64]),
    .O(xenc26)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 64'hDFFFFFFFFFFFFFFF ))
  G203gat1 (
    .ADR3(xenc23),
    .ADR5(xenc10),
    .ADR0(out16),
    .ADR2(G154gat),
    .ADR1(N58),
    .ADR4(xenc26),
    .O(dut_outputs[0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y42" ),
    .INIT ( 64'hC4C4F5F500000000 ))
  G360gat12_SW6 (
    .ADR3(1'b1),
    .ADR5(dut_inputs[42]),
    .ADR2(G199gat),
    .ADR0(dut_inputs[40]),
    .ADR4(dut_inputs[45]),
    .ADR1(dut_inputs[21]),
    .O(N90)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'h03000C000003000C ))
  G360gat8 (
    .ADR0(1'b1),
    .ADR5(dut_inputs[22]),
    .ADR4(dut_inputs[3]),
    .ADR2(dut_inputs[43]),
    .ADR3(dut_inputs[45]),
    .ADR1(dut_inputs[42]),
    .O(G360gat8_794)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y36" ),
    .INIT ( 64'h55FFF5FFAAFFFAFF ))
  out174_SW3 (
    .ADR1(1'b1),
    .ADR5(dut_inputs[24]),
    .ADR3(dut_inputs[32]),
    .ADR2(dut_inputs[30]),
    .ADR0(dut_inputs[33]),
    .ADR4(G199gat),
    .O(N108)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 64'hBA75BABAFFFFFFFF ))
  out174_SW4 (
    .ADR0(dut_inputs[24]),
    .ADR4(dut_inputs[33]),
    .ADR5(dut_inputs[32]),
    .ADR2(dut_inputs[30]),
    .ADR1(G199gat),
    .ADR3(out171_805),
    .O(N109)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 64'hFF7F8000FFFF0000 ))
  out92 (
    .ADR1(out172_804),
    .ADR2(xenc4),
    .ADR0(xenc16),
    .ADR4(N108),
    .ADR5(out17),
    .ADR3(N109),
    .O(out91)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 64'hF0FFF0FFF0FFF0FF ))
  out172_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR2(dut_inputs[52]),
    .ADR3(dut_inputs[51]),
    .O(N32)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y38" ),
    .INIT ( 64'hDCFF50FFDCDC5050 ))
  G360gat3 (
    .ADR0(n0186),
    .ADR3(n0190),
    .ADR2(G360gat32),
    .ADR1(G360gat35),
    .ADR5(G360gat33),
    .ADR4(xenc16),
    .O(G360gat3_823)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y38" ),
    .INIT ( 64'h00600090FF9FFF6F ))
  \Mxor_xenc16_xo<0>1  (
    .ADR5(dut_inputs[16]),
    .ADR3(dut_inputs[33]),
    .ADR4(dut_inputs[10]),
    .ADR2(dut_inputs[32]),
    .ADR0(dut_inputs[30]),
    .ADR1(out163_764),
    .O(xenc16)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y38" ),
    .INIT ( 64'hA8AAFCFFF3FFA2AA ))
  out172 (
    .ADR2(dut_inputs[60]),
    .ADR4(dut_inputs[49]),
    .ADR3(dut_inputs[59]),
    .ADR0(N32),
    .ADR1(xenc8),
    .ADR5(out163_764),
    .O(out171_805)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y38" ),
    .INIT ( 64'h0000800000000000 ))
  out163_1 (
    .ADR0(xenc10),
    .ADR1(G154gat),
    .ADR3(xenc26),
    .ADR5(xenc23),
    .ADR4(N58),
    .ADR2(out16),
    .O(out163_764)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y40" ),
    .INIT ( 64'hF55FF00F55550000 ))
  out162_SW0 (
    .ADR1(1'b1),
    .ADR0(dut_inputs[44]),
    .ADR3(dut_inputs[8]),
    .ADR2(dut_inputs[57]),
    .ADR5(dut_inputs[59]),
    .ADR4(dut_inputs[46]),
    .O(N58)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y40" ),
    .INIT ( 64'hF0F00FF0F0F00FF0 ))
  \Mxor_xenc6_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR2(dut_inputs[6]),
    .ADR4(dut_inputs[62]),
    .ADR3(dut_inputs[48]),
    .O(xenc6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 64'hFCCF0000F00F0CC0 ))
  G360gat1 (
    .ADR0(1'b1),
    .ADR4(dut_inputs[22]),
    .ADR3(dut_inputs[3]),
    .ADR1(dut_inputs[43]),
    .ADR5(dut_inputs[45]),
    .ADR2(dut_inputs[42]),
    .O(G360gat1_760)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y36" ),
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \Mxor_xenc0_xo<0>_SW1  (
    .ADR0(dut_inputs[47]),
    .ADR2(out172_804),
    .ADR3(out171_805),
    .ADR1(xenc4),
    .ADR4(xenc16),
    .ADR5(out17),
    .O(N45)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y36" ),
    .INIT ( 64'hF0F00F0FF0F00F0F ))
  out1_SW2 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(dut_inputs[11]),
    .ADR2(G354gat),
    .O(N106)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y36" ),
    .INIT ( 64'hECECECFCECECECCC ))
  \Mxor_xenc12_xo<0>1_SW1_SW0  (
    .ADR1(dut_inputs[12]),
    .ADR0(N87),
    .ADR2(N22),
    .ADR3(G360gat11_789),
    .ADR4(N106),
    .ADR5(N88_0),
    .O(N101)
  );
  X_BUF   \u0/dut/G360gat32/u0/dut/G360gat32_CMUX_Delay  (
    .I(N91),
    .O(N91_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X8Y37" ))
  G360gat12_SW7 (
    .IA(1'b0),
    .IB(N120),
    .O(N91),
    .SEL(N8)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y37" ),
    .INIT ( 64'h0000000000000000 ))
  \N0_4.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0_4.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y37" ),
    .INIT ( 64'hCC960000FFFF0000 ))
  G360gat12_SW7_G (
    .ADR5(dut_inputs[45]),
    .ADR2(dut_inputs[13]),
    .ADR4(dut_inputs[42]),
    .ADR1(dut_inputs[21]),
    .ADR0(G351gat),
    .ADR3(G360gat5_780),
    .O(N120)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y37" ),
    .INIT ( 64'hC3F0F0C3F0F0F0F0 ))
  G360gat321 (
    .ADR0(1'b1),
    .ADR2(dut_inputs[9]),
    .ADR1(dut_inputs[58]),
    .ADR3(dut_inputs[53]),
    .ADR5(dut_inputs[55]),
    .ADR4(out163_764),
    .O(G360gat32)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y37" ),
    .INIT ( 64'hCCCCCCCCFFFFFFFF ))
  out2_SW0 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(dut_inputs[40]),
    .ADR1(G199gat),
    .O(N8)
  );
  X_BUF   \u0/dut/N74/u0/dut/N74_CMUX_Delay  (
    .I(N88),
    .O(N88_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X8Y38" ))
  G360gat12_SW5 (
    .IA(1'b0),
    .IB(N118),
    .O(N88),
    .SEL(N6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y38" ),
    .INIT ( 64'h0000000000000000 ))
  \N0_3.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0_3.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y38" ),
    .INIT ( 64'hC8CC04CC8CCC40CC ))
  G360gat12_SW5_G (
    .ADR3(dut_inputs[41]),
    .ADR1(dut_inputs[37]),
    .ADR5(dut_inputs[13]),
    .ADR4(dut_inputs[21]),
    .ADR2(G351gat),
    .ADR0(G360gat5_780),
    .O(N118)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y38" ),
    .INIT ( 64'hF0000000F0000000 ))
  G360gat5_SW2_SW1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR2(out172_804),
    .ADR4(out171_805),
    .ADR3(xenc16),
    .O(N74)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y38" ),
    .INIT ( 64'hCC04C80000000000 ))
  G360gat5 (
    .ADR1(xenc4),
    .ADR0(G360gat2_831),
    .ADR5(out17),
    .ADR2(G360gat3_823),
    .ADR4(N73),
    .ADR3(N74),
    .O(G360gat5_780)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y39" ),
    .INIT ( 64'h0000F0F0FFFF0F0F ))
  \Mxor_xenc10_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR5(dut_inputs[10]),
    .ADR4(dut_inputs[30]),
    .ADR2(dut_inputs[32]),
    .O(xenc10)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y39" ),
    .INIT ( 64'h77070000DD0D0000 ))
  out162 (
    .ADR3(dut_inputs[44]),
    .ADR1(dut_inputs[8]),
    .ADR5(dut_inputs[57]),
    .ADR0(dut_inputs[59]),
    .ADR2(dut_inputs[46]),
    .ADR4(xenc10),
    .O(out161_812)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y40" ),
    .INIT ( 64'hBBEEAAFF44115500 ))
  \Mxor_xenc27_xo<0>1_SW1  (
    .ADR2(1'b1),
    .ADR5(dut_inputs[25]),
    .ADR3(dut_inputs[18]),
    .ADR1(dut_inputs[36]),
    .ADR4(dut_inputs[48]),
    .ADR0(dut_inputs[27]),
    .O(N64)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y40" ),
    .INIT ( 64'hECCCCCCC4CCCCCCC ))
  G360gat311 (
    .ADR4(xenc26),
    .ADR5(N64),
    .ADR1(N63),
    .ADR2(xenc23),
    .ADR3(out16),
    .ADR0(out161_812),
    .O(G360gat31)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y40" ),
    .INIT ( 64'h3999999999999999 ))
  \Mxor_xenc27_xo<0>1  (
    .ADR1(dut_inputs[27]),
    .ADR0(G154gat),
    .ADR5(xenc23),
    .ADR4(out16),
    .ADR3(xenc26),
    .ADR2(out161_812),
    .O(xenc27)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 64'hFA05FA05AF50AF50 ))
  \Mxor_xenc28_xo<0>1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR3(dut_inputs[28]),
    .ADR2(dut_inputs[5]),
    .ADR5(dut_inputs[46]),
    .ADR0(dut_inputs[47]),
    .O(xenc28)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y39" ),
    .INIT ( 64'hF5003100F5F53131 ))
  out161 (
    .ADR2(dut_inputs[53]),
    .ADR0(dut_inputs[55]),
    .ADR4(dut_inputs[49]),
    .ADR1(dut_inputs[51]),
    .ADR3(dut_inputs[40]),
    .ADR5(dut_inputs[42]),
    .O(out16)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y39" ),
    .INIT ( 64'h0800000000000000 ))
  out163 (
    .ADR0(xenc10),
    .ADR3(G154gat),
    .ADR1(xenc26),
    .ADR5(xenc23),
    .ADR2(N58),
    .ADR4(out16),
    .O(G199gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y40" ),
    .INIT ( 64'hFFFF00FF0000FF00 ))
  G360gat2_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(dut_inputs[40]),
    .ADR3(dut_inputs[42]),
    .ADR5(out1632),
    .O(N71)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y40" ),
    .INIT ( 64'hF444F444FCCCF666 ))
  G360gat2 (
    .ADR1(dut_inputs[25]),
    .ADR4(N30),
    .ADR5(xenc6),
    .ADR2(G360gat1_760),
    .ADR0(xenc27),
    .ADR3(N71),
    .O(G360gat2_831)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y40" ),
    .INIT ( 64'h00FF0000FF00FFFF ))
  G360gat311_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(dut_inputs[18]),
    .ADR3(dut_inputs[36]),
    .ADR4(dut_inputs[48]),
    .O(N30)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y44" ),
    .INIT ( 64'hFFFFFF5AFFFF5AFF ))
  out174_SW0 (
    .ADR1(1'b1),
    .ADR2(dut_inputs[28]),
    .ADR0(dut_inputs[47]),
    .ADR5(dut_inputs[5]),
    .ADR3(dut_inputs[46]),
    .ADR4(dut_inputs[50]),
    .O(N76)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 64'h1111111144444444 ))
  \Mxor_xenc20_xo<0>11_SW0  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR0(dut_inputs[39]),
    .ADR5(dut_inputs[19]),
    .ADR1(dut_inputs[37]),
    .O(N34)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y41" ),
    .INIT ( 64'hF0F0FFFFF0F0FFFF ))
  G154gat1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(dut_inputs[38]),
    .ADR4(dut_inputs[48]),
    .O(G154gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y42" ),
    .INIT ( 64'h6F5FF65F90A009A0 ))
  \Mxor_xenc27_xo<0>1_SW0  (
    .ADR5(dut_inputs[25]),
    .ADR2(dut_inputs[27]),
    .ADR3(dut_inputs[48]),
    .ADR4(dut_inputs[38]),
    .ADR0(dut_inputs[18]),
    .ADR1(dut_inputs[36]),
    .O(N63)
  );
endmodule

