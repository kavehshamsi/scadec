////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: and64_sim.v
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
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \inter0_wg_lut<0>  (
    .I0(dut_inputs[19]),
    .I1(dut_inputs[2]),
    .I2(dut_inputs[18]),
    .I3(dut_inputs[20]),
    .O(inter0_wg_lut[0])
  );
  MUXCY   \inter0_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(inter0_wg_lut[0]),
    .O(inter0_wg_cy[0])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<1>  (
    .I0(dut_inputs[21]),
    .I1(dut_inputs[22]),
    .I2(dut_inputs[23]),
    .I3(dut_inputs[24]),
    .I4(dut_inputs[17]),
    .I5(dut_inputs[25]),
    .O(inter0_wg_lut[1])
  );
  MUXCY   \inter0_wg_cy<1>  (
    .CI(inter0_wg_cy[0]),
    .DI(N0),
    .S(inter0_wg_lut[1]),
    .O(inter0_wg_cy[1])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<2>  (
    .I0(dut_inputs[26]),
    .I1(dut_inputs[27]),
    .I2(dut_inputs[28]),
    .I3(dut_inputs[29]),
    .I4(dut_inputs[16]),
    .I5(dut_inputs[3]),
    .O(inter0_wg_lut[2])
  );
  MUXCY   \inter0_wg_cy<2>  (
    .CI(inter0_wg_cy[1]),
    .DI(N0),
    .S(inter0_wg_lut[2]),
    .O(inter0_wg_cy[2])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<3>  (
    .I0(dut_inputs[30]),
    .I1(dut_inputs[31]),
    .I2(dut_inputs[32]),
    .I3(dut_inputs[33]),
    .I4(dut_inputs[15]),
    .I5(dut_inputs[34]),
    .O(inter0_wg_lut[3])
  );
  MUXCY   \inter0_wg_cy<3>  (
    .CI(inter0_wg_cy[2]),
    .DI(N0),
    .S(inter0_wg_lut[3]),
    .O(inter0_wg_cy[3])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<4>  (
    .I0(dut_inputs[35]),
    .I1(dut_inputs[36]),
    .I2(dut_inputs[37]),
    .I3(dut_inputs[38]),
    .I4(dut_inputs[14]),
    .I5(dut_inputs[39]),
    .O(inter0_wg_lut[4])
  );
  MUXCY   \inter0_wg_cy<4>  (
    .CI(inter0_wg_cy[3]),
    .DI(N0),
    .S(inter0_wg_lut[4]),
    .O(inter0_wg_cy[4])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<5>  (
    .I0(dut_inputs[4]),
    .I1(dut_inputs[40]),
    .I2(dut_inputs[41]),
    .I3(dut_inputs[42]),
    .I4(dut_inputs[13]),
    .I5(dut_inputs[43]),
    .O(inter0_wg_lut[5])
  );
  MUXCY   \inter0_wg_cy<5>  (
    .CI(inter0_wg_cy[4]),
    .DI(N0),
    .S(inter0_wg_lut[5]),
    .O(inter0_wg_cy[5])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<6>  (
    .I0(dut_inputs[44]),
    .I1(dut_inputs[45]),
    .I2(dut_inputs[46]),
    .I3(dut_inputs[47]),
    .I4(dut_inputs[12]),
    .I5(dut_inputs[48]),
    .O(inter0_wg_lut[6])
  );
  MUXCY   \inter0_wg_cy<6>  (
    .CI(inter0_wg_cy[5]),
    .DI(N0),
    .S(inter0_wg_lut[6]),
    .O(inter0_wg_cy[6])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<7>  (
    .I0(dut_inputs[49]),
    .I1(dut_inputs[5]),
    .I2(dut_inputs[50]),
    .I3(dut_inputs[51]),
    .I4(dut_inputs[11]),
    .I5(dut_inputs[52]),
    .O(inter0_wg_lut[7])
  );
  MUXCY   \inter0_wg_cy<7>  (
    .CI(inter0_wg_cy[6]),
    .DI(N0),
    .S(inter0_wg_lut[7]),
    .O(inter0_wg_cy[7])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<8>  (
    .I0(dut_inputs[53]),
    .I1(dut_inputs[54]),
    .I2(dut_inputs[55]),
    .I3(dut_inputs[56]),
    .I4(dut_inputs[10]),
    .I5(dut_inputs[57]),
    .O(inter0_wg_lut[8])
  );
  MUXCY   \inter0_wg_cy<8>  (
    .CI(inter0_wg_cy[7]),
    .DI(N0),
    .S(inter0_wg_lut[8]),
    .O(inter0_wg_cy[8])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<9>  (
    .I0(dut_inputs[58]),
    .I1(dut_inputs[59]),
    .I2(dut_inputs[6]),
    .I3(dut_inputs[60]),
    .I4(dut_inputs[1]),
    .I5(dut_inputs[61]),
    .O(inter0_wg_lut[9])
  );
  MUXCY   \inter0_wg_cy<9>  (
    .CI(inter0_wg_cy[8]),
    .DI(N0),
    .S(inter0_wg_lut[9]),
    .O(inter0_wg_cy[9])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<10>  (
    .I0(dut_inputs[62]),
    .I1(dut_inputs[63]),
    .I2(dut_inputs[7]),
    .I3(dut_inputs[8]),
    .I4(dut_inputs[0]),
    .I5(dut_inputs[9]),
    .O(inter0_wg_lut[10])
  );
  MUXCY   \inter0_wg_cy<10>  (
    .CI(inter0_wg_cy[9]),
    .DI(N0),
    .S(inter0_wg_lut[10]),
    .O(dut_outputs[0])
  );
endmodule

