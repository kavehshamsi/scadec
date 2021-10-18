////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: and64_sim.v
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
// Module Name: and64
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

module and64 (
dut_inputs, dut_outputs
);
  input [63 : 0] dut_inputs;
  output [0 : 0] dut_outputs;
  wire N0;
  wire N1;
  wire [10 : 0] inter0_wg_lut;
  wire [9 : 0] inter0_wg_cy;
  X_ZERO   XST_GND (
    .O(N0)
  );
  X_ONE   XST_VCC (
    .O(N1)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \inter0_wg_lut<0>  (
    .ADR0(dut_inputs[19]),
    .ADR1(dut_inputs[2]),
    .ADR2(dut_inputs[18]),
    .ADR3(dut_inputs[20]),
    .O(inter0_wg_lut[0])
  );
  X_MUX2   \inter0_wg_cy<0>  (
    .IB(N1),
    .IA(N0),
    .SEL(inter0_wg_lut[0]),
    .O(inter0_wg_cy[0])
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<1>  (
    .ADR0(dut_inputs[21]),
    .ADR1(dut_inputs[22]),
    .ADR2(dut_inputs[23]),
    .ADR3(dut_inputs[24]),
    .ADR4(dut_inputs[17]),
    .ADR5(dut_inputs[25]),
    .O(inter0_wg_lut[1])
  );
  X_MUX2   \inter0_wg_cy<1>  (
    .IB(inter0_wg_cy[0]),
    .IA(N0),
    .SEL(inter0_wg_lut[1]),
    .O(inter0_wg_cy[1])
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<2>  (
    .ADR0(dut_inputs[26]),
    .ADR1(dut_inputs[27]),
    .ADR2(dut_inputs[28]),
    .ADR3(dut_inputs[29]),
    .ADR4(dut_inputs[16]),
    .ADR5(dut_inputs[3]),
    .O(inter0_wg_lut[2])
  );
  X_MUX2   \inter0_wg_cy<2>  (
    .IB(inter0_wg_cy[1]),
    .IA(N0),
    .SEL(inter0_wg_lut[2]),
    .O(inter0_wg_cy[2])
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<3>  (
    .ADR0(dut_inputs[30]),
    .ADR1(dut_inputs[31]),
    .ADR2(dut_inputs[32]),
    .ADR3(dut_inputs[33]),
    .ADR4(dut_inputs[15]),
    .ADR5(dut_inputs[34]),
    .O(inter0_wg_lut[3])
  );
  X_MUX2   \inter0_wg_cy<3>  (
    .IB(inter0_wg_cy[2]),
    .IA(N0),
    .SEL(inter0_wg_lut[3]),
    .O(inter0_wg_cy[3])
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<4>  (
    .ADR0(dut_inputs[35]),
    .ADR1(dut_inputs[36]),
    .ADR2(dut_inputs[37]),
    .ADR3(dut_inputs[38]),
    .ADR4(dut_inputs[14]),
    .ADR5(dut_inputs[39]),
    .O(inter0_wg_lut[4])
  );
  X_MUX2   \inter0_wg_cy<4>  (
    .IB(inter0_wg_cy[3]),
    .IA(N0),
    .SEL(inter0_wg_lut[4]),
    .O(inter0_wg_cy[4])
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<5>  (
    .ADR0(dut_inputs[4]),
    .ADR1(dut_inputs[40]),
    .ADR2(dut_inputs[41]),
    .ADR3(dut_inputs[42]),
    .ADR4(dut_inputs[13]),
    .ADR5(dut_inputs[43]),
    .O(inter0_wg_lut[5])
  );
  X_MUX2   \inter0_wg_cy<5>  (
    .IB(inter0_wg_cy[4]),
    .IA(N0),
    .SEL(inter0_wg_lut[5]),
    .O(inter0_wg_cy[5])
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<6>  (
    .ADR0(dut_inputs[44]),
    .ADR1(dut_inputs[45]),
    .ADR2(dut_inputs[46]),
    .ADR3(dut_inputs[47]),
    .ADR4(dut_inputs[12]),
    .ADR5(dut_inputs[48]),
    .O(inter0_wg_lut[6])
  );
  X_MUX2   \inter0_wg_cy<6>  (
    .IB(inter0_wg_cy[5]),
    .IA(N0),
    .SEL(inter0_wg_lut[6]),
    .O(inter0_wg_cy[6])
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<7>  (
    .ADR0(dut_inputs[49]),
    .ADR1(dut_inputs[5]),
    .ADR2(dut_inputs[50]),
    .ADR3(dut_inputs[51]),
    .ADR4(dut_inputs[11]),
    .ADR5(dut_inputs[52]),
    .O(inter0_wg_lut[7])
  );
  X_MUX2   \inter0_wg_cy<7>  (
    .IB(inter0_wg_cy[6]),
    .IA(N0),
    .SEL(inter0_wg_lut[7]),
    .O(inter0_wg_cy[7])
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<8>  (
    .ADR0(dut_inputs[53]),
    .ADR1(dut_inputs[54]),
    .ADR2(dut_inputs[55]),
    .ADR3(dut_inputs[56]),
    .ADR4(dut_inputs[10]),
    .ADR5(dut_inputs[57]),
    .O(inter0_wg_lut[8])
  );
  X_MUX2   \inter0_wg_cy<8>  (
    .IB(inter0_wg_cy[7]),
    .IA(N0),
    .SEL(inter0_wg_lut[8]),
    .O(inter0_wg_cy[8])
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<9>  (
    .ADR0(dut_inputs[58]),
    .ADR1(dut_inputs[59]),
    .ADR2(dut_inputs[6]),
    .ADR3(dut_inputs[60]),
    .ADR4(dut_inputs[1]),
    .ADR5(dut_inputs[61]),
    .O(inter0_wg_lut[9])
  );
  X_MUX2   \inter0_wg_cy<9>  (
    .IB(inter0_wg_cy[8]),
    .IA(N0),
    .SEL(inter0_wg_lut[9]),
    .O(inter0_wg_cy[9])
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<10>  (
    .ADR0(dut_inputs[62]),
    .ADR1(dut_inputs[63]),
    .ADR2(dut_inputs[7]),
    .ADR3(dut_inputs[8]),
    .ADR4(dut_inputs[0]),
    .ADR5(dut_inputs[9]),
    .O(inter0_wg_lut[10])
  );
  X_MUX2   \inter0_wg_cy<10>  (
    .IB(inter0_wg_cy[9]),
    .IA(N0),
    .SEL(inter0_wg_lut[10]),
    .O(dut_outputs[0])
  );
endmodule

