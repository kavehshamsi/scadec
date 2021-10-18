////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: c432_xor8_sim.v
// /___/   /\     Timestamp: Mon Feb 10 10:37:25 2020
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
  wire N67;
  wire G199gat;
  wire out1111_833;
  wire out1110;
  wire out1112_835;
  wire N34;
  wire N33;
  wire out116;
  wire G411gat_839;
  wire N30;
  wire N31_0;
  wire xenc0;
  wire xenc4;
  wire N136;
  wire out12;
  wire G247gat;
  wire N134;
  wire G421gat2_848;
  wire N78;
  wire xenc3;
  wire out142_851;
  wire out141_852;
  wire out14;
  wire N79_0;
  wire N51;
  wire N52_0;
  wire N23;
  wire G421gat6_858;
  wire G349gat;
  wire N21;
  wire xenc5;
  wire G421gat8_862;
  wire G421gat5_863;
  wire out11;
  wire n0168;
  wire out111_866;
  wire N128;
  wire N129;
  wire out121_869;
  wire out112_870;
  wire N106;
  wire N107_0;
  wire G251gat;
  wire out114;
  wire N132;
  wire N19;
  wire N82_0;
  wire N113;
  wire N112;
  wire out145_881;
  wire n0266;
  wire N37;
  wire N36;
  wire N109;
  wire N110;
  wire N25;
  wire out143_888;
  wire N27;
  wire N28;
  wire G296gat;
  wire N60;
  wire N61;
  wire N45;
  wire out1451;
  wire N100;
  wire N101_0;
  wire N46;
  wire N69_0;
  wire N85;
  wire N84;
  wire N96;
  wire N48;
  wire N49;
  wire N71_0;
  wire N73;
  wire N54;
  wire N55;
  wire n0268;
  wire n0272;
  wire G417gat;
  wire G418gat;
  wire N16;
  wire N39;
  wire N65;
  wire N43;
  wire N01;
  wire N119;
  wire N120;
  wire out118;
  wire N115_0;
  wire N75_0;
  wire N76;
  wire G236gat;
  wire N57;
  wire N58;
  wire N18;
  wire xenc1;
  wire N42;
  wire N98;
  wire N97;
  wire out123_932;
  wire N103;
  wire N104_0;
  wire G421gat1_935;
  wire G421gat7_936;
  wire G421gat4_937;
  wire G239gat;
  wire N131;
  wire N14;
  wire N40;
  wire G421gat3_942;
  wire N117;
  wire N63;
  wire N81;
  wire N151;
  wire N150;
  wire N101;
  wire N71;
  wire N147;
  wire N146;
  wire N104;
  wire N82;
  wire N143;
  wire N142;
  wire N79;
  wire N115;
  wire N149;
  wire N107;
  wire N75;
  wire N139;
  wire N138;
  wire N31;
  wire N141;
  wire N140;
  wire N52;
  wire N69;
  wire \NLW_N1.D6LUT_O_UNCONNECTED ;
  wire [4 : 4] NlwRenamedSig_OI_dut_outputs;
  assign
    dut_outputs[4] = NlwRenamedSig_OI_dut_outputs[4];
  initial $sdf_annotate("netgen/par/c432_xor8_sim.sdf");
  X_LUT6 #(
    .LOC ( "SLICE_X2Y30" ),
    .INIT ( 64'hFFFFFFFF7FFFFFFF ))
  G319gat1 (
    .ADR0(out14),
    .ADR4(out143_888),
    .ADR2(out142_851),
    .ADR1(out141_852),
    .ADR5(n0168),
    .ADR3(xenc3),
    .O(dut_outputs[1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y31" ),
    .INIT ( 64'hBBA5A5A5BBFFFFFF ))
  G421gat7_SW2 (
    .ADR0(dut_inputs[2]),
    .ADR3(out1110),
    .ADR4(out1112_835),
    .ADR1(N49),
    .ADR2(N30),
    .ADR5(N48),
    .O(N98)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y31" ),
    .INIT ( 64'hC2022222C8088888 ))
  G421gat7_SW1 (
    .ADR1(dut_inputs[2]),
    .ADR2(out1110),
    .ADR4(out1112_835),
    .ADR3(N49),
    .ADR5(N30),
    .ADR0(N48),
    .O(N97)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y31" ),
    .INIT ( 64'hCAAACAAA0AAAFAAA ))
  G421gat7 (
    .ADR3(out1111_833),
    .ADR2(out116),
    .ADR5(N31_0),
    .ADR0(N96),
    .ADR1(N98),
    .ADR4(N97),
    .O(G421gat8_862)
  );
  X_BUF   \u0/dut/out1112/u0/dut/out1112_CMUX_Delay  (
    .I(N101),
    .O(N101_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y32" ))
  out1114_SW17 (
    .IA(N150),
    .IB(N151),
    .O(N101),
    .SEL(out1110)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y32" ),
    .INIT ( 64'h5500AAFF1100EEFF ))
  out1114_SW17_F (
    .ADR2(1'b1),
    .ADR4(dut_inputs[5]),
    .ADR0(dut_inputs[41]),
    .ADR5(G296gat),
    .ADR1(dut_inputs[38]),
    .ADR3(N16),
    .O(N150)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y32" ),
    .INIT ( 64'h9933393399993939 ))
  out1114_SW17_G (
    .ADR1(dut_inputs[5]),
    .ADR0(N16),
    .ADR2(dut_inputs[38]),
    .ADR5(dut_inputs[41]),
    .ADR3(out1112_835),
    .ADR4(G296gat),
    .O(N151)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y32" ),
    .INIT ( 64'hF6FFFFFFFFFFF6FF ))
  out1113 (
    .ADR2(dut_inputs[41]),
    .ADR3(dut_inputs[37]),
    .ADR1(dut_inputs[38]),
    .ADR5(xenc4),
    .ADR4(G199gat),
    .ADR0(out145_881),
    .O(out1112_835)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y32" ),
    .INIT ( 64'h1D55555555555555 ))
  out6 (
    .ADR1(out1111_833),
    .ADR3(out1110),
    .ADR4(out1112_835),
    .ADR2(N49),
    .ADR0(N48),
    .ADR5(out116),
    .O(G418gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 64'hF0FAFFFF0F050000 ))
  out1114_SW16 (
    .ADR1(1'b1),
    .ADR5(dut_inputs[5]),
    .ADR2(dut_inputs[41]),
    .ADR0(dut_inputs[38]),
    .ADR4(N16),
    .ADR3(G296gat),
    .O(N100)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 64'h00FF00FF30FF30FF ))
  out1114_SW14_SW0 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(dut_inputs[14]),
    .ADR2(dut_inputs[26]),
    .ADR5(dut_inputs[40]),
    .ADR3(G199gat),
    .O(N54)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 64'hFF0FFFAF0000FFAF ))
  out145_SW1 (
    .ADR1(1'b1),
    .ADR5(dut_inputs[11]),
    .ADR0(dut_inputs[8]),
    .ADR3(n0168),
    .ADR2(out143_888),
    .ADR4(G199gat),
    .O(N76)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 64'hFFFFFFFF3F0FBFAF ))
  out1114_SW5 (
    .ADR3(dut_inputs[17]),
    .ADR2(dut_inputs[15]),
    .ADR0(dut_inputs[13]),
    .ADR5(N73),
    .ADR4(G199gat),
    .ADR1(G296gat),
    .O(N37)
  );
  X_BUF   \u0/dut/N55/u0/dut/N55_AMUX_Delay  (
    .I(N71),
    .O(N71_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 64'h3333F0F30000F0F0 ))
  out1114_SW14_SW1 (
    .ADR0(1'b1),
    .ADR3(dut_inputs[16]),
    .ADR1(dut_inputs[14]),
    .ADR5(dut_inputs[26]),
    .ADR2(dut_inputs[8]),
    .ADR4(G199gat),
    .O(N55)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 64'hCC00FF00CC00FF00 ))
  \Mxor_xenc5_xo<0>_SW0  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(dut_inputs[35]),
    .ADR3(dut_inputs[37]),
    .ADR1(G199gat),
    .ADR5(1'b1),
    .O(N16)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 32'h75757575 ))
  out1114_SW13_SW0 (
    .ADR2(dut_inputs[31]),
    .ADR0(dut_inputs[33]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR1(G199gat),
    .O(N71)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 64'hBEBEFFFF0EB00FF0 ))
  out143 (
    .ADR1(dut_inputs[18]),
    .ADR0(dut_inputs[21]),
    .ADR4(dut_inputs[20]),
    .ADR3(dut_inputs[13]),
    .ADR5(N25),
    .ADR2(out123_932),
    .O(out142_851)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 64'hF3BBBBBBBBBBBBBB ))
  out1112 (
    .ADR1(G247gat),
    .ADR0(N109),
    .ADR3(out14),
    .ADR2(N110),
    .ADR4(out141_852),
    .ADR5(out142_851),
    .O(out1111_833)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 64'hDDDD0DDDEEEEEE0E ))
  out142 (
    .ADR0(dut_inputs[22]),
    .ADR4(dut_inputs[40]),
    .ADR3(dut_inputs[16]),
    .ADR2(dut_inputs[26]),
    .ADR1(N23),
    .ADR5(out123_932),
    .O(out141_852)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y36" ),
    .INIT ( 64'h8808000000000000 ))
  out123_1 (
    .ADR3(dut_inputs[8]),
    .ADR2(dut_inputs[10]),
    .ADR0(xenc0),
    .ADR5(xenc4),
    .ADR4(out121_869),
    .ADR1(out12),
    .O(out123_932)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 64'hFDADEFE55D0DEAE0 ))
  out1111 (
    .ADR2(dut_inputs[40]),
    .ADR0(dut_inputs[11]),
    .ADR1(out118),
    .ADR3(N19),
    .ADR5(N18),
    .ADR4(out145_881),
    .O(out1110)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 64'h0080000000000000 ))
  out145_1 (
    .ADR3(n0168),
    .ADR2(out143_888),
    .ADR5(xenc3),
    .ADR0(out141_852),
    .ADR1(out142_851),
    .ADR4(out14),
    .O(out145_881)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 64'h13333333B3333333 ))
  \Mxor_xenc3_xo<0>1  (
    .ADR1(N60),
    .ADR5(N61),
    .ADR4(xenc0),
    .ADR3(xenc4),
    .ADR2(out121_869),
    .ADR0(out12),
    .O(xenc3)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y37" ),
    .INIT ( 64'hFFAAFF95FFFFFFFF ))
  out145_SW9 (
    .ADR0(dut_inputs[6]),
    .ADR3(dut_inputs[9]),
    .ADR5(dut_inputs[42]),
    .ADR1(out143_888),
    .ADR4(n0168),
    .ADR2(xenc3),
    .O(N110)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y38" ),
    .INIT ( 64'hFF0AFFCEFFFFFFFF ))
  out1114_SW8 (
    .ADR3(dut_inputs[28]),
    .ADR1(dut_inputs[25]),
    .ADR5(dut_inputs[24]),
    .ADR0(dut_inputs[22]),
    .ADR2(G199gat),
    .ADR4(out1451),
    .O(N42)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y38" ),
    .INIT ( 64'h0800000000000000 ))
  out145_2 (
    .ADR2(n0168),
    .ADR1(out143_888),
    .ADR0(xenc3),
    .ADR4(out141_852),
    .ADR5(out142_851),
    .ADR3(out14),
    .O(out1451)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y38" ),
    .INIT ( 64'hFC54FCFCFF55FFFF ))
  out141 (
    .ADR3(dut_inputs[11]),
    .ADR1(dut_inputs[30]),
    .ADR4(dut_inputs[10]),
    .ADR2(xenc1),
    .ADR0(G251gat),
    .ADR5(G236gat),
    .O(out14)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y38" ),
    .INIT ( 64'hDD5D555555555555 ))
  \Mxor_G236gat_xo<0>1  (
    .ADR3(dut_inputs[8]),
    .ADR2(dut_inputs[10]),
    .ADR0(xenc0),
    .ADR1(xenc4),
    .ADR4(out121_869),
    .ADR5(out12),
    .O(G236gat)
  );
  X_BUF   \u0/dut/N103/u0/dut/N103_CMUX_Delay  (
    .I(N104),
    .O(N104_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y39" ))
  out145_SW5 (
    .IA(N146),
    .IB(N147),
    .O(N104),
    .SEL(G236gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y39" ),
    .INIT ( 64'h0FFFF0000FFFF000 ))
  out145_SW5_F (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(dut_inputs[21]),
    .ADR2(out143_888),
    .ADR3(xenc3),
    .O(N146)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y39" ),
    .INIT ( 64'h66CC66CC64CC62C0 ))
  out145_SW5_G (
    .ADR1(dut_inputs[21]),
    .ADR2(dut_inputs[32]),
    .ADR4(dut_inputs[30]),
    .ADR5(xenc1),
    .ADR0(out143_888),
    .ADR3(xenc3),
    .O(N147)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y39" ),
    .INIT ( 64'hFFFF0000EFBF0000 ))
  out145_SW4 (
    .ADR4(dut_inputs[21]),
    .ADR0(dut_inputs[30]),
    .ADR5(dut_inputs[32]),
    .ADR3(dut_inputs[29]),
    .ADR1(dut_inputs[1]),
    .ADR2(G236gat),
    .O(N103)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y39" ),
    .INIT ( 64'hF0F0F0F0D8F0F0F0 ))
  out111 (
    .ADR5(n0168),
    .ADR2(N103),
    .ADR0(out141_852),
    .ADR3(out142_851),
    .ADR4(out14),
    .ADR1(N104_0),
    .O(out11)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y40" ),
    .INIT ( 64'hF3FFFBF7F3FFFBF7 ))
  out123_SW12 (
    .ADR5(1'b1),
    .ADR1(dut_inputs[24]),
    .ADR3(dut_inputs[22]),
    .ADR2(dut_inputs[28]),
    .ADR0(dut_inputs[10]),
    .ADR4(dut_inputs[8]),
    .O(N132)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y30" ),
    .INIT ( 64'hDFFF7FFFFFFFFFFF ))
  G360gat1 (
    .ADR1(dut_inputs[7]),
    .ADR3(out1111_833),
    .ADR4(G349gat),
    .ADR2(out1110),
    .ADR0(out1112_835),
    .ADR5(out116),
    .O(dut_outputs[2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y31" ),
    .INIT ( 64'hF8F070F0F0F0F0F0 ))
  G421gat1 (
    .ADR0(out1111_833),
    .ADR1(out1110),
    .ADR5(out1112_835),
    .ADR4(N34),
    .ADR2(N33),
    .ADR3(out116),
    .O(G421gat1_935)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y31" ),
    .INIT ( 64'h400000007FFFFFFF ))
  G421gat3 (
    .ADR5(N51),
    .ADR3(out1112_835),
    .ADR1(out1111_833),
    .ADR2(out1110),
    .ADR4(out116),
    .ADR0(N52_0),
    .O(G421gat4_937)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y31" ),
    .INIT ( 64'hFFF4FF0000000000 ))
  G421gat6 (
    .ADR0(dut_inputs[12]),
    .ADR5(dut_inputs[10]),
    .ADR4(G421gat5_863),
    .ADR2(G421gat6_858),
    .ADR1(G421gat1_935),
    .ADR3(G421gat4_937),
    .O(G421gat7_936)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y31" ),
    .INIT ( 64'hFFFFFF00FFFFF300 ))
  G421gat8 (
    .ADR0(1'b1),
    .ADR3(G421gat1_935),
    .ADR1(xenc5),
    .ADR5(G421gat8_862),
    .ADR2(NlwRenamedSig_OI_dut_outputs[4]),
    .ADR4(G421gat7_936),
    .O(dut_outputs[3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y32" ),
    .INIT ( 64'h200000007FFFFFFF ))
  out3 (
    .ADR0(out1111_833),
    .ADR5(N42),
    .ADR4(out1110),
    .ADR3(out1112_835),
    .ADR1(N43),
    .ADR2(out116),
    .O(G417gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y32" ),
    .INIT ( 64'h0000000000808000 ))
  G421gat5 (
    .ADR4(dut_inputs[7]),
    .ADR3(G349gat),
    .ADR0(out1112_835),
    .ADR2(out1110),
    .ADR5(N21),
    .ADR1(out116),
    .O(G421gat6_858)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y32" ),
    .INIT ( 64'h470F0F0F0F0F0F0F ))
  out1 (
    .ADR1(out1111_833),
    .ADR3(out1110),
    .ADR4(out1112_835),
    .ADR0(N37),
    .ADR2(N36),
    .ADR5(out116),
    .O(n0266)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y32" ),
    .INIT ( 64'hFFF03330CCC00000 ))
  out117 (
    .ADR0(1'b1),
    .ADR4(N113),
    .ADR5(N112),
    .ADR1(out145_881),
    .ADR3(out11),
    .ADR2(out112_870),
    .O(out116)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y33" ),
    .INIT ( 64'hFFFEF3F2FFFEF3F2 ))
  out1114_SW14 (
    .ADR5(1'b1),
    .ADR2(dut_inputs[12]),
    .ADR3(dut_inputs[11]),
    .ADR0(N54),
    .ADR4(N55),
    .ADR1(G296gat),
    .O(N51)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y33" ),
    .INIT ( 64'hFFFFF0EEFFFF00AA ))
  out1114_SW13 (
    .ADR5(dut_inputs[36]),
    .ADR0(dut_inputs[34]),
    .ADR4(N71_0),
    .ADR2(N85),
    .ADR1(N84),
    .ADR3(G296gat),
    .O(N49)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y33" ),
    .INIT ( 64'h2000000000000000 ))
  out145 (
    .ADR1(n0168),
    .ADR0(out143_888),
    .ADR2(xenc3),
    .ADR4(out141_852),
    .ADR5(out142_851),
    .ADR3(out14),
    .O(G296gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y33" ),
    .INIT ( 64'hF7F3FFFFF7F3F7F3 ))
  out1114_SW4 (
    .ADR2(dut_inputs[19]),
    .ADR5(dut_inputs[17]),
    .ADR1(dut_inputs[15]),
    .ADR3(dut_inputs[13]),
    .ADR0(G199gat),
    .ADR4(G296gat),
    .O(N36)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 64'hFF33FFBBFFF3FFFB ))
  out1114_SW12 (
    .ADR0(dut_inputs[34]),
    .ADR3(dut_inputs[36]),
    .ADR2(dut_inputs[31]),
    .ADR1(dut_inputs[33]),
    .ADR5(G199gat),
    .ADR4(G296gat),
    .O(N48)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 64'hF00FFFFFF00FFFFF ))
  G421gat7_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR2(dut_inputs[2]),
    .ADR3(N30),
    .ADR4(N48),
    .O(N96)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y37" ),
    .INIT ( 64'hFFFF7F7F00FF007F ))
  out117_SW1 (
    .ADR4(dut_inputs[36]),
    .ADR3(dut_inputs[25]),
    .ADR2(dut_inputs[33]),
    .ADR5(out114),
    .ADR1(G239gat),
    .ADR0(xenc3),
    .O(N113)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y37" ),
    .INIT ( 64'hFAFAC8FAFAFAFAFA ))
  out117_SW0 (
    .ADR1(dut_inputs[36]),
    .ADR0(dut_inputs[25]),
    .ADR3(dut_inputs[33]),
    .ADR2(out114),
    .ADR5(G239gat),
    .ADR4(xenc3),
    .O(N112)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y37" ),
    .INIT ( 64'hA0000000ECCCCCCC ))
  \Mxor_G239gat_xo<0>1  (
    .ADR5(dut_inputs[31]),
    .ADR1(dut_inputs[33]),
    .ADR4(xenc0),
    .ADR3(xenc4),
    .ADR2(N136),
    .ADR0(out12),
    .O(G239gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y38" ),
    .INIT ( 64'hFF0FFF0FFF0FFF0F ))
  out142_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(dut_inputs[25]),
    .ADR2(dut_inputs[24]),
    .O(N23)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y39" ),
    .INIT ( 64'hACCCCCCCCCCCCCCC ))
  out115 (
    .ADR1(N131),
    .ADR4(xenc0),
    .ADR3(xenc4),
    .ADR0(N132),
    .ADR2(out121_869),
    .ADR5(out12),
    .O(out114)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y39" ),
    .INIT ( 64'hFFFFFFFFAAAAFFFF ))
  out123_SW11 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(dut_inputs[28]),
    .ADR0(dut_inputs[22]),
    .ADR4(dut_inputs[24]),
    .O(N131)
  );
  X_BUF   \u0/dut/N19/u0/dut/N19_CMUX_Delay  (
    .I(N79),
    .O(N79_0)
  );
  X_BUF   \u0/dut/N19/u0/dut/N19_BMUX_Delay  (
    .I(N82),
    .O(N82_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X4Y30" ))
  out145_SW3 (
    .IA(N142),
    .IB(N143),
    .O(N79),
    .SEL(G199gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y30" ),
    .INIT ( 64'hFFFFFFFFDDDDFFFF ))
  out145_SW3_F (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(dut_inputs[16]),
    .ADR1(dut_inputs[8]),
    .ADR0(out143_888),
    .ADR5(n0168),
    .O(N142)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y30" ),
    .INIT ( 64'hAFAFFFFFAFAFAFAF ))
  out145_SW3_G (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(dut_inputs[40]),
    .ADR0(dut_inputs[11]),
    .ADR5(out143_888),
    .ADR4(n0168),
    .O(N143)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y30" ),
    .INIT ( 64'hCFFFFFCFCFFFFFCF ))
  out1111_SW1 (
    .ADR0(1'b1),
    .ADR1(dut_inputs[14]),
    .ADR4(dut_inputs[16]),
    .ADR2(dut_inputs[26]),
    .ADR3(G199gat),
    .ADR5(1'b1),
    .O(N19)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y30" ),
    .INIT ( 32'h88888888 ))
  G349gat1_SW1 (
    .ADR0(dut_inputs[7]),
    .ADR1(dut_inputs[14]),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(N82)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y30" ),
    .INIT ( 64'h8808000000000000 ))
  out123 (
    .ADR3(dut_inputs[8]),
    .ADR2(dut_inputs[10]),
    .ADR0(xenc0),
    .ADR5(xenc4),
    .ADR4(out121_869),
    .ADR1(out12),
    .O(G199gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y31" ),
    .INIT ( 64'hFFCCFEFECCCCEEEE ))
  out1114_SW9 (
    .ADR5(dut_inputs[28]),
    .ADR0(dut_inputs[25]),
    .ADR1(N67),
    .ADR3(N85),
    .ADR2(N84),
    .ADR4(G296gat),
    .O(N43)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y32" ),
    .INIT ( 64'h078F0F0F0F0F0F0F ))
  out5 (
    .ADR0(out1111_833),
    .ADR3(N46),
    .ADR2(N45),
    .ADR1(out1110),
    .ADR4(out1112_835),
    .ADR5(out116),
    .O(n0272)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y32" ),
    .INIT ( 64'hAF2FFF3F0F0F0F0F ))
  G421gat5_SW0 (
    .ADR1(dut_inputs[40]),
    .ADR4(dut_inputs[16]),
    .ADR5(dut_inputs[26]),
    .ADR0(G199gat),
    .ADR3(G296gat),
    .ADR2(out1111_833),
    .O(N21)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'hFFFFF0F0FFFFF0FD ))
  G431gat1 (
    .ADR1(G418gat),
    .ADR4(n0268),
    .ADR2(n0266),
    .ADR3(n0272),
    .ADR5(G417gat),
    .ADR0(xenc5),
    .O(dut_outputs[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'hFFFF7FDFFFFFBFEF ))
  G349gat1 (
    .ADR4(dut_inputs[19]),
    .ADR5(dut_inputs[17]),
    .ADR2(dut_inputs[15]),
    .ADR3(dut_inputs[13]),
    .ADR1(G199gat),
    .ADR0(out1451),
    .O(G349gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y33" ),
    .INIT ( 64'h2F0D8F070F0F0F0F ))
  \Mxor_xenc5_xo<0>  (
    .ADR2(N100),
    .ADR0(out1111_833),
    .ADR5(out116),
    .ADR1(dut_inputs[7]),
    .ADR4(G349gat),
    .ADR3(N101_0),
    .O(xenc5)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'h0F0F0F0FCFCFCFCF ))
  out1114_SW9_SW0 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(dut_inputs[24]),
    .ADR1(dut_inputs[22]),
    .ADR5(G199gat),
    .O(N67)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 64'hA0EC00CC00CC00CC ))
  \Mxor_G247gat_xo<0>1  (
    .ADR3(dut_inputs[39]),
    .ADR1(dut_inputs[42]),
    .ADR4(xenc0),
    .ADR5(xenc4),
    .ADR2(N134),
    .ADR0(out12),
    .O(G247gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y38" ),
    .INIT ( 64'h00FF00FFFF0000FF ))
  \Mxor_xenc4_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(dut_inputs[4]),
    .ADR5(dut_inputs[35]),
    .ADR4(dut_inputs[37]),
    .O(xenc4)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'hC888088888888888 ))
  out113 (
    .ADR0(N106),
    .ADR1(out111_866),
    .ADR3(out14),
    .ADR5(out141_852),
    .ADR2(out142_851),
    .ADR4(N107_0),
    .O(out112_870)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'h5A5AFFFF5A5AFFFF ))
  out144_SW0 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR0(dut_inputs[4]),
    .ADR2(dut_inputs[35]),
    .ADR4(dut_inputs[37]),
    .O(N27)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'h0F0F3F0F0F0FCF0F ))
  out144_SW1 (
    .ADR0(1'b1),
    .ADR5(dut_inputs[4]),
    .ADR1(dut_inputs[35]),
    .ADR2(dut_inputs[37]),
    .ADR3(dut_inputs[10]),
    .ADR4(dut_inputs[8]),
    .O(N28)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y40" ),
    .INIT ( 64'hFFFF00002DFFD200 ))
  out123_SW3 (
    .ADR4(dut_inputs[3]),
    .ADR5(dut_inputs[34]),
    .ADR2(dut_inputs[31]),
    .ADR3(dut_inputs[33]),
    .ADR0(dut_inputs[10]),
    .ADR1(dut_inputs[8]),
    .O(N61)
  );
  X_BUF   \u0/dut/out118/u0/dut/out118_CMUX_Delay  (
    .I(N107),
    .O(N107_0)
  );
  X_BUF   \u0/dut/out118/u0/dut/out118_BMUX_Delay  (
    .I(N115),
    .O(N115_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X4Y41" ))
  out145_SW7 (
    .IA(1'b1),
    .IB(N149),
    .O(N107),
    .SEL(G236gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFF ))
  \N1.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N1.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hFEFFEFEEFFFFEEEE ))
  out145_SW7_G (
    .ADR0(dut_inputs[32]),
    .ADR4(dut_inputs[30]),
    .ADR1(xenc1),
    .ADR5(out143_888),
    .ADR2(n0168),
    .ADR3(xenc3),
    .O(N149)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hCCFFFFFFCCFFFFFF ))
  out119 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(dut_inputs[12]),
    .ADR4(dut_inputs[10]),
    .ADR3(G251gat),
    .ADR5(1'b1),
    .O(out118)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 32'hCCCCFFFF ))
  out119_SW0 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(dut_inputs[12]),
    .ADR4(dut_inputs[10]),
    .ADR3(1'b1),
    .O(N115)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y41" ),
    .INIT ( 64'hEA2AAAAAAAAAAAAA ))
  out112 (
    .ADR0(N128),
    .ADR4(xenc0),
    .ADR2(xenc4),
    .ADR3(N129),
    .ADR5(out121_869),
    .ADR1(out12),
    .O(out111_866)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hFFAA3FAAFFAAFFAA ))
  out145_SW6 (
    .ADR0(N119),
    .ADR3(xenc0),
    .ADR1(xenc4),
    .ADR4(N120),
    .ADR2(out121_869),
    .ADR5(out12),
    .O(N106)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 64'hF300F3F351005151 ))
  \Mxor_G247gat_xo<0>1_SW0  (
    .ADR5(dut_inputs[31]),
    .ADR0(dut_inputs[33]),
    .ADR2(dut_inputs[16]),
    .ADR1(dut_inputs[26]),
    .ADR4(dut_inputs[10]),
    .ADR3(dut_inputs[8]),
    .O(N134)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'hF00FF00FF00FF00F ))
  \Mxor_xenc1_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR2(dut_inputs[1]),
    .ADR3(dut_inputs[29]),
    .O(xenc1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 64'hFEEFFEEFFFFFFEEF ))
  \Mxor_G236gat_xo<0>1_SW1  (
    .ADR2(dut_inputs[1]),
    .ADR3(dut_inputs[29]),
    .ADR0(dut_inputs[32]),
    .ADR1(dut_inputs[30]),
    .ADR4(dut_inputs[10]),
    .ADR5(dut_inputs[8]),
    .O(N120)
  );
  X_BUF   \u0/dut/G421gat5/u0/dut/G421gat5_BMUX_Delay  (
    .I(N75),
    .O(N75_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y30" ),
    .INIT ( 64'h0033003300330033 ))
  G421gat4 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(dut_inputs[11]),
    .ADR3(dut_inputs[8]),
    .ADR5(1'b1),
    .O(G421gat5_863)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y30" ),
    .INIT ( 32'hDDDDDDDD ))
  out145_SW0 (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(G199gat),
    .ADR1(dut_inputs[11]),
    .ADR4(1'b1),
    .O(N75)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y30" ),
    .INIT ( 64'hFF807F00FF00FF00 ))
  G411gat (
    .ADR1(out1111_833),
    .ADR2(out1110),
    .ADR0(out1112_835),
    .ADR3(N30),
    .ADR5(out116),
    .ADR4(N31_0),
    .O(G411gat_839)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y31" ),
    .INIT ( 64'hF0FFF0F0F0FFF0F0 ))
  G432gat_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(n0272),
    .ADR2(G417gat),
    .ADR4(G418gat),
    .O(N14)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y31" ),
    .INIT ( 64'hAAFFAAEBAAFFAAAA ))
  G432gat (
    .ADR1(dut_inputs[2]),
    .ADR0(n0266),
    .ADR3(n0268),
    .ADR2(G411gat_839),
    .ADR5(xenc5),
    .ADR4(N14),
    .O(dut_outputs[6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y32" ),
    .INIT ( 64'hFFAAFEEEAAAAFEEE ))
  out1114_SW7 (
    .ADR3(dut_inputs[23]),
    .ADR1(dut_inputs[21]),
    .ADR0(N65),
    .ADR5(N85),
    .ADR2(N84),
    .ADR4(G296gat),
    .O(N40)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y32" ),
    .INIT ( 64'hFFFFFFFFFFFFFCFC ))
  G430gat1 (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(n0272),
    .ADR1(G417gat),
    .ADR2(n0266),
    .ADR5(n0268),
    .O(NlwRenamedSig_OI_dut_outputs[4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y32" ),
    .INIT ( 64'h1B33333333333333 ))
  out2 (
    .ADR0(out1111_833),
    .ADR3(out1110),
    .ADR4(out1112_835),
    .ADR2(N40),
    .ADR1(N39),
    .ADR5(out116),
    .O(n0268)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'hBBFBAAFAFFFFFFFF ))
  out1114_SW6 (
    .ADR0(dut_inputs[23]),
    .ADR5(dut_inputs[20]),
    .ADR2(dut_inputs[21]),
    .ADR4(dut_inputs[18]),
    .ADR1(G199gat),
    .ADR3(G296gat),
    .O(N39)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'h33333333FF33FF33 ))
  out1114_SW7_SW0 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(dut_inputs[20]),
    .ADR3(dut_inputs[18]),
    .ADR5(G199gat),
    .O(N65)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'hFFFFFFFF5FAF5F5F ))
  out123_SW1 (
    .ADR1(1'b1),
    .ADR5(dut_inputs[43]),
    .ADR0(dut_inputs[39]),
    .ADR2(dut_inputs[42]),
    .ADR4(dut_inputs[10]),
    .ADR3(dut_inputs[8]),
    .O(N58)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'h0000FFFFFF0000FF ))
  \Mxor_xenc0_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(dut_inputs[0]),
    .ADR5(dut_inputs[27]),
    .ADR3(dut_inputs[29]),
    .O(xenc0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'h4FFFFFFFFFFFFFFF ))
  G213gat1 (
    .ADR5(xenc4),
    .ADR3(out121_869),
    .ADR2(out12),
    .ADR1(dut_inputs[10]),
    .ADR0(dut_inputs[8]),
    .ADR4(xenc0),
    .O(dut_outputs[0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y38" ),
    .INIT ( 64'hFEFAFAFABAFAFAFA ))
  out144 (
    .ADR0(dut_inputs[38]),
    .ADR2(N27),
    .ADR5(N28),
    .ADR1(xenc0),
    .ADR3(out121_869),
    .ADR4(out12),
    .O(out143_888)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y38" ),
    .INIT ( 64'hFFFF73FFFFFF7373 ))
  out1114_SW10 (
    .ADR2(dut_inputs[27]),
    .ADR1(dut_inputs[29]),
    .ADR4(dut_inputs[32]),
    .ADR5(dut_inputs[30]),
    .ADR0(G199gat),
    .ADR3(out1451),
    .O(N45)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 64'hFF550F0533110301 ))
  out121 (
    .ADR3(dut_inputs[22]),
    .ADR0(dut_inputs[24]),
    .ADR4(dut_inputs[18]),
    .ADR2(dut_inputs[20]),
    .ADR5(dut_inputs[13]),
    .ADR1(dut_inputs[15]),
    .O(out12)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 64'hD555C00055550000 ))
  \Mxor_G251gat_xo<0>1  (
    .ADR4(dut_inputs[10]),
    .ADR0(dut_inputs[8]),
    .ADR3(xenc0),
    .ADR2(xenc4),
    .ADR1(out121_869),
    .ADR5(out12),
    .O(G251gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y39" ),
    .INIT ( 64'hAA0A2202FF0F3303 ))
  out122 (
    .ADR4(dut_inputs[31]),
    .ADR0(dut_inputs[39]),
    .ADR1(dut_inputs[33]),
    .ADR5(dut_inputs[42]),
    .ADR3(dut_inputs[16]),
    .ADR2(dut_inputs[26]),
    .O(out121_869)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y41" ),
    .INIT ( 64'hF0F0F0F0F0F00FF0 ))
  out123_SW2 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(dut_inputs[3]),
    .ADR5(dut_inputs[34]),
    .ADR4(dut_inputs[31]),
    .ADR3(dut_inputs[33]),
    .O(N60)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 64'hFFFFFFFFFCFCF3F3 ))
  \Mxor_G236gat_xo<0>1_SW0  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(dut_inputs[1]),
    .ADR4(dut_inputs[29]),
    .ADR5(dut_inputs[32]),
    .ADR2(dut_inputs[30]),
    .O(N119)
  );
  X_BUF   \u0/dut/G421gat2/u0/dut/G421gat2_CMUX_Delay  (
    .I(N31),
    .O(N31_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y30" ))
  out1114_SW1 (
    .IA(N138),
    .IB(N139),
    .O(N31),
    .SEL(G349gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y30" ),
    .INIT ( 64'h44FFFFFFF4FFFFFF ))
  out1114_SW1_F (
    .ADR2(dut_inputs[9]),
    .ADR1(dut_inputs[43]),
    .ADR3(dut_inputs[42]),
    .ADR5(dut_inputs[7]),
    .ADR4(N01),
    .ADR0(G296gat),
    .O(N138)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y30" ),
    .INIT ( 64'hDFFFDFDF5FFF5F5F ))
  out1114_SW1_G (
    .ADR4(dut_inputs[43]),
    .ADR5(dut_inputs[9]),
    .ADR2(dut_inputs[42]),
    .ADR1(dut_inputs[7]),
    .ADR0(N01),
    .ADR3(G296gat),
    .O(N139)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y30" ),
    .INIT ( 64'h008000007FFFFFFF ))
  G421gat2 (
    .ADR5(N78),
    .ADR2(xenc3),
    .ADR1(out142_851),
    .ADR0(out141_852),
    .ADR4(out14),
    .ADR3(N79_0),
    .O(G421gat2_848)
  );
  X_BUF   \u0/dut/G421gat3/u0/dut/G421gat3_CMUX_Delay  (
    .I(N52),
    .O(N52_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y31" ))
  out1114_SW15 (
    .IA(N140),
    .IB(N141),
    .O(N52),
    .SEL(G349gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y31" ),
    .INIT ( 64'h00FF0000F5FFF575 ))
  out1114_SW15_F (
    .ADR4(dut_inputs[12]),
    .ADR1(dut_inputs[14]),
    .ADR2(dut_inputs[26]),
    .ADR3(dut_inputs[7]),
    .ADR5(G421gat2_848),
    .ADR0(G421gat3_942),
    .O(N140)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y31" ),
    .INIT ( 64'hCECFCECF020F0A0F ))
  out1114_SW15_G (
    .ADR5(dut_inputs[12]),
    .ADR4(dut_inputs[14]),
    .ADR0(dut_inputs[26]),
    .ADR1(dut_inputs[7]),
    .ADR2(G421gat2_848),
    .ADR3(G421gat3_942),
    .O(N141)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y31" ),
    .INIT ( 64'h3555555555555555 ))
  G421gat31 (
    .ADR5(xenc3),
    .ADR3(out142_851),
    .ADR2(out141_852),
    .ADR4(out14),
    .ADR1(N76),
    .ADR0(N75_0),
    .O(G421gat3_942)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y31" ),
    .INIT ( 64'hDDFDCCFCFFFFFFFF ))
  out1114_SW2 (
    .ADR2(dut_inputs[40]),
    .ADR1(dut_inputs[14]),
    .ADR4(dut_inputs[16]),
    .ADR5(dut_inputs[26]),
    .ADR0(G199gat),
    .ADR3(G296gat),
    .O(N33)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y32" ),
    .INIT ( 64'hAAAA9AA9AAAAAAAA ))
  G349gat1_SW2 (
    .ADR4(dut_inputs[19]),
    .ADR1(dut_inputs[17]),
    .ADR2(dut_inputs[13]),
    .ADR5(dut_inputs[15]),
    .ADR0(dut_inputs[7]),
    .ADR3(G199gat),
    .O(N84)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y32" ),
    .INIT ( 64'hCCCC6CC6CCCCCCCC ))
  G349gat1_SW3 (
    .ADR4(dut_inputs[19]),
    .ADR0(dut_inputs[17]),
    .ADR2(dut_inputs[13]),
    .ADR5(dut_inputs[15]),
    .ADR1(dut_inputs[7]),
    .ADR3(G199gat),
    .O(N85)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y32" ),
    .INIT ( 64'hFFFFFFFFCF0FC808 ))
  out1114_SW11 (
    .ADR1(dut_inputs[32]),
    .ADR4(dut_inputs[30]),
    .ADR5(N69_0),
    .ADR3(N85),
    .ADR0(N84),
    .ADR2(out1451),
    .O(N46)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y32" ),
    .INIT ( 64'hFFFFFFFF0F0F0F0F ))
  out143_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR5(dut_inputs[17]),
    .ADR2(dut_inputs[15]),
    .O(N25)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 64'hDFFFCFFFDDFFCCFF ))
  out1114_SW0 (
    .ADR5(dut_inputs[43]),
    .ADR1(dut_inputs[9]),
    .ADR4(dut_inputs[39]),
    .ADR3(dut_inputs[42]),
    .ADR0(G199gat),
    .ADR2(G296gat),
    .O(N30)
  );
  X_BUF   \u0/dut/N01/u0/dut/N01_AMUX_Delay  (
    .I(N69),
    .O(N69_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 64'hF0FFF0FFF0FFF0FF ))
  G411gat_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(dut_inputs[39]),
    .ADR2(G199gat),
    .ADR5(1'b1),
    .O(N01)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 32'h0A0AFFFF ))
  out1114_SW11_SW0 (
    .ADR1(1'b1),
    .ADR0(dut_inputs[27]),
    .ADR4(dut_inputs[29]),
    .ADR3(1'b1),
    .ADR2(G199gat),
    .O(N69)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 64'hFFFFFFFFFF00FFFF ))
  out123_SW9 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(dut_inputs[23]),
    .ADR3(dut_inputs[18]),
    .ADR4(dut_inputs[20]),
    .O(N128)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y41" ),
    .INIT ( 64'hF5F5F9F9FFFFFFFF ))
  out123_SW10 (
    .ADR3(1'b1),
    .ADR5(dut_inputs[20]),
    .ADR0(dut_inputs[18]),
    .ADR2(dut_inputs[23]),
    .ADR1(dut_inputs[10]),
    .ADR4(dut_inputs[8]),
    .O(N129)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y30" ),
    .INIT ( 64'hFFFF0A0AFFFF0A0A ))
  out123_SW4 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(dut_inputs[11]),
    .ADR0(dut_inputs[10]),
    .ADR2(dut_inputs[8]),
    .O(N117)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y30" ),
    .INIT ( 64'hFFFF7FFFFFFFFFFF ))
  out145_SW2 (
    .ADR5(dut_inputs[40]),
    .ADR3(xenc0),
    .ADR0(xenc4),
    .ADR4(N117),
    .ADR1(out121_869),
    .ADR2(out12),
    .O(N78)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y31" ),
    .INIT ( 64'hD020E010F000F000 ))
  G349gat1_SW0 (
    .ADR4(dut_inputs[13]),
    .ADR5(dut_inputs[15]),
    .ADR1(dut_inputs[19]),
    .ADR2(dut_inputs[14]),
    .ADR3(dut_inputs[7]),
    .ADR0(G199gat),
    .O(N81)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y31" ),
    .INIT ( 64'hFFEEFF44FFFDFFF8 ))
  out1114_SW3 (
    .ADR0(dut_inputs[17]),
    .ADR2(dut_inputs[40]),
    .ADR1(N82_0),
    .ADR3(N63),
    .ADR4(N81),
    .ADR5(G296gat),
    .O(N34)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y31" ),
    .INIT ( 64'h55550000FFFFFFFF ))
  out1114_SW3_SW0 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(dut_inputs[16]),
    .ADR5(dut_inputs[26]),
    .ADR0(G199gat),
    .O(N63)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y36" ),
    .INIT ( 64'h1D55555555555555 ))
  n01681 (
    .ADR0(N57),
    .ADR2(N58),
    .ADR3(xenc0),
    .ADR4(xenc4),
    .ADR5(out121_869),
    .ADR1(out12),
    .O(n0168)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y36" ),
    .INIT ( 64'hFFF5F5FFFFF5F5FF ))
  out145_SW8 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(dut_inputs[6]),
    .ADR2(dut_inputs[9]),
    .ADR0(dut_inputs[42]),
    .ADR4(n0168),
    .O(N109)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 64'hDD0DFF0FEE0EFF0F ))
  out1111_SW0 (
    .ADR1(dut_inputs[14]),
    .ADR5(dut_inputs[16]),
    .ADR4(dut_inputs[26]),
    .ADR3(N115_0),
    .ADR2(G251gat),
    .ADR0(G199gat),
    .O(N18)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y37" ),
    .INIT ( 64'hFFFFF5F5FFFFF5F5 ))
  out123_SW0 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(dut_inputs[43]),
    .ADR4(dut_inputs[39]),
    .ADR0(dut_inputs[42]),
    .O(N57)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y39" ),
    .INIT ( 64'hAFAF232300AF0023 ))
  \Mxor_G239gat_xo<0>1_SW0  (
    .ADR0(dut_inputs[39]),
    .ADR2(dut_inputs[42]),
    .ADR4(dut_inputs[16]),
    .ADR1(dut_inputs[26]),
    .ADR3(dut_inputs[10]),
    .ADR5(dut_inputs[8]),
    .O(N136)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y33" ),
    .INIT ( 64'hFF000000FF000000 ))
  out1_SW0_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(dut_inputs[7]),
    .ADR3(dut_inputs[19]),
    .O(N73)
  );
endmodule

