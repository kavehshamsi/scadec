////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: c880_xor48_sim.v
// /___/   /\     Timestamp: Wed Feb 12 16:13:38 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf sca_unlock_top.pcf -mhf -sdf_anno true -sdf_path netgen/par -insert_glbl false -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim sca_unlock_top.ncd sca_unlock_top_timesim.v 
// Device	: 6slx9tqg144-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: sca_unlock_top.ncd
// Output file	: /home/kaveh/projects/scadobf/ise/xl9_cw/netgen/par/sca_unlock_top_timesim.v
// # of Modules	: 3
// Design Name	: sca_unlock_top
// Module Name: c880_xor48
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

module c880_xor48 (
dut_inputs, dut_outputs
);
  input [107 : 0] dut_inputs;
  output [25 : 0] dut_outputs;
  wire N45;
  wire N12;
  wire G867gat3_856;
  wire n0375_857;
  wire n0373_858;
  wire N46;
  wire G491gat_860;
  wire N8;
  wire G868gat1_862;
  wire G400gat1;
  wire N10;
  wire N01;
  wire G427gat;
  wire N22;
  wire N73;
  wire N23;
  wire N75;
  wire N66;
  wire G480gat_872;
  wire n0287;
  wire G550gat1;
  wire G713gat;
  wire N27;
  wire N48;
  wire out311;
  wire N40;
  wire out291;
  wire G868gat5_881;
  wire G586gat1;
  wire N17;
  wire N18;
  wire n0508;
  wire n0383;
  wire n0692;
  wire n0294;
  wire N35;
  wire xenc46;
  wire n0377_891;
  wire N37;
  wire N58;
  wire N59_0;
  wire G838gat1_896;
  wire N71_0;
  wire N82;
  wire G573gat;
  wire N83_0;
  wire N25;
  wire G400gat;
  wire xenc6;
  wire N51_0;
  wire N52_0;
  wire N34;
  wire N42;
  wire N56;
  wire N43;
  wire N69;
  wire G837gat1_911;
  wire G837gat2_912;
  wire G837gat6_913;
  wire G837gat4_914;
  wire N2;
  wire G838gat3_916;
  wire n0379;
  wire G837gat5_918;
  wire G854gat1_919;
  wire N61;
  wire N62;
  wire G854gat4_922;
  wire G854gat5_923;
  wire G839gat2_924;
  wire G717gat;
  wire G839gat4_926;
  wire N54;
  wire G868gat4_928;
  wire G868gat3_929;
  wire N29;
  wire N4;
  wire n02871_932;
  wire n02872_933;
  wire N39;
  wire G273gat;
  wire N68_0;
  wire G837gat3_937;
  wire G787gat;
  wire G811gat2_939;
  wire G811gat1_940;
  wire xenc16;
  wire N6;
  wire n0536;
  wire N32;
  wire N31;
  wire G868gat2_946;
  wire N64_0;
  wire n0639;
  wire G839gat3_949;
  wire xenc38;
  wire N91;
  wire \u0/dut_outputs<20>/u0/dut_outputs<15> ;
  wire \u0/dut_outputs<14>/u0/dut_outputs<12> ;
  wire \u0/dut_outputs<19>/u0/dut_outputs<7> ;
  wire \u0/dut/N8/u0/dut_outputs[16] ;
  wire \u0/dut/N8/u0/dut_outputs[8] ;
  wire N90;
  wire N89;
  wire N68;
  wire N83;
  wire N88;
  wire N87;
  wire N52;
  wire N71;
  wire N86;
  wire N85;
  wire N51;
  wire N64;
  wire N59;
  wire [17 : 17] NlwRenamedSig_OI_dut_outputs;
  assign
    dut_outputs[17] = NlwRenamedSig_OI_dut_outputs[17];
  initial $sdf_annotate("netgen/par/c880_xor48_sim.sdf");
  X_BUF   \u0/dut_outputs<20>/u0/dut_outputs<20>_AMUX_Delay  (
    .I(\u0/dut_outputs<20>/u0/dut_outputs<15> ),
    .O(dut_outputs[15])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y21" ),
    .INIT ( 64'hAAAAAA00AAAAAA00 ))
  G403gat1 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(dut_inputs[103]),
    .ADR4(dut_inputs[101]),
    .ADR3(dut_inputs[102]),
    .ADR5(1'b1),
    .O(dut_outputs[20])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X1Y21" ),
    .INIT ( 32'hF0F0F000 ))
  G356gat1 (
    .ADR0(1'b1),
    .ADR2(dut_inputs[105]),
    .ADR1(1'b1),
    .ADR4(dut_inputs[101]),
    .ADR3(dut_inputs[102]),
    .O(\u0/dut_outputs<20>/u0/dut_outputs<15> )
  );
  X_BUF   \u0/dut_outputs<14>/u0/dut_outputs<14>_AMUX_Delay  (
    .I(\u0/dut_outputs<14>/u0/dut_outputs<12> ),
    .O(dut_outputs[12])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y23" ),
    .INIT ( 64'hA555A55555555555 ))
  \Mxor_G422gat_xo<0>1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR0(dut_inputs[35]),
    .ADR5(dut_inputs[88]),
    .ADR2(dut_inputs[89]),
    .ADR3(dut_inputs[92]),
    .O(dut_outputs[14])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y23" ),
    .INIT ( 64'h0FFFFFFF0FFFFFFF ))
  G353gat1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(dut_inputs[98]),
    .ADR2(dut_inputs[92]),
    .ADR4(dut_inputs[88]),
    .ADR5(1'b1),
    .O(dut_outputs[13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X1Y23" ),
    .INIT ( 32'h3FFF3FFF ))
  G351gat1 (
    .ADR0(1'b1),
    .ADR1(dut_inputs[97]),
    .ADR3(dut_inputs[98]),
    .ADR2(dut_inputs[92]),
    .ADR4(1'b1),
    .O(\u0/dut_outputs<14>/u0/dut_outputs<12> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y26" ),
    .INIT ( 64'h5F5FA0A05F5FA0A0 ))
  \Mxor_G391gat_xo<0>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(dut_inputs[43]),
    .ADR2(dut_inputs[100]),
    .ADR0(dut_inputs[99]),
    .O(dut_outputs[9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y17" ),
    .INIT ( 64'hC000F0000000F000 ))
  n02872 (
    .ADR0(1'b1),
    .ADR1(dut_inputs[97]),
    .ADR4(dut_inputs[104]),
    .ADR5(dut_inputs[92]),
    .ADR2(dut_inputs[68]),
    .ADR3(dut_inputs[89]),
    .O(n02872_933)
  );
  X_BUF   \u0/dut_outputs<19>/u0/dut_outputs<19>_AMUX_Delay  (
    .I(\u0/dut_outputs<19>/u0/dut_outputs<7> ),
    .O(dut_outputs[7])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y22" ),
    .INIT ( 64'h0FF00FF0FF00FF00 ))
  \Mxor_xenc0_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(dut_inputs[0]),
    .ADR2(dut_inputs[96]),
    .ADR5(G400gat1),
    .O(dut_outputs[19])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y22" ),
    .INIT ( 64'hA000A000A000A000 ))
  out121 (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR3(dut_inputs[97]),
    .ADR2(dut_inputs[89]),
    .ADR0(dut_inputs[87]),
    .ADR5(1'b1),
    .O(dut_outputs[6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y22" ),
    .INIT ( 32'h88880000 ))
  out131 (
    .ADR1(dut_inputs[88]),
    .ADR4(dut_inputs[98]),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(dut_inputs[87]),
    .O(\u0/dut_outputs<19>/u0/dut_outputs<7> )
  );
  X_BUF   \u0/dut/N8/u0/dut/N8_BMUX_Delay  (
    .I(\u0/dut/N8/u0/dut_outputs[8] ),
    .O(dut_outputs[8])
  );
  X_BUF   \u0/dut/N8/u0/dut/N8_AMUX_Delay  (
    .I(\u0/dut/N8/u0/dut_outputs[16] ),
    .O(dut_outputs[16])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y23" ),
    .INIT ( 64'h00FFFFFF00FFFFFF ))
  G491gat_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR3(dut_inputs[91]),
    .ADR4(dut_inputs[87]),
    .O(N8)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y23" ),
    .INIT ( 64'hC000C000C000C000 ))
  out101 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(dut_inputs[88]),
    .ADR1(dut_inputs[89]),
    .ADR3(dut_inputs[87]),
    .ADR5(1'b1),
    .O(G273gat)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y23" ),
    .INIT ( 32'hC0003FFF ))
  xenc11 (
    .ADR0(1'b1),
    .ADR4(dut_inputs[1]),
    .ADR2(dut_inputs[88]),
    .ADR1(dut_inputs[89]),
    .ADR3(dut_inputs[87]),
    .O(\u0/dut/N8/u0/dut_outputs[8] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y23" ),
    .INIT ( 64'hFFFF7FFFFFFF7FFF ))
  G344gat1 (
    .ADR2(dut_inputs[86]),
    .ADR3(dut_inputs[68]),
    .ADR0(dut_inputs[72]),
    .ADR4(G273gat),
    .ADR1(dut_inputs[57]),
    .ADR5(1'b1),
    .O(dut_outputs[11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y23" ),
    .INIT ( 32'h7FFFFFFF ))
  G392gat1 (
    .ADR2(dut_inputs[86]),
    .ADR3(dut_inputs[68]),
    .ADR0(dut_inputs[72]),
    .ADR4(G273gat),
    .ADR1(dut_inputs[57]),
    .O(\u0/dut/N8/u0/dut_outputs[16] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y24" ),
    .INIT ( 64'h0FFF0FFF0FFF0FFF ))
  G480gat_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(dut_inputs[87]),
    .ADR2(dut_inputs[68]),
    .O(N10)
  );
  X_BUF   \u0/dut/N25/u0/dut/N25_CMUX_Delay  (
    .I(N68),
    .O(N68_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X2Y25" ))
  out3714_SW1_SW1 (
    .IA(N89),
    .IB(N90),
    .O(N68),
    .SEL(G400gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y25" ),
    .INIT ( 64'h003C00F02828A0A0 ))
  out3714_SW1_SW1_F (
    .ADR2(dut_inputs[36]),
    .ADR4(dut_inputs[107]),
    .ADR3(dut_inputs[78]),
    .ADR1(dut_inputs[75]),
    .ADR5(dut_inputs[66]),
    .ADR0(N25),
    .O(N89)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y25" ),
    .INIT ( 64'h000000003C00F000 ))
  out3714_SW1_SW1_G (
    .ADR0(1'b1),
    .ADR2(dut_inputs[36]),
    .ADR4(dut_inputs[107]),
    .ADR1(dut_inputs[75]),
    .ADR5(dut_inputs[66]),
    .ADR3(N25),
    .O(N90)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y25" ),
    .INIT ( 64'h1111555511115555 ))
  out3714_SW1_SW0 (
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(dut_inputs[7]),
    .ADR4(dut_inputs[76]),
    .ADR0(dut_inputs[77]),
    .O(N25)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y25" ),
    .INIT ( 64'h6C396C6C6C396C6C ))
  out3714_SW3 (
    .ADR5(1'b1),
    .ADR1(dut_inputs[47]),
    .ADR3(dut_inputs[79]),
    .ADR4(N68_0),
    .ADR2(N69),
    .ADR0(n0375_857),
    .O(N43)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y27" ),
    .INIT ( 64'hF5F0F5F5F5F0F5F5 ))
  G837gat4 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR0(dut_inputs[22]),
    .ADR4(dut_inputs[79]),
    .ADR2(G837gat3_937),
    .ADR3(n0379),
    .O(G837gat4_914)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y27" ),
    .INIT ( 64'hFFF0AAAAFFF0AAAA ))
  G838gat3_SW1 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR4(dut_inputs[70]),
    .ADR2(dut_inputs[78]),
    .ADR0(dut_inputs[77]),
    .ADR3(G400gat),
    .O(N62)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y27" ),
    .INIT ( 64'hA0A0000000000000 ))
  G400gat2 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR5(dut_inputs[89]),
    .ADR0(dut_inputs[94]),
    .ADR4(dut_inputs[95]),
    .ADR2(G400gat1),
    .O(G400gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y27" ),
    .INIT ( 64'hFFA0A0A0FFA0A0A0 ))
  G837gat3 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR0(dut_inputs[49]),
    .ADR3(dut_inputs[69]),
    .ADR2(dut_inputs[75]),
    .ADR4(G400gat),
    .O(G837gat3_937)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y29" ),
    .INIT ( 64'hAAAA1DD1AAAA1D1D ))
  \Mxor_G856gat_xo<0>1  (
    .ADR1(dut_inputs[76]),
    .ADR0(N82),
    .ADR3(G713gat),
    .ADR2(N83_0),
    .ADR4(G838gat3_916),
    .ADR5(out311),
    .O(dut_outputs[25])
  );
  X_BUF   \u0/dut/N82/u0/dut/N82_AMUX_Delay  (
    .I(N83),
    .O(N83_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y30" ),
    .INIT ( 64'hC3C3C3C3C3C3C3C3 ))
  \Mxor_G856gat_xo<0>1_SW0  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(dut_inputs[42]),
    .ADR2(dut_inputs[21]),
    .ADR5(1'b1),
    .O(N82)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y30" ),
    .INIT ( 32'h96696996 ))
  \Mxor_G856gat_xo<0>1_SW1  (
    .ADR0(dut_inputs[40]),
    .ADR3(dut_inputs[70]),
    .ADR4(G573gat),
    .ADR1(dut_inputs[42]),
    .ADR2(dut_inputs[21]),
    .O(N83)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y18" ),
    .INIT ( 64'h8000000000000000 ))
  G400gat11 (
    .ADR0(dut_inputs[93]),
    .ADR5(dut_inputs[91]),
    .ADR2(dut_inputs[57]),
    .ADR1(dut_inputs[104]),
    .ADR3(dut_inputs[92]),
    .ADR4(dut_inputs[72]),
    .O(G400gat1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y18" ),
    .INIT ( 64'h8000800000000000 ))
  G868gat1 (
    .ADR4(1'b1),
    .ADR0(dut_inputs[65]),
    .ADR1(dut_inputs[89]),
    .ADR2(dut_inputs[94]),
    .ADR3(dut_inputs[95]),
    .ADR5(G400gat1),
    .O(G868gat1_862)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y18" ),
    .INIT ( 64'h8800880000000000 ))
  out381 (
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR0(dut_inputs[104]),
    .ADR5(dut_inputs[68]),
    .ADR1(dut_inputs[72]),
    .ADR3(dut_inputs[57]),
    .O(dut_outputs[10])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y18" ),
    .INIT ( 64'h8000000000000000 ))
  G401gat1 (
    .ADR3(dut_inputs[93]),
    .ADR0(dut_inputs[87]),
    .ADR2(dut_inputs[72]),
    .ADR5(dut_inputs[104]),
    .ADR4(dut_inputs[91]),
    .ADR1(dut_inputs[57]),
    .O(dut_outputs[18])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y24" ),
    .INIT ( 64'hFFFFDDCCFAF0DDCC ))
  out3713_SW0 (
    .ADR0(dut_inputs[7]),
    .ADR2(dut_inputs[78]),
    .ADR3(dut_inputs[76]),
    .ADR4(dut_inputs[66]),
    .ADR1(dut_inputs[77]),
    .ADR5(G400gat),
    .O(N34)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y27" ),
    .INIT ( 64'h03230FAF0C8C0000 ))
  out3714_SW1_SW2 (
    .ADR5(dut_inputs[36]),
    .ADR4(dut_inputs[107]),
    .ADR1(dut_inputs[75]),
    .ADR2(dut_inputs[66]),
    .ADR0(N25),
    .ADR3(G400gat),
    .O(N69)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y27" ),
    .INIT ( 64'hFFFEFFEFAFAEFAEA ))
  G838gat3 (
    .ADR2(dut_inputs[40]),
    .ADR1(dut_inputs[79]),
    .ADR0(G838gat1_896),
    .ADR5(N61),
    .ADR3(N62),
    .ADR4(G573gat),
    .O(G838gat3_916)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y28" ),
    .INIT ( 64'hFFECECECFFA0A0A0 ))
  G811gat2 (
    .ADR0(dut_inputs[52]),
    .ADR2(dut_inputs[75]),
    .ADR1(dut_inputs[80]),
    .ADR5(dut_inputs[84]),
    .ADR4(dut_inputs[73]),
    .ADR3(G400gat),
    .O(G811gat2_939)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y28" ),
    .INIT ( 64'h6800C00094006800 ))
  G811gat1 (
    .ADR2(dut_inputs[23]),
    .ADR1(dut_inputs[83]),
    .ADR0(dut_inputs[11]),
    .ADR4(dut_inputs[73]),
    .ADR3(dut_inputs[76]),
    .ADR5(n0692),
    .O(G811gat1_940)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y28" ),
    .INIT ( 64'hFFFFEEFEEEFEFFFF ))
  G811gat3 (
    .ADR4(dut_inputs[17]),
    .ADR2(dut_inputs[79]),
    .ADR1(G811gat2_939),
    .ADR3(n0692),
    .ADR0(G811gat1_940),
    .ADR5(G787gat),
    .O(dut_outputs[23])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y28" ),
    .INIT ( 64'h00A0A5AA5AF5FFFF ))
  G787gat1 (
    .ADR1(1'b1),
    .ADR0(dut_inputs[11]),
    .ADR3(dut_inputs[73]),
    .ADR5(dut_inputs[78]),
    .ADR4(dut_inputs[77]),
    .ADR2(n0692),
    .O(G787gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y29" ),
    .INIT ( 64'hA55A5AA5A55A5AA5 ))
  G586gat11 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(dut_inputs[69]),
    .ADR4(dut_inputs[70]),
    .ADR2(dut_inputs[71]),
    .ADR0(dut_inputs[73]),
    .O(G586gat1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y29" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  G837gat5 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(dut_inputs[22]),
    .ADR2(dut_inputs[79]),
    .O(G837gat5_918)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y32" ),
    .INIT ( 64'h9966669966999966 ))
  \Mxor_xenc16_xo<0>1  (
    .ADR2(1'b1),
    .ADR0(dut_inputs[16]),
    .ADR4(dut_inputs[64]),
    .ADR5(dut_inputs[65]),
    .ADR1(dut_inputs[66]),
    .ADR3(dut_inputs[67]),
    .O(xenc16)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y32" ),
    .INIT ( 64'h9696696969699696 ))
  G661gat1 (
    .ADR3(1'b1),
    .ADR1(dut_inputs[20]),
    .ADR0(dut_inputs[54]),
    .ADR2(dut_inputs[74]),
    .ADR4(G586gat1),
    .ADR5(xenc16),
    .O(dut_outputs[22])
  );
  X_BUF   \u0/dut/N23/u0/dut/N23_CMUX_Delay  (
    .I(N52),
    .O(N52_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X4Y21" ))
  out271_SW3 (
    .IA(N87),
    .IB(N88),
    .O(N52),
    .SEL(n0375_857)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'hEEFFFFFF88AAAAAA ))
  out271_SW3_F (
    .ADR2(1'b1),
    .ADR3(dut_inputs[18]),
    .ADR0(dut_inputs[64]),
    .ADR1(dut_inputs[65]),
    .ADR5(xenc6),
    .ADR4(n0373_858),
    .O(N87)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'hEFFE8CC8CFEF0C8C ))
  out271_SW3_G (
    .ADR2(dut_inputs[18]),
    .ADR4(dut_inputs[64]),
    .ADR5(dut_inputs[65]),
    .ADR0(dut_inputs[66]),
    .ADR1(xenc6),
    .ADR3(n0373_858),
    .O(N88)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y21" ),
    .INIT ( 64'hECB9CC99E6B36633 ))
  G867gat3_SW1 (
    .ADR1(dut_inputs[8]),
    .ADR0(dut_inputs[64]),
    .ADR5(dut_inputs[78]),
    .ADR3(dut_inputs[77]),
    .ADR4(N75),
    .ADR2(G400gat1),
    .O(N23)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'hCC00CC0000000000 ))
  G400gat2_SW2 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(dut_inputs[95]),
    .ADR5(dut_inputs[94]),
    .ADR1(dut_inputs[89]),
    .O(N75)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'hF8F8F848F8F84848 ))
  out3713_SW1 (
    .ADR2(dut_inputs[66]),
    .ADR4(dut_inputs[77]),
    .ADR0(dut_inputs[7]),
    .ADR1(dut_inputs[76]),
    .ADR5(G400gat1),
    .ADR3(N75),
    .O(N35)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'h00000000050A55AA ))
  n0375 (
    .ADR1(1'b1),
    .ADR0(dut_inputs[44]),
    .ADR2(dut_inputs[60]),
    .ADR4(G427gat),
    .ADR3(G480gat_872),
    .ADR5(N6),
    .O(n0375_857)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'h888888FC88888888 ))
  n0375_SW0 (
    .ADR0(dut_inputs[56]),
    .ADR1(dut_inputs[68]),
    .ADR2(dut_inputs[89]),
    .ADR5(N29),
    .ADR3(n02871_932),
    .ADR4(n02872_933),
    .O(N6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y24" ),
    .INIT ( 64'h0FF0F0FF0FF0F0FF ))
  G837gat2 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(dut_inputs[25]),
    .ADR2(dut_inputs[69]),
    .ADR4(n0379),
    .O(G837gat2_912)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y24" ),
    .INIT ( 64'hF8F0F0F0F0F0F0F0 ))
  G854gat1 (
    .ADR2(N71_0),
    .ADR3(G400gat1),
    .ADR1(dut_inputs[95]),
    .ADR0(dut_inputs[94]),
    .ADR5(dut_inputs[89]),
    .ADR4(dut_inputs[67]),
    .O(G854gat1_919)
  );
  X_BUF   \u0/dut/G838gat1/u0/dut/G838gat1_AMUX_Delay  (
    .I(N71),
    .O(N71_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y27" ),
    .INIT ( 64'hEECCAA00EECCAA00 ))
  G838gat1 (
    .ADR2(1'b1),
    .ADR4(dut_inputs[50]),
    .ADR1(dut_inputs[75]),
    .ADR3(dut_inputs[80]),
    .ADR0(dut_inputs[81]),
    .ADR5(1'b1),
    .O(G838gat1_896)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y27" ),
    .INIT ( 32'hC0C0C0C0 ))
  G400gat2_SW0 (
    .ADR2(dut_inputs[48]),
    .ADR0(1'b1),
    .ADR1(dut_inputs[75]),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(N71)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y28" ),
    .INIT ( 64'hCCCC000000000000 ))
  n02873_SW0 (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(dut_inputs[48]),
    .ADR5(dut_inputs[90]),
    .ADR4(dut_inputs[72]),
    .O(N29)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y19" ),
    .INIT ( 64'h030F0F0F33FFFFFF ))
  n02871 (
    .ADR0(1'b1),
    .ADR4(dut_inputs[63]),
    .ADR5(dut_inputs[104]),
    .ADR1(dut_inputs[86]),
    .ADR3(dut_inputs[92]),
    .ADR2(dut_inputs[68]),
    .O(n02871_932)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y20" ),
    .INIT ( 64'hFFF0FF00F0F00000 ))
  n0373_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(dut_inputs[59]),
    .ADR5(dut_inputs[56]),
    .ADR3(dut_inputs[90]),
    .ADR4(G427gat),
    .O(N2)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y20" ),
    .INIT ( 64'h0800000088000000 ))
  out181 (
    .ADR2(dut_inputs[63]),
    .ADR4(dut_inputs[91]),
    .ADR0(dut_inputs[86]),
    .ADR1(dut_inputs[90]),
    .ADR5(dut_inputs[92]),
    .ADR3(dut_inputs[72]),
    .O(G427gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y21" ),
    .INIT ( 64'h00A2FF5D0051FFAE ))
  \Mxor_xenc6_xo<0>1  (
    .ADR4(dut_inputs[6]),
    .ADR0(dut_inputs[4]),
    .ADR1(dut_inputs[106]),
    .ADR5(G480gat_872),
    .ADR3(N01),
    .ADR2(n0287),
    .O(xenc6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y21" ),
    .INIT ( 64'hFFFAFAFAFFCCCCCC ))
  G867gat3 (
    .ADR3(dut_inputs[85]),
    .ADR4(dut_inputs[75]),
    .ADR0(dut_inputs[79]),
    .ADR1(N22),
    .ADR2(N23),
    .ADR5(xenc6),
    .O(G867gat3_856)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y21" ),
    .INIT ( 64'hEAC0EAC0BF3FBF3F ))
  G553gat_SW0 (
    .ADR4(1'b1),
    .ADR5(dut_inputs[3]),
    .ADR1(dut_inputs[56]),
    .ADR2(dut_inputs[104]),
    .ADR0(dut_inputs[58]),
    .ADR3(G427gat),
    .O(N01)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y24" ),
    .INIT ( 64'hF3FF30333FF30330 ))
  n05361_SW0 (
    .ADR0(1'b1),
    .ADR5(dut_inputs[25]),
    .ADR2(dut_inputs[69]),
    .ADR4(dut_inputs[67]),
    .ADR1(n0377_891),
    .ADR3(n0379),
    .O(N17)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y24" ),
    .INIT ( 64'hAAAA5AAAAA9A5A9A ))
  out3714_SW2 (
    .ADR0(dut_inputs[47]),
    .ADR1(dut_inputs[79]),
    .ADR2(N56),
    .ADR4(N35),
    .ADR3(n0375_857),
    .ADR5(N34),
    .O(N42)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y24" ),
    .INIT ( 64'hF000F00000000000 ))
  out71 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(dut_inputs[86]),
    .ADR5(dut_inputs[90]),
    .ADR3(dut_inputs[72]),
    .O(NlwRenamedSig_OI_dut_outputs[17])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y24" ),
    .INIT ( 64'hDEDDDDDDDDDDDDDD ))
  G491gat (
    .ADR0(dut_inputs[33]),
    .ADR1(dut_inputs[85]),
    .ADR3(dut_inputs[98]),
    .ADR5(dut_inputs[97]),
    .ADR2(N8),
    .ADR4(NlwRenamedSig_OI_dut_outputs[17]),
    .O(G491gat_860)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y25" ),
    .INIT ( 64'hFFF7FFFDFFF8FFF2 ))
  G854gat6 (
    .ADR5(dut_inputs[19]),
    .ADR0(dut_inputs[76]),
    .ADR4(xenc46),
    .ADR3(G854gat5_923),
    .ADR2(G854gat4_922),
    .ADR1(n0536),
    .O(dut_outputs[2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y25" ),
    .INIT ( 64'h09900000CEECCCCC ))
  out312_SW1 (
    .ADR3(dut_inputs[40]),
    .ADR0(dut_inputs[25]),
    .ADR4(dut_inputs[70]),
    .ADR1(dut_inputs[69]),
    .ADR2(G573gat),
    .ADR5(n0379),
    .O(N40)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y25" ),
    .INIT ( 64'h0000CCFF3300FFFF ))
  n05361 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(G713gat),
    .ADR4(N39),
    .ADR3(out311),
    .ADR5(N40),
    .O(n0536)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y25" ),
    .INIT ( 64'h2212323377B73733 ))
  G877gat1 (
    .ADR0(dut_inputs[10]),
    .ADR2(dut_inputs[67]),
    .ADR3(n0377_891),
    .ADR5(N43),
    .ADR1(N42),
    .ADR4(n0536),
    .O(dut_outputs[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y26" ),
    .INIT ( 64'h7700112277001122 ))
  G839gat1_SW0 (
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR1(dut_inputs[83]),
    .ADR3(dut_inputs[11]),
    .ADR0(dut_inputs[73]),
    .ADR4(n0692),
    .O(N54)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y26" ),
    .INIT ( 64'hA0A0AAAA00A000AA ))
  n03791 (
    .ADR1(1'b1),
    .ADR4(dut_inputs[58]),
    .ADR3(dut_inputs[50]),
    .ADR2(n0294),
    .ADR0(G491gat_860),
    .ADR5(n0287),
    .O(n0379)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y26" ),
    .INIT ( 64'hD00DFFD0E00EFFE0 ))
  out312_SW0 (
    .ADR0(dut_inputs[40]),
    .ADR2(dut_inputs[25]),
    .ADR1(dut_inputs[70]),
    .ADR3(dut_inputs[69]),
    .ADR5(G573gat),
    .ADR4(n0379),
    .O(N39)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'hFF80FF0000000000 ))
  G838gat3_SW0 (
    .ADR5(dut_inputs[70]),
    .ADR3(dut_inputs[77]),
    .ADR4(dut_inputs[89]),
    .ADR0(dut_inputs[94]),
    .ADR2(dut_inputs[95]),
    .ADR1(G400gat1),
    .O(N61)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'h33333333CCCCCCCC ))
  \Mxor_xenc6_xo<0>1_SW0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(dut_inputs[6]),
    .ADR5(dut_inputs[64]),
    .O(N66)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'hAAAA0000AAAA0000 ))
  G400gat2_SW1 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(dut_inputs[94]),
    .ADR4(dut_inputs[89]),
    .O(N73)
  );
  X_BUF   \u0/dut/n0373/u0/dut/n0373_CMUX_Delay  (
    .I(N51),
    .O(N51_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y22" ))
  out271_SW2 (
    .IA(N85),
    .IB(N86),
    .O(N51),
    .SEL(n0375_857)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'hFFFFD4FBD4FB0000 ))
  out271_SW2_F (
    .ADR3(dut_inputs[18]),
    .ADR4(dut_inputs[64]),
    .ADR1(dut_inputs[65]),
    .ADR2(dut_inputs[66]),
    .ADR5(xenc6),
    .ADR0(n0373_858),
    .O(N85)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'hFFFF559955990000 ))
  out271_SW2_G (
    .ADR2(1'b1),
    .ADR0(dut_inputs[18]),
    .ADR4(dut_inputs[64]),
    .ADR1(dut_inputs[65]),
    .ADR5(xenc6),
    .ADR3(n0373_858),
    .O(N86)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'h000F00000005000A ))
  n0373 (
    .ADR1(1'b1),
    .ADR4(dut_inputs[30]),
    .ADR0(dut_inputs[107]),
    .ADR3(G480gat_872),
    .ADR2(N2),
    .ADR5(n0287),
    .O(n0373_858)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'hCECEA00ACECEECCE ))
  G868gat4 (
    .ADR2(dut_inputs[18]),
    .ADR0(dut_inputs[78]),
    .ADR5(dut_inputs[79]),
    .ADR3(dut_inputs[65]),
    .ADR1(G868gat3_929),
    .ADR4(n0373_858),
    .O(G868gat4_928)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 64'hF04BF0F00F0F0F0F ))
  \Mxor_G713gat_xo<0>1  (
    .ADR2(dut_inputs[15]),
    .ADR1(dut_inputs[52]),
    .ADR5(dut_inputs[71]),
    .ADR4(G491gat_860),
    .ADR3(N37),
    .ADR0(n0287),
    .O(G713gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 64'hF1F1FBFBE0E04040 ))
  G858gat1 (
    .ADR3(1'b1),
    .ADR4(N18),
    .ADR1(N17),
    .ADR2(N52_0),
    .ADR5(N51_0),
    .ADR0(n0508),
    .O(dut_outputs[1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 64'hFFFFFAF0FFFFFCF0 ))
  G837gat7 (
    .ADR3(dut_inputs[76]),
    .ADR0(G837gat1_911),
    .ADR1(G837gat2_912),
    .ADR4(G837gat6_913),
    .ADR2(G837gat4_914),
    .ADR5(n0508),
    .O(dut_outputs[24])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 64'h009990F9009990F9 ))
  out312 (
    .ADR5(1'b1),
    .ADR3(dut_inputs[70]),
    .ADR1(G573gat),
    .ADR0(dut_inputs[40]),
    .ADR4(G713gat),
    .ADR2(out311),
    .O(n0508)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 64'hF550F550F5F5F5F5 ))
  out2911 (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR5(dut_inputs[67]),
    .ADR0(dut_inputs[66]),
    .ADR2(n0375_857),
    .ADR3(n0377_891),
    .O(out291)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 64'h0F0F0000070F0800 ))
  G480gat (
    .ADR4(dut_inputs[41]),
    .ADR2(dut_inputs[85]),
    .ADR3(dut_inputs[97]),
    .ADR0(dut_inputs[98]),
    .ADR5(N10),
    .ADR1(NlwRenamedSig_OI_dut_outputs[17]),
    .O(G480gat_872)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 64'h99FF99E400FF00A0 ))
  G837gat6 (
    .ADR1(dut_inputs[25]),
    .ADR2(dut_inputs[78]),
    .ADR0(dut_inputs[69]),
    .ADR5(dut_inputs[77]),
    .ADR4(G837gat5_918),
    .ADR3(n0379),
    .O(G837gat6_913)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 64'hEAC0EAC0EAC0EAC0 ))
  G839gat2 (
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR2(dut_inputs[51]),
    .ADR0(dut_inputs[71]),
    .ADR1(dut_inputs[75]),
    .ADR3(G400gat),
    .O(G839gat2_924)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y20" ),
    .INIT ( 64'hC0FCFFCFF0FFFFFF ))
  out271_SW1 (
    .ADR0(1'b1),
    .ADR4(dut_inputs[18]),
    .ADR2(dut_inputs[65]),
    .ADR1(dut_inputs[66]),
    .ADR5(n0375_857),
    .ADR3(n0373_858),
    .O(N32)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y20" ),
    .INIT ( 64'h0000A5FF00005FFF ))
  out272_SW1 (
    .ADR1(1'b1),
    .ADR2(dut_inputs[24]),
    .ADR3(dut_inputs[76]),
    .ADR0(N12),
    .ADR4(G867gat3_856),
    .ADR5(N32),
    .O(N46)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 64'h3333C3C3F333FFC3 ))
  out271_SW0 (
    .ADR0(1'b1),
    .ADR1(dut_inputs[18]),
    .ADR2(dut_inputs[65]),
    .ADR3(dut_inputs[66]),
    .ADR5(n0375_857),
    .ADR4(n0373_858),
    .O(N31)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 64'h00C300FF003F00FF ))
  out272_SW0 (
    .ADR0(1'b1),
    .ADR2(dut_inputs[24]),
    .ADR4(dut_inputs[76]),
    .ADR1(N12),
    .ADR3(G867gat3_856),
    .ADR5(N31),
    .O(N45)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 64'hC0C0C0C0C0C0C0C0 ))
  n0377_SW0 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR1(dut_inputs[61]),
    .ADR2(dut_inputs[56]),
    .O(N4)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 64'hF595959595959595 ))
  G867gat3_SW0 (
    .ADR0(dut_inputs[8]),
    .ADR5(dut_inputs[95]),
    .ADR2(dut_inputs[64]),
    .ADR1(dut_inputs[77]),
    .ADR4(N73),
    .ADR3(G400gat1),
    .O(N22)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 64'h6333336366333366 ))
  G867gat4_SW0 (
    .ADR4(dut_inputs[4]),
    .ADR5(dut_inputs[106]),
    .ADR1(N66),
    .ADR3(G480gat_872),
    .ADR0(N01),
    .ADR2(n0287),
    .O(N12)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 64'hAA669955AA5AA555 ))
  \Mxor_xenc27_xo<0>1  (
    .ADR0(dut_inputs[27]),
    .ADR2(N17),
    .ADR1(N18),
    .ADR4(N45),
    .ADR3(N46),
    .ADR5(n0508),
    .O(dut_outputs[3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 64'hEAEAEAEAC0C0EAC0 ))
  G868gat2 (
    .ADR0(dut_inputs[12]),
    .ADR1(dut_inputs[106]),
    .ADR2(dut_inputs[75]),
    .ADR3(dut_inputs[79]),
    .ADR5(G868gat1_862),
    .ADR4(n0373_858),
    .O(G868gat2_946)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 64'hFFFFFFFFFFFF8484 ))
  G868gat5 (
    .ADR3(1'b1),
    .ADR1(dut_inputs[77]),
    .ADR0(n0373_858),
    .ADR2(dut_inputs[65]),
    .ADR5(G868gat4_928),
    .ADR4(G868gat2_946),
    .O(G868gat5_881)
  );
  X_BUF   \u0/dut/G868gat3/u0/dut/G868gat3_CMUX_Delay  (
    .I(N64),
    .O(N64_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'h1333333333333333 ))
  G868gat3 (
    .ADR1(dut_inputs[12]),
    .ADR2(dut_inputs[95]),
    .ADR4(dut_inputs[94]),
    .ADR3(dut_inputs[89]),
    .ADR0(dut_inputs[65]),
    .ADR5(G400gat1),
    .O(G868gat3_929)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'h0FF00F0F0FF00F0F ))
  n03831_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(dut_inputs[9]),
    .ADR4(dut_inputs[60]),
    .ADR3(n0294),
    .ADR5(1'b1),
    .O(N37)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 32'hF00FF0F0 ))
  n03831_SW1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(dut_inputs[9]),
    .ADR4(dut_inputs[60]),
    .ADR3(n0294),
    .O(N64)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'hBF3F0000FFFF0000 ))
  n02941 (
    .ADR0(dut_inputs[63]),
    .ADR1(dut_inputs[86]),
    .ADR2(dut_inputs[90]),
    .ADR3(dut_inputs[92]),
    .ADR5(dut_inputs[68]),
    .ADR4(dut_inputs[72]),
    .O(n0294)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'hA52D50D00F0FF0F0 ))
  G717gat1 (
    .ADR4(dut_inputs[71]),
    .ADR2(dut_inputs[15]),
    .ADR5(G491gat_860),
    .ADR3(n0287),
    .ADR1(dut_inputs[52]),
    .ADR0(N64_0),
    .O(G717gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 64'hF2F8F8F2F2F8F2F8 ))
  G868gat6 (
    .ADR0(dut_inputs[76]),
    .ADR1(dut_inputs[65]),
    .ADR3(n0373_858),
    .ADR5(out291),
    .ADR2(G868gat5_881),
    .ADR4(n0639),
    .O(dut_outputs[4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 64'h20DF00FFF00FD02F ))
  \Mxor_n0639_xo<0>1  (
    .ADR3(dut_inputs[5]),
    .ADR1(G713gat),
    .ADR2(N27),
    .ADR5(N48),
    .ADR0(out311),
    .ADR4(N40),
    .O(n0639)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 64'hB4B4FFFFFFB4FFFF ))
  G573gat1 (
    .ADR2(dut_inputs[37]),
    .ADR1(dut_inputs[59]),
    .ADR3(dut_inputs[51]),
    .ADR0(n0294),
    .ADR4(G491gat_860),
    .ADR5(n0287),
    .O(G573gat)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y24" ),
    .INIT ( 64'hFFFFFFFFFF77FF7F ))
  n02873 (
    .ADR1(dut_inputs[90]),
    .ADR2(dut_inputs[68]),
    .ADR0(dut_inputs[72]),
    .ADR4(dut_inputs[89]),
    .ADR3(n02871_932),
    .ADR5(n02872_933),
    .O(n0287)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y25" ),
    .INIT ( 64'h9333993393939999 ))
  \Mxor_n0692_xo<0>1  (
    .ADR1(dut_inputs[39]),
    .ADR4(dut_inputs[53]),
    .ADR5(dut_inputs[62]),
    .ADR3(n0294),
    .ADR0(G491gat_860),
    .ADR2(n0287),
    .O(n0692)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y25" ),
    .INIT ( 64'h21FFA2FF2121A2A2 ))
  out3111 (
    .ADR1(dut_inputs[83]),
    .ADR0(dut_inputs[11]),
    .ADR3(dut_inputs[71]),
    .ADR4(dut_inputs[73]),
    .ADR5(n0383),
    .ADR2(n0692),
    .O(out311)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y25" ),
    .INIT ( 64'h0005050500010101 ))
  n0377 (
    .ADR3(dut_inputs[62]),
    .ADR1(dut_inputs[49]),
    .ADR2(N4),
    .ADR4(G427gat),
    .ADR0(G480gat_872),
    .ADR5(n0287),
    .O(n0377_891)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y25" ),
    .INIT ( 64'hA0A0AAAAF0F0FFFF ))
  n05361_SW2 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(dut_inputs[67]),
    .ADR0(dut_inputs[66]),
    .ADR5(n0375_857),
    .ADR4(n0377_891),
    .O(N27)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y26" ),
    .INIT ( 64'hCC3300CCCC3300CC ))
  G837gat1 (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(dut_inputs[69]),
    .ADR1(dut_inputs[25]),
    .ADR4(n0379),
    .O(G837gat1_911)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y26" ),
    .INIT ( 64'h6F66666F13111113 ))
  out312_SW2 (
    .ADR4(dut_inputs[40]),
    .ADR0(dut_inputs[25]),
    .ADR2(dut_inputs[70]),
    .ADR1(dut_inputs[69]),
    .ADR3(G573gat),
    .ADR5(n0379),
    .O(N48)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y26" ),
    .INIT ( 64'h8C0023008C008C00 ))
  n03831 (
    .ADR1(dut_inputs[9]),
    .ADR5(dut_inputs[60]),
    .ADR2(dut_inputs[52]),
    .ADR4(n0294),
    .ADR3(G491gat_860),
    .ADR0(n0287),
    .O(n0383)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y26" ),
    .INIT ( 64'hB37FF99F807F609F ))
  G839gat4 (
    .ADR3(dut_inputs[34]),
    .ADR1(dut_inputs[15]),
    .ADR0(dut_inputs[71]),
    .ADR5(dut_inputs[78]),
    .ADR2(dut_inputs[77]),
    .ADR4(n0383),
    .O(G839gat4_926)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y27" ),
    .INIT ( 64'hFFB3FFA0FF4CFF5F ))
  G839gat3 (
    .ADR5(dut_inputs[32]),
    .ADR2(dut_inputs[82]),
    .ADR0(dut_inputs[80]),
    .ADR4(dut_inputs[79]),
    .ADR3(G839gat2_924),
    .ADR1(n0383),
    .O(G839gat3_949)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y27" ),
    .INIT ( 64'h33333333363C393C ))
  \Mxor_xenc13_xo<0>1  (
    .ADR1(dut_inputs[13]),
    .ADR3(dut_inputs[76]),
    .ADR4(G717gat),
    .ADR2(G839gat4_926),
    .ADR0(N54),
    .ADR5(G839gat3_949),
    .O(dut_outputs[0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y27" ),
    .INIT ( 64'h33FF33FFCC00CC00 ))
  out3714_SW0_SW0 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR5(dut_inputs[36]),
    .ADR3(dut_inputs[75]),
    .ADR1(dut_inputs[107]),
    .O(N56)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y30" ),
    .INIT ( 64'h1EE16996EE1E9969 ))
  G550gat11 (
    .ADR4(dut_inputs[106]),
    .ADR1(dut_inputs[107]),
    .ADR0(dut_inputs[14]),
    .ADR5(dut_inputs[48]),
    .ADR2(dut_inputs[49]),
    .ADR3(dut_inputs[29]),
    .O(G550gat1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y24" ),
    .INIT ( 64'h00CCCCFF0000CCCC ))
  n05361_SW1 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR5(dut_inputs[69]),
    .ADR1(dut_inputs[67]),
    .ADR4(n0377_891),
    .ADR3(n0379),
    .O(N18)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y25" ),
    .INIT ( 64'h00FFFF00FF0000FF ))
  \Mxor_xenc46_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(dut_inputs[46]),
    .ADR5(dut_inputs[67]),
    .ADR3(n0377_891),
    .O(xenc46)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y34" ),
    .INIT ( 64'h00FFFF00FFFF00FF ))
  \Mxor_xenc38_xo<0>1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(dut_inputs[50]),
    .ADR3(dut_inputs[51]),
    .ADR4(dut_inputs[26]),
    .O(N91)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y34" ),
    .INIT ( 64'hF0F00F0F3C3CC3C3 ))
  G660gat1 (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(dut_inputs[31]),
    .ADR4(dut_inputs[54]),
    .ADR2(G550gat1),
    .ADR5(xenc38),
    .O(dut_outputs[21])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y34" ),
    .INIT ( 64'h21129669DEED6996 ))
  \Mxor_xenc38_xo<0>1  (
    .ADR2(dut_inputs[52]),
    .ADR3(dut_inputs[53]),
    .ADR4(dut_inputs[2]),
    .ADR1(dut_inputs[55]),
    .ADR5(dut_inputs[38]),
    .ADR0(N91),
    .O(xenc38)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y24" ),
    .INIT ( 64'hFFFFFFAFFFFFDDD8 ))
  G854gat4 (
    .ADR5(dut_inputs[28]),
    .ADR2(dut_inputs[79]),
    .ADR3(N58),
    .ADR1(N59_0),
    .ADR4(G854gat1_919),
    .ADR0(n0377_891),
    .O(G854gat4_922)
  );
  X_BUF   \u0/dut/N58/u0/dut/N58_AMUX_Delay  (
    .I(N59),
    .O(N59_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y25" ),
    .INIT ( 64'h0000E3A00000E3A0 ))
  G854gat4_SW0 (
    .ADR4(dut_inputs[45]),
    .ADR3(dut_inputs[77]),
    .ADR2(dut_inputs[67]),
    .ADR1(dut_inputs[46]),
    .ADR0(dut_inputs[78]),
    .ADR5(1'b1),
    .O(N58)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y25" ),
    .INIT ( 32'h00003C00 ))
  G854gat4_SW1 (
    .ADR4(dut_inputs[45]),
    .ADR3(dut_inputs[77]),
    .ADR2(dut_inputs[67]),
    .ADR1(dut_inputs[46]),
    .ADR0(1'b1),
    .O(N59)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y26" ),
    .INIT ( 64'h82AA080A82AA28AA ))
  G854gat5 (
    .ADR0(dut_inputs[45]),
    .ADR1(dut_inputs[46]),
    .ADR5(dut_inputs[78]),
    .ADR2(dut_inputs[67]),
    .ADR3(dut_inputs[77]),
    .ADR4(n0377_891),
    .O(G854gat5_923)
  );
endmodule

