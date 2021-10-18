////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sca_unlock_top_timesim.v
// /___/   /\     Timestamp: Thu Jan 30 16:21:39 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf sca_unlock_top.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim sca_unlock_top.ncd sca_unlock_top_timesim.v 
// Device	: 6slx9tqg144-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: sca_unlock_top.ncd
// Output file	: /home/kaveh/projects/scadobf/ise/xl9_cw/netgen/par/sca_unlock_top_timesim.v
// # of Modules	: 1
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
  H1, H2, H3, H4, H8, LED1, LED2, LED3, H5, H6, H7
);
  input H1;
  input H2;
  input H3;
  input H4;
  input H8;
  output LED1;
  output LED2;
  output LED3;
  output H5;
  output H6;
  output H7;
  wire LED1_OBUF_0;
  wire LED1_OBUF_BUFG_825;
  wire \u0/dut_gen[0].dut/out1110 ;
  wire \u0/dut_gen[0].dut/out118_0 ;
  wire \u0/dut_gen[0].dut/G296gat ;
  wire \u0/dut_inputs[11] ;
  wire \u0/dut_gen[0].dut/N18_0 ;
  wire \u0/dut_gen[0].dut/G224gat ;
  wire \u0/dut_inputs<40>_0 ;
  wire \u0/dut_gen[0].dut/out1111_834 ;
  wire \u0/dut_gen[0].dut/out1112_0 ;
  wire \u0/dut_gen[0].dut/out116_836 ;
  wire \u0/dut_inputs[7] ;
  wire \u0/dut_gen[0].dut/G349gat ;
  wire \u0/dut_gen[0].dut/n0168_0 ;
  wire \u0/dut_inputs<6>_0 ;
  wire \u0/dut_inputs<9>_0 ;
  wire \u0/dut_inputs[42] ;
  wire \u0/dut_gen[0].dut/G247gat ;
  wire \u0/dut_inputs[3] ;
  wire H4_IBUF_0;
  wire \u0/SR/reset_inv ;
  wire H6_OBUF_854;
  wire H8_IBUF_0;
  wire LED3_OBUF_0;
  wire \u0/N01 ;
  wire \u0/SR/shift_reg<15>_0 ;
  wire \u0/SR/shift_reg<23>_0 ;
  wire \u0/SR/shift_reg<35>_0 ;
  wire \u0/SR/shift_reg<43>_0 ;
  wire \u0/SR/shift_reg<51>_0 ;
  wire \u0/SR/shift_reg<63>_0 ;
  wire \u0/dut_inputs[5] ;
  wire \u0/dut_gen[0].dut/G421gat8_916 ;
  wire \u0/dut_gen[0].dut/G418gat ;
  wire \u0/dut_inputs[2] ;
  wire \u0/dut_gen[0].dut/G411gat_919 ;
  wire \u0/dut_gen[0].dut/G357gat ;
  wire \u0/dut_inputs<43>_0 ;
  wire \u0/dut_gen[0].dut/N01_0 ;
  wire \u0/SR/shift_reg<75>_0 ;
  wire \u0/SR/shift_reg<83>_0 ;
  wire H7_OBUF_0;
  wire \u0/dut_gen[0].dut/xenc4 ;
  wire \u0/dut_gen[0].dut/out121_940 ;
  wire \u0/dut_gen[0].dut/out12 ;
  wire \u0/dut_inputs<10>_0 ;
  wire \u0/dut_inputs[8] ;
  wire \u0/dut_gen[0].dut/xenc0 ;
  wire \u0/dut_gen[0].dut/xenc5 ;
  wire \u0/dut_gen[0].dut/N16 ;
  wire \u0/dut_inputs[38] ;
  wire \u0/dut_inputs[41] ;
  wire LED2_OBUF_0;
  wire \u0/dut_gen[0].dut/n0268 ;
  wire \u0/dut_gen[0].dut/n0266 ;
  wire \u0/dut_inputs[20] ;
  wire \u0/dut_gen[0].dut/N6_0 ;
  wire \u0/dut_inputs[18] ;
  wire \u0/dut_gen[0].dut/G199gat ;
  wire \u0/dut_inputs<23>_0 ;
  wire \u0/dut_gen[0].dut/n0272 ;
  wire \u0/dut_gen[0].dut/G417gat ;
  wire \u0/SR/shift_reg<7>_0 ;
  wire \u0/dut_gen[0].dut/G421gat2_966 ;
  wire \u0/dut_inputs<16>_0 ;
  wire \u0/dut_gen[0].dut/G421gat6_968 ;
  wire \u0/dut_inputs[26] ;
  wire \u0/dut_gen[0].dut/G421gat1_970 ;
  wire \u0/dut_gen[0].dut/G421gat5_0 ;
  wire \u0/dut_inputs[12] ;
  wire \u0/dut_gen[0].dut/G421gat4_973 ;
  wire \u0/dut_gen[0].dut/out143_974 ;
  wire \u0/dut_inputs[37] ;
  wire \u0/dut_inputs<35>_0 ;
  wire \u0/dut_gen[0].dut/G236gat ;
  wire \u0/dut_gen[0].dut/out112_978 ;
  wire \u0/dut_gen[0].dut/out111_0 ;
  wire \u0/dut_inputs[30] ;
  wire \u0/dut_inputs[32] ;
  wire \u0/dut_gen[0].dut/xenc1 ;
  wire \u0/dut_gen[0].dut/out113_983 ;
  wire \u0/dut_inputs[25] ;
  wire \u0/dut_gen[0].dut/xenc3 ;
  wire \u0/dut_inputs[33] ;
  wire \u0/dut_inputs[36] ;
  wire \u0/dut_gen[0].dut/G233gat ;
  wire \u0/dut_inputs[28] ;
  wire \u0/dut_inputs[22] ;
  wire \u0/dut_inputs<24>_0 ;
  wire \u0/dut_gen[0].dut/out114_0 ;
  wire \u0/dut_inputs[13] ;
  wire \u0/dut_inputs[19] ;
  wire \u0/dut_inputs<17>_0 ;
  wire \u0/dut_inputs[15] ;
  wire \u0/dut_gen[0].dut/out115_997 ;
  wire \u0/dut_gen[0].dut/out11 ;
  wire \u0/dut_gen[0].dut/out14 ;
  wire \u0/dut_gen[0].dut/out142_1000 ;
  wire \u0/dut_gen[0].dut/out141_1001 ;
  wire \u0/dut_inputs[21] ;
  wire \u0/dut_inputs[29] ;
  wire \u0/dut_gen[0].dut/G421gat3_1004 ;
  wire \u0/dut_inputs<34>_0 ;
  wire \u0/dut_inputs[31] ;
  wire \u0/dut_inputs[14] ;
  wire \u0/dut_gen[0].dut/N2 ;
  wire \u0/dut_gen[0].dut/N8 ;
  wire \u0/dut_inputs[27] ;
  wire \u0/dut_gen[0].dut/N12_0 ;
  wire \u0/dut_inputs<39>_0 ;
  wire \u0/dut_gen[0].dut/N10_0 ;
  wire \u0/dut_gen[0].dut/G227gat ;
  wire \u0/dut_gen[0].dut/N4 ;
  wire \u0/dut_gen[0].dut/N14 ;
  wire \u0/dut_gen[0].dut/G421gat7_1018 ;
  wire xor_out;
  wire \u0/dut_gen[0].dut/G230gat ;
  wire \u0/dut_gen[0].dut/G243gat ;
  wire \u0/dut_gen[0].dut/G239gat ;
  wire \u0/dut_gen[0].dut/G251gat ;
  wire LED1_OBUF_9;
  wire LED2_OBUF_12;
  wire LED3_OBUF_15;
  wire H4_IBUF_18;
  wire H8_IBUF_25;
  wire \u0/dut_gen[0].dut/N14_pack_5 ;
  wire \u0/dut_gen[0].dut/N01 ;
  wire \u0/dut_gen[0].dut/N6 ;
  wire \u0/dut_gen[0].dut/out111_108 ;
  wire \u0/dut_inputs<19>_pack_1 ;
  wire \u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_86CLK ;
  wire \u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_85CLK ;
  wire \u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_84CLK ;
  wire \u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_87CLK ;
  wire H7_OBUF_163;
  wire \u0/SR/shift_reg<86>_rt_162 ;
  wire \u0/dut_inputs[43] ;
  wire \u0/dut_gen[0].dut/out1112_197 ;
  wire \u0/dut_gen[0].dut/n0168 ;
  wire \u0/dut_gen[0].dut/out114_221 ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_3CLK ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_7CLK ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_2CLK ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_6CLK ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_1CLK ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_5CLK ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_0CLK ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_4CLK ;
  wire \u0/SR/shift_reg<5>_pack_4 ;
  wire \u0/SR/shift_reg<4>_rt_246 ;
  wire \u0/SR/shift_reg<6>_pack_6 ;
  wire \u0/SR/shift_reg<5>_rt_238 ;
  wire \u0/SR/shift_reg<6>_rt_231 ;
  wire \u0/SR/shift_reg<4>_pack_2 ;
  wire \u0/SR/shift_reg<3>_rt_225 ;
  wire \u0/dut_inputs[6] ;
  wire \u0/dut_gen[0].dut/G421gat5_251 ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_19CLK ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_23CLK ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_18CLK ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_22CLK ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_17CLK ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_21CLK ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_16CLK ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_20CLK ;
  wire \u0/SR/shift_reg<22>_rt_285 ;
  wire \u0/SR/shift_reg<20>_pack_1 ;
  wire \u0/SR/shift_reg<19>_rt_279 ;
  wire \u0/SR/shift_reg<21>_pack_3 ;
  wire \u0/SR/shift_reg<20>_rt_274 ;
  wire \u0/SR/shift_reg<22>_pack_5 ;
  wire \u0/SR/shift_reg<21>_rt_269 ;
  wire \u0/dut_inputs[40] ;
  wire \u0/dut_gen[0].dut/N18 ;
  wire \u0/dut_inputs[39] ;
  wire \u0/dut_gen[0].dut/N10 ;
  wire \u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_47CLK ;
  wire \u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_51CLK ;
  wire \u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_46CLK ;
  wire \u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_50CLK ;
  wire \u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_45CLK ;
  wire \u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_49CLK ;
  wire \u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_44CLK ;
  wire \u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_48CLK ;
  wire \u0/SR/shift_reg<50>_rt_378 ;
  wire \u0/SR/shift_reg<48>_pack_4 ;
  wire \u0/SR/shift_reg<47>_rt_368 ;
  wire \u0/SR/shift_reg<49>_pack_6 ;
  wire \u0/SR/shift_reg<48>_rt_362 ;
  wire \u0/SR/shift_reg<50>_pack_8 ;
  wire \u0/SR/shift_reg<49>_rt_357 ;
  wire \u0/dut_inputs[16] ;
  wire \u0/dut_inputs<22>_pack_3 ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_39CLK ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_43CLK ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_38CLK ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_42CLK ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_37CLK ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_41CLK ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_36CLK ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_40CLK ;
  wire \u0/SR/shift_reg<42>_rt_431 ;
  wire \u0/SR/shift_reg<40>_pack_1 ;
  wire \u0/SR/shift_reg<39>_rt_425 ;
  wire \u0/SR/shift_reg<41>_pack_3 ;
  wire \u0/SR/shift_reg<40>_rt_420 ;
  wire \u0/SR/shift_reg<42>_pack_5 ;
  wire \u0/SR/shift_reg<41>_rt_415 ;
  wire \u0/dut_gen[0].dut/xenc3_pack_9 ;
  wire \u0/dut_inputs[34] ;
  wire \u0/dut_inputs<30>_pack_3 ;
  wire \u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_27CLK ;
  wire \u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_26CLK ;
  wire \u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_25CLK ;
  wire \u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_24CLK ;
  wire \u0/dut_inputs[24] ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_11CLK ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_15CLK ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_10CLK ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_14CLK ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_9CLK ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_13CLK ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_8CLK ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_12CLK ;
  wire \u0/SR/shift_reg<14>_rt_566 ;
  wire \u0/SR/shift_reg<12>_pack_1 ;
  wire \u0/SR/shift_reg<11>_rt_560 ;
  wire \u0/SR/shift_reg<13>_pack_3 ;
  wire \u0/SR/shift_reg<12>_rt_555 ;
  wire \u0/SR/shift_reg<14>_pack_5 ;
  wire \u0/SR/shift_reg<13>_rt_550 ;
  wire \u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_67CLK ;
  wire \u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_66CLK ;
  wire \u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_65CLK ;
  wire \u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_64CLK ;
  wire \u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_79CLK ;
  wire \u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_83CLK ;
  wire \u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_78CLK ;
  wire \u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_82CLK ;
  wire \u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_77CLK ;
  wire \u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_81CLK ;
  wire \u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_76CLK ;
  wire \u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_80CLK ;
  wire \u0/SR/shift_reg<82>_rt_598 ;
  wire \u0/SR/shift_reg<80>_pack_1 ;
  wire \u0/SR/shift_reg<79>_rt_592 ;
  wire \u0/SR/shift_reg<81>_pack_3 ;
  wire \u0/SR/shift_reg<80>_rt_587 ;
  wire \u0/SR/shift_reg<82>_pack_5 ;
  wire \u0/SR/shift_reg<81>_rt_582 ;
  wire \u0/dut_inputs<36>_pack_1 ;
  wire \u0/dut_inputs[35] ;
  wire \u0/dut_gen[0].dut/N12 ;
  wire \u0/dut_gen[0].dut/out118 ;
  wire \u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_55CLK ;
  wire \u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_54CLK ;
  wire \u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_53CLK ;
  wire \u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_52CLK ;
  wire \u0/dut_inputs<29>_pack_7 ;
  wire \u0/dut_inputs[9] ;
  wire \u0/dut_inputs<12>_pack_3 ;
  wire \u0/dut_inputs[23] ;
  wire \u0/dut_inputs[10] ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_59CLK ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_63CLK ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_58CLK ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_62CLK ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_57CLK ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_61CLK ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_56CLK ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_60CLK ;
  wire \u0/SR/shift_reg<62>_rt_745 ;
  wire \u0/SR/shift_reg<60>_pack_1 ;
  wire \u0/SR/shift_reg<59>_rt_739 ;
  wire \u0/SR/shift_reg<61>_pack_3 ;
  wire \u0/SR/shift_reg<60>_rt_734 ;
  wire \u0/SR/shift_reg<62>_pack_5 ;
  wire \u0/SR/shift_reg<61>_rt_729 ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_31CLK ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_35CLK ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_30CLK ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_34CLK ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_29CLK ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_33CLK ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_28CLK ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_32CLK ;
  wire \u0/SR/shift_reg<34>_rt_767 ;
  wire \u0/SR/shift_reg<32>_pack_1 ;
  wire \u0/SR/shift_reg<31>_rt_761 ;
  wire \u0/SR/shift_reg<33>_pack_3 ;
  wire \u0/SR/shift_reg<32>_rt_756 ;
  wire \u0/SR/shift_reg<34>_pack_5 ;
  wire \u0/SR/shift_reg<33>_rt_751 ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_71CLK ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_75CLK ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_70CLK ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_74CLK ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_69CLK ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_73CLK ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_68CLK ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_72CLK ;
  wire \u0/SR/shift_reg<74>_rt_789 ;
  wire \u0/SR/shift_reg<72>_pack_1 ;
  wire \u0/SR/shift_reg<71>_rt_783 ;
  wire \u0/SR/shift_reg<73>_pack_3 ;
  wire \u0/SR/shift_reg<72>_rt_778 ;
  wire \u0/SR/shift_reg<74>_pack_5 ;
  wire \u0/SR/shift_reg<73>_rt_773 ;
  wire \u0/dut_inputs[17] ;
  wire \u0/dut_inputs<28>_pack_1 ;
  wire \NlwBufferSignal_LED1_OBUF_BUFG/IN ;
  wire \NlwBufferSignal_LED1_OBUF/I ;
  wire \NlwBufferSignal_LED2_OBUF/I ;
  wire \NlwBufferSignal_LED3_OBUF/I ;
  wire \NlwBufferSignal_H6_OBUF/I ;
  wire \NlwBufferSignal_H7_OBUF/I ;
  wire \NlwBufferSignal_u0/SR/shift_reg_86/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_86/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_85/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_85/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_84/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_84/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_87/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_3/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_3/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_7/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_2/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_2/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_6/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_1/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_1/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_5/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_0/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_0/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_4/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_19/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_19/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_23/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_18/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_18/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_22/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_17/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_17/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_21/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_16/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_16/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_20/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_47/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_47/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_51/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_46/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_46/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_50/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_45/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_45/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_49/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_44/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_44/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_48/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_39/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_39/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_43/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_38/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_38/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_42/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_37/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_37/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_41/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_36/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_36/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_40/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_27/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_27/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_26/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_26/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_25/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_25/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_24/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_24/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_11/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_11/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_15/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_10/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_10/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_14/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_9/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_9/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_13/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_8/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_8/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_12/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_67/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_67/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_66/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_66/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_65/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_65/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_64/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_64/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_79/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_79/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_83/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_78/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_78/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_82/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_77/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_77/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_81/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_76/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_76/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_80/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_55/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_55/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_54/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_54/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_53/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_53/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_52/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_52/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_59/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_59/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_63/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_58/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_58/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_62/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_57/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_57/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_61/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_56/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_56/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_60/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_31/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_31/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_35/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_30/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_30/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_34/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_29/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_29/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_33/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_28/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_28/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_32/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_71/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_71/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_75/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_70/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_70/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_74/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_69/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_69/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_73/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_68/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_68/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_72/CLK ;
  wire VCC;
  wire GND;
  wire [6 : 0] \u0/dut_outputs<0> ;
  wire [86 : 0] \u0/SR/shift_reg ;
  initial $sdf_annotate("netgen/par/sca_unlock_top_timesim.sdf");
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y3" ))
  LED1_OBUF_BUFG (
    .I(\NlwBufferSignal_LED1_OBUF_BUFG/IN ),
    .O(LED1_OBUF_BUFG_825)
  );
  X_OPAD #(
    .LOC ( "PAD138" ))
  LED1_5 (
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
  LED2_8 (
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
  LED3_11 (
    .PAD(LED3)
  );
  X_OBUF #(
    .LOC ( "PAD136" ))
  LED3_OBUF (
    .I(\NlwBufferSignal_LED3_OBUF/I ),
    .O(LED3)
  );
  X_IPAD #(
    .LOC ( "PAD7" ))
  H1_15 (
    .PAD(H1)
  );
  X_BUF #(
    .LOC ( "PAD7" ))
  H1_IBUF (
    .O(LED1_OBUF_9),
    .I(H1)
  );
  X_BUF #(
    .LOC ( "PAD7" ))
  \ProtoComp43.IMUX  (
    .I(LED1_OBUF_9),
    .O(LED1_OBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD6" ))
  H2_19 (
    .PAD(H2)
  );
  X_BUF #(
    .LOC ( "PAD6" ))
  H2_IBUF (
    .O(LED2_OBUF_12),
    .I(H2)
  );
  X_BUF #(
    .LOC ( "PAD6" ))
  \ProtoComp43.IMUX.1  (
    .I(LED2_OBUF_12),
    .O(LED2_OBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD5" ))
  H3_23 (
    .PAD(H3)
  );
  X_BUF #(
    .LOC ( "PAD5" ))
  H3_IBUF (
    .O(LED3_OBUF_15),
    .I(H3)
  );
  X_BUF #(
    .LOC ( "PAD5" ))
  \ProtoComp43.IMUX.2  (
    .I(LED3_OBUF_15),
    .O(LED3_OBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD4" ))
  H4_27 (
    .PAD(H4)
  );
  X_BUF #(
    .LOC ( "PAD4" ))
  H4_IBUF (
    .O(H4_IBUF_18),
    .I(H4)
  );
  X_BUF #(
    .LOC ( "PAD4" ))
  \ProtoComp43.IMUX.3  (
    .I(H4_IBUF_18),
    .O(H4_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD2" ))
  H6_30 (
    .PAD(H6)
  );
  X_OBUF #(
    .LOC ( "PAD2" ))
  H6_OBUF (
    .I(\NlwBufferSignal_H6_OBUF/I ),
    .O(H6)
  );
  X_OPAD #(
    .LOC ( "PAD144" ))
  H7_33 (
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
  H8_37 (
    .PAD(H8)
  );
  X_BUF #(
    .LOC ( "PAD143" ))
  H8_IBUF (
    .O(H8_IBUF_25),
    .I(H8)
  );
  X_BUF #(
    .LOC ( "PAD143" ))
  \ProtoComp43.IMUX.4  (
    .I(H8_IBUF_25),
    .O(H8_IBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y47" ),
    .INIT ( 64'hF7FFFFFF7FFFFFFF ))
  \u0/dut_gen[0].dut/G360gat1  (
    .ADR4(\u0/dut_gen[0].dut/out1111_834 ),
    .ADR0(\u0/dut_gen[0].dut/out1112_0 ),
    .ADR3(\u0/dut_gen[0].dut/out116_836 ),
    .ADR1(\u0/dut_gen[0].dut/out1110 ),
    .ADR2(\u0/dut_inputs[7] ),
    .ADR5(\u0/dut_gen[0].dut/G349gat ),
    .O(\u0/dut_outputs<0> [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 64'h4F4FFF4FFFFFFFFF ))
  \u0/dut_gen[0].dut/G411gat  (
    .ADR2(\u0/dut_inputs[42] ),
    .ADR4(\u0/dut_gen[0].dut/G357gat ),
    .ADR3(\u0/dut_inputs<9>_0 ),
    .ADR0(\u0/dut_gen[0].dut/G296gat ),
    .ADR1(\u0/dut_inputs<43>_0 ),
    .ADR5(\u0/dut_gen[0].dut/N01_0 ),
    .O(\u0/dut_gen[0].dut/G411gat_919 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 64'hFFFFAAAAAAAAFFFF ))
  \u0/dut_gen[0].dut/G421gat7  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\u0/dut_gen[0].dut/G418gat ),
    .ADR4(\u0/dut_inputs[2] ),
    .ADR5(\u0/dut_gen[0].dut/G411gat_919 ),
    .O(\u0/dut_gen[0].dut/G421gat8_916 )
  );
  X_BUF   \u0/dut_gen[0].dut/G227gat/u0/dut_gen[0].dut/G227gat_DMUX_Delay  (
    .I(\u0/dut_gen[0].dut/N01 ),
    .O(\u0/dut_gen[0].dut/N01_0 )
  );
  X_BUF   \u0/dut_gen[0].dut/G227gat/u0/dut_gen[0].dut/G227gat_CMUX_Delay  (
    .I(\u0/dut_gen[0].dut/N14_pack_5 ),
    .O(\u0/dut_gen[0].dut/N14 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y49" ),
    .INIT ( 64'hA5A5F0F0A5A5F0F0 ))
  \u0/dut_gen[0].dut/Mxor_G227gat_xo<0>1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(\u0/dut_gen[0].dut/G199gat ),
    .ADR0(\u0/dut_inputs[13] ),
    .ADR4(\u0/dut_inputs[15] ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/G227gat )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y49" ),
    .INIT ( 32'hF0FFF0FF ))
  \u0/dut_gen[0].dut/G411gat_SW0  (
    .ADR0(1'b1),
    .ADR3(\u0/dut_inputs<39>_0 ),
    .ADR2(\u0/dut_gen[0].dut/G199gat ),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\u0/dut_gen[0].dut/N01 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y49" ),
    .INIT ( 64'hFFFEFFFEFFFEFFFE ))
  \u0/dut_gen[0].dut/G430gat1  (
    .ADR4(1'b1),
    .ADR2(\u0/dut_gen[0].dut/n0272 ),
    .ADR1(\u0/dut_gen[0].dut/G417gat ),
    .ADR0(\u0/dut_gen[0].dut/n0266 ),
    .ADR3(\u0/dut_gen[0].dut/n0268 ),
    .ADR5(1'b1),
    .O(\u0/dut_outputs<0> [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y49" ),
    .INIT ( 32'hCFCFCCCC ))
  \u0/dut_gen[0].dut/G432gat_SW0  (
    .ADR4(\u0/dut_gen[0].dut/G418gat ),
    .ADR2(\u0/dut_gen[0].dut/n0272 ),
    .ADR1(\u0/dut_gen[0].dut/G417gat ),
    .ADR3(1'b1),
    .ADR0(1'b1),
    .O(\u0/dut_gen[0].dut/N14_pack_5 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y49" ),
    .INIT ( 64'h080C0A0F00000000 ))
  \u0/dut_gen[0].dut/out2  (
    .ADR5(\u0/dut_inputs[20] ),
    .ADR2(\u0/dut_gen[0].dut/N6_0 ),
    .ADR0(\u0/dut_gen[0].dut/G357gat ),
    .ADR4(\u0/dut_inputs[18] ),
    .ADR1(\u0/dut_gen[0].dut/G199gat ),
    .ADR3(\u0/dut_inputs<23>_0 ),
    .O(\u0/dut_gen[0].dut/n0268 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y49" ),
    .INIT ( 64'hFFFFFFFF0000EAAE ))
  \u0/dut_gen[0].dut/G432gat  (
    .ADR4(\u0/dut_gen[0].dut/n0268 ),
    .ADR1(\u0/dut_gen[0].dut/xenc5 ),
    .ADR3(\u0/dut_inputs[2] ),
    .ADR2(\u0/dut_gen[0].dut/G411gat_919 ),
    .ADR0(\u0/dut_gen[0].dut/N14 ),
    .ADR5(\u0/dut_gen[0].dut/n0266 ),
    .O(\u0/dut_outputs<0> [6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y47" ),
    .INIT ( 64'h7300FF005000FF00 ))
  \u0/dut_gen[0].dut/G421gat5  (
    .ADR3(\u0/dut_gen[0].dut/G357gat ),
    .ADR5(\u0/dut_inputs<40>_0 ),
    .ADR1(\u0/dut_gen[0].dut/G296gat ),
    .ADR4(\u0/dut_inputs[26] ),
    .ADR2(\u0/dut_inputs<16>_0 ),
    .ADR0(\u0/dut_gen[0].dut/G199gat ),
    .O(\u0/dut_gen[0].dut/G421gat6_968 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 64'h6996966996696996 ))
  \u0/dut_outputs[0][6]_reduce_xor_11_xo<0>  (
    .ADR3(\u0/dut_outputs<0> [6]),
    .ADR2(\u0/dut_outputs<0> [3]),
    .ADR0(\u0/dut_outputs<0> [5]),
    .ADR4(\u0/dut_outputs<0> [4]),
    .ADR1(\u0/dut_outputs<0> [2]),
    .ADR5(\u0/N01 ),
    .O(xor_out)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 64'hFFFF0F0FF0F00000 ))
  Mmux_H611 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(H8_IBUF_0),
    .ADR5(xor_out),
    .ADR4(LED3_OBUF_0),
    .O(H6_OBUF_854)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 64'hFFFF00008C880000 ))
  \u0/dut_gen[0].dut/G421gat6  (
    .ADR4(\u0/dut_inputs<10>_0 ),
    .ADR1(\u0/dut_gen[0].dut/G421gat5_0 ),
    .ADR0(\u0/dut_gen[0].dut/G421gat6_968 ),
    .ADR3(\u0/dut_gen[0].dut/G421gat1_970 ),
    .ADR2(\u0/dut_inputs[12] ),
    .ADR5(\u0/dut_gen[0].dut/G421gat4_973 ),
    .O(\u0/dut_gen[0].dut/G421gat7_1018 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 64'hFFFFF0F0FFFFC0F0 ))
  \u0/dut_gen[0].dut/G421gat8  (
    .ADR0(1'b1),
    .ADR2(\u0/dut_gen[0].dut/G421gat1_970 ),
    .ADR1(\u0/dut_outputs<0> [4]),
    .ADR5(\u0/dut_gen[0].dut/G421gat8_916 ),
    .ADR3(\u0/dut_gen[0].dut/xenc5 ),
    .ADR4(\u0/dut_gen[0].dut/G421gat7_1018 ),
    .O(\u0/dut_outputs<0> [3])
  );
  X_BUF   \u0/dut_gen[0].dut/G230gat/u0/dut_gen[0].dut/G230gat_DMUX_Delay  (
    .I(\u0/dut_gen[0].dut/out111_108 ),
    .O(\u0/dut_gen[0].dut/out111_0 )
  );
  X_BUF   \u0/dut_gen[0].dut/G230gat/u0/dut_gen[0].dut/G230gat_BMUX_Delay  (
    .I(\u0/dut_gen[0].dut/N6 ),
    .O(\u0/dut_gen[0].dut/N6_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y49" ),
    .INIT ( 64'hF03CF03CF03CF03C ))
  \u0/dut_gen[0].dut/Mxor_G230gat_xo<0>1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(\u0/dut_gen[0].dut/G199gat ),
    .ADR3(\u0/dut_inputs[18] ),
    .ADR1(\u0/dut_inputs[20] ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/G230gat )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y49" ),
    .INIT ( 32'hFFFF3FF3 ))
  \u0/dut_gen[0].dut/out112  (
    .ADR0(1'b1),
    .ADR4(\u0/dut_inputs<23>_0 ),
    .ADR2(\u0/dut_gen[0].dut/G199gat ),
    .ADR3(\u0/dut_inputs[18] ),
    .ADR1(\u0/dut_inputs[20] ),
    .O(\u0/dut_gen[0].dut/out111_108 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y49" ),
    .INIT ( 64'hD0DDF0FFDDDDFFFF ))
  \u0/dut_gen[0].dut/out143  (
    .ADR1(\u0/dut_inputs<17>_0 ),
    .ADR4(\u0/dut_inputs[15] ),
    .ADR0(\u0/dut_gen[0].dut/G227gat ),
    .ADR2(\u0/dut_inputs[21] ),
    .ADR3(\u0/dut_inputs[20] ),
    .ADR5(\u0/dut_gen[0].dut/G230gat ),
    .O(\u0/dut_gen[0].dut/out142_1000 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y49" ),
    .INIT ( 64'h00F000F000F000F0 ))
  \u0/dut_gen[0].dut/out1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(\u0/dut_inputs<17>_0 ),
    .ADR3(\u0/dut_gen[0].dut/G296gat ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/N4 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y49" ),
    .INIT ( 32'h00AA00AA ))
  \u0/dut_gen[0].dut/out2_SW0  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\u0/dut_inputs[21] ),
    .ADR4(1'b1),
    .ADR3(\u0/dut_gen[0].dut/G296gat ),
    .O(\u0/dut_gen[0].dut/N6 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y49" ),
    .INIT ( 64'hEEEEEEEEEEEEFFEF ))
  \u0/dut_gen[0].dut/G431gat1  (
    .ADR4(\u0/dut_gen[0].dut/G417gat ),
    .ADR5(\u0/dut_gen[0].dut/n0272 ),
    .ADR3(\u0/dut_gen[0].dut/G418gat ),
    .ADR2(\u0/dut_gen[0].dut/xenc5 ),
    .ADR1(\u0/dut_gen[0].dut/n0266 ),
    .ADR0(\u0/dut_gen[0].dut/n0268 ),
    .O(\u0/dut_outputs<0> [5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y50" ),
    .INIT ( 64'hDFFDFFFFEFFEFFFF ))
  \u0/dut_gen[0].dut/G349gat1  (
    .ADR3(\u0/dut_gen[0].dut/G199gat ),
    .ADR2(\u0/dut_inputs[13] ),
    .ADR1(\u0/dut_inputs[19] ),
    .ADR0(\u0/dut_inputs<17>_0 ),
    .ADR5(\u0/dut_gen[0].dut/G296gat ),
    .ADR4(\u0/dut_inputs[15] ),
    .O(\u0/dut_gen[0].dut/G349gat )
  );
  X_BUF   \u0/dut_inputs<18>/u0/dut_inputs<18>_BMUX_Delay  (
    .I(\u0/dut_inputs<19>_pack_1 ),
    .O(\u0/dut_inputs[19] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y51" ),
    .INIT ( 64'hE4E4E4E4E4E4E4E4 ))
  \u0/Mmux_dut_inputs<18>11  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(\u0/SR/shift_reg [62]),
    .ADR1(\u0/SR/shift_reg [18]),
    .ADR2(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[18] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y51" ),
    .INIT ( 32'hF0F0FF00 ))
  \u0/Mmux_dut_inputs<19>11  (
    .ADR4(\u0/SR/shift_reg<63>_0 ),
    .ADR3(\u0/SR/shift_reg [19]),
    .ADR1(1'b1),
    .ADR0(1'b1),
    .ADR2(H4_IBUF_0),
    .O(\u0/dut_inputs<19>_pack_1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y51" ),
    .INIT ( 64'h00008A8A0000008A ))
  \u0/dut_gen[0].dut/out1  (
    .ADR0(\u0/dut_inputs[15] ),
    .ADR4(\u0/dut_gen[0].dut/N4 ),
    .ADR1(\u0/dut_gen[0].dut/G357gat ),
    .ADR3(\u0/dut_inputs[13] ),
    .ADR5(\u0/dut_gen[0].dut/G199gat ),
    .ADR2(\u0/dut_inputs[19] ),
    .O(\u0/dut_gen[0].dut/n0266 )
  );
  X_INV   \INV_u0/SR/shift_reg_86CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_86CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_85CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_85CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_84CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_84CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_87CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_87CLK )
  );
  X_BUF   \u0/SR/shift_reg<86>/u0/SR/shift_reg<86>_AMUX_Delay  (
    .I(H7_OBUF_163),
    .O(H7_OBUF_0)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_86  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_86/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_86/IN ),
    .O(\u0/SR/shift_reg [86]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_85  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_85/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_85/IN ),
    .O(\u0/SR/shift_reg [85]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_84  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_84/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_84/IN ),
    .O(\u0/SR/shift_reg [84]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'hFF00FF00 ))
  \u0/SR/shift_reg<86>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [86]),
    .O(\u0/SR/shift_reg<86>_rt_162 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_87  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_87/CLK ),
    .I(\u0/SR/shift_reg<86>_rt_162 ),
    .O(H7_OBUF_163),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_inputs<42>/u0/dut_inputs<42>_AMUX_Delay  (
    .I(\u0/dut_inputs[43] ),
    .O(\u0/dut_inputs<43>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 64'hFA50FA50FA50FA50 ))
  \u0/Mmux_dut_inputs<42>11  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR0(\u0/SR/shift_reg [86]),
    .ADR2(\u0/SR/shift_reg [42]),
    .ADR3(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[42] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 32'hFF33CC00 ))
  \u0/Mmux_dut_inputs<43>11  (
    .ADR1(H7_OBUF_0),
    .ADR4(\u0/SR/shift_reg<43>_0 ),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR3(H4_IBUF_0),
    .O(\u0/dut_inputs[43] )
  );
  X_BUF   \u0/dut_gen[0].dut/out143/u0/dut_gen[0].dut/out143_DMUX_Delay  (
    .I(\u0/dut_gen[0].dut/out1112_197 ),
    .O(\u0/dut_gen[0].dut/out1112_0 )
  );
  X_BUF   \u0/dut_gen[0].dut/out143/u0/dut_gen[0].dut/out143_BMUX_Delay  (
    .I(\u0/dut_gen[0].dut/n0168 ),
    .O(\u0/dut_gen[0].dut/n0168_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 64'hAFAFFFFFAFAFFFFF ))
  \u0/dut_gen[0].dut/out144  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR0(\u0/dut_inputs[38] ),
    .ADR2(\u0/dut_inputs[37] ),
    .ADR4(\u0/dut_gen[0].dut/G243gat ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/out143_974 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 32'hDFEFFFFF ))
  \u0/dut_gen[0].dut/out1113  (
    .ADR3(\u0/dut_gen[0].dut/G296gat ),
    .ADR1(\u0/dut_inputs[41] ),
    .ADR0(\u0/dut_inputs[38] ),
    .ADR2(\u0/dut_inputs[37] ),
    .ADR4(\u0/dut_gen[0].dut/G243gat ),
    .O(\u0/dut_gen[0].dut/out1112_197 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 64'hD000FFFF0000FFFF ))
  \u0/dut_gen[0].dut/Mxor_G243gat_xo<0>1  (
    .ADR3(\u0/dut_gen[0].dut/xenc0 ),
    .ADR2(\u0/dut_gen[0].dut/out121_940 ),
    .ADR5(\u0/dut_gen[0].dut/out12 ),
    .ADR0(\u0/dut_inputs<10>_0 ),
    .ADR1(\u0/dut_inputs[8] ),
    .ADR4(\u0/dut_gen[0].dut/xenc4 ),
    .O(\u0/dut_gen[0].dut/G243gat )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 64'hA6A6A6A6A6A6A6A6 ))
  \u0/dut_gen[0].dut/Mxor_G247gat_xo<0>1  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(\u0/dut_gen[0].dut/G199gat ),
    .ADR2(\u0/dut_inputs<39>_0 ),
    .ADR1(\u0/dut_inputs[42] ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/G247gat )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 32'h00840084 ))
  \u0/dut_gen[0].dut/n01681  (
    .ADR4(1'b1),
    .ADR3(\u0/dut_inputs<43>_0 ),
    .ADR0(\u0/dut_gen[0].dut/G199gat ),
    .ADR2(\u0/dut_inputs<39>_0 ),
    .ADR1(\u0/dut_inputs[42] ),
    .O(\u0/dut_gen[0].dut/n0168 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 64'h7FFFFFFF3FFFFFFF ))
  \u0/dut_gen[0].dut/G213gat1  (
    .ADR3(\u0/dut_gen[0].dut/xenc4 ),
    .ADR1(\u0/dut_gen[0].dut/out121_940 ),
    .ADR2(\u0/dut_gen[0].dut/out12 ),
    .ADR5(\u0/dut_inputs<10>_0 ),
    .ADR0(\u0/dut_inputs[8] ),
    .ADR4(\u0/dut_gen[0].dut/xenc0 ),
    .O(\u0/dut_outputs<0> [0])
  );
  X_BUF   \u0/dut_gen[0].dut/G236gat/u0/dut_gen[0].dut/G236gat_BMUX_Delay  (
    .I(\u0/dut_gen[0].dut/out114_221 ),
    .O(\u0/dut_gen[0].dut/out114_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y48" ),
    .INIT ( 64'hD555DD5555555555 ))
  \u0/dut_gen[0].dut/Mxor_G236gat_xo<0>1  (
    .ADR1(\u0/dut_gen[0].dut/xenc4 ),
    .ADR5(\u0/dut_gen[0].dut/out121_940 ),
    .ADR3(\u0/dut_gen[0].dut/out12 ),
    .ADR4(\u0/dut_inputs<10>_0 ),
    .ADR2(\u0/dut_inputs[8] ),
    .ADR0(\u0/dut_gen[0].dut/xenc0 ),
    .O(\u0/dut_gen[0].dut/G236gat )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y48" ),
    .INIT ( 64'hCC33FF00CC33FF00 ))
  \u0/dut_gen[0].dut/Mxor_G233gat_xo<0>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\u0/dut_gen[0].dut/G199gat ),
    .ADR1(\u0/dut_inputs[22] ),
    .ADR4(\u0/dut_inputs<24>_0 ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/G233gat )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y48" ),
    .INIT ( 32'hF3FCFFFF ))
  \u0/dut_gen[0].dut/out115  (
    .ADR0(1'b1),
    .ADR2(\u0/dut_inputs[28] ),
    .ADR3(\u0/dut_gen[0].dut/G199gat ),
    .ADR1(\u0/dut_inputs[22] ),
    .ADR4(\u0/dut_inputs<24>_0 ),
    .O(\u0/dut_gen[0].dut/out114_221 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y48" ),
    .INIT ( 64'h8000800000008000 ))
  \u0/dut_gen[0].dut/out123  (
    .ADR3(\u0/dut_gen[0].dut/xenc4 ),
    .ADR2(\u0/dut_gen[0].dut/out121_940 ),
    .ADR1(\u0/dut_gen[0].dut/out12 ),
    .ADR0(\u0/dut_gen[0].dut/xenc0 ),
    .ADR4(\u0/dut_inputs<10>_0 ),
    .ADR5(\u0/dut_inputs[8] ),
    .O(\u0/dut_gen[0].dut/G199gat )
  );
  X_INV   \INV_u0/SR/shift_reg_3CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_3CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_7CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_7CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_2CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_2CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_6CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_6CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_1CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_1CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_5CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_5CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_0CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_0CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_4CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_4CLK )
  );
  X_BUF   \u0/SR/shift_reg<3>/u0/SR/shift_reg<3>_DMUX_Delay  (
    .I(\u0/SR/shift_reg [7]),
    .O(\u0/SR/shift_reg<7>_0 )
  );
  X_BUF   \u0/SR/shift_reg<3>/u0/SR/shift_reg<3>_CMUX_Delay  (
    .I(\u0/SR/shift_reg<6>_pack_6 ),
    .O(\u0/SR/shift_reg [6])
  );
  X_BUF   \u0/SR/shift_reg<3>/u0/SR/shift_reg<3>_BMUX_Delay  (
    .I(\u0/SR/shift_reg<5>_pack_4 ),
    .O(\u0/SR/shift_reg [5])
  );
  X_BUF   \u0/SR/shift_reg<3>/u0/SR/shift_reg<3>_AMUX_Delay  (
    .I(\u0/SR/shift_reg<4>_pack_2 ),
    .O(\u0/SR/shift_reg [4])
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_3/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_3/IN ),
    .O(\u0/SR/shift_reg [3]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 32'hF0F0F0F0 ))
  \u0/SR/shift_reg<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/SR/shift_reg [6]),
    .O(\u0/SR/shift_reg<6>_rt_231 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_7/CLK ),
    .I(\u0/SR/shift_reg<6>_rt_231 ),
    .O(\u0/SR/shift_reg [7]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_2/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_2/IN ),
    .O(\u0/SR/shift_reg [2]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 64'hDD88DD88DD88DD88 ))
  \u0/Mmux_dut_inputs<2>11  (
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR0(\u0/SR/shift_reg [46]),
    .ADR3(\u0/SR/shift_reg [2]),
    .ADR1(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[2] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<5>_rt  (
    .ADR0(1'b1),
    .ADR4(\u0/SR/shift_reg [5]),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\u0/SR/shift_reg<5>_rt_238 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_6/CLK ),
    .I(\u0/SR/shift_reg<5>_rt_238 ),
    .O(\u0/SR/shift_reg<6>_pack_6 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_1/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_1/IN ),
    .O(\u0/SR/shift_reg [1]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 32'hFF00FF00 ))
  \u0/SR/shift_reg<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [4]),
    .O(\u0/SR/shift_reg<4>_rt_246 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_5/CLK ),
    .I(\u0/SR/shift_reg<4>_rt_246 ),
    .O(\u0/SR/shift_reg<5>_pack_4 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_0/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_0/IN ),
    .O(\u0/SR/shift_reg [0]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [3]),
    .O(\u0/SR/shift_reg<3>_rt_225 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_4/CLK ),
    .I(\u0/SR/shift_reg<3>_rt_225 ),
    .O(\u0/SR/shift_reg<4>_pack_2 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_gen[0].dut/G421gat3/u0/dut_gen[0].dut/G421gat3_BMUX_Delay  (
    .I(\u0/dut_gen[0].dut/G421gat5_251 ),
    .O(\u0/dut_gen[0].dut/G421gat5_0 )
  );
  X_BUF   \u0/dut_gen[0].dut/G421gat3/u0/dut_gen[0].dut/G421gat3_AMUX_Delay  (
    .I(\u0/dut_inputs[6] ),
    .O(\u0/dut_inputs<6>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 64'hFF550F00FF550F00 ))
  \u0/dut_gen[0].dut/G421gat31  (
    .ADR1(1'b1),
    .ADR3(\u0/dut_gen[0].dut/G199gat ),
    .ADR4(\u0/dut_gen[0].dut/G296gat ),
    .ADR2(\u0/dut_inputs[11] ),
    .ADR0(\u0/dut_inputs[8] ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/G421gat3_1004 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 32'h05050505 ))
  \u0/dut_gen[0].dut/G421gat4  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/dut_inputs[11] ),
    .ADR0(\u0/dut_inputs[8] ),
    .O(\u0/dut_gen[0].dut/G421gat5_251 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 64'hACACACACACACACAC ))
  \u0/Mmux_dut_inputs<8>11  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/SR/shift_reg [52]),
    .ADR1(\u0/SR/shift_reg [8]),
    .ADR0(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[8] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 32'hAAAAFF00 ))
  \u0/Mmux_dut_inputs<6>11  (
    .ADR4(\u0/SR/shift_reg [50]),
    .ADR3(\u0/SR/shift_reg [6]),
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(H4_IBUF_0),
    .O(\u0/dut_inputs[6] )
  );
  X_INV   \INV_u0/SR/shift_reg_19CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_19CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_23CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_23CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_18CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_18CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_22CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_22CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_17CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_17CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_21CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_21CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_16CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_16CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_20CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_20CLK )
  );
  X_BUF   \u0/SR/shift_reg<19>/u0/SR/shift_reg<19>_DMUX_Delay  (
    .I(\u0/SR/shift_reg [23]),
    .O(\u0/SR/shift_reg<23>_0 )
  );
  X_BUF   \u0/SR/shift_reg<19>/u0/SR/shift_reg<19>_CMUX_Delay  (
    .I(\u0/SR/shift_reg<22>_pack_5 ),
    .O(\u0/SR/shift_reg [22])
  );
  X_BUF   \u0/SR/shift_reg<19>/u0/SR/shift_reg<19>_BMUX_Delay  (
    .I(\u0/SR/shift_reg<21>_pack_3 ),
    .O(\u0/SR/shift_reg [21])
  );
  X_BUF   \u0/SR/shift_reg<19>/u0/SR/shift_reg<19>_AMUX_Delay  (
    .I(\u0/SR/shift_reg<20>_pack_1 ),
    .O(\u0/SR/shift_reg [20])
  );
  X_FF #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_19  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_19/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_19/IN ),
    .O(\u0/SR/shift_reg [19]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 32'hF0F0F0F0 ))
  \u0/SR/shift_reg<22>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/SR/shift_reg [22]),
    .O(\u0/SR/shift_reg<22>_rt_285 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_23  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_23/CLK ),
    .I(\u0/SR/shift_reg<22>_rt_285 ),
    .O(\u0/SR/shift_reg [23]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_18  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_18/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_18/IN ),
    .O(\u0/SR/shift_reg [18]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<21>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [21]),
    .O(\u0/SR/shift_reg<21>_rt_269 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_22  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_22/CLK ),
    .I(\u0/SR/shift_reg<21>_rt_269 ),
    .O(\u0/SR/shift_reg<22>_pack_5 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_17  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_17/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_17/IN ),
    .O(\u0/SR/shift_reg [17]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 32'hFF00FF00 ))
  \u0/SR/shift_reg<20>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [20]),
    .O(\u0/SR/shift_reg<20>_rt_274 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_21  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_21/CLK ),
    .I(\u0/SR/shift_reg<20>_rt_274 ),
    .O(\u0/SR/shift_reg<21>_pack_3 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_16  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_16/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_16/IN ),
    .O(\u0/SR/shift_reg [16]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [19]),
    .O(\u0/SR/shift_reg<19>_rt_279 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_20  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_20/CLK ),
    .I(\u0/SR/shift_reg<19>_rt_279 ),
    .O(\u0/SR/shift_reg<20>_pack_1 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_inputs<41>/u0/dut_inputs<41>_DMUX_Delay  (
    .I(\u0/dut_inputs[40] ),
    .O(\u0/dut_inputs<40>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 64'hAAFFAA00AAFFAA00 ))
  \u0/Mmux_dut_inputs<41>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\u0/SR/shift_reg [85]),
    .ADR4(\u0/SR/shift_reg [41]),
    .ADR0(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[41] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 32'hACACACAC ))
  \u0/Mmux_dut_inputs<40>11  (
    .ADR2(\u0/SR/shift_reg [84]),
    .ADR1(\u0/SR/shift_reg [40]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR0(H4_IBUF_0),
    .O(\u0/dut_inputs[40] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 64'hF0F000F0F0F000F0 ))
  \u0/dut_gen[0].dut/Mxor_xenc5_xo<0>_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR2(\u0/dut_inputs[37] ),
    .ADR4(\u0/dut_gen[0].dut/G199gat ),
    .ADR3(\u0/dut_inputs<35>_0 ),
    .O(\u0/dut_gen[0].dut/N16 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 64'hDFFFEFFFEFFFDFFF ))
  \u0/dut_gen[0].dut/out1112  (
    .ADR5(\u0/dut_gen[0].dut/n0168_0 ),
    .ADR4(\u0/dut_inputs<6>_0 ),
    .ADR0(\u0/dut_gen[0].dut/G296gat ),
    .ADR1(\u0/dut_inputs<9>_0 ),
    .ADR2(\u0/dut_inputs[42] ),
    .ADR3(\u0/dut_gen[0].dut/G247gat ),
    .O(\u0/dut_gen[0].dut/out1111_834 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 64'hA020F0305FDF0FCF ))
  \u0/dut_gen[0].dut/Mxor_xenc5_xo<0>  (
    .ADR5(\u0/dut_inputs[5] ),
    .ADR2(\u0/dut_gen[0].dut/N16 ),
    .ADR4(\u0/dut_inputs[38] ),
    .ADR1(\u0/dut_inputs[41] ),
    .ADR3(\u0/dut_gen[0].dut/G357gat ),
    .ADR0(\u0/dut_gen[0].dut/G296gat ),
    .O(\u0/dut_gen[0].dut/xenc5 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 64'hF7F7FBFB00F7FB00 ))
  \u0/dut_gen[0].dut/out1111  (
    .ADR5(\u0/dut_gen[0].dut/out118_0 ),
    .ADR4(\u0/dut_gen[0].dut/G296gat ),
    .ADR3(\u0/dut_inputs[11] ),
    .ADR2(\u0/dut_gen[0].dut/N18_0 ),
    .ADR1(\u0/dut_gen[0].dut/G224gat ),
    .ADR0(\u0/dut_inputs<40>_0 ),
    .O(\u0/dut_gen[0].dut/out1110 )
  );
  X_BUF   \u0/dut_inputs<37>/u0/dut_inputs<37>_DMUX_Delay  (
    .I(\u0/dut_inputs[39] ),
    .O(\u0/dut_inputs<39>_0 )
  );
  X_BUF   \u0/dut_inputs<37>/u0/dut_inputs<37>_BMUX_Delay  (
    .I(\u0/dut_gen[0].dut/N18 ),
    .O(\u0/dut_gen[0].dut/N18_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 64'hAACCAACCAACCAACC ))
  \u0/Mmux_dut_inputs<37>11  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(\u0/SR/shift_reg [81]),
    .ADR1(\u0/SR/shift_reg [37]),
    .ADR0(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[37] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 32'hAFAFA0A0 ))
  \u0/Mmux_dut_inputs<39>11  (
    .ADR2(\u0/SR/shift_reg<83>_0 ),
    .ADR4(\u0/SR/shift_reg [39]),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR0(H4_IBUF_0),
    .O(\u0/dut_inputs[39] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 64'h3333CC335555AA55 ))
  \u0/dut_gen[0].dut/Mxor_xenc4_xo<0>1  (
    .ADR2(1'b1),
    .ADR4(\u0/dut_inputs<35>_0 ),
    .ADR3(\u0/dut_inputs[37] ),
    .ADR5(\u0/SR/shift_reg [48]),
    .ADR0(\u0/SR/shift_reg [4]),
    .ADR1(H4_IBUF_0),
    .O(\u0/dut_gen[0].dut/xenc4 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 64'h99AA99AA99AA99AA ))
  \u0/dut_gen[0].dut/Mxor_G224gat_xo<0>1  (
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR0(\u0/dut_gen[0].dut/G199gat ),
    .ADR1(\u0/dut_inputs<16>_0 ),
    .ADR3(\u0/dut_inputs[26] ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/G224gat )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 32'hFFFF00FF ))
  \u0/dut_gen[0].dut/out1111_SW0  (
    .ADR0(1'b1),
    .ADR4(\u0/dut_inputs[14] ),
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\u0/dut_inputs[26] ),
    .O(\u0/dut_gen[0].dut/N18 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 64'hCF45CFCFFF55FFFF ))
  \u0/dut_gen[0].dut/out142  (
    .ADR3(\u0/dut_inputs[25] ),
    .ADR4(\u0/dut_inputs<24>_0 ),
    .ADR0(\u0/dut_gen[0].dut/G233gat ),
    .ADR1(\u0/dut_inputs<40>_0 ),
    .ADR5(\u0/dut_inputs[26] ),
    .ADR2(\u0/dut_gen[0].dut/G224gat ),
    .O(\u0/dut_gen[0].dut/out141_1001 )
  );
  X_BUF   \u0/SR/reset_inv/u0/SR/reset_inv_AMUX_Delay  (
    .I(\u0/dut_gen[0].dut/N10 ),
    .O(\u0/dut_gen[0].dut/N10_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \u0/SR/reset_inv1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR4(LED3_OBUF_0),
    .O(\u0/SR/reset_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \u0/dut_gen[0].dut/out3_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\u0/dut_inputs[25] ),
    .ADR4(\u0/dut_gen[0].dut/G296gat ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/N8 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 32'h0000CCCC ))
  \u0/dut_gen[0].dut/out5_SW0  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\u0/dut_inputs[30] ),
    .ADR3(1'b1),
    .ADR4(\u0/dut_gen[0].dut/G296gat ),
    .O(\u0/dut_gen[0].dut/N10 )
  );
  X_INV   \INV_u0/SR/shift_reg_47CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_47CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_51CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_51CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_46CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_46CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_50CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_50CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_45CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_45CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_49CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_49CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_44CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_44CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_48CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_48CLK )
  );
  X_BUF   \u0/SR/shift_reg<47>/u0/SR/shift_reg<47>_DMUX_Delay  (
    .I(\u0/SR/shift_reg [51]),
    .O(\u0/SR/shift_reg<51>_0 )
  );
  X_BUF   \u0/SR/shift_reg<47>/u0/SR/shift_reg<47>_CMUX_Delay  (
    .I(\u0/SR/shift_reg<50>_pack_8 ),
    .O(\u0/SR/shift_reg [50])
  );
  X_BUF   \u0/SR/shift_reg<47>/u0/SR/shift_reg<47>_BMUX_Delay  (
    .I(\u0/SR/shift_reg<49>_pack_6 ),
    .O(\u0/SR/shift_reg [49])
  );
  X_BUF   \u0/SR/shift_reg<47>/u0/SR/shift_reg<47>_AMUX_Delay  (
    .I(\u0/SR/shift_reg<48>_pack_4 ),
    .O(\u0/SR/shift_reg [48])
  );
  X_FF #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_47  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_47/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_47/IN ),
    .O(\u0/SR/shift_reg [47]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 64'hCCCCFF00CCCCFF00 ))
  \u0/Mmux_dut_inputs<3>11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\u0/SR/shift_reg [3]),
    .ADR4(\u0/SR/shift_reg [47]),
    .ADR1(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[3] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 32'hF0F0F0F0 ))
  \u0/SR/shift_reg<50>_rt  (
    .ADR0(1'b1),
    .ADR2(\u0/SR/shift_reg [50]),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\u0/SR/shift_reg<50>_rt_378 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_51  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_51/CLK ),
    .I(\u0/SR/shift_reg<50>_rt_378 ),
    .O(\u0/SR/shift_reg [51]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_46  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_46/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_46/IN ),
    .O(\u0/SR/shift_reg [46]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<49>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [49]),
    .O(\u0/SR/shift_reg<49>_rt_357 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_50  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_50/CLK ),
    .I(\u0/SR/shift_reg<49>_rt_357 ),
    .O(\u0/SR/shift_reg<50>_pack_8 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_45  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_45/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_45/IN ),
    .O(\u0/SR/shift_reg [45]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 32'hFF00FF00 ))
  \u0/SR/shift_reg<48>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [48]),
    .O(\u0/SR/shift_reg<48>_rt_362 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_49  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_49/CLK ),
    .I(\u0/SR/shift_reg<48>_rt_362 ),
    .O(\u0/SR/shift_reg<49>_pack_6 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_44  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_44/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_44/IN ),
    .O(\u0/SR/shift_reg [44]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 64'hCACACACACACACACA ))
  \u0/Mmux_dut_inputs<5>11  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(\u0/SR/shift_reg [49]),
    .ADR0(\u0/SR/shift_reg [5]),
    .ADR1(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[5] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<47>_rt  (
    .ADR0(1'b1),
    .ADR4(\u0/SR/shift_reg [47]),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\u0/SR/shift_reg<47>_rt_368 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_48  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_48/CLK ),
    .I(\u0/SR/shift_reg<47>_rt_368 ),
    .O(\u0/SR/shift_reg<48>_pack_4 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_inputs<21>/u0/dut_inputs<21>_CMUX_Delay  (
    .I(\u0/dut_inputs<22>_pack_3 ),
    .O(\u0/dut_inputs[22] )
  );
  X_BUF   \u0/dut_inputs<21>/u0/dut_inputs<21>_BMUX_Delay  (
    .I(\u0/dut_inputs[16] ),
    .O(\u0/dut_inputs<16>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y51" ),
    .INIT ( 64'hCCCCAAAACCCCAAAA ))
  \u0/Mmux_dut_inputs<21>11  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [65]),
    .ADR0(\u0/SR/shift_reg [21]),
    .ADR1(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[21] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y51" ),
    .INIT ( 32'hCFC0CFC0 ))
  \u0/Mmux_dut_inputs<22>11  (
    .ADR2(\u0/SR/shift_reg [66]),
    .ADR3(\u0/SR/shift_reg [22]),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(H4_IBUF_0),
    .O(\u0/dut_inputs<22>_pack_3 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y51" ),
    .INIT ( 64'hAFAFA0A0AFAFA0A0 ))
  \u0/Mmux_dut_inputs<15>11  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(\u0/SR/shift_reg [59]),
    .ADR4(\u0/SR/shift_reg<15>_0 ),
    .ADR0(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[15] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y51" ),
    .INIT ( 32'hAACCAACC ))
  \u0/Mmux_dut_inputs<16>11  (
    .ADR3(\u0/SR/shift_reg [60]),
    .ADR1(\u0/SR/shift_reg [16]),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR0(H4_IBUF_0),
    .O(\u0/dut_inputs[16] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y51" ),
    .INIT ( 64'hA020AA22F030FF33 ))
  \u0/dut_gen[0].dut/out121  (
    .ADR3(\u0/dut_inputs[22] ),
    .ADR1(\u0/dut_inputs<24>_0 ),
    .ADR0(\u0/dut_inputs[18] ),
    .ADR5(\u0/dut_inputs[20] ),
    .ADR2(\u0/dut_inputs[13] ),
    .ADR4(\u0/dut_inputs[15] ),
    .O(\u0/dut_gen[0].dut/out12 )
  );
  X_INV   \INV_u0/SR/shift_reg_39CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_39CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_43CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_43CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_38CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_38CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_42CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_42CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_37CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_37CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_41CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_41CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_36CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_36CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_40CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_40CLK )
  );
  X_BUF   \u0/SR/shift_reg<39>/u0/SR/shift_reg<39>_DMUX_Delay  (
    .I(\u0/SR/shift_reg [43]),
    .O(\u0/SR/shift_reg<43>_0 )
  );
  X_BUF   \u0/SR/shift_reg<39>/u0/SR/shift_reg<39>_CMUX_Delay  (
    .I(\u0/SR/shift_reg<42>_pack_5 ),
    .O(\u0/SR/shift_reg [42])
  );
  X_BUF   \u0/SR/shift_reg<39>/u0/SR/shift_reg<39>_BMUX_Delay  (
    .I(\u0/SR/shift_reg<41>_pack_3 ),
    .O(\u0/SR/shift_reg [41])
  );
  X_BUF   \u0/SR/shift_reg<39>/u0/SR/shift_reg<39>_AMUX_Delay  (
    .I(\u0/SR/shift_reg<40>_pack_1 ),
    .O(\u0/SR/shift_reg [40])
  );
  X_FF #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_39  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_39/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_39/IN ),
    .O(\u0/SR/shift_reg [39]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 32'hF0F0F0F0 ))
  \u0/SR/shift_reg<42>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/SR/shift_reg [42]),
    .O(\u0/SR/shift_reg<42>_rt_431 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_43  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_43/CLK ),
    .I(\u0/SR/shift_reg<42>_rt_431 ),
    .O(\u0/SR/shift_reg [43]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_38  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_38/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_38/IN ),
    .O(\u0/SR/shift_reg [38]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<41>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [41]),
    .O(\u0/SR/shift_reg<41>_rt_415 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_42  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_42/CLK ),
    .I(\u0/SR/shift_reg<41>_rt_415 ),
    .O(\u0/SR/shift_reg<42>_pack_5 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_37  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_37/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_37/IN ),
    .O(\u0/SR/shift_reg [37]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 32'hFF00FF00 ))
  \u0/SR/shift_reg<40>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [40]),
    .O(\u0/SR/shift_reg<40>_rt_420 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_41  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_41/CLK ),
    .I(\u0/SR/shift_reg<40>_rt_420 ),
    .O(\u0/SR/shift_reg<41>_pack_3 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_36  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_36/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_36/IN ),
    .O(\u0/SR/shift_reg [36]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<39>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [39]),
    .O(\u0/SR/shift_reg<39>_rt_425 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_40  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_40/CLK ),
    .I(\u0/SR/shift_reg<39>_rt_425 ),
    .O(\u0/SR/shift_reg<40>_pack_1 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_gen[0].dut/out115/u0/dut_gen[0].dut/out115_CMUX_Delay  (
    .I(\u0/dut_gen[0].dut/xenc3_pack_9 ),
    .O(\u0/dut_gen[0].dut/xenc3 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y47" ),
    .INIT ( 64'hCCCCCCCC48CCCCCC ))
  \u0/dut_gen[0].dut/out116  (
    .ADR1(\u0/dut_gen[0].dut/out114_0 ),
    .ADR2(\u0/dut_gen[0].dut/xenc3 ),
    .ADR0(\u0/dut_gen[0].dut/G296gat ),
    .ADR3(\u0/dut_inputs[33] ),
    .ADR5(\u0/dut_inputs[36] ),
    .ADR4(\u0/dut_gen[0].dut/G239gat ),
    .O(\u0/dut_gen[0].dut/out115_997 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y47" ),
    .INIT ( 64'hAA66AA66AA66AA66 ))
  \u0/dut_gen[0].dut/Mxor_G239gat_xo<0>1  (
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR0(\u0/dut_gen[0].dut/G199gat ),
    .ADR3(\u0/dut_inputs[31] ),
    .ADR1(\u0/dut_inputs[33] ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/G239gat )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y47" ),
    .INIT ( 32'h0F0F874B ))
  \u0/dut_gen[0].dut/Mxor_xenc3_xo<0>1  (
    .ADR2(\u0/dut_inputs[3] ),
    .ADR4(\u0/dut_inputs<34>_0 ),
    .ADR0(\u0/dut_gen[0].dut/G199gat ),
    .ADR3(\u0/dut_inputs[31] ),
    .ADR1(\u0/dut_inputs[33] ),
    .O(\u0/dut_gen[0].dut/xenc3_pack_9 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y47" ),
    .INIT ( 64'h3133CCCC3333C4CC ))
  \u0/dut_gen[0].dut/out114  (
    .ADR4(\u0/dut_gen[0].dut/G296gat ),
    .ADR1(\u0/dut_inputs[25] ),
    .ADR5(\u0/dut_gen[0].dut/xenc3 ),
    .ADR0(\u0/dut_inputs[33] ),
    .ADR2(\u0/dut_inputs[36] ),
    .ADR3(\u0/dut_gen[0].dut/G239gat ),
    .O(\u0/dut_gen[0].dut/out113_983 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y47" ),
    .INIT ( 64'h0000444400F00000 ))
  \u0/dut_gen[0].dut/G421gat2  (
    .ADR5(\u0/dut_gen[0].dut/G199gat ),
    .ADR4(\u0/dut_gen[0].dut/G296gat ),
    .ADR2(\u0/dut_inputs<16>_0 ),
    .ADR3(\u0/dut_inputs[8] ),
    .ADR1(\u0/dut_inputs<40>_0 ),
    .ADR0(\u0/dut_inputs[11] ),
    .O(\u0/dut_gen[0].dut/G421gat2_966 )
  );
  X_BUF   \u0/dut_inputs<33>/u0/dut_inputs<33>_DMUX_Delay  (
    .I(\u0/dut_inputs[34] ),
    .O(\u0/dut_inputs<34>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 64'hCCF0CCF0CCF0CCF0 ))
  \u0/Mmux_dut_inputs<33>11  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [77]),
    .ADR2(\u0/SR/shift_reg [33]),
    .ADR1(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[33] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 32'hDDDD8888 ))
  \u0/Mmux_dut_inputs<34>11  (
    .ADR0(\u0/SR/shift_reg [78]),
    .ADR4(\u0/SR/shift_reg [34]),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(H4_IBUF_0),
    .O(\u0/dut_inputs[34] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 64'hC0F04050CCFF4455 ))
  \u0/dut_gen[0].dut/out122  (
    .ADR1(\u0/dut_inputs<16>_0 ),
    .ADR3(\u0/dut_inputs[26] ),
    .ADR4(\u0/dut_inputs<39>_0 ),
    .ADR0(\u0/dut_inputs[42] ),
    .ADR2(\u0/dut_inputs[31] ),
    .ADR5(\u0/dut_inputs[33] ),
    .O(\u0/dut_gen[0].dut/out121_940 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 64'hBFFFFFFFFFFFFFFF ))
  \u0/dut_gen[0].dut/G319gat1  (
    .ADR5(\u0/dut_gen[0].dut/out14 ),
    .ADR1(\u0/dut_gen[0].dut/out143_974 ),
    .ADR0(\u0/dut_gen[0].dut/n0168_0 ),
    .ADR3(\u0/dut_gen[0].dut/out142_1000 ),
    .ADR4(\u0/dut_gen[0].dut/out141_1001 ),
    .ADR2(\u0/dut_gen[0].dut/xenc3 ),
    .O(\u0/dut_outputs<0> [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 64'h5555AAAA5555AAAA ))
  \u0/dut_outputs[0][6]_reduce_xor_11_xo<0>_SW0  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/dut_outputs<0> [1]),
    .ADR0(\u0/dut_outputs<0> [0]),
    .O(\u0/N01 )
  );
  X_BUF   \u0/dut_inputs<32>/u0/dut_inputs<32>_DMUX_Delay  (
    .I(\u0/dut_inputs<30>_pack_3 ),
    .O(\u0/dut_inputs[30] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 64'hCACACACACACACACA ))
  \u0/Mmux_dut_inputs<32>11  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(\u0/SR/shift_reg [76]),
    .ADR0(\u0/SR/shift_reg [32]),
    .ADR1(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[32] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 32'hCCFFCC00 ))
  \u0/Mmux_dut_inputs<30>11  (
    .ADR3(\u0/SR/shift_reg [74]),
    .ADR4(\u0/SR/shift_reg [30]),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR1(H4_IBUF_0),
    .O(\u0/dut_inputs<30>_pack_3 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 64'h3000100030301010 ))
  \u0/dut_gen[0].dut/out5  (
    .ADR2(\u0/dut_inputs[29] ),
    .ADR1(\u0/dut_gen[0].dut/N10_0 ),
    .ADR3(\u0/dut_gen[0].dut/G357gat ),
    .ADR0(\u0/dut_inputs[27] ),
    .ADR4(\u0/dut_gen[0].dut/G199gat ),
    .ADR5(\u0/dut_inputs[32] ),
    .O(\u0/dut_gen[0].dut/n0272 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 64'h0080000000000000 ))
  \u0/dut_gen[0].dut/out145  (
    .ADR1(\u0/dut_gen[0].dut/out14 ),
    .ADR0(\u0/dut_gen[0].dut/out143_974 ),
    .ADR4(\u0/dut_gen[0].dut/out142_1000 ),
    .ADR3(\u0/dut_gen[0].dut/n0168_0 ),
    .ADR5(\u0/dut_gen[0].dut/out141_1001 ),
    .ADR2(\u0/dut_gen[0].dut/xenc3 ),
    .O(\u0/dut_gen[0].dut/G296gat )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 64'h54AA55A855AA55AA ))
  \u0/dut_gen[0].dut/out111  (
    .ADR3(\u0/dut_gen[0].dut/G296gat ),
    .ADR0(\u0/dut_inputs[21] ),
    .ADR4(\u0/dut_inputs[30] ),
    .ADR5(\u0/dut_gen[0].dut/G236gat ),
    .ADR2(\u0/dut_inputs[32] ),
    .ADR1(\u0/dut_gen[0].dut/xenc1 ),
    .O(\u0/dut_gen[0].dut/out11 )
  );
  X_INV   \INV_u0/SR/shift_reg_27CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_27CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_26CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_26CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_25CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_25CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_24CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_24CLK )
  );
  X_BUF   \u0/SR/shift_reg<27>/u0/SR/shift_reg<27>_BMUX_Delay  (
    .I(\u0/dut_inputs[24] ),
    .O(\u0/dut_inputs<24>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_27  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_27/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_27/IN ),
    .O(\u0/SR/shift_reg [27]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 64'hF0F00FF0F00F0F0F ))
  \u0/dut_gen[0].dut/Mxor_xenc1_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\u0/dut_inputs[29] ),
    .ADR3(\u0/SR/shift_reg [45]),
    .ADR5(\u0/SR/shift_reg [1]),
    .ADR4(H4_IBUF_0),
    .O(\u0/dut_gen[0].dut/xenc1 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_26  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_26/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_26/IN ),
    .O(\u0/SR/shift_reg [26]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_25  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_25/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_25/IN ),
    .O(\u0/SR/shift_reg [25]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 64'hFA0AFA0AFA0AFA0A ))
  \u0/Mmux_dut_inputs<26>11  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(\u0/SR/shift_reg [70]),
    .ADR0(\u0/SR/shift_reg [26]),
    .ADR3(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[26] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 32'hFF00CCCC ))
  \u0/Mmux_dut_inputs<24>11  (
    .ADR4(\u0/SR/shift_reg [68]),
    .ADR1(\u0/SR/shift_reg [24]),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR3(H4_IBUF_0),
    .O(\u0/dut_inputs[24] )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_24  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_24/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_24/IN ),
    .O(\u0/SR/shift_reg [24]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 64'hFFFFFFFF50DCFFFF ))
  \u0/dut_gen[0].dut/G421gat1  (
    .ADR5(\u0/dut_gen[0].dut/N2 ),
    .ADR3(\u0/dut_gen[0].dut/G357gat ),
    .ADR1(\u0/dut_inputs[14] ),
    .ADR0(\u0/dut_gen[0].dut/G199gat ),
    .ADR2(\u0/dut_inputs<16>_0 ),
    .ADR4(\u0/dut_inputs[26] ),
    .O(\u0/dut_gen[0].dut/G421gat1_970 )
  );
  X_INV   \INV_u0/SR/shift_reg_11CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_11CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_15CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_15CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_10CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_10CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_14CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_14CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_9CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_9CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_13CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_13CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_8CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_8CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_12CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_12CLK )
  );
  X_BUF   \u0/SR/shift_reg<11>/u0/SR/shift_reg<11>_DMUX_Delay  (
    .I(\u0/SR/shift_reg [15]),
    .O(\u0/SR/shift_reg<15>_0 )
  );
  X_BUF   \u0/SR/shift_reg<11>/u0/SR/shift_reg<11>_CMUX_Delay  (
    .I(\u0/SR/shift_reg<14>_pack_5 ),
    .O(\u0/SR/shift_reg [14])
  );
  X_BUF   \u0/SR/shift_reg<11>/u0/SR/shift_reg<11>_BMUX_Delay  (
    .I(\u0/SR/shift_reg<13>_pack_3 ),
    .O(\u0/SR/shift_reg [13])
  );
  X_BUF   \u0/SR/shift_reg<11>/u0/SR/shift_reg<11>_AMUX_Delay  (
    .I(\u0/SR/shift_reg<12>_pack_1 ),
    .O(\u0/SR/shift_reg [12])
  );
  X_FF #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_11/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_11/IN ),
    .O(\u0/SR/shift_reg [11]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 32'hF0F0F0F0 ))
  \u0/SR/shift_reg<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/SR/shift_reg [14]),
    .O(\u0/SR/shift_reg<14>_rt_566 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_15/CLK ),
    .I(\u0/SR/shift_reg<14>_rt_566 ),
    .O(\u0/SR/shift_reg [15]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_10/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_10/IN ),
    .O(\u0/SR/shift_reg [10]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [13]),
    .O(\u0/SR/shift_reg<13>_rt_550 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_14/CLK ),
    .I(\u0/SR/shift_reg<13>_rt_550 ),
    .O(\u0/SR/shift_reg<14>_pack_5 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_9/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_9/IN ),
    .O(\u0/SR/shift_reg [9]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 32'hFF00FF00 ))
  \u0/SR/shift_reg<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [12]),
    .O(\u0/SR/shift_reg<12>_rt_555 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_13/CLK ),
    .I(\u0/SR/shift_reg<12>_rt_555 ),
    .O(\u0/SR/shift_reg<13>_pack_3 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_8/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_8/IN ),
    .O(\u0/SR/shift_reg [8]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [11]),
    .O(\u0/SR/shift_reg<11>_rt_560 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y51" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_12/CLK ),
    .I(\u0/SR/shift_reg<11>_rt_560 ),
    .O(\u0/SR/shift_reg<12>_pack_1 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \INV_u0/SR/shift_reg_67CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_67CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_66CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_66CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_65CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_65CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_64CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_64CLK )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_67  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_67/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_67/IN ),
    .O(\u0/SR/shift_reg [67]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_66  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_66/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_66/IN ),
    .O(\u0/SR/shift_reg [66]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_65  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_65/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_65/IN ),
    .O(\u0/SR/shift_reg [65]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_64  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_64/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_64/IN ),
    .O(\u0/SR/shift_reg [64]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \INV_u0/SR/shift_reg_79CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_79CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_83CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_83CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_78CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_78CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_82CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_82CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_77CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_77CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_81CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_81CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_76CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_76CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_80CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_80CLK )
  );
  X_BUF   \u0/SR/shift_reg<79>/u0/SR/shift_reg<79>_DMUX_Delay  (
    .I(\u0/SR/shift_reg [83]),
    .O(\u0/SR/shift_reg<83>_0 )
  );
  X_BUF   \u0/SR/shift_reg<79>/u0/SR/shift_reg<79>_CMUX_Delay  (
    .I(\u0/SR/shift_reg<82>_pack_5 ),
    .O(\u0/SR/shift_reg [82])
  );
  X_BUF   \u0/SR/shift_reg<79>/u0/SR/shift_reg<79>_BMUX_Delay  (
    .I(\u0/SR/shift_reg<81>_pack_3 ),
    .O(\u0/SR/shift_reg [81])
  );
  X_BUF   \u0/SR/shift_reg<79>/u0/SR/shift_reg<79>_AMUX_Delay  (
    .I(\u0/SR/shift_reg<80>_pack_1 ),
    .O(\u0/SR/shift_reg [80])
  );
  X_FF #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_79  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_79/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_79/IN ),
    .O(\u0/SR/shift_reg [79]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 32'hF0F0F0F0 ))
  \u0/SR/shift_reg<82>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/SR/shift_reg [82]),
    .O(\u0/SR/shift_reg<82>_rt_598 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_83  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_83/CLK ),
    .I(\u0/SR/shift_reg<82>_rt_598 ),
    .O(\u0/SR/shift_reg [83]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_78  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_78/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_78/IN ),
    .O(\u0/SR/shift_reg [78]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<81>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [81]),
    .O(\u0/SR/shift_reg<81>_rt_582 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_82  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_82/CLK ),
    .I(\u0/SR/shift_reg<81>_rt_582 ),
    .O(\u0/SR/shift_reg<82>_pack_5 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_77  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_77/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_77/IN ),
    .O(\u0/SR/shift_reg [77]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 32'hFF00FF00 ))
  \u0/SR/shift_reg<80>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [80]),
    .O(\u0/SR/shift_reg<80>_rt_587 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_81  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_81/CLK ),
    .I(\u0/SR/shift_reg<80>_rt_587 ),
    .O(\u0/SR/shift_reg<81>_pack_3 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_76  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_76/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_76/IN ),
    .O(\u0/SR/shift_reg [76]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<79>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [79]),
    .O(\u0/SR/shift_reg<79>_rt_592 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_80  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_80/CLK ),
    .I(\u0/SR/shift_reg<79>_rt_592 ),
    .O(\u0/SR/shift_reg<80>_pack_1 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_gen[0].dut/out116/u0/dut_gen[0].dut/out116_BMUX_Delay  (
    .I(\u0/dut_inputs<36>_pack_1 ),
    .O(\u0/dut_inputs[36] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 64'hFCFCFCFCFC00FC00 ))
  \u0/dut_gen[0].dut/out117  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(\u0/dut_gen[0].dut/out11 ),
    .ADR1(\u0/dut_gen[0].dut/out112_978 ),
    .ADR3(\u0/dut_gen[0].dut/out113_983 ),
    .ADR5(\u0/dut_gen[0].dut/out115_997 ),
    .O(\u0/dut_gen[0].dut/out116_836 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 64'h2080000000000000 ))
  \u0/dut_gen[0].dut/out1114  (
    .ADR4(\u0/dut_gen[0].dut/out1111_834 ),
    .ADR2(\u0/dut_gen[0].dut/out1112_0 ),
    .ADR5(\u0/dut_gen[0].dut/out116_836 ),
    .ADR0(\u0/dut_gen[0].dut/out1110 ),
    .ADR1(\u0/dut_inputs[7] ),
    .ADR3(\u0/dut_gen[0].dut/G349gat ),
    .O(\u0/dut_gen[0].dut/G357gat )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 64'hDD88DD88DD88DD88 ))
  \u0/Mmux_dut_inputs<38>11  (
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR0(\u0/SR/shift_reg [82]),
    .ADR3(\u0/SR/shift_reg [38]),
    .ADR1(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[38] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 32'hCCCCF0F0 ))
  \u0/Mmux_dut_inputs<36>11  (
    .ADR4(\u0/SR/shift_reg [80]),
    .ADR2(\u0/SR/shift_reg [36]),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(H4_IBUF_0),
    .O(\u0/dut_inputs<36>_pack_1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 64'h0000CF0000004500 ))
  \u0/dut_gen[0].dut/out6  (
    .ADR3(\u0/dut_inputs[33] ),
    .ADR4(\u0/dut_gen[0].dut/N12_0 ),
    .ADR1(\u0/dut_gen[0].dut/G357gat ),
    .ADR0(\u0/dut_inputs[31] ),
    .ADR5(\u0/dut_gen[0].dut/G199gat ),
    .ADR2(\u0/dut_inputs[36] ),
    .O(\u0/dut_gen[0].dut/G418gat )
  );
  X_BUF   \u0/dut_gen[0].dut/N2/u0/dut_gen[0].dut/N2_BMUX_Delay  (
    .I(\u0/dut_gen[0].dut/N12 ),
    .O(\u0/dut_gen[0].dut/N12_0 )
  );
  X_BUF   \u0/dut_gen[0].dut/N2/u0/dut_gen[0].dut/N2_AMUX_Delay  (
    .I(\u0/dut_inputs[35] ),
    .O(\u0/dut_inputs<35>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 64'h2222222222222222 ))
  \u0/dut_gen[0].dut/G421gat1_SW0  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR0(\u0/dut_inputs<40>_0 ),
    .ADR1(\u0/dut_gen[0].dut/G296gat ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/N2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 32'h33330000 ))
  \u0/dut_gen[0].dut/out6_SW0  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\u0/dut_inputs<34>_0 ),
    .ADR3(1'b1),
    .ADR1(\u0/dut_gen[0].dut/G296gat ),
    .O(\u0/dut_gen[0].dut/N12 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 64'hFF00AAAAFF00AAAA ))
  \u0/Mmux_dut_inputs<31>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\u0/SR/shift_reg<75>_0 ),
    .ADR0(\u0/SR/shift_reg [31]),
    .ADR3(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[31] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 32'hFC0CFC0C ))
  \u0/Mmux_dut_inputs<35>11  (
    .ADR2(\u0/SR/shift_reg [79]),
    .ADR1(\u0/SR/shift_reg<35>_0 ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(H4_IBUF_0),
    .O(\u0/dut_inputs[35] )
  );
  X_BUF   \u0/dut_gen[0].dut/G251gat/u0/dut_gen[0].dut/G251gat_BMUX_Delay  (
    .I(\u0/dut_gen[0].dut/out118 ),
    .O(\u0/dut_gen[0].dut/out118_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 64'hBBBB4444BBBB4444 ))
  \u0/dut_gen[0].dut/Mxor_G251gat_xo<0>1  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/dut_gen[0].dut/G199gat ),
    .ADR0(\u0/dut_inputs[8] ),
    .ADR1(\u0/dut_inputs<10>_0 ),
    .ADR5(1'b1),
    .O(\u0/dut_gen[0].dut/G251gat )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 32'hF7F7FBFB ))
  \u0/dut_gen[0].dut/out119  (
    .ADR3(1'b1),
    .ADR2(\u0/dut_inputs[12] ),
    .ADR4(\u0/dut_gen[0].dut/G199gat ),
    .ADR0(\u0/dut_inputs[8] ),
    .ADR1(\u0/dut_inputs<10>_0 ),
    .O(\u0/dut_gen[0].dut/out118 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 64'hEF00EFEFEFEFEFEF ))
  \u0/dut_gen[0].dut/out141  (
    .ADR1(\u0/dut_gen[0].dut/xenc1 ),
    .ADR0(\u0/dut_inputs[30] ),
    .ADR2(\u0/dut_gen[0].dut/G236gat ),
    .ADR3(\u0/dut_inputs[11] ),
    .ADR5(\u0/dut_inputs<10>_0 ),
    .ADR4(\u0/dut_gen[0].dut/G251gat ),
    .O(\u0/dut_gen[0].dut/out14 )
  );
  X_INV   \INV_u0/SR/shift_reg_55CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_55CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_54CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_54CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_53CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_53CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_52CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_52CLK )
  );
  X_BUF   \u0/SR/shift_reg<55>/u0/SR/shift_reg<55>_DMUX_Delay  (
    .I(\u0/dut_inputs[9] ),
    .O(\u0/dut_inputs<9>_0 )
  );
  X_BUF   \u0/SR/shift_reg<55>/u0/SR/shift_reg<55>_CMUX_Delay  (
    .I(\u0/dut_inputs<29>_pack_7 ),
    .O(\u0/dut_inputs[29] )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_55  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_55/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_55/IN ),
    .O(\u0/SR/shift_reg [55]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y50" ),
    .INIT ( 64'hACACACACACACACAC ))
  \u0/Mmux_dut_inputs<7>11  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/SR/shift_reg<51>_0 ),
    .ADR1(\u0/SR/shift_reg<7>_0 ),
    .ADR0(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[7] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y50" ),
    .INIT ( 32'hAAFFAA00 ))
  \u0/Mmux_dut_inputs<9>11  (
    .ADR3(\u0/SR/shift_reg [53]),
    .ADR4(\u0/SR/shift_reg [9]),
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(H4_IBUF_0),
    .O(\u0/dut_inputs[9] )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_54  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_54/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_54/IN ),
    .O(\u0/SR/shift_reg [54]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y50" ),
    .INIT ( 64'hF0F0FF00F0F0FF00 ))
  \u0/Mmux_dut_inputs<25>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\u0/SR/shift_reg [69]),
    .ADR3(\u0/SR/shift_reg [25]),
    .ADR2(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[25] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y50" ),
    .INIT ( 32'hE4E4E4E4 ))
  \u0/Mmux_dut_inputs<29>11  (
    .ADR0(\u0/SR/shift_reg [73]),
    .ADR1(\u0/SR/shift_reg [29]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(H4_IBUF_0),
    .O(\u0/dut_inputs<29>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_53  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_53/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_53/IN ),
    .O(\u0/SR/shift_reg [53]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y50" ),
    .INIT ( 64'h03F3FC0C03F303F3 ))
  \u0/dut_gen[0].dut/Mxor_xenc0_xo<0>1  (
    .ADR0(1'b1),
    .ADR4(\u0/dut_inputs[27] ),
    .ADR5(\u0/dut_inputs[29] ),
    .ADR2(\u0/SR/shift_reg [44]),
    .ADR1(\u0/SR/shift_reg [0]),
    .ADR3(H4_IBUF_0),
    .O(\u0/dut_gen[0].dut/xenc0 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_52  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_52/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_52/IN ),
    .O(\u0/SR/shift_reg [52]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y50" ),
    .INIT ( 64'hFBFF0000FEFF0000 ))
  \u0/dut_gen[0].dut/out113  (
    .ADR4(\u0/dut_gen[0].dut/out111_0 ),
    .ADR5(\u0/dut_inputs[30] ),
    .ADR1(\u0/dut_gen[0].dut/G296gat ),
    .ADR3(\u0/dut_gen[0].dut/G236gat ),
    .ADR2(\u0/dut_inputs[32] ),
    .ADR0(\u0/dut_gen[0].dut/xenc1 ),
    .O(\u0/dut_gen[0].dut/out112_978 )
  );
  X_BUF   \u0/dut_inputs<11>/u0/dut_inputs<11>_DMUX_Delay  (
    .I(\u0/dut_inputs[10] ),
    .O(\u0/dut_inputs<10>_0 )
  );
  X_BUF   \u0/dut_inputs<11>/u0/dut_inputs<11>_CMUX_Delay  (
    .I(\u0/dut_inputs[23] ),
    .O(\u0/dut_inputs<23>_0 )
  );
  X_BUF   \u0/dut_inputs<11>/u0/dut_inputs<11>_BMUX_Delay  (
    .I(\u0/dut_inputs<12>_pack_3 ),
    .O(\u0/dut_inputs[12] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y51" ),
    .INIT ( 64'hAACCAACCAACCAACC ))
  \u0/Mmux_dut_inputs<11>11  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(\u0/SR/shift_reg [55]),
    .ADR1(\u0/SR/shift_reg [11]),
    .ADR0(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[11] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y51" ),
    .INIT ( 32'hAFAFA0A0 ))
  \u0/Mmux_dut_inputs<10>11  (
    .ADR2(\u0/SR/shift_reg [54]),
    .ADR4(\u0/SR/shift_reg [10]),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR0(H4_IBUF_0),
    .O(\u0/dut_inputs[10] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y51" ),
    .INIT ( 64'hFF00AAAAFF00AAAA ))
  \u0/Mmux_dut_inputs<20>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\u0/SR/shift_reg [64]),
    .ADR0(\u0/SR/shift_reg [20]),
    .ADR3(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[20] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y51" ),
    .INIT ( 32'hFC30FC30 ))
  \u0/Mmux_dut_inputs<23>11  (
    .ADR1(\u0/SR/shift_reg [67]),
    .ADR2(\u0/SR/shift_reg<23>_0 ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(H4_IBUF_0),
    .O(\u0/dut_inputs[23] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y51" ),
    .INIT ( 64'hFA0AFA0AFA0AFA0A ))
  \u0/Mmux_dut_inputs<14>11  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(\u0/SR/shift_reg [58]),
    .ADR0(\u0/SR/shift_reg [14]),
    .ADR3(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[14] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y51" ),
    .INIT ( 32'hFF00CCCC ))
  \u0/Mmux_dut_inputs<12>11  (
    .ADR4(\u0/SR/shift_reg [56]),
    .ADR1(\u0/SR/shift_reg [12]),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR3(H4_IBUF_0),
    .O(\u0/dut_inputs<12>_pack_3 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y51" ),
    .INIT ( 64'hFF0FFF0F440C4404 ))
  \u0/dut_gen[0].dut/G421gat3  (
    .ADR3(\u0/dut_gen[0].dut/G357gat ),
    .ADR2(\u0/dut_inputs[12] ),
    .ADR5(\u0/dut_gen[0].dut/G421gat2_966 ),
    .ADR1(\u0/dut_gen[0].dut/G421gat3_1004 ),
    .ADR0(\u0/dut_inputs[26] ),
    .ADR4(\u0/dut_inputs[14] ),
    .O(\u0/dut_gen[0].dut/G421gat4_973 )
  );
  X_INV   \INV_u0/SR/shift_reg_59CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_59CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_63CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_63CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_58CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_58CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_62CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_62CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_57CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_57CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_61CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_61CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_56CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_56CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_60CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_60CLK )
  );
  X_BUF   \u0/SR/shift_reg<59>/u0/SR/shift_reg<59>_DMUX_Delay  (
    .I(\u0/SR/shift_reg [63]),
    .O(\u0/SR/shift_reg<63>_0 )
  );
  X_BUF   \u0/SR/shift_reg<59>/u0/SR/shift_reg<59>_CMUX_Delay  (
    .I(\u0/SR/shift_reg<62>_pack_5 ),
    .O(\u0/SR/shift_reg [62])
  );
  X_BUF   \u0/SR/shift_reg<59>/u0/SR/shift_reg<59>_BMUX_Delay  (
    .I(\u0/SR/shift_reg<61>_pack_3 ),
    .O(\u0/SR/shift_reg [61])
  );
  X_BUF   \u0/SR/shift_reg<59>/u0/SR/shift_reg<59>_AMUX_Delay  (
    .I(\u0/SR/shift_reg<60>_pack_1 ),
    .O(\u0/SR/shift_reg [60])
  );
  X_FF #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_59  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_59/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_59/IN ),
    .O(\u0/SR/shift_reg [59]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 32'hF0F0F0F0 ))
  \u0/SR/shift_reg<62>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/SR/shift_reg [62]),
    .O(\u0/SR/shift_reg<62>_rt_745 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_63  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_63/CLK ),
    .I(\u0/SR/shift_reg<62>_rt_745 ),
    .O(\u0/SR/shift_reg [63]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_58  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_58/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_58/IN ),
    .O(\u0/SR/shift_reg [58]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<61>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [61]),
    .O(\u0/SR/shift_reg<61>_rt_729 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_62  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_62/CLK ),
    .I(\u0/SR/shift_reg<61>_rt_729 ),
    .O(\u0/SR/shift_reg<62>_pack_5 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_57  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_57/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_57/IN ),
    .O(\u0/SR/shift_reg [57]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 32'hFF00FF00 ))
  \u0/SR/shift_reg<60>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [60]),
    .O(\u0/SR/shift_reg<60>_rt_734 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_61  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_61/CLK ),
    .I(\u0/SR/shift_reg<60>_rt_734 ),
    .O(\u0/SR/shift_reg<61>_pack_3 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_56  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_56/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_56/IN ),
    .O(\u0/SR/shift_reg [56]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<59>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [59]),
    .O(\u0/SR/shift_reg<59>_rt_739 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y52" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_60  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_60/CLK ),
    .I(\u0/SR/shift_reg<59>_rt_739 ),
    .O(\u0/SR/shift_reg<60>_pack_1 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \INV_u0/SR/shift_reg_31CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_31CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_35CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_35CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_30CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_30CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_34CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_34CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_29CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_29CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_33CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_33CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_28CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_28CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_32CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_32CLK )
  );
  X_BUF   \u0/SR/shift_reg<31>/u0/SR/shift_reg<31>_DMUX_Delay  (
    .I(\u0/SR/shift_reg [35]),
    .O(\u0/SR/shift_reg<35>_0 )
  );
  X_BUF   \u0/SR/shift_reg<31>/u0/SR/shift_reg<31>_CMUX_Delay  (
    .I(\u0/SR/shift_reg<34>_pack_5 ),
    .O(\u0/SR/shift_reg [34])
  );
  X_BUF   \u0/SR/shift_reg<31>/u0/SR/shift_reg<31>_BMUX_Delay  (
    .I(\u0/SR/shift_reg<33>_pack_3 ),
    .O(\u0/SR/shift_reg [33])
  );
  X_BUF   \u0/SR/shift_reg<31>/u0/SR/shift_reg<31>_AMUX_Delay  (
    .I(\u0/SR/shift_reg<32>_pack_1 ),
    .O(\u0/SR/shift_reg [32])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_31  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_31/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_31/IN ),
    .O(\u0/SR/shift_reg [31]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 32'hF0F0F0F0 ))
  \u0/SR/shift_reg<34>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/SR/shift_reg [34]),
    .O(\u0/SR/shift_reg<34>_rt_767 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_35  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_35/CLK ),
    .I(\u0/SR/shift_reg<34>_rt_767 ),
    .O(\u0/SR/shift_reg [35]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_30  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_30/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_30/IN ),
    .O(\u0/SR/shift_reg [30]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<33>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [33]),
    .O(\u0/SR/shift_reg<33>_rt_751 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_34  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_34/CLK ),
    .I(\u0/SR/shift_reg<33>_rt_751 ),
    .O(\u0/SR/shift_reg<34>_pack_5 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_29  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_29/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_29/IN ),
    .O(\u0/SR/shift_reg [29]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 32'hFF00FF00 ))
  \u0/SR/shift_reg<32>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [32]),
    .O(\u0/SR/shift_reg<32>_rt_756 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_33  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_33/CLK ),
    .I(\u0/SR/shift_reg<32>_rt_756 ),
    .O(\u0/SR/shift_reg<33>_pack_3 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_28  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_28/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_28/IN ),
    .O(\u0/SR/shift_reg [28]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<31>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [31]),
    .O(\u0/SR/shift_reg<31>_rt_761 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y49" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_32  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_32/CLK ),
    .I(\u0/SR/shift_reg<31>_rt_761 ),
    .O(\u0/SR/shift_reg<32>_pack_1 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \INV_u0/SR/shift_reg_71CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_71CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_75CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_75CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_70CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_70CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_74CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_74CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_69CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_69CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_73CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_73CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_68CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_68CLK )
  );
  X_INV   \INV_u0/SR/shift_reg_72CLK  (
    .I(LED1_OBUF_BUFG_825),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_72CLK )
  );
  X_BUF   \u0/SR/shift_reg<71>/u0/SR/shift_reg<71>_DMUX_Delay  (
    .I(\u0/SR/shift_reg [75]),
    .O(\u0/SR/shift_reg<75>_0 )
  );
  X_BUF   \u0/SR/shift_reg<71>/u0/SR/shift_reg<71>_CMUX_Delay  (
    .I(\u0/SR/shift_reg<74>_pack_5 ),
    .O(\u0/SR/shift_reg [74])
  );
  X_BUF   \u0/SR/shift_reg<71>/u0/SR/shift_reg<71>_BMUX_Delay  (
    .I(\u0/SR/shift_reg<73>_pack_3 ),
    .O(\u0/SR/shift_reg [73])
  );
  X_BUF   \u0/SR/shift_reg<71>/u0/SR/shift_reg<71>_AMUX_Delay  (
    .I(\u0/SR/shift_reg<72>_pack_1 ),
    .O(\u0/SR/shift_reg [72])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_71  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_71/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_71/IN ),
    .O(\u0/SR/shift_reg [71]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 32'hF0F0F0F0 ))
  \u0/SR/shift_reg<74>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\u0/SR/shift_reg [74]),
    .O(\u0/SR/shift_reg<74>_rt_789 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_75  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_75/CLK ),
    .I(\u0/SR/shift_reg<74>_rt_789 ),
    .O(\u0/SR/shift_reg [75]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_70  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_70/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_70/IN ),
    .O(\u0/SR/shift_reg [70]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<73>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [73]),
    .O(\u0/SR/shift_reg<73>_rt_773 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_74  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_74/CLK ),
    .I(\u0/SR/shift_reg<73>_rt_773 ),
    .O(\u0/SR/shift_reg<74>_pack_5 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_69  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_69/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_69/IN ),
    .O(\u0/SR/shift_reg [69]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 32'hFF00FF00 ))
  \u0/SR/shift_reg<72>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\u0/SR/shift_reg [72]),
    .O(\u0/SR/shift_reg<72>_rt_778 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_73  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_73/CLK ),
    .I(\u0/SR/shift_reg<72>_rt_778 ),
    .O(\u0/SR/shift_reg<73>_pack_3 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_68  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_68/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_68/IN ),
    .O(\u0/SR/shift_reg [68]),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 32'hFFFF0000 ))
  \u0/SR/shift_reg<71>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\u0/SR/shift_reg [71]),
    .O(\u0/SR/shift_reg<71>_rt_783 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y50" ),
    .INIT ( 1'b0 ))
  \u0/SR/shift_reg_72  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_72/CLK ),
    .I(\u0/SR/shift_reg<71>_rt_783 ),
    .O(\u0/SR/shift_reg<72>_pack_1 ),
    .RST(\u0/SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_inputs<13>/u0/dut_inputs<13>_BMUX_Delay  (
    .I(\u0/dut_inputs[17] ),
    .O(\u0/dut_inputs<17>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y51" ),
    .INIT ( 64'hFCFC3030FCFC3030 ))
  \u0/Mmux_dut_inputs<13>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(\u0/SR/shift_reg [57]),
    .ADR2(\u0/SR/shift_reg [13]),
    .ADR4(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[13] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y51" ),
    .INIT ( 32'hFFAA5500 ))
  \u0/Mmux_dut_inputs<17>11  (
    .ADR0(\u0/SR/shift_reg [61]),
    .ADR3(\u0/SR/shift_reg [17]),
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(H4_IBUF_0),
    .O(\u0/dut_inputs[17] )
  );
  X_BUF   \u0/dut_inputs<27>/u0/dut_inputs<27>_BMUX_Delay  (
    .I(\u0/dut_inputs<28>_pack_1 ),
    .O(\u0/dut_inputs[28] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y49" ),
    .INIT ( 64'hFAFA0A0AFAFA0A0A ))
  \u0/Mmux_dut_inputs<27>11  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(\u0/SR/shift_reg [71]),
    .ADR0(\u0/SR/shift_reg [27]),
    .ADR4(H4_IBUF_0),
    .ADR5(1'b1),
    .O(\u0/dut_inputs[27] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y49" ),
    .INIT ( 32'hFFCC00CC ))
  \u0/Mmux_dut_inputs<28>11  (
    .ADR3(\u0/SR/shift_reg [72]),
    .ADR1(\u0/SR/shift_reg [28]),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR4(H4_IBUF_0),
    .O(\u0/dut_inputs<28>_pack_1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y49" ),
    .INIT ( 64'h0000CF4500000000 ))
  \u0/dut_gen[0].dut/out3  (
    .ADR5(\u0/dut_inputs<24>_0 ),
    .ADR4(\u0/dut_gen[0].dut/N8 ),
    .ADR1(\u0/dut_gen[0].dut/G357gat ),
    .ADR0(\u0/dut_inputs[22] ),
    .ADR3(\u0/dut_gen[0].dut/G199gat ),
    .ADR2(\u0/dut_inputs[28] ),
    .O(\u0/dut_gen[0].dut/G417gat )
  );
  X_BUF   \NlwBufferBlock_LED1_OBUF_BUFG/IN  (
    .I(LED1_OBUF_0),
    .O(\NlwBufferSignal_LED1_OBUF_BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_LED1_OBUF/I  (
    .I(LED1_OBUF_0),
    .O(\NlwBufferSignal_LED1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_LED2_OBUF/I  (
    .I(LED2_OBUF_0),
    .O(\NlwBufferSignal_LED2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_LED3_OBUF/I  (
    .I(LED3_OBUF_0),
    .O(\NlwBufferSignal_LED3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_H6_OBUF/I  (
    .I(H6_OBUF_854),
    .O(\NlwBufferSignal_H6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_H7_OBUF/I  (
    .I(H7_OBUF_0),
    .O(\NlwBufferSignal_H7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_86/CLK  (
    .I(\u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_86CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_86/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_86/IN  (
    .I(\u0/SR/shift_reg [85]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_86/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_85/CLK  (
    .I(\u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_85CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_85/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_85/IN  (
    .I(\u0/SR/shift_reg [84]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_85/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_84/CLK  (
    .I(\u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_84CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_84/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_84/IN  (
    .I(\u0/SR/shift_reg<83>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_84/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_87/CLK  (
    .I(\u0/SR/shift_reg<86>/INV_u0/SR/shift_reg_87CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_87/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_3/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_3CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_3/IN  (
    .I(\u0/SR/shift_reg [2]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_3/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_7/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_7CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_2/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_2CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_2/IN  (
    .I(\u0/SR/shift_reg [1]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_2/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_6/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_6CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_1/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_1CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_1/IN  (
    .I(\u0/SR/shift_reg [0]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_1/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_5/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_5CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_0/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_0CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_0/IN  (
    .I(LED2_OBUF_0),
    .O(\NlwBufferSignal_u0/SR/shift_reg_0/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_4/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_4CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_19/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_19CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_19/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_19/IN  (
    .I(\u0/SR/shift_reg [18]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_19/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_23/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_23CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_23/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_18/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_18CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_18/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_18/IN  (
    .I(\u0/SR/shift_reg [17]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_18/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_22/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_22CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_22/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_17/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_17CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_17/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_17/IN  (
    .I(\u0/SR/shift_reg [16]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_17/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_21/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_21CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_21/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_16/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_16CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_16/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_16/IN  (
    .I(\u0/SR/shift_reg<15>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_16/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_20/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_20CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_20/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_47/CLK  (
    .I(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_47CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_47/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_47/IN  (
    .I(\u0/SR/shift_reg [46]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_47/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_51/CLK  (
    .I(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_51CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_51/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_46/CLK  (
    .I(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_46CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_46/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_46/IN  (
    .I(\u0/SR/shift_reg [45]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_46/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_50/CLK  (
    .I(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_50CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_50/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_45/CLK  (
    .I(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_45CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_45/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_45/IN  (
    .I(\u0/SR/shift_reg [44]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_45/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_49/CLK  (
    .I(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_49CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_49/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_44/CLK  (
    .I(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_44CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_44/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_44/IN  (
    .I(\u0/SR/shift_reg<43>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_44/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_48/CLK  (
    .I(\u0/SR/shift_reg<47>/INV_u0/SR/shift_reg_48CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_48/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_39/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_39CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_39/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_39/IN  (
    .I(\u0/SR/shift_reg [38]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_39/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_43/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_43CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_43/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_38/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_38CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_38/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_38/IN  (
    .I(\u0/SR/shift_reg [37]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_38/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_42/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_42CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_42/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_37/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_37CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_37/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_37/IN  (
    .I(\u0/SR/shift_reg [36]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_37/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_41/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_41CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_41/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_36/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_36CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_36/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_36/IN  (
    .I(\u0/SR/shift_reg<35>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_36/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_40/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_40CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_40/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_27/CLK  (
    .I(\u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_27CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_27/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_27/IN  (
    .I(\u0/SR/shift_reg [26]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_27/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_26/CLK  (
    .I(\u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_26CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_26/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_26/IN  (
    .I(\u0/SR/shift_reg [25]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_26/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_25/CLK  (
    .I(\u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_25CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_25/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_25/IN  (
    .I(\u0/SR/shift_reg [24]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_25/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_24/CLK  (
    .I(\u0/SR/shift_reg<27>/INV_u0/SR/shift_reg_24CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_24/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_24/IN  (
    .I(\u0/SR/shift_reg<23>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_24/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_11/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_11CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_11/IN  (
    .I(\u0/SR/shift_reg [10]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_11/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_15/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_15CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_15/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_10/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_10CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_10/IN  (
    .I(\u0/SR/shift_reg [9]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_10/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_14/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_14CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_14/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_9/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_9CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_9/IN  (
    .I(\u0/SR/shift_reg [8]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_9/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_13/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_13CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_13/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_8/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_8CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_8/IN  (
    .I(\u0/SR/shift_reg<7>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_8/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_12/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_12CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_12/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_67/CLK  (
    .I(\u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_67CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_67/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_67/IN  (
    .I(\u0/SR/shift_reg [66]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_67/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_66/CLK  (
    .I(\u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_66CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_66/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_66/IN  (
    .I(\u0/SR/shift_reg [65]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_66/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_65/CLK  (
    .I(\u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_65CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_65/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_65/IN  (
    .I(\u0/SR/shift_reg [64]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_65/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_64/CLK  (
    .I(\u0/SR/shift_reg<67>/INV_u0/SR/shift_reg_64CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_64/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_64/IN  (
    .I(\u0/SR/shift_reg<63>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_64/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_79/CLK  (
    .I(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_79CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_79/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_79/IN  (
    .I(\u0/SR/shift_reg [78]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_79/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_83/CLK  (
    .I(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_83CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_83/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_78/CLK  (
    .I(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_78CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_78/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_78/IN  (
    .I(\u0/SR/shift_reg [77]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_78/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_82/CLK  (
    .I(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_82CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_82/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_77/CLK  (
    .I(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_77CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_77/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_77/IN  (
    .I(\u0/SR/shift_reg [76]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_77/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_81/CLK  (
    .I(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_81CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_81/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_76/CLK  (
    .I(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_76CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_76/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_76/IN  (
    .I(\u0/SR/shift_reg<75>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_76/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_80/CLK  (
    .I(\u0/SR/shift_reg<79>/INV_u0/SR/shift_reg_80CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_80/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_55/CLK  (
    .I(\u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_55CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_55/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_55/IN  (
    .I(\u0/SR/shift_reg [54]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_55/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_54/CLK  (
    .I(\u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_54CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_54/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_54/IN  (
    .I(\u0/SR/shift_reg [53]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_54/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_53/CLK  (
    .I(\u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_53CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_53/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_53/IN  (
    .I(\u0/SR/shift_reg [52]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_53/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_52/CLK  (
    .I(\u0/SR/shift_reg<55>/INV_u0/SR/shift_reg_52CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_52/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_52/IN  (
    .I(\u0/SR/shift_reg<51>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_52/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_59/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_59CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_59/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_59/IN  (
    .I(\u0/SR/shift_reg [58]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_59/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_63/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_63CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_63/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_58/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_58CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_58/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_58/IN  (
    .I(\u0/SR/shift_reg [57]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_58/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_62/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_62CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_62/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_57/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_57CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_57/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_57/IN  (
    .I(\u0/SR/shift_reg [56]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_57/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_61/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_61CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_61/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_56/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_56CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_56/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_56/IN  (
    .I(\u0/SR/shift_reg [55]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_56/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_60/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_60CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_60/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_31/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_31CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_31/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_31/IN  (
    .I(\u0/SR/shift_reg [30]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_31/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_35/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_35CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_35/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_30/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_30CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_30/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_30/IN  (
    .I(\u0/SR/shift_reg [29]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_30/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_34/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_34CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_34/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_29/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_29CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_29/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_29/IN  (
    .I(\u0/SR/shift_reg [28]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_29/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_33/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_33CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_33/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_28/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_28CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_28/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_28/IN  (
    .I(\u0/SR/shift_reg [27]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_28/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_32/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_32CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_32/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_71/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_71CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_71/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_71/IN  (
    .I(\u0/SR/shift_reg [70]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_71/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_75/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_75CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_75/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_70/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_70CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_70/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_70/IN  (
    .I(\u0/SR/shift_reg [69]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_70/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_74/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_74CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_74/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_69/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_69CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_69/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_69/IN  (
    .I(\u0/SR/shift_reg [68]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_69/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_73/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_73CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_73/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_68/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_68CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_68/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_68/IN  (
    .I(\u0/SR/shift_reg [67]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_68/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_72/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_72CLK ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_72/CLK )
  );
  X_ONE   NlwBlock_sca_unlock_top_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_sca_unlock_top_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

//module glbl ();

//    parameter ROC_WIDTH = 100000;
//    parameter TOC_WIDTH = 0;

////--------   STARTUP Globals --------------
//    wire GSR;
//    wire GTS;
//    wire GWE;
//    wire PRLD;
//    tri1 p_up_tmp;
//    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

//    wire PROGB_GLBL;
//    wire CCLKO_GLBL;

//    reg GSR_int;
//    reg GTS_int;
//    reg PRLD_int;

////--------   JTAG Globals --------------
//    wire JTAG_TDO_GLBL;
//    wire JTAG_TCK_GLBL;
//    wire JTAG_TDI_GLBL;
//    wire JTAG_TMS_GLBL;
//    wire JTAG_TRST_GLBL;

//    reg JTAG_CAPTURE_GLBL;
//    reg JTAG_RESET_GLBL;
//    reg JTAG_SHIFT_GLBL;
//    reg JTAG_UPDATE_GLBL;
//    reg JTAG_RUNTEST_GLBL;

//    reg JTAG_SEL1_GLBL = 0;
//    reg JTAG_SEL2_GLBL = 0 ;
//    reg JTAG_SEL3_GLBL = 0;
//    reg JTAG_SEL4_GLBL = 0;

//    reg JTAG_USER_TDO1_GLBL = 1'bz;
//    reg JTAG_USER_TDO2_GLBL = 1'bz;
//    reg JTAG_USER_TDO3_GLBL = 1'bz;
//    reg JTAG_USER_TDO4_GLBL = 1'bz;

//    assign (weak1, weak0) GSR = GSR_int;
//    assign (weak1, weak0) GTS = GTS_int;
//    assign (weak1, weak0) PRLD = PRLD_int;

//    initial begin
//	GSR_int = 1'b1;
//	PRLD_int = 1'b1;
//	#(ROC_WIDTH)
//	GSR_int = 1'b0;
//	PRLD_int = 1'b0;
//    end

//    initial begin
//	GTS_int = 1'b1;
//	#(TOC_WIDTH)
//	GTS_int = 1'b0;
//    end

//endmodule

`endif

