////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sca_unlock_sim.v
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
  wire [63 : 0] dut_inputs;
  wire [126 : 0] \SR/shift_reg ;
  wire [127 : 127] \NlwRenamedSig_OI_SR/shift_reg ;
  assign
    sca_data_out = \NlwRenamedSig_OI_SR/shift_reg [127],
    shift_out_data = \out_scan/shift_reg_0_286 ;
  FDC_1   \SR/shift_reg_127  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [126]),
    .Q(\NlwRenamedSig_OI_SR/shift_reg [127])
  );
  FDC_1   \SR/shift_reg_126  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [125]),
    .Q(\SR/shift_reg [126])
  );
  FDC_1   \SR/shift_reg_125  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [124]),
    .Q(\SR/shift_reg [125])
  );
  FDC_1   \SR/shift_reg_124  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [123]),
    .Q(\SR/shift_reg [124])
  );
  FDC_1   \SR/shift_reg_123  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [122]),
    .Q(\SR/shift_reg [123])
  );
  FDC_1   \SR/shift_reg_122  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [121]),
    .Q(\SR/shift_reg [122])
  );
  FDC_1   \SR/shift_reg_121  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [120]),
    .Q(\SR/shift_reg [121])
  );
  FDC_1   \SR/shift_reg_120  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [119]),
    .Q(\SR/shift_reg [120])
  );
  FDC_1   \SR/shift_reg_119  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [118]),
    .Q(\SR/shift_reg [119])
  );
  FDC_1   \SR/shift_reg_118  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [117]),
    .Q(\SR/shift_reg [118])
  );
  FDC_1   \SR/shift_reg_117  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [116]),
    .Q(\SR/shift_reg [117])
  );
  FDC_1   \SR/shift_reg_116  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [115]),
    .Q(\SR/shift_reg [116])
  );
  FDC_1   \SR/shift_reg_115  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [114]),
    .Q(\SR/shift_reg [115])
  );
  FDC_1   \SR/shift_reg_114  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [113]),
    .Q(\SR/shift_reg [114])
  );
  FDC_1   \SR/shift_reg_113  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [112]),
    .Q(\SR/shift_reg [113])
  );
  FDC_1   \SR/shift_reg_112  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [111]),
    .Q(\SR/shift_reg [112])
  );
  FDC_1   \SR/shift_reg_111  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [110]),
    .Q(\SR/shift_reg [111])
  );
  FDC_1   \SR/shift_reg_110  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [109]),
    .Q(\SR/shift_reg [110])
  );
  FDC_1   \SR/shift_reg_109  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [108]),
    .Q(\SR/shift_reg [109])
  );
  FDC_1   \SR/shift_reg_108  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [107]),
    .Q(\SR/shift_reg [108])
  );
  FDC_1   \SR/shift_reg_107  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [106]),
    .Q(\SR/shift_reg [107])
  );
  FDC_1   \SR/shift_reg_106  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [105]),
    .Q(\SR/shift_reg [106])
  );
  FDC_1   \SR/shift_reg_105  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [104]),
    .Q(\SR/shift_reg [105])
  );
  FDC_1   \SR/shift_reg_104  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [103]),
    .Q(\SR/shift_reg [104])
  );
  FDC_1   \SR/shift_reg_103  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [102]),
    .Q(\SR/shift_reg [103])
  );
  FDC_1   \SR/shift_reg_102  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [101]),
    .Q(\SR/shift_reg [102])
  );
  FDC_1   \SR/shift_reg_101  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [100]),
    .Q(\SR/shift_reg [101])
  );
  FDC_1   \SR/shift_reg_100  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [99]),
    .Q(\SR/shift_reg [100])
  );
  FDC_1   \SR/shift_reg_99  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [98]),
    .Q(\SR/shift_reg [99])
  );
  FDC_1   \SR/shift_reg_98  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [97]),
    .Q(\SR/shift_reg [98])
  );
  FDC_1   \SR/shift_reg_97  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [96]),
    .Q(\SR/shift_reg [97])
  );
  FDC_1   \SR/shift_reg_96  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [95]),
    .Q(\SR/shift_reg [96])
  );
  FDC_1   \SR/shift_reg_95  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [94]),
    .Q(\SR/shift_reg [95])
  );
  FDC_1   \SR/shift_reg_94  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [93]),
    .Q(\SR/shift_reg [94])
  );
  FDC_1   \SR/shift_reg_93  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [92]),
    .Q(\SR/shift_reg [93])
  );
  FDC_1   \SR/shift_reg_92  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [91]),
    .Q(\SR/shift_reg [92])
  );
  FDC_1   \SR/shift_reg_91  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [90]),
    .Q(\SR/shift_reg [91])
  );
  FDC_1   \SR/shift_reg_90  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [89]),
    .Q(\SR/shift_reg [90])
  );
  FDC_1   \SR/shift_reg_89  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [88]),
    .Q(\SR/shift_reg [89])
  );
  FDC_1   \SR/shift_reg_88  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [87]),
    .Q(\SR/shift_reg [88])
  );
  FDC_1   \SR/shift_reg_87  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [86]),
    .Q(\SR/shift_reg [87])
  );
  FDC_1   \SR/shift_reg_86  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [85]),
    .Q(\SR/shift_reg [86])
  );
  FDC_1   \SR/shift_reg_85  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [84]),
    .Q(\SR/shift_reg [85])
  );
  FDC_1   \SR/shift_reg_84  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [83]),
    .Q(\SR/shift_reg [84])
  );
  FDC_1   \SR/shift_reg_83  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [82]),
    .Q(\SR/shift_reg [83])
  );
  FDC_1   \SR/shift_reg_82  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [81]),
    .Q(\SR/shift_reg [82])
  );
  FDC_1   \SR/shift_reg_81  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [80]),
    .Q(\SR/shift_reg [81])
  );
  FDC_1   \SR/shift_reg_80  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [79]),
    .Q(\SR/shift_reg [80])
  );
  FDC_1   \SR/shift_reg_79  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [78]),
    .Q(\SR/shift_reg [79])
  );
  FDC_1   \SR/shift_reg_78  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [77]),
    .Q(\SR/shift_reg [78])
  );
  FDC_1   \SR/shift_reg_77  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [76]),
    .Q(\SR/shift_reg [77])
  );
  FDC_1   \SR/shift_reg_76  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [75]),
    .Q(\SR/shift_reg [76])
  );
  FDC_1   \SR/shift_reg_75  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [74]),
    .Q(\SR/shift_reg [75])
  );
  FDC_1   \SR/shift_reg_74  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [73]),
    .Q(\SR/shift_reg [74])
  );
  FDC_1   \SR/shift_reg_73  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [72]),
    .Q(\SR/shift_reg [73])
  );
  FDC_1   \SR/shift_reg_72  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [71]),
    .Q(\SR/shift_reg [72])
  );
  FDC_1   \SR/shift_reg_71  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [70]),
    .Q(\SR/shift_reg [71])
  );
  FDC_1   \SR/shift_reg_70  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [69]),
    .Q(\SR/shift_reg [70])
  );
  FDC_1   \SR/shift_reg_69  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [68]),
    .Q(\SR/shift_reg [69])
  );
  FDC_1   \SR/shift_reg_68  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [67]),
    .Q(\SR/shift_reg [68])
  );
  FDC_1   \SR/shift_reg_67  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [66]),
    .Q(\SR/shift_reg [67])
  );
  FDC_1   \SR/shift_reg_66  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [65]),
    .Q(\SR/shift_reg [66])
  );
  FDC_1   \SR/shift_reg_65  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [64]),
    .Q(\SR/shift_reg [65])
  );
  FDC_1   \SR/shift_reg_64  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [63]),
    .Q(\SR/shift_reg [64])
  );
  FDC_1   \SR/shift_reg_63  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [62]),
    .Q(\SR/shift_reg [63])
  );
  FDC_1   \SR/shift_reg_62  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [61]),
    .Q(\SR/shift_reg [62])
  );
  FDC_1   \SR/shift_reg_61  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [60]),
    .Q(\SR/shift_reg [61])
  );
  FDC_1   \SR/shift_reg_60  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [59]),
    .Q(\SR/shift_reg [60])
  );
  FDC_1   \SR/shift_reg_59  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [58]),
    .Q(\SR/shift_reg [59])
  );
  FDC_1   \SR/shift_reg_58  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [57]),
    .Q(\SR/shift_reg [58])
  );
  FDC_1   \SR/shift_reg_57  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [56]),
    .Q(\SR/shift_reg [57])
  );
  FDC_1   \SR/shift_reg_56  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [55]),
    .Q(\SR/shift_reg [56])
  );
  FDC_1   \SR/shift_reg_55  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [54]),
    .Q(\SR/shift_reg [55])
  );
  FDC_1   \SR/shift_reg_54  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [53]),
    .Q(\SR/shift_reg [54])
  );
  FDC_1   \SR/shift_reg_53  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [52]),
    .Q(\SR/shift_reg [53])
  );
  FDC_1   \SR/shift_reg_52  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [51]),
    .Q(\SR/shift_reg [52])
  );
  FDC_1   \SR/shift_reg_51  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [50]),
    .Q(\SR/shift_reg [51])
  );
  FDC_1   \SR/shift_reg_50  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [49]),
    .Q(\SR/shift_reg [50])
  );
  FDC_1   \SR/shift_reg_49  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [48]),
    .Q(\SR/shift_reg [49])
  );
  FDC_1   \SR/shift_reg_48  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [47]),
    .Q(\SR/shift_reg [48])
  );
  FDC_1   \SR/shift_reg_47  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [46]),
    .Q(\SR/shift_reg [47])
  );
  FDC_1   \SR/shift_reg_46  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [45]),
    .Q(\SR/shift_reg [46])
  );
  FDC_1   \SR/shift_reg_45  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [44]),
    .Q(\SR/shift_reg [45])
  );
  FDC_1   \SR/shift_reg_44  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [43]),
    .Q(\SR/shift_reg [44])
  );
  FDC_1   \SR/shift_reg_43  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [42]),
    .Q(\SR/shift_reg [43])
  );
  FDC_1   \SR/shift_reg_42  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [41]),
    .Q(\SR/shift_reg [42])
  );
  FDC_1   \SR/shift_reg_41  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [40]),
    .Q(\SR/shift_reg [41])
  );
  FDC_1   \SR/shift_reg_40  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [39]),
    .Q(\SR/shift_reg [40])
  );
  FDC_1   \SR/shift_reg_39  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [38]),
    .Q(\SR/shift_reg [39])
  );
  FDC_1   \SR/shift_reg_38  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [37]),
    .Q(\SR/shift_reg [38])
  );
  FDC_1   \SR/shift_reg_37  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [36]),
    .Q(\SR/shift_reg [37])
  );
  FDC_1   \SR/shift_reg_36  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [35]),
    .Q(\SR/shift_reg [36])
  );
  FDC_1   \SR/shift_reg_35  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [34]),
    .Q(\SR/shift_reg [35])
  );
  FDC_1   \SR/shift_reg_34  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [33]),
    .Q(\SR/shift_reg [34])
  );
  FDC_1   \SR/shift_reg_33  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [32]),
    .Q(\SR/shift_reg [33])
  );
  FDC_1   \SR/shift_reg_32  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [31]),
    .Q(\SR/shift_reg [32])
  );
  FDC_1   \SR/shift_reg_31  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [30]),
    .Q(\SR/shift_reg [31])
  );
  FDC_1   \SR/shift_reg_30  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [29]),
    .Q(\SR/shift_reg [30])
  );
  FDC_1   \SR/shift_reg_29  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [28]),
    .Q(\SR/shift_reg [29])
  );
  FDC_1   \SR/shift_reg_28  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [27]),
    .Q(\SR/shift_reg [28])
  );
  FDC_1   \SR/shift_reg_27  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [26]),
    .Q(\SR/shift_reg [27])
  );
  FDC_1   \SR/shift_reg_26  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [25]),
    .Q(\SR/shift_reg [26])
  );
  FDC_1   \SR/shift_reg_25  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [24]),
    .Q(\SR/shift_reg [25])
  );
  FDC_1   \SR/shift_reg_24  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [23]),
    .Q(\SR/shift_reg [24])
  );
  FDC_1   \SR/shift_reg_23  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [22]),
    .Q(\SR/shift_reg [23])
  );
  FDC_1   \SR/shift_reg_22  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [21]),
    .Q(\SR/shift_reg [22])
  );
  FDC_1   \SR/shift_reg_21  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [20]),
    .Q(\SR/shift_reg [21])
  );
  FDC_1   \SR/shift_reg_20  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [19]),
    .Q(\SR/shift_reg [20])
  );
  FDC_1   \SR/shift_reg_19  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [18]),
    .Q(\SR/shift_reg [19])
  );
  FDC_1   \SR/shift_reg_18  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [17]),
    .Q(\SR/shift_reg [18])
  );
  FDC_1   \SR/shift_reg_17  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [16]),
    .Q(\SR/shift_reg [17])
  );
  FDC_1   \SR/shift_reg_16  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [15]),
    .Q(\SR/shift_reg [16])
  );
  FDC_1   \SR/shift_reg_15  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [14]),
    .Q(\SR/shift_reg [15])
  );
  FDC_1   \SR/shift_reg_14  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [13]),
    .Q(\SR/shift_reg [14])
  );
  FDC_1   \SR/shift_reg_13  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [12]),
    .Q(\SR/shift_reg [13])
  );
  FDC_1   \SR/shift_reg_12  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [11]),
    .Q(\SR/shift_reg [12])
  );
  FDC_1   \SR/shift_reg_11  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [10]),
    .Q(\SR/shift_reg [11])
  );
  FDC_1   \SR/shift_reg_10  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [9]),
    .Q(\SR/shift_reg [10])
  );
  FDC_1   \SR/shift_reg_9  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [8]),
    .Q(\SR/shift_reg [9])
  );
  FDC_1   \SR/shift_reg_8  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [7]),
    .Q(\SR/shift_reg [8])
  );
  FDC_1   \SR/shift_reg_7  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [6]),
    .Q(\SR/shift_reg [7])
  );
  FDC_1   \SR/shift_reg_6  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [5]),
    .Q(\SR/shift_reg [6])
  );
  FDC_1   \SR/shift_reg_5  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [4]),
    .Q(\SR/shift_reg [5])
  );
  FDC_1   \SR/shift_reg_4  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [3]),
    .Q(\SR/shift_reg [4])
  );
  FDC_1   \SR/shift_reg_3  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [2]),
    .Q(\SR/shift_reg [3])
  );
  FDC_1   \SR/shift_reg_2  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [1]),
    .Q(\SR/shift_reg [2])
  );
  FDC_1   \SR/shift_reg_1  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(\SR/shift_reg [0]),
    .Q(\SR/shift_reg [1])
  );
  FDC_1   \SR/shift_reg_0  (
    .C(sca_clk),
    .CLR(\SR/reset_inv ),
    .D(sca_data_in),
    .Q(\SR/shift_reg [0])
  );
  FDC_1   \out_scan/shift_reg_0  (
    .C(shift_out_clk),
    .CLR(\SR/reset_inv ),
    .D(\out_scan/par_in[0]_scan_in_MUX_66_o ),
    .Q(\out_scan/shift_reg_0_286 )
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
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<2>11  (
    .I0(\SR/shift_reg [66]),
    .I1(\SR/shift_reg [2]),
    .I2(flip_clk),
    .O(dut_inputs[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<0>11  (
    .I0(\SR/shift_reg [64]),
    .I1(\SR/shift_reg [0]),
    .I2(flip_clk),
    .O(dut_inputs[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<1>11  (
    .I0(\SR/shift_reg [65]),
    .I1(\SR/shift_reg [1]),
    .I2(flip_clk),
    .O(dut_inputs[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<3>11  (
    .I0(\SR/shift_reg [67]),
    .I1(\SR/shift_reg [3]),
    .I2(flip_clk),
    .O(dut_inputs[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<4>11  (
    .I0(\SR/shift_reg [68]),
    .I1(\SR/shift_reg [4]),
    .I2(flip_clk),
    .O(dut_inputs[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<5>11  (
    .I0(\SR/shift_reg [69]),
    .I1(\SR/shift_reg [5]),
    .I2(flip_clk),
    .O(dut_inputs[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<6>11  (
    .I0(\SR/shift_reg [70]),
    .I1(\SR/shift_reg [6]),
    .I2(flip_clk),
    .O(dut_inputs[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<7>11  (
    .I0(\SR/shift_reg [71]),
    .I1(\SR/shift_reg [7]),
    .I2(flip_clk),
    .O(dut_inputs[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<8>11  (
    .I0(\SR/shift_reg [72]),
    .I1(\SR/shift_reg [8]),
    .I2(flip_clk),
    .O(dut_inputs[8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<9>11  (
    .I0(\SR/shift_reg [73]),
    .I1(\SR/shift_reg [9]),
    .I2(flip_clk),
    .O(dut_inputs[9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<10>11  (
    .I0(\SR/shift_reg [74]),
    .I1(\SR/shift_reg [10]),
    .I2(flip_clk),
    .O(dut_inputs[10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<11>11  (
    .I0(\SR/shift_reg [75]),
    .I1(\SR/shift_reg [11]),
    .I2(flip_clk),
    .O(dut_inputs[11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<12>11  (
    .I0(\SR/shift_reg [76]),
    .I1(\SR/shift_reg [12]),
    .I2(flip_clk),
    .O(dut_inputs[12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<13>11  (
    .I0(\SR/shift_reg [77]),
    .I1(\SR/shift_reg [13]),
    .I2(flip_clk),
    .O(dut_inputs[13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<14>11  (
    .I0(\SR/shift_reg [78]),
    .I1(\SR/shift_reg [14]),
    .I2(flip_clk),
    .O(dut_inputs[14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<15>11  (
    .I0(\SR/shift_reg [79]),
    .I1(\SR/shift_reg [15]),
    .I2(flip_clk),
    .O(dut_inputs[15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<16>11  (
    .I0(\SR/shift_reg [80]),
    .I1(\SR/shift_reg [16]),
    .I2(flip_clk),
    .O(dut_inputs[16])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<19>11  (
    .I0(\SR/shift_reg [83]),
    .I1(\SR/shift_reg [19]),
    .I2(flip_clk),
    .O(dut_inputs[19])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<17>11  (
    .I0(\SR/shift_reg [81]),
    .I1(\SR/shift_reg [17]),
    .I2(flip_clk),
    .O(dut_inputs[17])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<18>11  (
    .I0(\SR/shift_reg [82]),
    .I1(\SR/shift_reg [18]),
    .I2(flip_clk),
    .O(dut_inputs[18])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<20>11  (
    .I0(\SR/shift_reg [84]),
    .I1(\SR/shift_reg [20]),
    .I2(flip_clk),
    .O(dut_inputs[20])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<21>11  (
    .I0(\SR/shift_reg [85]),
    .I1(\SR/shift_reg [21]),
    .I2(flip_clk),
    .O(dut_inputs[21])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<22>11  (
    .I0(\SR/shift_reg [86]),
    .I1(\SR/shift_reg [22]),
    .I2(flip_clk),
    .O(dut_inputs[22])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<23>11  (
    .I0(\SR/shift_reg [87]),
    .I1(\SR/shift_reg [23]),
    .I2(flip_clk),
    .O(dut_inputs[23])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<24>11  (
    .I0(\SR/shift_reg [88]),
    .I1(\SR/shift_reg [24]),
    .I2(flip_clk),
    .O(dut_inputs[24])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<25>11  (
    .I0(\SR/shift_reg [89]),
    .I1(\SR/shift_reg [25]),
    .I2(flip_clk),
    .O(dut_inputs[25])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<26>11  (
    .I0(\SR/shift_reg [90]),
    .I1(\SR/shift_reg [26]),
    .I2(flip_clk),
    .O(dut_inputs[26])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<27>11  (
    .I0(\SR/shift_reg [91]),
    .I1(\SR/shift_reg [27]),
    .I2(flip_clk),
    .O(dut_inputs[27])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<28>11  (
    .I0(\SR/shift_reg [92]),
    .I1(\SR/shift_reg [28]),
    .I2(flip_clk),
    .O(dut_inputs[28])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<29>11  (
    .I0(\SR/shift_reg [93]),
    .I1(\SR/shift_reg [29]),
    .I2(flip_clk),
    .O(dut_inputs[29])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<30>11  (
    .I0(\SR/shift_reg [94]),
    .I1(\SR/shift_reg [30]),
    .I2(flip_clk),
    .O(dut_inputs[30])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<31>11  (
    .I0(\SR/shift_reg [95]),
    .I1(\SR/shift_reg [31]),
    .I2(flip_clk),
    .O(dut_inputs[31])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<32>11  (
    .I0(\SR/shift_reg [96]),
    .I1(\SR/shift_reg [32]),
    .I2(flip_clk),
    .O(dut_inputs[32])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<33>11  (
    .I0(\SR/shift_reg [97]),
    .I1(\SR/shift_reg [33]),
    .I2(flip_clk),
    .O(dut_inputs[33])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<36>11  (
    .I0(\SR/shift_reg [100]),
    .I1(\SR/shift_reg [36]),
    .I2(flip_clk),
    .O(dut_inputs[36])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<34>11  (
    .I0(\SR/shift_reg [98]),
    .I1(\SR/shift_reg [34]),
    .I2(flip_clk),
    .O(dut_inputs[34])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<35>11  (
    .I0(\SR/shift_reg [99]),
    .I1(\SR/shift_reg [35]),
    .I2(flip_clk),
    .O(dut_inputs[35])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<37>11  (
    .I0(\SR/shift_reg [101]),
    .I1(\SR/shift_reg [37]),
    .I2(flip_clk),
    .O(dut_inputs[37])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<38>11  (
    .I0(\SR/shift_reg [102]),
    .I1(\SR/shift_reg [38]),
    .I2(flip_clk),
    .O(dut_inputs[38])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<39>11  (
    .I0(\SR/shift_reg [103]),
    .I1(\SR/shift_reg [39]),
    .I2(flip_clk),
    .O(dut_inputs[39])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<40>11  (
    .I0(\SR/shift_reg [104]),
    .I1(\SR/shift_reg [40]),
    .I2(flip_clk),
    .O(dut_inputs[40])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<41>11  (
    .I0(\SR/shift_reg [105]),
    .I1(\SR/shift_reg [41]),
    .I2(flip_clk),
    .O(dut_inputs[41])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<42>11  (
    .I0(\SR/shift_reg [106]),
    .I1(\SR/shift_reg [42]),
    .I2(flip_clk),
    .O(dut_inputs[42])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<43>11  (
    .I0(\SR/shift_reg [107]),
    .I1(\SR/shift_reg [43]),
    .I2(flip_clk),
    .O(dut_inputs[43])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<44>11  (
    .I0(\SR/shift_reg [108]),
    .I1(\SR/shift_reg [44]),
    .I2(flip_clk),
    .O(dut_inputs[44])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<45>11  (
    .I0(\SR/shift_reg [109]),
    .I1(\SR/shift_reg [45]),
    .I2(flip_clk),
    .O(dut_inputs[45])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<46>11  (
    .I0(\SR/shift_reg [110]),
    .I1(\SR/shift_reg [46]),
    .I2(flip_clk),
    .O(dut_inputs[46])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<47>11  (
    .I0(\SR/shift_reg [111]),
    .I1(\SR/shift_reg [47]),
    .I2(flip_clk),
    .O(dut_inputs[47])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<48>11  (
    .I0(\SR/shift_reg [112]),
    .I1(\SR/shift_reg [48]),
    .I2(flip_clk),
    .O(dut_inputs[48])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<49>11  (
    .I0(\SR/shift_reg [113]),
    .I1(\SR/shift_reg [49]),
    .I2(flip_clk),
    .O(dut_inputs[49])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<50>11  (
    .I0(\SR/shift_reg [114]),
    .I1(\SR/shift_reg [50]),
    .I2(flip_clk),
    .O(dut_inputs[50])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<51>11  (
    .I0(\SR/shift_reg [115]),
    .I1(\SR/shift_reg [51]),
    .I2(flip_clk),
    .O(dut_inputs[51])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<52>11  (
    .I0(\SR/shift_reg [116]),
    .I1(\SR/shift_reg [52]),
    .I2(flip_clk),
    .O(dut_inputs[52])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<53>11  (
    .I0(\SR/shift_reg [117]),
    .I1(\SR/shift_reg [53]),
    .I2(flip_clk),
    .O(dut_inputs[53])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<54>11  (
    .I0(\SR/shift_reg [118]),
    .I1(\SR/shift_reg [54]),
    .I2(flip_clk),
    .O(dut_inputs[54])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<55>11  (
    .I0(\SR/shift_reg [119]),
    .I1(\SR/shift_reg [55]),
    .I2(flip_clk),
    .O(dut_inputs[55])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<56>11  (
    .I0(\SR/shift_reg [120]),
    .I1(\SR/shift_reg [56]),
    .I2(flip_clk),
    .O(dut_inputs[56])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<57>11  (
    .I0(\SR/shift_reg [121]),
    .I1(\SR/shift_reg [57]),
    .I2(flip_clk),
    .O(dut_inputs[57])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<58>11  (
    .I0(\SR/shift_reg [122]),
    .I1(\SR/shift_reg [58]),
    .I2(flip_clk),
    .O(dut_inputs[58])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<59>11  (
    .I0(\SR/shift_reg [123]),
    .I1(\SR/shift_reg [59]),
    .I2(flip_clk),
    .O(dut_inputs[59])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<60>11  (
    .I0(\SR/shift_reg [124]),
    .I1(\SR/shift_reg [60]),
    .I2(flip_clk),
    .O(dut_inputs[60])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<61>11  (
    .I0(\SR/shift_reg [125]),
    .I1(\SR/shift_reg [61]),
    .I2(flip_clk),
    .O(dut_inputs[61])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<62>11  (
    .I0(\SR/shift_reg [126]),
    .I1(\SR/shift_reg [62]),
    .I2(flip_clk),
    .O(dut_inputs[62])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dut_inputs<63>11  (
    .I0(\NlwRenamedSig_OI_SR/shift_reg [127]),
    .I1(\SR/shift_reg [63]),
    .I2(flip_clk),
    .O(dut_inputs[63])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \out_scan/Mmux_par_in[0]_scan_in_MUX_66_o11  (
    .I0(shift_out_enable),
    .I1(dut_outputs),
    .O(\out_scan/par_in[0]_scan_in_MUX_66_o )
  );
  INV   \SR/reset_inv1_INV_0  (
    .I(sca_reset),
    .O(\SR/reset_inv )
  );
endmodule

