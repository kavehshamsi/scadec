////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sca_unlock_sim.v
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
// Module Name: sca_unlock
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

module sca_unlock (
  flip_clk, sca_reset, sca_clk, sca_data_in, shift_out_enable, shift_out_clk, sca_data_out, shift_out_data
);
  input flip_clk;
  input sca_reset;
  input sca_clk;
  input sca_data_in;
  input shift_out_enable;
  input shift_out_clk;
  output sca_data_out;
  output shift_out_data;
  wire \out_scan/shift_reg_0_781 ;
  wire \dut_inputs<63>_0 ;
  wire \dut_inputs<61>_0 ;
  wire \dut_inputs<59>_0 ;
  wire \dut_inputs<57>_0 ;
  wire \dut_inputs<55>_0 ;
  wire \dut_inputs<53>_0 ;
  wire \dut_inputs<51>_0 ;
  wire \dut_inputs<49>_0 ;
  wire \dut_inputs<47>_0 ;
  wire \dut_inputs<45>_0 ;
  wire \dut_inputs<43>_0 ;
  wire \dut_inputs<41>_0 ;
  wire \dut_inputs<39>_0 ;
  wire \dut_inputs<37>_0 ;
  wire \dut_inputs<34>_0 ;
  wire \dut_inputs<33>_0 ;
  wire \dut_inputs<31>_0 ;
  wire \dut_inputs<29>_0 ;
  wire \dut_inputs<27>_0 ;
  wire \dut_inputs<25>_0 ;
  wire \dut_inputs<23>_0 ;
  wire \dut_inputs<21>_0 ;
  wire \dut_inputs<19>_0 ;
  wire \dut_inputs<18>_0 ;
  wire \dut_inputs<15>_0 ;
  wire \dut_inputs<13>_0 ;
  wire \dut_inputs<11>_0 ;
  wire \dut_inputs<9>_0 ;
  wire \dut_inputs<7>_0 ;
  wire \dut_inputs<5>_0 ;
  wire \dut_inputs<3>_0 ;
  wire \dut_inputs<0>_0 ;
  wire dut_outputs;
  wire \SR/shift_reg<79>_0 ;
  wire \SR/shift_reg<15>_0 ;
  wire \SR/shift_reg<78>_0 ;
  wire \SR/shift_reg<14>_0 ;
  wire \SR/shift_reg<7>_0 ;
  wire \SR/shift_reg<6>_0 ;
  wire \SR/shift_reg<91>_0 ;
  wire \SR/shift_reg<27>_0 ;
  wire \SR/shift_reg<90>_0 ;
  wire \SR/shift_reg<26>_0 ;
  wire \SR/shift_reg<64>_0 ;
  wire \SR/shift_reg<66>_0 ;
  wire \SR/shift_reg<98>_0 ;
  wire \SR/shift_reg<34>_0 ;
  wire \SR/shift_reg<100>_0 ;
  wire \SR/shift_reg<103>_0 ;
  wire \SR/shift_reg<102>_0 ;
  wire \SR/shift_reg<111>_0 ;
  wire \SR/shift_reg<47>_0 ;
  wire \SR/shift_reg<110>_0 ;
  wire \SR/shift_reg<46>_0 ;
  wire \SR/shift_reg<119>_0 ;
  wire \SR/shift_reg<55>_0 ;
  wire \SR/shift_reg<118>_0 ;
  wire \SR/shift_reg<54>_0 ;
  wire \SR/shift_reg<126>_0 ;
  wire \SR/shift_reg<67>_0 ;
  wire \SR/shift_reg<65>_0 ;
  wire \SR/shift_reg<77>_0 ;
  wire \SR/shift_reg<13>_0 ;
  wire \SR/shift_reg<76>_0 ;
  wire \SR/shift_reg<12>_0 ;
  wire \SR/shift_reg<89>_0 ;
  wire \SR/shift_reg<25>_0 ;
  wire \SR/shift_reg<88>_0 ;
  wire \SR/shift_reg<24>_0 ;
  wire \SR/shift_reg<97>_0 ;
  wire \SR/shift_reg<33>_0 ;
  wire \SR/shift_reg<96>_0 ;
  wire \SR/shift_reg<32>_0 ;
  wire \SR/shift_reg<101>_0 ;
  wire \SR/shift_reg<99>_0 ;
  wire \SR/shift_reg<35>_0 ;
  wire \SR/shift_reg<5>_0 ;
  wire \SR/shift_reg<4>_0 ;
  wire \SR/shift_reg<109>_0 ;
  wire \SR/shift_reg<45>_0 ;
  wire \SR/shift_reg<108>_0 ;
  wire \SR/shift_reg<44>_0 ;
  wire \SR/shift_reg<117>_0 ;
  wire \SR/shift_reg<53>_0 ;
  wire \SR/shift_reg<116>_0 ;
  wire \SR/shift_reg<52>_0 ;
  wire \SR/shift_reg<125>_0 ;
  wire \SR/shift_reg<124>_0 ;
  wire \SR/reset_inv ;
  wire \shift_out_data_int/INV_u0/out_scan/shift_reg_0CLK_1035 ;
  wire \out_scan/par_in[0]_scan_in_MUX_66_o ;
  wire \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_95CLK_1047 ;
  wire \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_99CLK_1046 ;
  wire \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_94CLK_1045 ;
  wire \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_98CLK_1044 ;
  wire \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_93CLK_1043 ;
  wire \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_97CLK_1042 ;
  wire \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_92CLK_1041 ;
  wire \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_96CLK_1040 ;
  wire \SR/shift_reg<95>_rt_187 ;
  wire \SR/shift_reg<96>_rt_182 ;
  wire \SR/shift_reg<97>_rt_177 ;
  wire \SR/shift_reg<98>_rt_171 ;
  wire \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_87CLK_1060 ;
  wire \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_91CLK_1059 ;
  wire \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_86CLK_1058 ;
  wire \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_90CLK_1057 ;
  wire \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_85CLK_1056 ;
  wire \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_89CLK_1055 ;
  wire \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_84CLK_1054 ;
  wire \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_88CLK_1053 ;
  wire \SR/shift_reg<87>_rt_219 ;
  wire \SR/shift_reg<88>_rt_214 ;
  wire \SR/shift_reg<89>_rt_209 ;
  wire \SR/shift_reg<90>_rt_203 ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_31CLK_1072 ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_35CLK_1071 ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_30CLK_1070 ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_34CLK_1069 ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_29CLK_1068 ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_33CLK_1067 ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_28CLK_1066 ;
  wire \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_32CLK_1065 ;
  wire \SR/shift_reg<31>_rt_241 ;
  wire \SR/shift_reg<32>_rt_236 ;
  wire \SR/shift_reg<33>_rt_231 ;
  wire \SR/shift_reg<34>_rt_225 ;
  wire \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_43CLK_1084 ;
  wire \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_47CLK_1083 ;
  wire \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_42CLK_1082 ;
  wire \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_46CLK_1081 ;
  wire \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_41CLK_1080 ;
  wire \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_45CLK_1079 ;
  wire \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_40CLK_1078 ;
  wire \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_44CLK_1077 ;
  wire \SR/shift_reg<43>_rt_263 ;
  wire \SR/shift_reg<44>_rt_258 ;
  wire \SR/shift_reg<45>_rt_253 ;
  wire \SR/shift_reg<46>_rt_247 ;
  wire \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_63CLK_1101 ;
  wire \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_67CLK_1100 ;
  wire \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_62CLK_1099 ;
  wire \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_66CLK_1098 ;
  wire \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_61CLK_1097 ;
  wire \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_65CLK_1096 ;
  wire \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_60CLK_1095 ;
  wire \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_64CLK_1094 ;
  wire \SR/shift_reg<63>_rt_325 ;
  wire \SR/shift_reg<64>_rt_320 ;
  wire \SR/shift_reg<65>_rt_315 ;
  wire \SR/shift_reg<66>_rt_309 ;
  wire \u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_83CLK_1110 ;
  wire \u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_82CLK_1109 ;
  wire \u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_81CLK_1108 ;
  wire \u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_80CLK_1107 ;
  wire \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_107CLK_1122 ;
  wire \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_111CLK_1121 ;
  wire \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_106CLK_1120 ;
  wire \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_110CLK_1119 ;
  wire \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_105CLK_1118 ;
  wire \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_109CLK_1117 ;
  wire \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_104CLK_1116 ;
  wire \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_108CLK_1115 ;
  wire \SR/shift_reg<107>_rt_397 ;
  wire \SR/shift_reg<108>_rt_392 ;
  wire \SR/shift_reg<109>_rt_387 ;
  wire \SR/shift_reg<110>_rt_381 ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_11CLK_1134 ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_15CLK_1133 ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_10CLK_1132 ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_14CLK_1131 ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_9CLK_1130 ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_13CLK_1129 ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_8CLK_1128 ;
  wire \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_12CLK_1127 ;
  wire \SR/shift_reg<11>_rt_419 ;
  wire \SR/shift_reg<12>_rt_414 ;
  wire \SR/shift_reg<13>_rt_409 ;
  wire \SR/shift_reg<14>_rt_403 ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_3CLK_1146 ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_7CLK_1145 ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_2CLK_1144 ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_6CLK_1143 ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_1CLK_1142 ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_5CLK_1141 ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_0CLK_1140 ;
  wire \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_4CLK_1139 ;
  wire \SR/shift_reg<3>_rt_441 ;
  wire \SR/shift_reg<4>_rt_436 ;
  wire \SR/shift_reg<5>_rt_431 ;
  wire \SR/shift_reg<6>_rt_425 ;
  wire \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_115CLK_1158 ;
  wire \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_119CLK_1157 ;
  wire \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_114CLK_1156 ;
  wire \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_118CLK_1155 ;
  wire \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_113CLK_1154 ;
  wire \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_117CLK_1153 ;
  wire \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_112CLK_1152 ;
  wire \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_116CLK_1151 ;
  wire \SR/shift_reg<115>_rt_463 ;
  wire \SR/shift_reg<116>_rt_458 ;
  wire \SR/shift_reg<117>_rt_453 ;
  wire \SR/shift_reg<118>_rt_447 ;
  wire \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_51CLK_1173 ;
  wire \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_55CLK_1172 ;
  wire \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_50CLK_1171 ;
  wire \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_54CLK_1170 ;
  wire \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_49CLK_1169 ;
  wire \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_53CLK_1168 ;
  wire \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_48CLK_1167 ;
  wire \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_52CLK_1166 ;
  wire \SR/shift_reg<51>_rt_509 ;
  wire \SR/shift_reg<52>_rt_504 ;
  wire \SR/shift_reg<53>_rt_499 ;
  wire \SR/shift_reg<54>_rt_493 ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_59CLK_1180 ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_58CLK_1179 ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_57CLK_1178 ;
  wire \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_56CLK_1177 ;
  wire \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_123CLK_1192 ;
  wire \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_127CLK_1191 ;
  wire \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_122CLK_1190 ;
  wire \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_126CLK_1189 ;
  wire \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_121CLK_1188 ;
  wire \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_125CLK_1187 ;
  wire \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_120CLK_1186 ;
  wire \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_124CLK_1185 ;
  wire \SR/shift_reg<123>_rt_565 ;
  wire \SR/shift_reg<124>_rt_560 ;
  wire \SR/shift_reg<125>_rt_555 ;
  wire \u0/SR/shift_reg<123>/H4_OBUF ;
  wire \SR/shift_reg<126>_rt_549 ;
  wire \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_23CLK_1204 ;
  wire \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_27CLK_1203 ;
  wire \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_22CLK_1202 ;
  wire \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_26CLK_1201 ;
  wire \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_21CLK_1200 ;
  wire \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_25CLK_1199 ;
  wire \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_20CLK_1198 ;
  wire \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_24CLK_1197 ;
  wire \SR/shift_reg<23>_rt_587 ;
  wire \SR/shift_reg<24>_rt_582 ;
  wire \SR/shift_reg<25>_rt_577 ;
  wire \SR/shift_reg<26>_rt_571 ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_19CLK_1212 ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_18CLK_1211 ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_17CLK_1210 ;
  wire \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_16CLK_1209 ;
  wire \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_75CLK_1228 ;
  wire \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_79CLK_1227 ;
  wire \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_74CLK_1226 ;
  wire \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_78CLK_1225 ;
  wire \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_73CLK_1224 ;
  wire \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_77CLK_1223 ;
  wire \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_72CLK_1222 ;
  wire \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_76CLK_1221 ;
  wire \SR/shift_reg<75>_rt_683 ;
  wire \SR/shift_reg<76>_rt_678 ;
  wire \SR/shift_reg<77>_rt_673 ;
  wire \SR/shift_reg<78>_rt_667 ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_71CLK_1239 ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_70CLK_1238 ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_69CLK_1237 ;
  wire \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_68CLK_1236 ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_39CLK_1251 ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_103CLK_1250 ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_38CLK_1249 ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_102CLK_1248 ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_37CLK_1247 ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_101CLK_1246 ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_36CLK_1245 ;
  wire \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_100CLK_1244 ;
  wire \SR/shift_reg<99>_rt_771 ;
  wire \SR/shift_reg<100>_rt_766 ;
  wire \SR/shift_reg<101>_rt_761 ;
  wire \SR/shift_reg<102>_rt_755 ;
  wire \NlwBufferSignal_u0/out_scan/shift_reg_0/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_95/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_95/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_99/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_94/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_94/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_98/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_93/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_93/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_97/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_92/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_92/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_96/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_87/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_87/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_91/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_86/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_86/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_90/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_85/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_85/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_89/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_84/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_84/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_88/CLK ;
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
  wire \NlwBufferSignal_u0/SR/shift_reg_43/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_43/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_47/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_42/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_42/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_46/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_41/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_41/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_45/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_40/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_40/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_44/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_63/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_63/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_67/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_62/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_62/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_66/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_61/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_61/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_65/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_60/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_60/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_64/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_83/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_83/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_82/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_82/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_81/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_81/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_80/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_80/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_107/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_107/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_111/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_106/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_106/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_110/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_105/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_105/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_109/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_104/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_104/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_108/CLK ;
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
  wire \NlwBufferSignal_u0/SR/shift_reg_115/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_115/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_119/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_114/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_114/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_118/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_113/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_113/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_117/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_112/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_112/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_116/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_51/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_51/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_55/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_50/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_50/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_54/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_49/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_49/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_53/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_48/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_48/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_52/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_59/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_59/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_58/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_58/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_57/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_57/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_56/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_56/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_123/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_123/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_127/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_122/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_122/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_126/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_121/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_121/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_125/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_120/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_120/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_124/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_23/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_23/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_27/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_22/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_22/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_26/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_21/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_21/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_25/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_20/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_20/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_24/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_19/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_19/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_18/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_18/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_17/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_17/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_16/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_16/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_75/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_75/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_79/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_74/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_74/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_78/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_73/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_73/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_77/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_72/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_72/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_76/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_71/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_71/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_70/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_70/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_69/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_69/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_68/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_68/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_39/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_39/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_103/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_38/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_38/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_102/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_37/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_37/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_101/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_36/CLK ;
  wire \NlwBufferSignal_u0/SR/shift_reg_36/IN ;
  wire \NlwBufferSignal_u0/SR/shift_reg_100/CLK ;
  wire VCC;
  wire GND;
  wire [127 : 127] \NlwRenamedSig_OI_SR/shift_reg ;
  wire [63 : 0] dut_inputs;
  wire [126 : 0] \SR/shift_reg ;
  assign
    sca_data_out = \NlwRenamedSig_OI_SR/shift_reg [127],
    shift_out_data = \out_scan/shift_reg_0_781 ;
  initial $sdf_annotate("netgen/par/sca_unlock_sim.sdf");
  and64   dut (
    .dut_inputs({\dut_inputs<63>_0 , dut_inputs[62], \dut_inputs<61>_0 , dut_inputs[60], \dut_inputs<59>_0 , dut_inputs[58], \dut_inputs<57>_0 , 
dut_inputs[56], \dut_inputs<55>_0 , dut_inputs[54], \dut_inputs<53>_0 , dut_inputs[52], \dut_inputs<51>_0 , dut_inputs[50], \dut_inputs<49>_0 , 
dut_inputs[48], \dut_inputs<47>_0 , dut_inputs[46], \dut_inputs<45>_0 , dut_inputs[44], \dut_inputs<43>_0 , dut_inputs[42], \dut_inputs<41>_0 , 
dut_inputs[40], \dut_inputs<39>_0 , dut_inputs[38], \dut_inputs<37>_0 , dut_inputs[36], dut_inputs[35], \dut_inputs<34>_0 , \dut_inputs<33>_0 , 
dut_inputs[32], \dut_inputs<31>_0 , dut_inputs[30], \dut_inputs<29>_0 , dut_inputs[28], \dut_inputs<27>_0 , dut_inputs[26], \dut_inputs<25>_0 , 
dut_inputs[24], \dut_inputs<23>_0 , dut_inputs[22], \dut_inputs<21>_0 , dut_inputs[20], \dut_inputs<19>_0 , \dut_inputs<18>_0 , dut_inputs[17], 
dut_inputs[16], \dut_inputs<15>_0 , dut_inputs[14], \dut_inputs<13>_0 , dut_inputs[12], \dut_inputs<11>_0 , dut_inputs[10], \dut_inputs<9>_0 , 
dut_inputs[8], \dut_inputs<7>_0 , dut_inputs[6], \dut_inputs<5>_0 , dut_inputs[4], \dut_inputs<3>_0 , dut_inputs[2], dut_inputs[1], \dut_inputs<0>_0 
}),
    .dut_outputs({dut_outputs})
  );
  X_INV   \shift_out_data_int/INV_u0/out_scan/shift_reg_0CLK  (
    .I(shift_out_clk),
    .O(\shift_out_data_int/INV_u0/out_scan/shift_reg_0CLK_1035 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y13" ),
    .INIT ( 1'b0 ))
  \out_scan/shift_reg_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/out_scan/shift_reg_0/CLK ),
    .I(\out_scan/par_in[0]_scan_in_MUX_66_o ),
    .O(\out_scan/shift_reg_0_781 ),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y13" ),
    .INIT ( 64'h00000000F0F0F0F0 ))
  \out_scan/Mmux_par_in[0]_scan_in_MUX_66_o11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR5(shift_out_enable),
    .ADR2(dut_outputs),
    .O(\out_scan/par_in[0]_scan_in_MUX_66_o )
  );
  X_INV   \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_95CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_95CLK_1047 )
  );
  X_INV   \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_99CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_99CLK_1046 )
  );
  X_INV   \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_94CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_94CLK_1045 )
  );
  X_INV   \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_98CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_98CLK_1044 )
  );
  X_INV   \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_93CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_93CLK_1043 )
  );
  X_INV   \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_97CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_97CLK_1042 )
  );
  X_INV   \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_92CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_92CLK_1041 )
  );
  X_INV   \u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_96CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_96CLK_1040 )
  );
  X_BUF   \u0/SR/shift_reg<95>/u0/SR/shift_reg<95>_DMUX_Delay  (
    .I(\SR/shift_reg [99]),
    .O(\SR/shift_reg<99>_0 )
  );
  X_BUF   \u0/SR/shift_reg<95>/u0/SR/shift_reg<95>_CMUX_Delay  (
    .I(\SR/shift_reg [98]),
    .O(\SR/shift_reg<98>_0 )
  );
  X_BUF   \u0/SR/shift_reg<95>/u0/SR/shift_reg<95>_BMUX_Delay  (
    .I(\SR/shift_reg [97]),
    .O(\SR/shift_reg<97>_0 )
  );
  X_BUF   \u0/SR/shift_reg<95>/u0/SR/shift_reg<95>_AMUX_Delay  (
    .I(\SR/shift_reg [96]),
    .O(\SR/shift_reg<96>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_95  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_95/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_95/IN ),
    .O(\SR/shift_reg [95]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<98>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<98>_0 ),
    .O(\SR/shift_reg<98>_rt_171 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_99  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_99/CLK ),
    .I(\SR/shift_reg<98>_rt_171 ),
    .O(\SR/shift_reg [99]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_94  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_94/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_94/IN ),
    .O(\SR/shift_reg [94]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<97>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<97>_0 ),
    .O(\SR/shift_reg<97>_rt_177 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_98  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_98/CLK ),
    .I(\SR/shift_reg<97>_rt_177 ),
    .O(\SR/shift_reg [98]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_93  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_93/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_93/IN ),
    .O(\SR/shift_reg [93]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<96>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<96>_0 ),
    .O(\SR/shift_reg<96>_rt_182 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_97  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_97/CLK ),
    .I(\SR/shift_reg<96>_rt_182 ),
    .O(\SR/shift_reg [97]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_92  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_92/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_92/IN ),
    .O(\SR/shift_reg [92]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<95>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [95]),
    .O(\SR/shift_reg<95>_rt_187 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_96  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_96/CLK ),
    .I(\SR/shift_reg<95>_rt_187 ),
    .O(\SR/shift_reg [96]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_inputs<4>/u0/dut_inputs<4>_AMUX_Delay  (
    .I(dut_inputs[5]),
    .O(\dut_inputs<5>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 64'hF0F0CCCCF0F0CCCC ))
  \Mmux_dut_inputs<4>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [68]),
    .ADR1(\SR/shift_reg<4>_0 ),
    .ADR2(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 32'hF0AAF0AA ))
  \Mmux_dut_inputs<5>11  (
    .ADR3(\SR/shift_reg [69]),
    .ADR0(\SR/shift_reg<5>_0 ),
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(flip_clk),
    .O(dut_inputs[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y61" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \SR/reset_inv1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(sca_reset),
    .O(\SR/reset_inv )
  );
  X_INV   \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_87CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_87CLK_1060 )
  );
  X_INV   \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_91CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_91CLK_1059 )
  );
  X_INV   \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_86CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_86CLK_1058 )
  );
  X_INV   \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_90CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_90CLK_1057 )
  );
  X_INV   \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_85CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_85CLK_1056 )
  );
  X_INV   \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_89CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_89CLK_1055 )
  );
  X_INV   \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_84CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_84CLK_1054 )
  );
  X_INV   \u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_88CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_88CLK_1053 )
  );
  X_BUF   \u0/SR/shift_reg<87>/u0/SR/shift_reg<87>_DMUX_Delay  (
    .I(\SR/shift_reg [91]),
    .O(\SR/shift_reg<91>_0 )
  );
  X_BUF   \u0/SR/shift_reg<87>/u0/SR/shift_reg<87>_CMUX_Delay  (
    .I(\SR/shift_reg [90]),
    .O(\SR/shift_reg<90>_0 )
  );
  X_BUF   \u0/SR/shift_reg<87>/u0/SR/shift_reg<87>_BMUX_Delay  (
    .I(\SR/shift_reg [89]),
    .O(\SR/shift_reg<89>_0 )
  );
  X_BUF   \u0/SR/shift_reg<87>/u0/SR/shift_reg<87>_AMUX_Delay  (
    .I(\SR/shift_reg [88]),
    .O(\SR/shift_reg<88>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_87  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_87/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_87/IN ),
    .O(\SR/shift_reg [87]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<90>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<90>_0 ),
    .O(\SR/shift_reg<90>_rt_203 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_91  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_91/CLK ),
    .I(\SR/shift_reg<90>_rt_203 ),
    .O(\SR/shift_reg [91]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_86  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_86/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_86/IN ),
    .O(\SR/shift_reg [86]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<89>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<89>_0 ),
    .O(\SR/shift_reg<89>_rt_209 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_90  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_90/CLK ),
    .I(\SR/shift_reg<89>_rt_209 ),
    .O(\SR/shift_reg [90]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_85  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_85/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_85/IN ),
    .O(\SR/shift_reg [85]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<88>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<88>_0 ),
    .O(\SR/shift_reg<88>_rt_214 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_89  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_89/CLK ),
    .I(\SR/shift_reg<88>_rt_214 ),
    .O(\SR/shift_reg [89]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_84  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_84/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_84/IN ),
    .O(\SR/shift_reg [84]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<87>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [87]),
    .O(\SR/shift_reg<87>_rt_219 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_88  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_88/CLK ),
    .I(\SR/shift_reg<87>_rt_219 ),
    .O(\SR/shift_reg [88]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_31CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_31CLK_1072 )
  );
  X_INV   \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_35CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_35CLK_1071 )
  );
  X_INV   \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_30CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_30CLK_1070 )
  );
  X_INV   \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_34CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_34CLK_1069 )
  );
  X_INV   \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_29CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_29CLK_1068 )
  );
  X_INV   \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_33CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_33CLK_1067 )
  );
  X_INV   \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_28CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_28CLK_1066 )
  );
  X_INV   \u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_32CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_32CLK_1065 )
  );
  X_BUF   \u0/SR/shift_reg<31>/u0/SR/shift_reg<31>_DMUX_Delay  (
    .I(\SR/shift_reg [35]),
    .O(\SR/shift_reg<35>_0 )
  );
  X_BUF   \u0/SR/shift_reg<31>/u0/SR/shift_reg<31>_CMUX_Delay  (
    .I(\SR/shift_reg [34]),
    .O(\SR/shift_reg<34>_0 )
  );
  X_BUF   \u0/SR/shift_reg<31>/u0/SR/shift_reg<31>_BMUX_Delay  (
    .I(\SR/shift_reg [33]),
    .O(\SR/shift_reg<33>_0 )
  );
  X_BUF   \u0/SR/shift_reg<31>/u0/SR/shift_reg<31>_AMUX_Delay  (
    .I(\SR/shift_reg [32]),
    .O(\SR/shift_reg<32>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_31  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_31/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_31/IN ),
    .O(\SR/shift_reg [31]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<34>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<34>_0 ),
    .O(\SR/shift_reg<34>_rt_225 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_35  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_35/CLK ),
    .I(\SR/shift_reg<34>_rt_225 ),
    .O(\SR/shift_reg [35]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_30  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_30/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_30/IN ),
    .O(\SR/shift_reg [30]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<33>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<33>_0 ),
    .O(\SR/shift_reg<33>_rt_231 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_34  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_34/CLK ),
    .I(\SR/shift_reg<33>_rt_231 ),
    .O(\SR/shift_reg [34]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_29  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_29/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_29/IN ),
    .O(\SR/shift_reg [29]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<32>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<32>_0 ),
    .O(\SR/shift_reg<32>_rt_236 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_33  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_33/CLK ),
    .I(\SR/shift_reg<32>_rt_236 ),
    .O(\SR/shift_reg [33]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_28  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_28/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_28/IN ),
    .O(\SR/shift_reg [28]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<31>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [31]),
    .O(\SR/shift_reg<31>_rt_241 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_32  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_32/CLK ),
    .I(\SR/shift_reg<31>_rt_241 ),
    .O(\SR/shift_reg [32]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_43CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_43CLK_1084 )
  );
  X_INV   \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_47CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_47CLK_1083 )
  );
  X_INV   \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_42CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_42CLK_1082 )
  );
  X_INV   \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_46CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_46CLK_1081 )
  );
  X_INV   \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_41CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_41CLK_1080 )
  );
  X_INV   \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_45CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_45CLK_1079 )
  );
  X_INV   \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_40CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_40CLK_1078 )
  );
  X_INV   \u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_44CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_44CLK_1077 )
  );
  X_BUF   \u0/SR/shift_reg<43>/u0/SR/shift_reg<43>_DMUX_Delay  (
    .I(\SR/shift_reg [47]),
    .O(\SR/shift_reg<47>_0 )
  );
  X_BUF   \u0/SR/shift_reg<43>/u0/SR/shift_reg<43>_CMUX_Delay  (
    .I(\SR/shift_reg [46]),
    .O(\SR/shift_reg<46>_0 )
  );
  X_BUF   \u0/SR/shift_reg<43>/u0/SR/shift_reg<43>_BMUX_Delay  (
    .I(\SR/shift_reg [45]),
    .O(\SR/shift_reg<45>_0 )
  );
  X_BUF   \u0/SR/shift_reg<43>/u0/SR/shift_reg<43>_AMUX_Delay  (
    .I(\SR/shift_reg [44]),
    .O(\SR/shift_reg<44>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_43  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_43/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_43/IN ),
    .O(\SR/shift_reg [43]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<46>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<46>_0 ),
    .O(\SR/shift_reg<46>_rt_247 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_47  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_47/CLK ),
    .I(\SR/shift_reg<46>_rt_247 ),
    .O(\SR/shift_reg [47]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_42  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_42/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_42/IN ),
    .O(\SR/shift_reg [42]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<45>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<45>_0 ),
    .O(\SR/shift_reg<45>_rt_253 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_46  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_46/CLK ),
    .I(\SR/shift_reg<45>_rt_253 ),
    .O(\SR/shift_reg [46]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_41  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_41/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_41/IN ),
    .O(\SR/shift_reg [41]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<44>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<44>_0 ),
    .O(\SR/shift_reg<44>_rt_258 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_45  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_45/CLK ),
    .I(\SR/shift_reg<44>_rt_258 ),
    .O(\SR/shift_reg [45]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_40  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_40/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_40/IN ),
    .O(\SR/shift_reg [40]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<43>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [43]),
    .O(\SR/shift_reg<43>_rt_263 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_44  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_44/CLK ),
    .I(\SR/shift_reg<43>_rt_263 ),
    .O(\SR/shift_reg [44]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_inputs<8>/u0/dut_inputs<8>_DMUX_Delay  (
    .I(dut_inputs[9]),
    .O(\dut_inputs<9>_0 )
  );
  X_BUF   \u0/dut_inputs<8>/u0/dut_inputs<8>_AMUX_Delay  (
    .I(dut_inputs[13]),
    .O(\dut_inputs<13>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 64'hFCFC3030FCFC3030 ))
  \Mmux_dut_inputs<8>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(\SR/shift_reg [72]),
    .ADR2(\SR/shift_reg [8]),
    .ADR4(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 32'hFFAA00AA ))
  \Mmux_dut_inputs<9>11  (
    .ADR3(\SR/shift_reg [73]),
    .ADR0(\SR/shift_reg [9]),
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(flip_clk),
    .O(dut_inputs[9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 64'hAAAAF0F0AAAAF0F0 ))
  \Mmux_dut_inputs<12>11  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(\SR/shift_reg<76>_0 ),
    .ADR2(\SR/shift_reg<12>_0 ),
    .ADR0(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y47" ),
    .INIT ( 32'hAACCAACC ))
  \Mmux_dut_inputs<13>11  (
    .ADR3(\SR/shift_reg<77>_0 ),
    .ADR1(\SR/shift_reg<13>_0 ),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR0(flip_clk),
    .O(dut_inputs[13])
  );
  X_BUF   \u0/dut_inputs<2>/u0/dut_inputs<2>_DMUX_Delay  (
    .I(dut_inputs[0]),
    .O(\dut_inputs<0>_0 )
  );
  X_BUF   \u0/dut_inputs<2>/u0/dut_inputs<2>_CMUX_Delay  (
    .I(dut_inputs[53]),
    .O(\dut_inputs<53>_0 )
  );
  X_BUF   \u0/dut_inputs<2>/u0/dut_inputs<2>_AMUX_Delay  (
    .I(dut_inputs[3]),
    .O(\dut_inputs<3>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y48" ),
    .INIT ( 64'hAAAAFF00AAAAFF00 ))
  \Mmux_dut_inputs<2>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\SR/shift_reg<66>_0 ),
    .ADR3(\SR/shift_reg [2]),
    .ADR0(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y48" ),
    .INIT ( 32'hB8B8B8B8 ))
  \Mmux_dut_inputs<0>11  (
    .ADR1(\SR/shift_reg<64>_0 ),
    .ADR2(\SR/shift_reg [0]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR0(flip_clk),
    .O(dut_inputs[0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y48" ),
    .INIT ( 64'hFF00CCCCFF00CCCC ))
  \Mmux_dut_inputs<52>11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\SR/shift_reg<116>_0 ),
    .ADR1(\SR/shift_reg<52>_0 ),
    .ADR3(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[52])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y48" ),
    .INIT ( 32'hFA0AFA0A ))
  \Mmux_dut_inputs<53>11  (
    .ADR2(\SR/shift_reg<117>_0 ),
    .ADR0(\SR/shift_reg<53>_0 ),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(flip_clk),
    .O(dut_inputs[53])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y48" ),
    .INIT ( 64'hBBBB8888BBBB8888 ))
  \Mmux_dut_inputs<1>11  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\SR/shift_reg<65>_0 ),
    .ADR4(\SR/shift_reg [1]),
    .ADR0(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y48" ),
    .INIT ( 32'hAAF0AAF0 ))
  \Mmux_dut_inputs<3>11  (
    .ADR3(\SR/shift_reg<67>_0 ),
    .ADR2(\SR/shift_reg [3]),
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR0(flip_clk),
    .O(dut_inputs[3])
  );
  X_INV   \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_63CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_63CLK_1101 )
  );
  X_INV   \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_67CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_67CLK_1100 )
  );
  X_INV   \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_62CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_62CLK_1099 )
  );
  X_INV   \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_66CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_66CLK_1098 )
  );
  X_INV   \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_61CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_61CLK_1097 )
  );
  X_INV   \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_65CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_65CLK_1096 )
  );
  X_INV   \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_60CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_60CLK_1095 )
  );
  X_INV   \u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_64CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_64CLK_1094 )
  );
  X_BUF   \u0/SR/shift_reg<63>/u0/SR/shift_reg<63>_DMUX_Delay  (
    .I(\SR/shift_reg [67]),
    .O(\SR/shift_reg<67>_0 )
  );
  X_BUF   \u0/SR/shift_reg<63>/u0/SR/shift_reg<63>_CMUX_Delay  (
    .I(\SR/shift_reg [66]),
    .O(\SR/shift_reg<66>_0 )
  );
  X_BUF   \u0/SR/shift_reg<63>/u0/SR/shift_reg<63>_BMUX_Delay  (
    .I(\SR/shift_reg [65]),
    .O(\SR/shift_reg<65>_0 )
  );
  X_BUF   \u0/SR/shift_reg<63>/u0/SR/shift_reg<63>_AMUX_Delay  (
    .I(\SR/shift_reg [64]),
    .O(\SR/shift_reg<64>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_63  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_63/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_63/IN ),
    .O(\SR/shift_reg [63]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<66>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<66>_0 ),
    .O(\SR/shift_reg<66>_rt_309 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_67  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_67/CLK ),
    .I(\SR/shift_reg<66>_rt_309 ),
    .O(\SR/shift_reg [67]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_62  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_62/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_62/IN ),
    .O(\SR/shift_reg [62]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<65>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<65>_0 ),
    .O(\SR/shift_reg<65>_rt_315 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_66  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_66/CLK ),
    .I(\SR/shift_reg<65>_rt_315 ),
    .O(\SR/shift_reg [66]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_61  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_61/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_61/IN ),
    .O(\SR/shift_reg [61]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<64>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<64>_0 ),
    .O(\SR/shift_reg<64>_rt_320 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_65  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_65/CLK ),
    .I(\SR/shift_reg<64>_rt_320 ),
    .O(\SR/shift_reg [65]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_60  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_60/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_60/IN ),
    .O(\SR/shift_reg [60]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<63>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [63]),
    .O(\SR/shift_reg<63>_rt_325 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_64  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_64/CLK ),
    .I(\SR/shift_reg<63>_rt_325 ),
    .O(\SR/shift_reg [64]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_inputs<26>/u0/dut_inputs<26>_AMUX_Delay  (
    .I(dut_inputs[27]),
    .O(\dut_inputs<27>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 64'hCCCCF0F0CCCCF0F0 ))
  \Mmux_dut_inputs<26>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<90>_0 ),
    .ADR2(\SR/shift_reg<26>_0 ),
    .ADR1(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[26])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y44" ),
    .INIT ( 32'hDD88DD88 ))
  \Mmux_dut_inputs<27>11  (
    .ADR0(\SR/shift_reg<91>_0 ),
    .ADR3(\SR/shift_reg<27>_0 ),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR1(flip_clk),
    .O(dut_inputs[27])
  );
  X_INV   \u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_83CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_83CLK_1110 )
  );
  X_INV   \u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_82CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_82CLK_1109 )
  );
  X_INV   \u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_81CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_81CLK_1108 )
  );
  X_INV   \u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_80CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_80CLK_1107 )
  );
  X_BUF   \u0/SR/shift_reg<83>/u0/SR/shift_reg<83>_DMUX_Delay  (
    .I(dut_inputs[31]),
    .O(\dut_inputs<31>_0 )
  );
  X_BUF   \u0/SR/shift_reg<83>/u0/SR/shift_reg<83>_CMUX_Delay  (
    .I(dut_inputs[41]),
    .O(\dut_inputs<41>_0 )
  );
  X_BUF   \u0/SR/shift_reg<83>/u0/SR/shift_reg<83>_BMUX_Delay  (
    .I(dut_inputs[33]),
    .O(\dut_inputs<33>_0 )
  );
  X_BUF   \u0/SR/shift_reg<83>/u0/SR/shift_reg<83>_AMUX_Delay  (
    .I(dut_inputs[29]),
    .O(\dut_inputs<29>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_83  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_83/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_83/IN ),
    .O(\SR/shift_reg [83]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 64'hCCCCF0F0CCCCF0F0 ))
  \Mmux_dut_inputs<30>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [94]),
    .ADR2(\SR/shift_reg [30]),
    .ADR1(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[30])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 32'hCCAACCAA ))
  \Mmux_dut_inputs<31>11  (
    .ADR3(\SR/shift_reg [95]),
    .ADR0(\SR/shift_reg [31]),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR1(flip_clk),
    .O(dut_inputs[31])
  );
  X_FF #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_82  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_82/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_82/IN ),
    .O(\SR/shift_reg [82]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 64'hFCFC0C0CFCFC0C0C ))
  \Mmux_dut_inputs<40>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg [104]),
    .ADR1(\SR/shift_reg [40]),
    .ADR4(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[40])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 32'hFFAA00AA ))
  \Mmux_dut_inputs<41>11  (
    .ADR3(\SR/shift_reg [105]),
    .ADR0(\SR/shift_reg [41]),
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(flip_clk),
    .O(dut_inputs[41])
  );
  X_FF #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_81  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_81/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_81/IN ),
    .O(\SR/shift_reg [81]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 64'hFFAA00AAFFAA00AA ))
  \Mmux_dut_inputs<32>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\SR/shift_reg<96>_0 ),
    .ADR0(\SR/shift_reg<32>_0 ),
    .ADR4(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[32])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 32'hFCFC3030 ))
  \Mmux_dut_inputs<33>11  (
    .ADR1(\SR/shift_reg<97>_0 ),
    .ADR2(\SR/shift_reg<33>_0 ),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(flip_clk),
    .O(dut_inputs[33])
  );
  X_FF #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_80  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_80/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_80/IN ),
    .O(\SR/shift_reg [80]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 64'hFFF000F0FFF000F0 ))
  \Mmux_dut_inputs<28>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\SR/shift_reg [92]),
    .ADR2(\SR/shift_reg [28]),
    .ADR4(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[28])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y45" ),
    .INIT ( 32'hEEEE4444 ))
  \Mmux_dut_inputs<29>11  (
    .ADR0(\SR/shift_reg [93]),
    .ADR1(\SR/shift_reg [29]),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(flip_clk),
    .O(dut_inputs[29])
  );
  X_INV   \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_107CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_107CLK_1122 )
  );
  X_INV   \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_111CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_111CLK_1121 )
  );
  X_INV   \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_106CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_106CLK_1120 )
  );
  X_INV   \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_110CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_110CLK_1119 )
  );
  X_INV   \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_105CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_105CLK_1118 )
  );
  X_INV   \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_109CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_109CLK_1117 )
  );
  X_INV   \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_104CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_104CLK_1116 )
  );
  X_INV   \u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_108CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_108CLK_1115 )
  );
  X_BUF   \u0/SR/shift_reg<107>/u0/SR/shift_reg<107>_DMUX_Delay  (
    .I(\SR/shift_reg [111]),
    .O(\SR/shift_reg<111>_0 )
  );
  X_BUF   \u0/SR/shift_reg<107>/u0/SR/shift_reg<107>_CMUX_Delay  (
    .I(\SR/shift_reg [110]),
    .O(\SR/shift_reg<110>_0 )
  );
  X_BUF   \u0/SR/shift_reg<107>/u0/SR/shift_reg<107>_BMUX_Delay  (
    .I(\SR/shift_reg [109]),
    .O(\SR/shift_reg<109>_0 )
  );
  X_BUF   \u0/SR/shift_reg<107>/u0/SR/shift_reg<107>_AMUX_Delay  (
    .I(\SR/shift_reg [108]),
    .O(\SR/shift_reg<108>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_107  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_107/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_107/IN ),
    .O(\SR/shift_reg [107]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<110>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<110>_0 ),
    .O(\SR/shift_reg<110>_rt_381 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_111  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_111/CLK ),
    .I(\SR/shift_reg<110>_rt_381 ),
    .O(\SR/shift_reg [111]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_106  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_106/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_106/IN ),
    .O(\SR/shift_reg [106]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<109>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<109>_0 ),
    .O(\SR/shift_reg<109>_rt_387 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_110  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_110/CLK ),
    .I(\SR/shift_reg<109>_rt_387 ),
    .O(\SR/shift_reg [110]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_105  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_105/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_105/IN ),
    .O(\SR/shift_reg [105]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<108>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<108>_0 ),
    .O(\SR/shift_reg<108>_rt_392 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_109  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_109/CLK ),
    .I(\SR/shift_reg<108>_rt_392 ),
    .O(\SR/shift_reg [109]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_104  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_104/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_104/IN ),
    .O(\SR/shift_reg [104]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<107>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [107]),
    .O(\SR/shift_reg<107>_rt_397 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y46" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_108  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_108/CLK ),
    .I(\SR/shift_reg<107>_rt_397 ),
    .O(\SR/shift_reg [108]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_11CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_11CLK_1134 )
  );
  X_INV   \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_15CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_15CLK_1133 )
  );
  X_INV   \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_10CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_10CLK_1132 )
  );
  X_INV   \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_14CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_14CLK_1131 )
  );
  X_INV   \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_9CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_9CLK_1130 )
  );
  X_INV   \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_13CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_13CLK_1129 )
  );
  X_INV   \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_8CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_8CLK_1128 )
  );
  X_INV   \u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_12CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_12CLK_1127 )
  );
  X_BUF   \u0/SR/shift_reg<11>/u0/SR/shift_reg<11>_DMUX_Delay  (
    .I(\SR/shift_reg [15]),
    .O(\SR/shift_reg<15>_0 )
  );
  X_BUF   \u0/SR/shift_reg<11>/u0/SR/shift_reg<11>_CMUX_Delay  (
    .I(\SR/shift_reg [14]),
    .O(\SR/shift_reg<14>_0 )
  );
  X_BUF   \u0/SR/shift_reg<11>/u0/SR/shift_reg<11>_BMUX_Delay  (
    .I(\SR/shift_reg [13]),
    .O(\SR/shift_reg<13>_0 )
  );
  X_BUF   \u0/SR/shift_reg<11>/u0/SR/shift_reg<11>_AMUX_Delay  (
    .I(\SR/shift_reg [12]),
    .O(\SR/shift_reg<12>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_11/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_11/IN ),
    .O(\SR/shift_reg [11]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<14>_0 ),
    .O(\SR/shift_reg<14>_rt_403 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_15/CLK ),
    .I(\SR/shift_reg<14>_rt_403 ),
    .O(\SR/shift_reg [15]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_10/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_10/IN ),
    .O(\SR/shift_reg [10]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<13>_0 ),
    .O(\SR/shift_reg<13>_rt_409 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_14/CLK ),
    .I(\SR/shift_reg<13>_rt_409 ),
    .O(\SR/shift_reg [14]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_9/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_9/IN ),
    .O(\SR/shift_reg [9]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<12>_0 ),
    .O(\SR/shift_reg<12>_rt_414 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_13/CLK ),
    .I(\SR/shift_reg<12>_rt_414 ),
    .O(\SR/shift_reg [13]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_8/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_8/IN ),
    .O(\SR/shift_reg [8]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [11]),
    .O(\SR/shift_reg<11>_rt_419 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_12/CLK ),
    .I(\SR/shift_reg<11>_rt_419 ),
    .O(\SR/shift_reg [12]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_3CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_3CLK_1146 )
  );
  X_INV   \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_7CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_7CLK_1145 )
  );
  X_INV   \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_2CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_2CLK_1144 )
  );
  X_INV   \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_6CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_6CLK_1143 )
  );
  X_INV   \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_1CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_1CLK_1142 )
  );
  X_INV   \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_5CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_5CLK_1141 )
  );
  X_INV   \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_0CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_0CLK_1140 )
  );
  X_INV   \u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_4CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_4CLK_1139 )
  );
  X_BUF   \u0/SR/shift_reg<3>/u0/SR/shift_reg<3>_DMUX_Delay  (
    .I(\SR/shift_reg [7]),
    .O(\SR/shift_reg<7>_0 )
  );
  X_BUF   \u0/SR/shift_reg<3>/u0/SR/shift_reg<3>_CMUX_Delay  (
    .I(\SR/shift_reg [6]),
    .O(\SR/shift_reg<6>_0 )
  );
  X_BUF   \u0/SR/shift_reg<3>/u0/SR/shift_reg<3>_BMUX_Delay  (
    .I(\SR/shift_reg [5]),
    .O(\SR/shift_reg<5>_0 )
  );
  X_BUF   \u0/SR/shift_reg<3>/u0/SR/shift_reg<3>_AMUX_Delay  (
    .I(\SR/shift_reg [4]),
    .O(\SR/shift_reg<4>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_3/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_3/IN ),
    .O(\SR/shift_reg [3]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<6>_0 ),
    .O(\SR/shift_reg<6>_rt_425 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_7/CLK ),
    .I(\SR/shift_reg<6>_rt_425 ),
    .O(\SR/shift_reg [7]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_2/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_2/IN ),
    .O(\SR/shift_reg [2]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<5>_0 ),
    .O(\SR/shift_reg<5>_rt_431 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_6/CLK ),
    .I(\SR/shift_reg<5>_rt_431 ),
    .O(\SR/shift_reg [6]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_1/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_1/IN ),
    .O(\SR/shift_reg [1]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<4>_0 ),
    .O(\SR/shift_reg<4>_rt_436 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_5/CLK ),
    .I(\SR/shift_reg<4>_rt_436 ),
    .O(\SR/shift_reg [5]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_0/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_0/IN ),
    .O(\SR/shift_reg [0]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [3]),
    .O(\SR/shift_reg<3>_rt_441 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_4/CLK ),
    .I(\SR/shift_reg<3>_rt_441 ),
    .O(\SR/shift_reg [4]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_115CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_115CLK_1158 )
  );
  X_INV   \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_119CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_119CLK_1157 )
  );
  X_INV   \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_114CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_114CLK_1156 )
  );
  X_INV   \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_118CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_118CLK_1155 )
  );
  X_INV   \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_113CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_113CLK_1154 )
  );
  X_INV   \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_117CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_117CLK_1153 )
  );
  X_INV   \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_112CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_112CLK_1152 )
  );
  X_INV   \u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_116CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_116CLK_1151 )
  );
  X_BUF   \u0/SR/shift_reg<115>/u0/SR/shift_reg<115>_DMUX_Delay  (
    .I(\SR/shift_reg [119]),
    .O(\SR/shift_reg<119>_0 )
  );
  X_BUF   \u0/SR/shift_reg<115>/u0/SR/shift_reg<115>_CMUX_Delay  (
    .I(\SR/shift_reg [118]),
    .O(\SR/shift_reg<118>_0 )
  );
  X_BUF   \u0/SR/shift_reg<115>/u0/SR/shift_reg<115>_BMUX_Delay  (
    .I(\SR/shift_reg [117]),
    .O(\SR/shift_reg<117>_0 )
  );
  X_BUF   \u0/SR/shift_reg<115>/u0/SR/shift_reg<115>_AMUX_Delay  (
    .I(\SR/shift_reg [116]),
    .O(\SR/shift_reg<116>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_115  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_115/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_115/IN ),
    .O(\SR/shift_reg [115]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<118>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<118>_0 ),
    .O(\SR/shift_reg<118>_rt_447 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_119  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_119/CLK ),
    .I(\SR/shift_reg<118>_rt_447 ),
    .O(\SR/shift_reg [119]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_114  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_114/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_114/IN ),
    .O(\SR/shift_reg [114]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<117>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<117>_0 ),
    .O(\SR/shift_reg<117>_rt_453 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_118  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_118/CLK ),
    .I(\SR/shift_reg<117>_rt_453 ),
    .O(\SR/shift_reg [118]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_113  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_113/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_113/IN ),
    .O(\SR/shift_reg [113]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<116>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<116>_0 ),
    .O(\SR/shift_reg<116>_rt_458 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_117  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_117/CLK ),
    .I(\SR/shift_reg<116>_rt_458 ),
    .O(\SR/shift_reg [117]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_112  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_112/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_112/IN ),
    .O(\SR/shift_reg [112]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<115>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [115]),
    .O(\SR/shift_reg<115>_rt_463 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_116  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_116/CLK ),
    .I(\SR/shift_reg<115>_rt_463 ),
    .O(\SR/shift_reg [116]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_inputs<22>/u0/dut_inputs<22>_CMUX_Delay  (
    .I(dut_inputs[23]),
    .O(\dut_inputs<23>_0 )
  );
  X_BUF   \u0/dut_inputs<22>/u0/dut_inputs<22>_BMUX_Delay  (
    .I(dut_inputs[18]),
    .O(\dut_inputs<18>_0 )
  );
  X_BUF   \u0/dut_inputs<22>/u0/dut_inputs<22>_AMUX_Delay  (
    .I(dut_inputs[21]),
    .O(\dut_inputs<21>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'hEE22EE22EE22EE22 ))
  \Mmux_dut_inputs<22>11  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\SR/shift_reg [86]),
    .ADR0(\SR/shift_reg [22]),
    .ADR3(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[22])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 32'hFF00F0F0 ))
  \Mmux_dut_inputs<23>11  (
    .ADR4(\SR/shift_reg [87]),
    .ADR2(\SR/shift_reg [23]),
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(flip_clk),
    .O(dut_inputs[23])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'hCCCCF0F0CCCCF0F0 ))
  \Mmux_dut_inputs<17>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [81]),
    .ADR2(\SR/shift_reg [17]),
    .ADR1(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[17])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 32'hCCAACCAA ))
  \Mmux_dut_inputs<18>11  (
    .ADR3(\SR/shift_reg [82]),
    .ADR0(\SR/shift_reg [18]),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR1(flip_clk),
    .O(dut_inputs[18])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 64'hD8D8D8D8D8D8D8D8 ))
  \Mmux_dut_inputs<20>11  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(\SR/shift_reg [84]),
    .ADR2(\SR/shift_reg [20]),
    .ADR1(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[20])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y44" ),
    .INIT ( 32'hCCFFCC00 ))
  \Mmux_dut_inputs<21>11  (
    .ADR3(\SR/shift_reg [85]),
    .ADR4(\SR/shift_reg [21]),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR1(flip_clk),
    .O(dut_inputs[21])
  );
  X_INV   \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_51CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_51CLK_1173 )
  );
  X_INV   \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_55CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_55CLK_1172 )
  );
  X_INV   \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_50CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_50CLK_1171 )
  );
  X_INV   \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_54CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_54CLK_1170 )
  );
  X_INV   \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_49CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_49CLK_1169 )
  );
  X_INV   \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_53CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_53CLK_1168 )
  );
  X_INV   \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_48CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_48CLK_1167 )
  );
  X_INV   \u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_52CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_52CLK_1166 )
  );
  X_BUF   \u0/SR/shift_reg<51>/u0/SR/shift_reg<51>_DMUX_Delay  (
    .I(\SR/shift_reg [55]),
    .O(\SR/shift_reg<55>_0 )
  );
  X_BUF   \u0/SR/shift_reg<51>/u0/SR/shift_reg<51>_CMUX_Delay  (
    .I(\SR/shift_reg [54]),
    .O(\SR/shift_reg<54>_0 )
  );
  X_BUF   \u0/SR/shift_reg<51>/u0/SR/shift_reg<51>_BMUX_Delay  (
    .I(\SR/shift_reg [53]),
    .O(\SR/shift_reg<53>_0 )
  );
  X_BUF   \u0/SR/shift_reg<51>/u0/SR/shift_reg<51>_AMUX_Delay  (
    .I(\SR/shift_reg [52]),
    .O(\SR/shift_reg<52>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_51  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_51/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_51/IN ),
    .O(\SR/shift_reg [51]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<54>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<54>_0 ),
    .O(\SR/shift_reg<54>_rt_493 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_55  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_55/CLK ),
    .I(\SR/shift_reg<54>_rt_493 ),
    .O(\SR/shift_reg [55]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_50  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_50/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_50/IN ),
    .O(\SR/shift_reg [50]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<53>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<53>_0 ),
    .O(\SR/shift_reg<53>_rt_499 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_54  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_54/CLK ),
    .I(\SR/shift_reg<53>_rt_499 ),
    .O(\SR/shift_reg [54]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_49  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_49/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_49/IN ),
    .O(\SR/shift_reg [49]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<52>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<52>_0 ),
    .O(\SR/shift_reg<52>_rt_504 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_53  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_53/CLK ),
    .I(\SR/shift_reg<52>_rt_504 ),
    .O(\SR/shift_reg [53]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_48  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_48/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_48/IN ),
    .O(\SR/shift_reg [48]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<51>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [51]),
    .O(\SR/shift_reg<51>_rt_509 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_52  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_52/CLK ),
    .I(\SR/shift_reg<51>_rt_509 ),
    .O(\SR/shift_reg [52]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_59CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_59CLK_1180 )
  );
  X_INV   \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_58CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_58CLK_1179 )
  );
  X_INV   \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_57CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_57CLK_1178 )
  );
  X_INV   \u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_56CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_56CLK_1177 )
  );
  X_BUF   \u0/SR/shift_reg<59>/u0/SR/shift_reg<59>_DMUX_Delay  (
    .I(dut_inputs[57]),
    .O(\dut_inputs<57>_0 )
  );
  X_BUF   \u0/SR/shift_reg<59>/u0/SR/shift_reg<59>_CMUX_Delay  (
    .I(dut_inputs[63]),
    .O(\dut_inputs<63>_0 )
  );
  X_BUF   \u0/SR/shift_reg<59>/u0/SR/shift_reg<59>_AMUX_Delay  (
    .I(dut_inputs[49]),
    .O(\dut_inputs<49>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_59  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_59/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_59/IN ),
    .O(\SR/shift_reg [59]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 64'hFF55AA00FF55AA00 ))
  \Mmux_dut_inputs<56>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\SR/shift_reg [120]),
    .ADR4(\SR/shift_reg [56]),
    .ADR3(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[56])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 32'hFC0CFC0C ))
  \Mmux_dut_inputs<57>11  (
    .ADR2(\SR/shift_reg [121]),
    .ADR1(\SR/shift_reg [57]),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(flip_clk),
    .O(dut_inputs[57])
  );
  X_FF #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_58  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_58/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_58/IN ),
    .O(\SR/shift_reg [58]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 64'hEEEE4444EEEE4444 ))
  \Mmux_dut_inputs<62>11  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\SR/shift_reg<126>_0 ),
    .ADR1(\SR/shift_reg [62]),
    .ADR4(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[62])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 32'hFFF000F0 ))
  \Mmux_dut_inputs<63>11  (
    .ADR3(\NlwRenamedSig_OI_SR/shift_reg [127]),
    .ADR2(\SR/shift_reg [63]),
    .ADR1(1'b1),
    .ADR0(1'b1),
    .ADR4(flip_clk),
    .O(dut_inputs[63])
  );
  X_FF #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_57  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_57/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_57/IN ),
    .O(\SR/shift_reg [57]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_56  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_56/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_56/IN ),
    .O(\SR/shift_reg [56]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 64'hCFC0CFC0CFC0CFC0 ))
  \Mmux_dut_inputs<48>11  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(\SR/shift_reg [112]),
    .ADR3(\SR/shift_reg [48]),
    .ADR1(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[48])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y49" ),
    .INIT ( 32'hCCCCAAAA ))
  \Mmux_dut_inputs<49>11  (
    .ADR4(\SR/shift_reg [113]),
    .ADR0(\SR/shift_reg [49]),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(flip_clk),
    .O(dut_inputs[49])
  );
  X_INV   \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_123CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_123CLK_1192 )
  );
  X_INV   \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_127CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_127CLK_1191 )
  );
  X_INV   \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_122CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_122CLK_1190 )
  );
  X_INV   \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_126CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_126CLK_1189 )
  );
  X_INV   \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_121CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_121CLK_1188 )
  );
  X_INV   \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_125CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_125CLK_1187 )
  );
  X_INV   \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_120CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_120CLK_1186 )
  );
  X_INV   \u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_124CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_124CLK_1185 )
  );
  X_BUF   \u0/SR/shift_reg<123>/u0/SR/shift_reg<123>_DMUX_Delay  (
    .I(\u0/SR/shift_reg<123>/H4_OBUF ),
    .O(\NlwRenamedSig_OI_SR/shift_reg [127])
  );
  X_BUF   \u0/SR/shift_reg<123>/u0/SR/shift_reg<123>_CMUX_Delay  (
    .I(\SR/shift_reg [126]),
    .O(\SR/shift_reg<126>_0 )
  );
  X_BUF   \u0/SR/shift_reg<123>/u0/SR/shift_reg<123>_BMUX_Delay  (
    .I(\SR/shift_reg [125]),
    .O(\SR/shift_reg<125>_0 )
  );
  X_BUF   \u0/SR/shift_reg<123>/u0/SR/shift_reg<123>_AMUX_Delay  (
    .I(\SR/shift_reg [124]),
    .O(\SR/shift_reg<124>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_123  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_123/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_123/IN ),
    .O(\SR/shift_reg [123]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<126>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<126>_0 ),
    .O(\SR/shift_reg<126>_rt_549 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_127  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_127/CLK ),
    .I(\SR/shift_reg<126>_rt_549 ),
    .O(\u0/SR/shift_reg<123>/H4_OBUF ),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_122  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_122/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_122/IN ),
    .O(\SR/shift_reg [122]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<125>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<125>_0 ),
    .O(\SR/shift_reg<125>_rt_555 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_126  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_126/CLK ),
    .I(\SR/shift_reg<125>_rt_555 ),
    .O(\SR/shift_reg [126]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_121  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_121/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_121/IN ),
    .O(\SR/shift_reg [121]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<124>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<124>_0 ),
    .O(\SR/shift_reg<124>_rt_560 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_125  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_125/CLK ),
    .I(\SR/shift_reg<124>_rt_560 ),
    .O(\SR/shift_reg [125]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_120  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_120/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_120/IN ),
    .O(\SR/shift_reg [120]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<123>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [123]),
    .O(\SR/shift_reg<123>_rt_565 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y50" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_124  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_124/CLK ),
    .I(\SR/shift_reg<123>_rt_565 ),
    .O(\SR/shift_reg [124]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_23CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_23CLK_1204 )
  );
  X_INV   \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_27CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_27CLK_1203 )
  );
  X_INV   \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_22CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_22CLK_1202 )
  );
  X_INV   \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_26CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_26CLK_1201 )
  );
  X_INV   \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_21CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_21CLK_1200 )
  );
  X_INV   \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_25CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_25CLK_1199 )
  );
  X_INV   \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_20CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_20CLK_1198 )
  );
  X_INV   \u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_24CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_24CLK_1197 )
  );
  X_BUF   \u0/SR/shift_reg<23>/u0/SR/shift_reg<23>_DMUX_Delay  (
    .I(\SR/shift_reg [27]),
    .O(\SR/shift_reg<27>_0 )
  );
  X_BUF   \u0/SR/shift_reg<23>/u0/SR/shift_reg<23>_CMUX_Delay  (
    .I(\SR/shift_reg [26]),
    .O(\SR/shift_reg<26>_0 )
  );
  X_BUF   \u0/SR/shift_reg<23>/u0/SR/shift_reg<23>_BMUX_Delay  (
    .I(\SR/shift_reg [25]),
    .O(\SR/shift_reg<25>_0 )
  );
  X_BUF   \u0/SR/shift_reg<23>/u0/SR/shift_reg<23>_AMUX_Delay  (
    .I(\SR/shift_reg [24]),
    .O(\SR/shift_reg<24>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_23  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_23/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_23/IN ),
    .O(\SR/shift_reg [23]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<26>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<26>_0 ),
    .O(\SR/shift_reg<26>_rt_571 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_27  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_27/CLK ),
    .I(\SR/shift_reg<26>_rt_571 ),
    .O(\SR/shift_reg [27]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_22  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_22/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_22/IN ),
    .O(\SR/shift_reg [22]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<25>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<25>_0 ),
    .O(\SR/shift_reg<25>_rt_577 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_26  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_26/CLK ),
    .I(\SR/shift_reg<25>_rt_577 ),
    .O(\SR/shift_reg [26]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_21  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_21/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_21/IN ),
    .O(\SR/shift_reg [21]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<24>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<24>_0 ),
    .O(\SR/shift_reg<24>_rt_582 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_25  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_25/CLK ),
    .I(\SR/shift_reg<24>_rt_582 ),
    .O(\SR/shift_reg [25]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_20  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_20/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_20/IN ),
    .O(\SR/shift_reg [20]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<23>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [23]),
    .O(\SR/shift_reg<23>_rt_587 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y44" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_24  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_24/CLK ),
    .I(\SR/shift_reg<23>_rt_587 ),
    .O(\SR/shift_reg [24]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_19CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_19CLK_1212 )
  );
  X_INV   \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_18CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_18CLK_1211 )
  );
  X_INV   \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_17CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_17CLK_1210 )
  );
  X_INV   \u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_16CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_16CLK_1209 )
  );
  X_BUF   \u0/SR/shift_reg<19>/u0/SR/shift_reg<19>_DMUX_Delay  (
    .I(dut_inputs[15]),
    .O(\dut_inputs<15>_0 )
  );
  X_BUF   \u0/SR/shift_reg<19>/u0/SR/shift_reg<19>_CMUX_Delay  (
    .I(dut_inputs[19]),
    .O(\dut_inputs<19>_0 )
  );
  X_BUF   \u0/SR/shift_reg<19>/u0/SR/shift_reg<19>_BMUX_Delay  (
    .I(dut_inputs[39]),
    .O(\dut_inputs<39>_0 )
  );
  X_BUF   \u0/SR/shift_reg<19>/u0/SR/shift_reg<19>_AMUX_Delay  (
    .I(dut_inputs[25]),
    .O(\dut_inputs<25>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_19  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_19/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_19/IN ),
    .O(\SR/shift_reg [19]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 64'hCCCCF0F0CCCCF0F0 ))
  \Mmux_dut_inputs<14>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<78>_0 ),
    .ADR2(\SR/shift_reg<14>_0 ),
    .ADR1(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 32'hCCAACCAA ))
  \Mmux_dut_inputs<15>11  (
    .ADR3(\SR/shift_reg<79>_0 ),
    .ADR0(\SR/shift_reg<15>_0 ),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR1(flip_clk),
    .O(dut_inputs[15])
  );
  X_FF #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_18  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_18/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_18/IN ),
    .O(\SR/shift_reg [18]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 64'hFF00F0F0FF00F0F0 ))
  \Mmux_dut_inputs<16>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\SR/shift_reg [80]),
    .ADR2(\SR/shift_reg [16]),
    .ADR3(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[16])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 32'hEE22EE22 ))
  \Mmux_dut_inputs<19>11  (
    .ADR1(\SR/shift_reg [83]),
    .ADR0(\SR/shift_reg [19]),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(flip_clk),
    .O(dut_inputs[19])
  );
  X_FF #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_17  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_17/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_17/IN ),
    .O(\SR/shift_reg [17]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 64'hFFAA00AAFFAA00AA ))
  \Mmux_dut_inputs<38>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\SR/shift_reg<102>_0 ),
    .ADR0(\SR/shift_reg [38]),
    .ADR4(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[38])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 32'hFCFC0C0C ))
  \Mmux_dut_inputs<39>11  (
    .ADR2(\SR/shift_reg<103>_0 ),
    .ADR1(\SR/shift_reg [39]),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(flip_clk),
    .O(dut_inputs[39])
  );
  X_FF #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_16  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_16/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_16/IN ),
    .O(\SR/shift_reg [16]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 64'hFFCC3300FFCC3300 ))
  \Mmux_dut_inputs<24>11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\SR/shift_reg<88>_0 ),
    .ADR3(\SR/shift_reg<24>_0 ),
    .ADR4(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[24])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y45" ),
    .INIT ( 32'hFAFA0A0A ))
  \Mmux_dut_inputs<25>11  (
    .ADR2(\SR/shift_reg<89>_0 ),
    .ADR0(\SR/shift_reg<25>_0 ),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(flip_clk),
    .O(dut_inputs[25])
  );
  X_BUF   \u0/dut_inputs<44>/u0/dut_inputs<44>_DMUX_Delay  (
    .I(dut_inputs[45]),
    .O(\dut_inputs<45>_0 )
  );
  X_BUF   \u0/dut_inputs<44>/u0/dut_inputs<44>_CMUX_Delay  (
    .I(dut_inputs[43]),
    .O(\dut_inputs<43>_0 )
  );
  X_BUF   \u0/dut_inputs<44>/u0/dut_inputs<44>_BMUX_Delay  (
    .I(dut_inputs[47]),
    .O(\dut_inputs<47>_0 )
  );
  X_BUF   \u0/dut_inputs<44>/u0/dut_inputs<44>_AMUX_Delay  (
    .I(dut_inputs[34]),
    .O(\dut_inputs<34>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 64'hFFCC00CCFFCC00CC ))
  \Mmux_dut_inputs<44>11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\SR/shift_reg<108>_0 ),
    .ADR1(\SR/shift_reg<44>_0 ),
    .ADR4(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[44])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 32'hFAFA0A0A ))
  \Mmux_dut_inputs<45>11  (
    .ADR2(\SR/shift_reg<109>_0 ),
    .ADR0(\SR/shift_reg<45>_0 ),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(flip_clk),
    .O(dut_inputs[45])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 64'hEE22EE22EE22EE22 ))
  \Mmux_dut_inputs<42>11  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\SR/shift_reg [106]),
    .ADR0(\SR/shift_reg [42]),
    .ADR3(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[42])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 32'hFF0FF000 ))
  \Mmux_dut_inputs<43>11  (
    .ADR2(\SR/shift_reg [107]),
    .ADR4(\SR/shift_reg [43]),
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(flip_clk),
    .O(dut_inputs[43])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 64'hF0F0CCCCF0F0CCCC ))
  \Mmux_dut_inputs<46>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<110>_0 ),
    .ADR1(\SR/shift_reg<46>_0 ),
    .ADR2(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[46])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 32'hF5A0F5A0 ))
  \Mmux_dut_inputs<47>11  (
    .ADR0(\SR/shift_reg<111>_0 ),
    .ADR3(\SR/shift_reg<47>_0 ),
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(flip_clk),
    .O(dut_inputs[47])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 64'hDDDD8888DDDD8888 ))
  \Mmux_dut_inputs<36>11  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\SR/shift_reg<100>_0 ),
    .ADR4(\SR/shift_reg [36]),
    .ADR1(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[36])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y46" ),
    .INIT ( 32'hCFC0CFC0 ))
  \Mmux_dut_inputs<34>11  (
    .ADR2(\SR/shift_reg<98>_0 ),
    .ADR3(\SR/shift_reg<34>_0 ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(flip_clk),
    .O(dut_inputs[34])
  );
  X_INV   \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_75CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_75CLK_1228 )
  );
  X_INV   \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_79CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_79CLK_1227 )
  );
  X_INV   \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_74CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_74CLK_1226 )
  );
  X_INV   \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_78CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_78CLK_1225 )
  );
  X_INV   \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_73CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_73CLK_1224 )
  );
  X_INV   \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_77CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_77CLK_1223 )
  );
  X_INV   \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_72CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_72CLK_1222 )
  );
  X_INV   \u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_76CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_76CLK_1221 )
  );
  X_BUF   \u0/SR/shift_reg<75>/u0/SR/shift_reg<75>_DMUX_Delay  (
    .I(\SR/shift_reg [79]),
    .O(\SR/shift_reg<79>_0 )
  );
  X_BUF   \u0/SR/shift_reg<75>/u0/SR/shift_reg<75>_CMUX_Delay  (
    .I(\SR/shift_reg [78]),
    .O(\SR/shift_reg<78>_0 )
  );
  X_BUF   \u0/SR/shift_reg<75>/u0/SR/shift_reg<75>_BMUX_Delay  (
    .I(\SR/shift_reg [77]),
    .O(\SR/shift_reg<77>_0 )
  );
  X_BUF   \u0/SR/shift_reg<75>/u0/SR/shift_reg<75>_AMUX_Delay  (
    .I(\SR/shift_reg [76]),
    .O(\SR/shift_reg<76>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_75  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_75/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_75/IN ),
    .O(\SR/shift_reg [75]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<78>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<78>_0 ),
    .O(\SR/shift_reg<78>_rt_667 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_79  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_79/CLK ),
    .I(\SR/shift_reg<78>_rt_667 ),
    .O(\SR/shift_reg [79]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_74  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_74/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_74/IN ),
    .O(\SR/shift_reg [74]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<77>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<77>_0 ),
    .O(\SR/shift_reg<77>_rt_673 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_78  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_78/CLK ),
    .I(\SR/shift_reg<77>_rt_673 ),
    .O(\SR/shift_reg [78]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_73  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_73/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_73/IN ),
    .O(\SR/shift_reg [73]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<76>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<76>_0 ),
    .O(\SR/shift_reg<76>_rt_678 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_77  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_77/CLK ),
    .I(\SR/shift_reg<76>_rt_678 ),
    .O(\SR/shift_reg [77]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_72  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_72/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_72/IN ),
    .O(\SR/shift_reg [72]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<75>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [75]),
    .O(\SR/shift_reg<75>_rt_683 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y47" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_76  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_76/CLK ),
    .I(\SR/shift_reg<75>_rt_683 ),
    .O(\SR/shift_reg [76]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \u0/dut_inputs<6>/u0/dut_inputs<6>_DMUX_Delay  (
    .I(dut_inputs[7]),
    .O(\dut_inputs<7>_0 )
  );
  X_BUF   \u0/dut_inputs<6>/u0/dut_inputs<6>_CMUX_Delay  (
    .I(dut_inputs[55]),
    .O(\dut_inputs<55>_0 )
  );
  X_BUF   \u0/dut_inputs<6>/u0/dut_inputs<6>_BMUX_Delay  (
    .I(dut_inputs[51]),
    .O(\dut_inputs<51>_0 )
  );
  X_BUF   \u0/dut_inputs<6>/u0/dut_inputs<6>_AMUX_Delay  (
    .I(dut_inputs[11]),
    .O(\dut_inputs<11>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 64'hF0F0CCCCF0F0CCCC ))
  \Mmux_dut_inputs<6>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg [70]),
    .ADR1(\SR/shift_reg<6>_0 ),
    .ADR2(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 32'hF0AAF0AA ))
  \Mmux_dut_inputs<7>11  (
    .ADR3(\SR/shift_reg [71]),
    .ADR0(\SR/shift_reg<7>_0 ),
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(flip_clk),
    .O(dut_inputs[7])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 64'hFCFC3030FCFC3030 ))
  \Mmux_dut_inputs<54>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(\SR/shift_reg<118>_0 ),
    .ADR2(\SR/shift_reg<54>_0 ),
    .ADR4(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[54])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 32'hFFAA00AA ))
  \Mmux_dut_inputs<55>11  (
    .ADR3(\SR/shift_reg<119>_0 ),
    .ADR0(\SR/shift_reg<55>_0 ),
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(flip_clk),
    .O(dut_inputs[55])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 64'hAAFFAA00AAFFAA00 ))
  \Mmux_dut_inputs<50>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\SR/shift_reg [114]),
    .ADR4(\SR/shift_reg [50]),
    .ADR0(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[50])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 32'hACACACAC ))
  \Mmux_dut_inputs<51>11  (
    .ADR2(\SR/shift_reg [115]),
    .ADR1(\SR/shift_reg [51]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR0(flip_clk),
    .O(dut_inputs[51])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 64'hFFCC3300FFCC3300 ))
  \Mmux_dut_inputs<10>11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\SR/shift_reg [74]),
    .ADR3(\SR/shift_reg [10]),
    .ADR4(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y48" ),
    .INIT ( 32'hFAFA5050 ))
  \Mmux_dut_inputs<11>11  (
    .ADR0(\SR/shift_reg [75]),
    .ADR2(\SR/shift_reg [11]),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(flip_clk),
    .O(dut_inputs[11])
  );
  X_BUF   \u0/dut_inputs<60>/u0/dut_inputs<60>_DMUX_Delay  (
    .I(dut_inputs[61]),
    .O(\dut_inputs<61>_0 )
  );
  X_BUF   \u0/dut_inputs<60>/u0/dut_inputs<60>_AMUX_Delay  (
    .I(dut_inputs[59]),
    .O(\dut_inputs<59>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 64'hAAAAFF00AAAAFF00 ))
  \Mmux_dut_inputs<60>11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\SR/shift_reg<124>_0 ),
    .ADR3(\SR/shift_reg [60]),
    .ADR0(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[60])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 32'hB8B8B8B8 ))
  \Mmux_dut_inputs<61>11  (
    .ADR1(\SR/shift_reg<125>_0 ),
    .ADR2(\SR/shift_reg [61]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR0(flip_clk),
    .O(dut_inputs[61])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 64'hAACCAACCAACCAACC ))
  \Mmux_dut_inputs<58>11  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(\SR/shift_reg [122]),
    .ADR1(\SR/shift_reg [58]),
    .ADR0(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[58])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y49" ),
    .INIT ( 32'hAFAFA0A0 ))
  \Mmux_dut_inputs<59>11  (
    .ADR2(\SR/shift_reg [123]),
    .ADR4(\SR/shift_reg [59]),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR0(flip_clk),
    .O(dut_inputs[59])
  );
  X_BUF   \u0/dut_inputs<35>/u0/dut_inputs<35>_AMUX_Delay  (
    .I(dut_inputs[37]),
    .O(\dut_inputs<37>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 64'hF0CCF0CCF0CCF0CC ))
  \Mmux_dut_inputs<35>11  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<99>_0 ),
    .ADR1(\SR/shift_reg<35>_0 ),
    .ADR2(flip_clk),
    .ADR5(1'b1),
    .O(dut_inputs[35])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 32'hF5F5A0A0 ))
  \Mmux_dut_inputs<37>11  (
    .ADR0(\SR/shift_reg<101>_0 ),
    .ADR4(\SR/shift_reg [37]),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(flip_clk),
    .O(dut_inputs[37])
  );
  X_INV   \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_71CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_71CLK_1239 )
  );
  X_INV   \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_70CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_70CLK_1238 )
  );
  X_INV   \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_69CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_69CLK_1237 )
  );
  X_INV   \u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_68CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_68CLK_1236 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_71  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_71/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_71/IN ),
    .O(\SR/shift_reg [71]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_70  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_70/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_70/IN ),
    .O(\SR/shift_reg [70]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_69  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_69/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_69/IN ),
    .O(\SR/shift_reg [69]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y48" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_68  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_68/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_68/IN ),
    .O(\SR/shift_reg [68]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_INV   \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_39CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_39CLK_1251 )
  );
  X_INV   \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_103CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_103CLK_1250 )
  );
  X_INV   \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_38CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_38CLK_1249 )
  );
  X_INV   \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_102CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_102CLK_1248 )
  );
  X_INV   \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_37CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_37CLK_1247 )
  );
  X_INV   \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_101CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_101CLK_1246 )
  );
  X_INV   \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_36CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_36CLK_1245 )
  );
  X_INV   \u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_100CLK  (
    .I(sca_clk),
    .O(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_100CLK_1244 )
  );
  X_BUF   \u0/SR/shift_reg<39>/u0/SR/shift_reg<39>_DMUX_Delay  (
    .I(\SR/shift_reg [103]),
    .O(\SR/shift_reg<103>_0 )
  );
  X_BUF   \u0/SR/shift_reg<39>/u0/SR/shift_reg<39>_CMUX_Delay  (
    .I(\SR/shift_reg [102]),
    .O(\SR/shift_reg<102>_0 )
  );
  X_BUF   \u0/SR/shift_reg<39>/u0/SR/shift_reg<39>_BMUX_Delay  (
    .I(\SR/shift_reg [101]),
    .O(\SR/shift_reg<101>_0 )
  );
  X_BUF   \u0/SR/shift_reg<39>/u0/SR/shift_reg<39>_AMUX_Delay  (
    .I(\SR/shift_reg [100]),
    .O(\SR/shift_reg<100>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_39  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_39/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_39/IN ),
    .O(\SR/shift_reg [39]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 32'hF0F0F0F0 ))
  \SR/shift_reg<102>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\SR/shift_reg<102>_0 ),
    .O(\SR/shift_reg<102>_rt_755 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_103  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_103/CLK ),
    .I(\SR/shift_reg<102>_rt_755 ),
    .O(\SR/shift_reg [103]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_38  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_38/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_38/IN ),
    .O(\SR/shift_reg [38]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 32'hFFFF0000 ))
  \SR/shift_reg<101>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\SR/shift_reg<101>_0 ),
    .O(\SR/shift_reg<101>_rt_761 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_102  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_102/CLK ),
    .I(\SR/shift_reg<101>_rt_761 ),
    .O(\SR/shift_reg [102]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_37  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_37/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_37/IN ),
    .O(\SR/shift_reg [37]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<100>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<100>_0 ),
    .O(\SR/shift_reg<100>_rt_766 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_101  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_101/CLK ),
    .I(\SR/shift_reg<100>_rt_766 ),
    .O(\SR/shift_reg [101]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_36  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_36/CLK ),
    .I(\NlwBufferSignal_u0/SR/shift_reg_36/IN ),
    .O(\SR/shift_reg [36]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 32'hFF00FF00 ))
  \SR/shift_reg<99>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\SR/shift_reg<99>_0 ),
    .O(\SR/shift_reg<99>_rt_771 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 1'b0 ))
  \SR/shift_reg_100  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u0/SR/shift_reg_100/CLK ),
    .I(\SR/shift_reg<99>_rt_771 ),
    .O(\SR/shift_reg [100]),
    .RST(\SR/reset_inv ),
    .SET(GND)
  );
  X_BUF   \NlwBufferBlock_u0/out_scan/shift_reg_0/CLK  (
    .I(\shift_out_data_int/INV_u0/out_scan/shift_reg_0CLK_1035 ),
    .O(\NlwBufferSignal_u0/out_scan/shift_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_95/CLK  (
    .I(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_95CLK_1047 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_95/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_95/IN  (
    .I(\SR/shift_reg [94]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_95/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_99/CLK  (
    .I(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_99CLK_1046 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_99/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_94/CLK  (
    .I(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_94CLK_1045 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_94/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_94/IN  (
    .I(\SR/shift_reg [93]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_94/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_98/CLK  (
    .I(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_98CLK_1044 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_98/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_93/CLK  (
    .I(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_93CLK_1043 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_93/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_93/IN  (
    .I(\SR/shift_reg [92]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_93/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_97/CLK  (
    .I(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_97CLK_1042 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_97/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_92/CLK  (
    .I(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_92CLK_1041 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_92/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_92/IN  (
    .I(\SR/shift_reg<91>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_92/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_96/CLK  (
    .I(\u0/SR/shift_reg<95>/INV_u0/SR/shift_reg_96CLK_1040 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_96/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_87/CLK  (
    .I(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_87CLK_1060 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_87/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_87/IN  (
    .I(\SR/shift_reg [86]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_87/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_91/CLK  (
    .I(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_91CLK_1059 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_91/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_86/CLK  (
    .I(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_86CLK_1058 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_86/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_86/IN  (
    .I(\SR/shift_reg [85]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_86/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_90/CLK  (
    .I(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_90CLK_1057 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_90/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_85/CLK  (
    .I(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_85CLK_1056 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_85/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_85/IN  (
    .I(\SR/shift_reg [84]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_85/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_89/CLK  (
    .I(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_89CLK_1055 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_89/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_84/CLK  (
    .I(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_84CLK_1054 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_84/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_84/IN  (
    .I(\SR/shift_reg [83]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_84/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_88/CLK  (
    .I(\u0/SR/shift_reg<87>/INV_u0/SR/shift_reg_88CLK_1053 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_88/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_31/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_31CLK_1072 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_31/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_31/IN  (
    .I(\SR/shift_reg [30]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_31/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_35/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_35CLK_1071 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_35/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_30/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_30CLK_1070 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_30/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_30/IN  (
    .I(\SR/shift_reg [29]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_30/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_34/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_34CLK_1069 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_34/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_29/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_29CLK_1068 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_29/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_29/IN  (
    .I(\SR/shift_reg [28]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_29/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_33/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_33CLK_1067 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_33/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_28/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_28CLK_1066 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_28/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_28/IN  (
    .I(\SR/shift_reg<27>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_28/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_32/CLK  (
    .I(\u0/SR/shift_reg<31>/INV_u0/SR/shift_reg_32CLK_1065 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_32/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_43/CLK  (
    .I(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_43CLK_1084 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_43/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_43/IN  (
    .I(\SR/shift_reg [42]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_43/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_47/CLK  (
    .I(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_47CLK_1083 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_47/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_42/CLK  (
    .I(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_42CLK_1082 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_42/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_42/IN  (
    .I(\SR/shift_reg [41]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_42/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_46/CLK  (
    .I(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_46CLK_1081 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_46/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_41/CLK  (
    .I(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_41CLK_1080 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_41/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_41/IN  (
    .I(\SR/shift_reg [40]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_41/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_45/CLK  (
    .I(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_45CLK_1079 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_45/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_40/CLK  (
    .I(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_40CLK_1078 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_40/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_40/IN  (
    .I(\SR/shift_reg [39]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_40/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_44/CLK  (
    .I(\u0/SR/shift_reg<43>/INV_u0/SR/shift_reg_44CLK_1077 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_44/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_63/CLK  (
    .I(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_63CLK_1101 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_63/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_63/IN  (
    .I(\SR/shift_reg [62]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_63/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_67/CLK  (
    .I(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_67CLK_1100 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_67/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_62/CLK  (
    .I(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_62CLK_1099 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_62/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_62/IN  (
    .I(\SR/shift_reg [61]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_62/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_66/CLK  (
    .I(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_66CLK_1098 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_66/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_61/CLK  (
    .I(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_61CLK_1097 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_61/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_61/IN  (
    .I(\SR/shift_reg [60]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_61/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_65/CLK  (
    .I(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_65CLK_1096 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_65/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_60/CLK  (
    .I(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_60CLK_1095 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_60/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_60/IN  (
    .I(\SR/shift_reg [59]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_60/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_64/CLK  (
    .I(\u0/SR/shift_reg<63>/INV_u0/SR/shift_reg_64CLK_1094 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_64/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_83/CLK  (
    .I(\u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_83CLK_1110 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_83/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_83/IN  (
    .I(\SR/shift_reg [82]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_83/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_82/CLK  (
    .I(\u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_82CLK_1109 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_82/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_82/IN  (
    .I(\SR/shift_reg [81]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_82/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_81/CLK  (
    .I(\u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_81CLK_1108 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_81/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_81/IN  (
    .I(\SR/shift_reg [80]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_81/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_80/CLK  (
    .I(\u0/SR/shift_reg<83>/INV_u0/SR/shift_reg_80CLK_1107 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_80/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_80/IN  (
    .I(\SR/shift_reg<79>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_80/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_107/CLK  (
    .I(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_107CLK_1122 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_107/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_107/IN  (
    .I(\SR/shift_reg [106]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_107/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_111/CLK  (
    .I(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_111CLK_1121 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_111/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_106/CLK  (
    .I(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_106CLK_1120 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_106/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_106/IN  (
    .I(\SR/shift_reg [105]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_106/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_110/CLK  (
    .I(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_110CLK_1119 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_110/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_105/CLK  (
    .I(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_105CLK_1118 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_105/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_105/IN  (
    .I(\SR/shift_reg [104]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_105/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_109/CLK  (
    .I(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_109CLK_1117 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_109/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_104/CLK  (
    .I(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_104CLK_1116 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_104/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_104/IN  (
    .I(\SR/shift_reg<103>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_104/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_108/CLK  (
    .I(\u0/SR/shift_reg<107>/INV_u0/SR/shift_reg_108CLK_1115 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_108/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_11/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_11CLK_1134 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_11/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_11/IN  (
    .I(\SR/shift_reg [10]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_11/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_15/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_15CLK_1133 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_15/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_10/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_10CLK_1132 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_10/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_10/IN  (
    .I(\SR/shift_reg [9]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_10/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_14/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_14CLK_1131 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_14/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_9/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_9CLK_1130 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_9/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_9/IN  (
    .I(\SR/shift_reg [8]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_9/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_13/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_13CLK_1129 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_13/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_8/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_8CLK_1128 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_8/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_8/IN  (
    .I(\SR/shift_reg<7>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_8/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_12/CLK  (
    .I(\u0/SR/shift_reg<11>/INV_u0/SR/shift_reg_12CLK_1127 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_12/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_3/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_3CLK_1146 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_3/IN  (
    .I(\SR/shift_reg [2]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_3/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_7/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_7CLK_1145 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_7/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_2/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_2CLK_1144 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_2/IN  (
    .I(\SR/shift_reg [1]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_2/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_6/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_6CLK_1143 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_6/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_1/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_1CLK_1142 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_1/IN  (
    .I(\SR/shift_reg [0]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_1/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_5/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_5CLK_1141 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_5/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_0/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_0CLK_1140 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_0/IN  (
    .I(sca_data_in),
    .O(\NlwBufferSignal_u0/SR/shift_reg_0/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_4/CLK  (
    .I(\u0/SR/shift_reg<3>/INV_u0/SR/shift_reg_4CLK_1139 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_115/CLK  (
    .I(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_115CLK_1158 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_115/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_115/IN  (
    .I(\SR/shift_reg [114]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_115/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_119/CLK  (
    .I(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_119CLK_1157 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_119/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_114/CLK  (
    .I(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_114CLK_1156 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_114/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_114/IN  (
    .I(\SR/shift_reg [113]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_114/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_118/CLK  (
    .I(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_118CLK_1155 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_118/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_113/CLK  (
    .I(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_113CLK_1154 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_113/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_113/IN  (
    .I(\SR/shift_reg [112]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_113/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_117/CLK  (
    .I(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_117CLK_1153 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_117/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_112/CLK  (
    .I(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_112CLK_1152 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_112/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_112/IN  (
    .I(\SR/shift_reg<111>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_112/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_116/CLK  (
    .I(\u0/SR/shift_reg<115>/INV_u0/SR/shift_reg_116CLK_1151 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_116/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_51/CLK  (
    .I(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_51CLK_1173 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_51/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_51/IN  (
    .I(\SR/shift_reg [50]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_51/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_55/CLK  (
    .I(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_55CLK_1172 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_55/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_50/CLK  (
    .I(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_50CLK_1171 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_50/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_50/IN  (
    .I(\SR/shift_reg [49]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_50/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_54/CLK  (
    .I(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_54CLK_1170 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_54/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_49/CLK  (
    .I(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_49CLK_1169 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_49/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_49/IN  (
    .I(\SR/shift_reg [48]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_49/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_53/CLK  (
    .I(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_53CLK_1168 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_53/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_48/CLK  (
    .I(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_48CLK_1167 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_48/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_48/IN  (
    .I(\SR/shift_reg<47>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_48/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_52/CLK  (
    .I(\u0/SR/shift_reg<51>/INV_u0/SR/shift_reg_52CLK_1166 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_52/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_59/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_59CLK_1180 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_59/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_59/IN  (
    .I(\SR/shift_reg [58]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_59/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_58/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_58CLK_1179 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_58/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_58/IN  (
    .I(\SR/shift_reg [57]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_58/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_57/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_57CLK_1178 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_57/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_57/IN  (
    .I(\SR/shift_reg [56]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_57/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_56/CLK  (
    .I(\u0/SR/shift_reg<59>/INV_u0/SR/shift_reg_56CLK_1177 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_56/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_56/IN  (
    .I(\SR/shift_reg<55>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_56/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_123/CLK  (
    .I(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_123CLK_1192 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_123/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_123/IN  (
    .I(\SR/shift_reg [122]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_123/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_127/CLK  (
    .I(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_127CLK_1191 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_127/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_122/CLK  (
    .I(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_122CLK_1190 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_122/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_122/IN  (
    .I(\SR/shift_reg [121]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_122/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_126/CLK  (
    .I(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_126CLK_1189 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_126/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_121/CLK  (
    .I(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_121CLK_1188 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_121/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_121/IN  (
    .I(\SR/shift_reg [120]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_121/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_125/CLK  (
    .I(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_125CLK_1187 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_125/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_120/CLK  (
    .I(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_120CLK_1186 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_120/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_120/IN  (
    .I(\SR/shift_reg<119>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_120/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_124/CLK  (
    .I(\u0/SR/shift_reg<123>/INV_u0/SR/shift_reg_124CLK_1185 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_124/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_23/CLK  (
    .I(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_23CLK_1204 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_23/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_23/IN  (
    .I(\SR/shift_reg [22]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_23/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_27/CLK  (
    .I(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_27CLK_1203 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_27/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_22/CLK  (
    .I(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_22CLK_1202 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_22/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_22/IN  (
    .I(\SR/shift_reg [21]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_22/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_26/CLK  (
    .I(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_26CLK_1201 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_26/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_21/CLK  (
    .I(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_21CLK_1200 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_21/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_21/IN  (
    .I(\SR/shift_reg [20]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_21/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_25/CLK  (
    .I(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_25CLK_1199 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_25/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_20/CLK  (
    .I(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_20CLK_1198 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_20/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_20/IN  (
    .I(\SR/shift_reg [19]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_20/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_24/CLK  (
    .I(\u0/SR/shift_reg<23>/INV_u0/SR/shift_reg_24CLK_1197 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_24/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_19/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_19CLK_1212 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_19/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_19/IN  (
    .I(\SR/shift_reg [18]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_19/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_18/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_18CLK_1211 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_18/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_18/IN  (
    .I(\SR/shift_reg [17]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_18/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_17/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_17CLK_1210 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_17/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_17/IN  (
    .I(\SR/shift_reg [16]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_17/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_16/CLK  (
    .I(\u0/SR/shift_reg<19>/INV_u0/SR/shift_reg_16CLK_1209 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_16/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_16/IN  (
    .I(\SR/shift_reg<15>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_16/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_75/CLK  (
    .I(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_75CLK_1228 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_75/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_75/IN  (
    .I(\SR/shift_reg [74]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_75/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_79/CLK  (
    .I(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_79CLK_1227 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_79/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_74/CLK  (
    .I(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_74CLK_1226 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_74/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_74/IN  (
    .I(\SR/shift_reg [73]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_74/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_78/CLK  (
    .I(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_78CLK_1225 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_78/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_73/CLK  (
    .I(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_73CLK_1224 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_73/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_73/IN  (
    .I(\SR/shift_reg [72]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_73/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_77/CLK  (
    .I(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_77CLK_1223 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_77/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_72/CLK  (
    .I(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_72CLK_1222 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_72/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_72/IN  (
    .I(\SR/shift_reg [71]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_72/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_76/CLK  (
    .I(\u0/SR/shift_reg<75>/INV_u0/SR/shift_reg_76CLK_1221 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_76/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_71/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_71CLK_1239 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_71/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_71/IN  (
    .I(\SR/shift_reg [70]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_71/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_70/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_70CLK_1238 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_70/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_70/IN  (
    .I(\SR/shift_reg [69]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_70/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_69/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_69CLK_1237 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_69/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_69/IN  (
    .I(\SR/shift_reg [68]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_69/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_68/CLK  (
    .I(\u0/SR/shift_reg<71>/INV_u0/SR/shift_reg_68CLK_1236 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_68/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_68/IN  (
    .I(\SR/shift_reg<67>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_68/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_39/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_39CLK_1251 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_39/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_39/IN  (
    .I(\SR/shift_reg [38]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_39/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_103/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_103CLK_1250 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_103/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_38/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_38CLK_1249 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_38/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_38/IN  (
    .I(\SR/shift_reg [37]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_38/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_102/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_102CLK_1248 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_102/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_37/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_37CLK_1247 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_37/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_37/IN  (
    .I(\SR/shift_reg [36]),
    .O(\NlwBufferSignal_u0/SR/shift_reg_37/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_101/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_101CLK_1246 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_101/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_36/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_36CLK_1245 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_36/CLK )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_36/IN  (
    .I(\SR/shift_reg<35>_0 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_36/IN )
  );
  X_BUF   \NlwBufferBlock_u0/SR/shift_reg_100/CLK  (
    .I(\u0/SR/shift_reg<39>/INV_u0/SR/shift_reg_100CLK_1244 ),
    .O(\NlwBufferSignal_u0/SR/shift_reg_100/CLK )
  );
  X_ONE   NlwBlock_u0_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_u0_GND (
    .O(GND)
  );
endmodule

