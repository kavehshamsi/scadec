////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sca_unlock_sim.v
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
  wire \out_scan/shift_reg_0_286 ;
  wire dut_outputs;
  wire \SR/reset_inv ;
  wire \out_scan/par_in[0]_scan_in_MUX_66_o ;
  wire \NlwInverterSignal_u0/SR/shift_reg_127/C ;
  wire VCC;
  wire GND;
  wire \NlwInverterSignal_u0/SR/shift_reg_126/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_125/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_124/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_123/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_122/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_121/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_120/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_119/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_118/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_117/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_116/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_115/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_114/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_113/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_112/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_111/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_110/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_109/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_108/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_107/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_106/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_105/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_104/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_103/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_102/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_101/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_100/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_99/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_98/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_97/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_96/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_95/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_94/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_93/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_92/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_91/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_90/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_89/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_88/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_87/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_86/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_85/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_84/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_83/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_82/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_81/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_80/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_79/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_78/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_77/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_76/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_75/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_74/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_73/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_72/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_71/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_70/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_69/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_68/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_67/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_66/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_65/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_64/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_63/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_62/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_61/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_60/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_59/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_58/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_57/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_56/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_55/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_54/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_53/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_52/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_51/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_50/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_49/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_48/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_47/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_46/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_45/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_44/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_43/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_42/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_41/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_40/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_39/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_38/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_37/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_36/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_35/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_34/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_33/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_32/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_31/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_30/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_29/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_28/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_27/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_26/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_25/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_24/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_23/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_22/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_21/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_20/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_19/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_18/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_17/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_16/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_15/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_14/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_13/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_12/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_11/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_10/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_9/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_8/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_7/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_6/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_5/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_4/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_3/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_2/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_1/C ;
  wire \NlwInverterSignal_u0/SR/shift_reg_0/C ;
  wire \NlwInverterSignal_u0/out_scan/shift_reg_0/C ;
  wire [63 : 0] dut_inputs;
  wire [126 : 0] \SR/shift_reg ;
  wire [127 : 127] \NlwRenamedSig_OI_SR/shift_reg ;
  assign
    sca_data_out = \NlwRenamedSig_OI_SR/shift_reg [127],
    shift_out_data = \out_scan/shift_reg_0_286 ;
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_127  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_127/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [126]),
    .O(\NlwRenamedSig_OI_SR/shift_reg [127]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_126  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_126/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [125]),
    .O(\SR/shift_reg [126]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_125  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_125/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [124]),
    .O(\SR/shift_reg [125]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_124  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_124/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [123]),
    .O(\SR/shift_reg [124]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_123  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_123/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [122]),
    .O(\SR/shift_reg [123]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_122  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_122/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [121]),
    .O(\SR/shift_reg [122]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_121  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_121/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [120]),
    .O(\SR/shift_reg [121]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_120  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_120/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [119]),
    .O(\SR/shift_reg [120]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_119  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_119/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [118]),
    .O(\SR/shift_reg [119]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_118  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_118/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [117]),
    .O(\SR/shift_reg [118]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_117  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_117/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [116]),
    .O(\SR/shift_reg [117]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_116  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_116/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [115]),
    .O(\SR/shift_reg [116]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_115  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_115/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [114]),
    .O(\SR/shift_reg [115]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_114  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_114/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [113]),
    .O(\SR/shift_reg [114]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_113  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_113/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [112]),
    .O(\SR/shift_reg [113]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_112  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_112/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [111]),
    .O(\SR/shift_reg [112]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_111  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_111/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [110]),
    .O(\SR/shift_reg [111]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_110  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_110/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [109]),
    .O(\SR/shift_reg [110]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_109  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_109/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [108]),
    .O(\SR/shift_reg [109]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_108  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_108/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [107]),
    .O(\SR/shift_reg [108]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_107  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_107/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [106]),
    .O(\SR/shift_reg [107]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_106  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_106/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [105]),
    .O(\SR/shift_reg [106]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_105  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_105/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [104]),
    .O(\SR/shift_reg [105]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_104  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_104/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [103]),
    .O(\SR/shift_reg [104]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_103  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_103/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [102]),
    .O(\SR/shift_reg [103]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_102  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_102/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [101]),
    .O(\SR/shift_reg [102]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_101  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_101/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [100]),
    .O(\SR/shift_reg [101]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_100  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_100/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [99]),
    .O(\SR/shift_reg [100]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_99  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_99/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [98]),
    .O(\SR/shift_reg [99]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_98  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_98/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [97]),
    .O(\SR/shift_reg [98]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_97  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_97/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [96]),
    .O(\SR/shift_reg [97]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_96  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_96/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [95]),
    .O(\SR/shift_reg [96]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_95  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_95/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [94]),
    .O(\SR/shift_reg [95]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_94  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_94/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [93]),
    .O(\SR/shift_reg [94]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_93  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_93/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [92]),
    .O(\SR/shift_reg [93]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_92  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_92/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [91]),
    .O(\SR/shift_reg [92]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_91  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_91/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [90]),
    .O(\SR/shift_reg [91]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_90  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_90/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [89]),
    .O(\SR/shift_reg [90]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_89  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_89/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [88]),
    .O(\SR/shift_reg [89]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_88  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_88/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [87]),
    .O(\SR/shift_reg [88]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_87  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_87/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [86]),
    .O(\SR/shift_reg [87]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_86  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_86/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [85]),
    .O(\SR/shift_reg [86]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_85  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_85/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [84]),
    .O(\SR/shift_reg [85]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_84  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_84/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [83]),
    .O(\SR/shift_reg [84]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_83  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_83/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [82]),
    .O(\SR/shift_reg [83]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_82  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_82/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [81]),
    .O(\SR/shift_reg [82]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_81  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_81/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [80]),
    .O(\SR/shift_reg [81]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_80  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_80/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [79]),
    .O(\SR/shift_reg [80]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_79  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_79/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [78]),
    .O(\SR/shift_reg [79]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_78  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_78/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [77]),
    .O(\SR/shift_reg [78]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_77  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_77/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [76]),
    .O(\SR/shift_reg [77]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_76  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_76/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [75]),
    .O(\SR/shift_reg [76]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_75  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_75/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [74]),
    .O(\SR/shift_reg [75]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_74  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_74/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [73]),
    .O(\SR/shift_reg [74]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_73  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_73/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [72]),
    .O(\SR/shift_reg [73]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_72  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_72/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [71]),
    .O(\SR/shift_reg [72]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_71  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_71/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [70]),
    .O(\SR/shift_reg [71]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_70  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_70/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [69]),
    .O(\SR/shift_reg [70]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_69  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_69/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [68]),
    .O(\SR/shift_reg [69]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_68  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_68/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [67]),
    .O(\SR/shift_reg [68]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_67  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_67/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [66]),
    .O(\SR/shift_reg [67]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_66  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_66/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [65]),
    .O(\SR/shift_reg [66]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_65  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_65/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [64]),
    .O(\SR/shift_reg [65]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_64  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_64/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [63]),
    .O(\SR/shift_reg [64]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_63  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_63/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [62]),
    .O(\SR/shift_reg [63]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_62  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_62/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [61]),
    .O(\SR/shift_reg [62]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_61  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_61/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [60]),
    .O(\SR/shift_reg [61]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_60  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_60/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [59]),
    .O(\SR/shift_reg [60]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_59  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_59/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [58]),
    .O(\SR/shift_reg [59]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_58  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_58/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [57]),
    .O(\SR/shift_reg [58]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_57  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_57/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [56]),
    .O(\SR/shift_reg [57]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_56  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_56/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [55]),
    .O(\SR/shift_reg [56]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_55  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_55/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [54]),
    .O(\SR/shift_reg [55]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_54  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_54/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [53]),
    .O(\SR/shift_reg [54]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_53  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_53/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [52]),
    .O(\SR/shift_reg [53]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_52  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_52/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [51]),
    .O(\SR/shift_reg [52]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_51  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_51/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [50]),
    .O(\SR/shift_reg [51]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_50  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_50/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [49]),
    .O(\SR/shift_reg [50]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_49  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_49/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [48]),
    .O(\SR/shift_reg [49]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_48  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_48/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [47]),
    .O(\SR/shift_reg [48]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_47  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_47/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [46]),
    .O(\SR/shift_reg [47]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_46  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_46/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [45]),
    .O(\SR/shift_reg [46]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_45  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_45/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [44]),
    .O(\SR/shift_reg [45]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_44  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_44/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [43]),
    .O(\SR/shift_reg [44]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_43  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_43/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [42]),
    .O(\SR/shift_reg [43]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_42  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_42/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [41]),
    .O(\SR/shift_reg [42]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_41  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_41/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [40]),
    .O(\SR/shift_reg [41]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_40  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_40/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [39]),
    .O(\SR/shift_reg [40]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_39  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_39/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [38]),
    .O(\SR/shift_reg [39]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_38  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_38/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [37]),
    .O(\SR/shift_reg [38]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_37  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_37/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [36]),
    .O(\SR/shift_reg [37]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_36  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_36/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [35]),
    .O(\SR/shift_reg [36]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_35  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_35/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [34]),
    .O(\SR/shift_reg [35]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_34  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_34/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [33]),
    .O(\SR/shift_reg [34]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_33  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_33/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [32]),
    .O(\SR/shift_reg [33]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_32  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_32/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [31]),
    .O(\SR/shift_reg [32]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_31  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_31/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [30]),
    .O(\SR/shift_reg [31]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_30  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_30/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [29]),
    .O(\SR/shift_reg [30]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_29  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_29/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [28]),
    .O(\SR/shift_reg [29]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_28  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_28/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [27]),
    .O(\SR/shift_reg [28]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_27  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_27/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [26]),
    .O(\SR/shift_reg [27]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_26  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_26/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [25]),
    .O(\SR/shift_reg [26]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_25  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_25/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [24]),
    .O(\SR/shift_reg [25]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_24  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_24/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [23]),
    .O(\SR/shift_reg [24]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_23  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_23/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [22]),
    .O(\SR/shift_reg [23]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_22  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_22/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [21]),
    .O(\SR/shift_reg [22]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_21  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_21/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [20]),
    .O(\SR/shift_reg [21]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_20  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_20/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [19]),
    .O(\SR/shift_reg [20]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_19  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_19/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [18]),
    .O(\SR/shift_reg [19]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_18  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_18/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [17]),
    .O(\SR/shift_reg [18]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_17  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_17/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [16]),
    .O(\SR/shift_reg [17]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_16  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_16/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [15]),
    .O(\SR/shift_reg [16]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_15  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_15/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [14]),
    .O(\SR/shift_reg [15]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_14  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_14/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [13]),
    .O(\SR/shift_reg [14]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_13  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_13/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [12]),
    .O(\SR/shift_reg [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_12  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_12/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [11]),
    .O(\SR/shift_reg [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_11  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_11/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [10]),
    .O(\SR/shift_reg [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_10  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_10/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [9]),
    .O(\SR/shift_reg [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_9  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_9/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [8]),
    .O(\SR/shift_reg [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_8  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_8/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [7]),
    .O(\SR/shift_reg [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_7  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_7/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [6]),
    .O(\SR/shift_reg [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_6  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_6/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [5]),
    .O(\SR/shift_reg [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_5  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_5/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [4]),
    .O(\SR/shift_reg [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_4  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_4/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [3]),
    .O(\SR/shift_reg [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_3  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_3/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [2]),
    .O(\SR/shift_reg [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_2  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_2/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [1]),
    .O(\SR/shift_reg [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_1  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_1/C ),
    .RST(\SR/reset_inv ),
    .I(\SR/shift_reg [0]),
    .O(\SR/shift_reg [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \SR/shift_reg_0  (
    .CLK(\NlwInverterSignal_u0/SR/shift_reg_0/C ),
    .RST(\SR/reset_inv ),
    .I(sca_data_in),
    .O(\SR/shift_reg [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \out_scan/shift_reg_0  (
    .CLK(\NlwInverterSignal_u0/out_scan/shift_reg_0/C ),
    .RST(\SR/reset_inv ),
    .I(\out_scan/par_in[0]_scan_in_MUX_66_o ),
    .O(\out_scan/shift_reg_0_286 ),
    .CE(VCC),
    .SET(GND)
  );
  and64   dut (
    .dut_inputs({dut_inputs[63], dut_inputs[62], dut_inputs[61], dut_inputs[60], dut_inputs[59], dut_inputs[58], dut_inputs[57], dut_inputs[56], 
dut_inputs[55], dut_inputs[54], dut_inputs[53], dut_inputs[52], dut_inputs[51], dut_inputs[50], dut_inputs[49], dut_inputs[48], dut_inputs[47], 
dut_inputs[46], dut_inputs[45], dut_inputs[44], dut_inputs[43], dut_inputs[42], dut_inputs[41], dut_inputs[40], dut_inputs[39], dut_inputs[38], 
dut_inputs[37], dut_inputs[36], dut_inputs[35], dut_inputs[34], dut_inputs[33], dut_inputs[32], dut_inputs[31], dut_inputs[30], dut_inputs[29], 
dut_inputs[28], dut_inputs[27], dut_inputs[26], dut_inputs[25], dut_inputs[24], dut_inputs[23], dut_inputs[22], dut_inputs[21], dut_inputs[20], 
dut_inputs[19], dut_inputs[18], dut_inputs[17], dut_inputs[16], dut_inputs[15], dut_inputs[14], dut_inputs[13], dut_inputs[12], dut_inputs[11], 
dut_inputs[10], dut_inputs[9], dut_inputs[8], dut_inputs[7], dut_inputs[6], dut_inputs[5], dut_inputs[4], dut_inputs[3], dut_inputs[2], dut_inputs[1]
, dut_inputs[0]}),
    .dut_outputs({dut_outputs})
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<2>11  (
    .ADR0(\SR/shift_reg [66]),
    .ADR1(\SR/shift_reg [2]),
    .ADR2(flip_clk),
    .O(dut_inputs[2])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<0>11  (
    .ADR0(\SR/shift_reg [64]),
    .ADR1(\SR/shift_reg [0]),
    .ADR2(flip_clk),
    .O(dut_inputs[0])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<1>11  (
    .ADR0(\SR/shift_reg [65]),
    .ADR1(\SR/shift_reg [1]),
    .ADR2(flip_clk),
    .O(dut_inputs[1])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<3>11  (
    .ADR0(\SR/shift_reg [67]),
    .ADR1(\SR/shift_reg [3]),
    .ADR2(flip_clk),
    .O(dut_inputs[3])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<4>11  (
    .ADR0(\SR/shift_reg [68]),
    .ADR1(\SR/shift_reg [4]),
    .ADR2(flip_clk),
    .O(dut_inputs[4])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<5>11  (
    .ADR0(\SR/shift_reg [69]),
    .ADR1(\SR/shift_reg [5]),
    .ADR2(flip_clk),
    .O(dut_inputs[5])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<6>11  (
    .ADR0(\SR/shift_reg [70]),
    .ADR1(\SR/shift_reg [6]),
    .ADR2(flip_clk),
    .O(dut_inputs[6])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<7>11  (
    .ADR0(\SR/shift_reg [71]),
    .ADR1(\SR/shift_reg [7]),
    .ADR2(flip_clk),
    .O(dut_inputs[7])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<8>11  (
    .ADR0(\SR/shift_reg [72]),
    .ADR1(\SR/shift_reg [8]),
    .ADR2(flip_clk),
    .O(dut_inputs[8])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<9>11  (
    .ADR0(\SR/shift_reg [73]),
    .ADR1(\SR/shift_reg [9]),
    .ADR2(flip_clk),
    .O(dut_inputs[9])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<10>11  (
    .ADR0(\SR/shift_reg [74]),
    .ADR1(\SR/shift_reg [10]),
    .ADR2(flip_clk),
    .O(dut_inputs[10])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<11>11  (
    .ADR0(\SR/shift_reg [75]),
    .ADR1(\SR/shift_reg [11]),
    .ADR2(flip_clk),
    .O(dut_inputs[11])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<12>11  (
    .ADR0(\SR/shift_reg [76]),
    .ADR1(\SR/shift_reg [12]),
    .ADR2(flip_clk),
    .O(dut_inputs[12])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<13>11  (
    .ADR0(\SR/shift_reg [77]),
    .ADR1(\SR/shift_reg [13]),
    .ADR2(flip_clk),
    .O(dut_inputs[13])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<14>11  (
    .ADR0(\SR/shift_reg [78]),
    .ADR1(\SR/shift_reg [14]),
    .ADR2(flip_clk),
    .O(dut_inputs[14])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<15>11  (
    .ADR0(\SR/shift_reg [79]),
    .ADR1(\SR/shift_reg [15]),
    .ADR2(flip_clk),
    .O(dut_inputs[15])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<16>11  (
    .ADR0(\SR/shift_reg [80]),
    .ADR1(\SR/shift_reg [16]),
    .ADR2(flip_clk),
    .O(dut_inputs[16])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<19>11  (
    .ADR0(\SR/shift_reg [83]),
    .ADR1(\SR/shift_reg [19]),
    .ADR2(flip_clk),
    .O(dut_inputs[19])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<17>11  (
    .ADR0(\SR/shift_reg [81]),
    .ADR1(\SR/shift_reg [17]),
    .ADR2(flip_clk),
    .O(dut_inputs[17])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<18>11  (
    .ADR0(\SR/shift_reg [82]),
    .ADR1(\SR/shift_reg [18]),
    .ADR2(flip_clk),
    .O(dut_inputs[18])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<20>11  (
    .ADR0(\SR/shift_reg [84]),
    .ADR1(\SR/shift_reg [20]),
    .ADR2(flip_clk),
    .O(dut_inputs[20])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<21>11  (
    .ADR0(\SR/shift_reg [85]),
    .ADR1(\SR/shift_reg [21]),
    .ADR2(flip_clk),
    .O(dut_inputs[21])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<22>11  (
    .ADR0(\SR/shift_reg [86]),
    .ADR1(\SR/shift_reg [22]),
    .ADR2(flip_clk),
    .O(dut_inputs[22])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<23>11  (
    .ADR0(\SR/shift_reg [87]),
    .ADR1(\SR/shift_reg [23]),
    .ADR2(flip_clk),
    .O(dut_inputs[23])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<24>11  (
    .ADR0(\SR/shift_reg [88]),
    .ADR1(\SR/shift_reg [24]),
    .ADR2(flip_clk),
    .O(dut_inputs[24])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<25>11  (
    .ADR0(\SR/shift_reg [89]),
    .ADR1(\SR/shift_reg [25]),
    .ADR2(flip_clk),
    .O(dut_inputs[25])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<26>11  (
    .ADR0(\SR/shift_reg [90]),
    .ADR1(\SR/shift_reg [26]),
    .ADR2(flip_clk),
    .O(dut_inputs[26])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<27>11  (
    .ADR0(\SR/shift_reg [91]),
    .ADR1(\SR/shift_reg [27]),
    .ADR2(flip_clk),
    .O(dut_inputs[27])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<28>11  (
    .ADR0(\SR/shift_reg [92]),
    .ADR1(\SR/shift_reg [28]),
    .ADR2(flip_clk),
    .O(dut_inputs[28])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<29>11  (
    .ADR0(\SR/shift_reg [93]),
    .ADR1(\SR/shift_reg [29]),
    .ADR2(flip_clk),
    .O(dut_inputs[29])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<30>11  (
    .ADR0(\SR/shift_reg [94]),
    .ADR1(\SR/shift_reg [30]),
    .ADR2(flip_clk),
    .O(dut_inputs[30])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<31>11  (
    .ADR0(\SR/shift_reg [95]),
    .ADR1(\SR/shift_reg [31]),
    .ADR2(flip_clk),
    .O(dut_inputs[31])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<32>11  (
    .ADR0(\SR/shift_reg [96]),
    .ADR1(\SR/shift_reg [32]),
    .ADR2(flip_clk),
    .O(dut_inputs[32])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<33>11  (
    .ADR0(\SR/shift_reg [97]),
    .ADR1(\SR/shift_reg [33]),
    .ADR2(flip_clk),
    .O(dut_inputs[33])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<36>11  (
    .ADR0(\SR/shift_reg [100]),
    .ADR1(\SR/shift_reg [36]),
    .ADR2(flip_clk),
    .O(dut_inputs[36])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<34>11  (
    .ADR0(\SR/shift_reg [98]),
    .ADR1(\SR/shift_reg [34]),
    .ADR2(flip_clk),
    .O(dut_inputs[34])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<35>11  (
    .ADR0(\SR/shift_reg [99]),
    .ADR1(\SR/shift_reg [35]),
    .ADR2(flip_clk),
    .O(dut_inputs[35])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<37>11  (
    .ADR0(\SR/shift_reg [101]),
    .ADR1(\SR/shift_reg [37]),
    .ADR2(flip_clk),
    .O(dut_inputs[37])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<38>11  (
    .ADR0(\SR/shift_reg [102]),
    .ADR1(\SR/shift_reg [38]),
    .ADR2(flip_clk),
    .O(dut_inputs[38])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<39>11  (
    .ADR0(\SR/shift_reg [103]),
    .ADR1(\SR/shift_reg [39]),
    .ADR2(flip_clk),
    .O(dut_inputs[39])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<40>11  (
    .ADR0(\SR/shift_reg [104]),
    .ADR1(\SR/shift_reg [40]),
    .ADR2(flip_clk),
    .O(dut_inputs[40])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<41>11  (
    .ADR0(\SR/shift_reg [105]),
    .ADR1(\SR/shift_reg [41]),
    .ADR2(flip_clk),
    .O(dut_inputs[41])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<42>11  (
    .ADR0(\SR/shift_reg [106]),
    .ADR1(\SR/shift_reg [42]),
    .ADR2(flip_clk),
    .O(dut_inputs[42])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<43>11  (
    .ADR0(\SR/shift_reg [107]),
    .ADR1(\SR/shift_reg [43]),
    .ADR2(flip_clk),
    .O(dut_inputs[43])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<44>11  (
    .ADR0(\SR/shift_reg [108]),
    .ADR1(\SR/shift_reg [44]),
    .ADR2(flip_clk),
    .O(dut_inputs[44])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<45>11  (
    .ADR0(\SR/shift_reg [109]),
    .ADR1(\SR/shift_reg [45]),
    .ADR2(flip_clk),
    .O(dut_inputs[45])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<46>11  (
    .ADR0(\SR/shift_reg [110]),
    .ADR1(\SR/shift_reg [46]),
    .ADR2(flip_clk),
    .O(dut_inputs[46])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<47>11  (
    .ADR0(\SR/shift_reg [111]),
    .ADR1(\SR/shift_reg [47]),
    .ADR2(flip_clk),
    .O(dut_inputs[47])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<48>11  (
    .ADR0(\SR/shift_reg [112]),
    .ADR1(\SR/shift_reg [48]),
    .ADR2(flip_clk),
    .O(dut_inputs[48])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<49>11  (
    .ADR0(\SR/shift_reg [113]),
    .ADR1(\SR/shift_reg [49]),
    .ADR2(flip_clk),
    .O(dut_inputs[49])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<50>11  (
    .ADR0(\SR/shift_reg [114]),
    .ADR1(\SR/shift_reg [50]),
    .ADR2(flip_clk),
    .O(dut_inputs[50])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<51>11  (
    .ADR0(\SR/shift_reg [115]),
    .ADR1(\SR/shift_reg [51]),
    .ADR2(flip_clk),
    .O(dut_inputs[51])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<52>11  (
    .ADR0(\SR/shift_reg [116]),
    .ADR1(\SR/shift_reg [52]),
    .ADR2(flip_clk),
    .O(dut_inputs[52])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<53>11  (
    .ADR0(\SR/shift_reg [117]),
    .ADR1(\SR/shift_reg [53]),
    .ADR2(flip_clk),
    .O(dut_inputs[53])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<54>11  (
    .ADR0(\SR/shift_reg [118]),
    .ADR1(\SR/shift_reg [54]),
    .ADR2(flip_clk),
    .O(dut_inputs[54])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<55>11  (
    .ADR0(\SR/shift_reg [119]),
    .ADR1(\SR/shift_reg [55]),
    .ADR2(flip_clk),
    .O(dut_inputs[55])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<56>11  (
    .ADR0(\SR/shift_reg [120]),
    .ADR1(\SR/shift_reg [56]),
    .ADR2(flip_clk),
    .O(dut_inputs[56])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<57>11  (
    .ADR0(\SR/shift_reg [121]),
    .ADR1(\SR/shift_reg [57]),
    .ADR2(flip_clk),
    .O(dut_inputs[57])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<58>11  (
    .ADR0(\SR/shift_reg [122]),
    .ADR1(\SR/shift_reg [58]),
    .ADR2(flip_clk),
    .O(dut_inputs[58])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<59>11  (
    .ADR0(\SR/shift_reg [123]),
    .ADR1(\SR/shift_reg [59]),
    .ADR2(flip_clk),
    .O(dut_inputs[59])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<60>11  (
    .ADR0(\SR/shift_reg [124]),
    .ADR1(\SR/shift_reg [60]),
    .ADR2(flip_clk),
    .O(dut_inputs[60])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<61>11  (
    .ADR0(\SR/shift_reg [125]),
    .ADR1(\SR/shift_reg [61]),
    .ADR2(flip_clk),
    .O(dut_inputs[61])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<62>11  (
    .ADR0(\SR/shift_reg [126]),
    .ADR1(\SR/shift_reg [62]),
    .ADR2(flip_clk),
    .O(dut_inputs[62])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<63>11  (
    .ADR0(\NlwRenamedSig_OI_SR/shift_reg [127]),
    .ADR1(\SR/shift_reg [63]),
    .ADR2(flip_clk),
    .O(dut_inputs[63])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \out_scan/Mmux_par_in[0]_scan_in_MUX_66_o11  (
    .ADR0(shift_out_enable),
    .ADR1(dut_outputs),
    .O(\out_scan/par_in[0]_scan_in_MUX_66_o )
  );
  X_INV   \SR/reset_inv1_INV_0  (
    .I(sca_reset),
    .O(\SR/reset_inv )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_127/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_127/C )
  );
  X_ONE   NlwBlock_u0_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_u0_GND (
    .O(GND)
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_126/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_126/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_125/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_125/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_124/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_124/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_123/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_123/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_122/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_122/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_121/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_121/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_120/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_120/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_119/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_119/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_118/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_118/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_117/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_117/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_116/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_116/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_115/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_115/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_114/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_114/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_113/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_113/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_112/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_112/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_111/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_111/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_110/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_110/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_109/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_109/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_108/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_108/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_107/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_107/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_106/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_106/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_105/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_105/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_104/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_104/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_103/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_103/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_102/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_102/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_101/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_101/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_100/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_100/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_99/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_99/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_98/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_98/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_97/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_97/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_96/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_96/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_95/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_95/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_94/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_94/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_93/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_93/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_92/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_92/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_91/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_91/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_90/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_90/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_89/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_89/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_88/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_88/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_87/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_87/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_86/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_86/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_85/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_85/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_84/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_84/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_83/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_83/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_82/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_82/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_81/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_81/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_80/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_80/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_79/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_79/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_78/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_78/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_77/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_77/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_76/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_76/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_75/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_75/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_74/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_74/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_73/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_73/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_72/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_72/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_71/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_71/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_70/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_70/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_69/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_69/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_68/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_68/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_67/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_67/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_66/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_66/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_65/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_65/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_64/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_64/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_63/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_63/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_62/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_62/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_61/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_61/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_60/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_60/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_59/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_59/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_58/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_58/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_57/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_57/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_56/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_56/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_55/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_55/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_54/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_54/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_53/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_53/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_52/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_52/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_51/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_51/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_50/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_50/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_49/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_49/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_48/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_48/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_47/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_47/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_46/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_46/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_45/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_45/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_44/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_44/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_43/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_43/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_42/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_42/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_41/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_41/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_40/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_40/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_39/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_39/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_38/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_38/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_37/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_37/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_36/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_36/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_35/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_35/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_34/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_34/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_33/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_33/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_32/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_32/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_31/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_31/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_30/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_30/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_29/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_29/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_28/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_28/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_27/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_27/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_26/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_26/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_25/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_25/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_24/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_24/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_23/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_23/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_22/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_22/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_21/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_21/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_20/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_20/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_19/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_19/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_18/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_18/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_17/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_17/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_16/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_16/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_15/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_15/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_14/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_14/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_13/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_13/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_12/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_12/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_11/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_11/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_10/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_10/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_9/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_9/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_8/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_8/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_7/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_7/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_6/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_6/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_5/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_5/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_4/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_4/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_3/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_3/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_2/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_2/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_1/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_1/C )
  );
  X_INV   \NlwInverterBlock_u0/SR/shift_reg_0/C  (
    .I(sca_clk),
    .O(\NlwInverterSignal_u0/SR/shift_reg_0/C )
  );
  X_INV   \NlwInverterBlock_u0/out_scan/shift_reg_0/C  (
    .I(shift_out_clk),
    .O(\NlwInverterSignal_u0/out_scan/shift_reg_0/C )
  );
endmodule

