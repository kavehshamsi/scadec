////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: and64_sim.v
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
  wire \inter0_wg_cy[3] ;
  wire \inter0_wg_cy[7] ;
  wire \u0/dut/inter0_wg_cy<3>/ProtoComp1.CYINITVCC.1 ;
  wire \u0/dut_outputs/u0/dut_outputs ;
  wire \NLW_inter0_wg_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<3>_O[0]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<3>_O[1]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<3>_O[2]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<3>_O[3]_UNCONNECTED ;
  wire \NLW_N0.A5LUT_O_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<7>_O[0]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<7>_O[1]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<7>_O[2]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<7>_O[3]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<10>_CO[0]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<10>_CO[1]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<10>_CO[3]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<10>_DI[3]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<10>_O[0]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<10>_O[1]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<10>_O[2]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<10>_O[3]_UNCONNECTED ;
  wire \NLW_inter0_wg_cy<10>_S[3]_UNCONNECTED ;
  wire [10 : 0] inter0_wg_lut;
  initial $sdf_annotate("netgen/par/and64_sim.sdf");
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<3>  (
    .ADR0(dut_inputs[30]),
    .ADR2(dut_inputs[31]),
    .ADR1(dut_inputs[32]),
    .ADR5(dut_inputs[33]),
    .ADR3(dut_inputs[15]),
    .ADR4(dut_inputs[34]),
    .O(inter0_wg_lut[3])
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y45" ))
  \u0/dut/inter0_wg_cy<3>/ProtoComp1.CYINITVCC  (
    .O(\u0/dut/inter0_wg_cy<3>/ProtoComp1.CYINITVCC.1 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y45" ))
  \inter0_wg_cy<3>  (
    .CI(1'b0),
    .CYINIT(\u0/dut/inter0_wg_cy<3>/ProtoComp1.CYINITVCC.1 ),
    .CO({\inter0_wg_cy[3] , \NLW_inter0_wg_cy<3>_CO[2]_UNCONNECTED , \NLW_inter0_wg_cy<3>_CO[1]_UNCONNECTED , \NLW_inter0_wg_cy<3>_CO[0]_UNCONNECTED 
}),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_inter0_wg_cy<3>_O[3]_UNCONNECTED , \NLW_inter0_wg_cy<3>_O[2]_UNCONNECTED , \NLW_inter0_wg_cy<3>_O[1]_UNCONNECTED , 
\NLW_inter0_wg_cy<3>_O[0]_UNCONNECTED }),
    .S({inter0_wg_lut[3], inter0_wg_lut[2], inter0_wg_lut[1], inter0_wg_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<2>  (
    .ADR2(dut_inputs[26]),
    .ADR1(dut_inputs[27]),
    .ADR5(dut_inputs[28]),
    .ADR3(dut_inputs[29]),
    .ADR4(dut_inputs[16]),
    .ADR0(dut_inputs[3]),
    .O(inter0_wg_lut[2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<1>  (
    .ADR0(dut_inputs[21]),
    .ADR4(dut_inputs[22]),
    .ADR2(dut_inputs[23]),
    .ADR1(dut_inputs[24]),
    .ADR5(dut_inputs[17]),
    .ADR3(dut_inputs[25]),
    .O(inter0_wg_lut[1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 64'hC0000000C0000000 ))
  \inter0_wg_lut<0>  (
    .ADR0(1'b1),
    .ADR4(dut_inputs[19]),
    .ADR2(dut_inputs[2]),
    .ADR3(dut_inputs[18]),
    .ADR1(dut_inputs[20]),
    .ADR5(1'b1),
    .O(inter0_wg_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y45" ),
    .INIT ( 32'h00000000 ))
  \N0.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<7>  (
    .ADR1(dut_inputs[49]),
    .ADR2(dut_inputs[5]),
    .ADR4(dut_inputs[50]),
    .ADR0(dut_inputs[51]),
    .ADR5(dut_inputs[11]),
    .ADR3(dut_inputs[52]),
    .O(inter0_wg_lut[7])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y46" ))
  \inter0_wg_cy<7>  (
    .CI(\inter0_wg_cy[3] ),
    .CYINIT(1'b0),
    .CO({\inter0_wg_cy[7] , \NLW_inter0_wg_cy<7>_CO[2]_UNCONNECTED , \NLW_inter0_wg_cy<7>_CO[1]_UNCONNECTED , \NLW_inter0_wg_cy<7>_CO[0]_UNCONNECTED 
}),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_inter0_wg_cy<7>_O[3]_UNCONNECTED , \NLW_inter0_wg_cy<7>_O[2]_UNCONNECTED , \NLW_inter0_wg_cy<7>_O[1]_UNCONNECTED , 
\NLW_inter0_wg_cy<7>_O[0]_UNCONNECTED }),
    .S({inter0_wg_lut[7], inter0_wg_lut[6], inter0_wg_lut[5], inter0_wg_lut[4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<6>  (
    .ADR1(dut_inputs[44]),
    .ADR5(dut_inputs[45]),
    .ADR0(dut_inputs[46]),
    .ADR4(dut_inputs[47]),
    .ADR2(dut_inputs[12]),
    .ADR3(dut_inputs[48]),
    .O(inter0_wg_lut[6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<5>  (
    .ADR2(dut_inputs[4]),
    .ADR4(dut_inputs[40]),
    .ADR0(dut_inputs[41]),
    .ADR5(dut_inputs[42]),
    .ADR3(dut_inputs[13]),
    .ADR1(dut_inputs[43]),
    .O(inter0_wg_lut[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y46" ),
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<4>  (
    .ADR1(dut_inputs[35]),
    .ADR5(dut_inputs[36]),
    .ADR3(dut_inputs[37]),
    .ADR4(dut_inputs[38]),
    .ADR2(dut_inputs[14]),
    .ADR0(dut_inputs[39]),
    .O(inter0_wg_lut[4])
  );
  X_BUF   \u0/dut_outputs/u0/dut_outputs_CMUX_Delay  (
    .I(\u0/dut_outputs/u0/dut_outputs ),
    .O(dut_outputs[0])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X6Y47" ))
  \inter0_wg_cy<10>  (
    .CI(\inter0_wg_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_inter0_wg_cy<10>_CO[3]_UNCONNECTED , \u0/dut_outputs/u0/dut_outputs , \NLW_inter0_wg_cy<10>_CO[1]_UNCONNECTED , 
\NLW_inter0_wg_cy<10>_CO[0]_UNCONNECTED }),
    .DI({\NLW_inter0_wg_cy<10>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\NLW_inter0_wg_cy<10>_O[3]_UNCONNECTED , \NLW_inter0_wg_cy<10>_O[2]_UNCONNECTED , \NLW_inter0_wg_cy<10>_O[1]_UNCONNECTED , 
\NLW_inter0_wg_cy<10>_O[0]_UNCONNECTED }),
    .S({\NLW_inter0_wg_cy<10>_S[3]_UNCONNECTED , inter0_wg_lut[10], inter0_wg_lut[9], inter0_wg_lut[8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y47" ),
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<10>  (
    .ADR0(dut_inputs[62]),
    .ADR1(dut_inputs[63]),
    .ADR3(dut_inputs[7]),
    .ADR2(dut_inputs[8]),
    .ADR5(dut_inputs[0]),
    .ADR4(dut_inputs[9]),
    .O(inter0_wg_lut[10])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y47" ),
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<9>  (
    .ADR1(dut_inputs[58]),
    .ADR3(dut_inputs[59]),
    .ADR2(dut_inputs[6]),
    .ADR0(dut_inputs[60]),
    .ADR5(dut_inputs[1]),
    .ADR4(dut_inputs[61]),
    .O(inter0_wg_lut[9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y47" ),
    .INIT ( 64'h8000000000000000 ))
  \inter0_wg_lut<8>  (
    .ADR4(dut_inputs[53]),
    .ADR2(dut_inputs[54]),
    .ADR5(dut_inputs[55]),
    .ADR1(dut_inputs[56]),
    .ADR3(dut_inputs[10]),
    .ADR0(dut_inputs[57]),
    .O(inter0_wg_lut[8])
  );
endmodule

