module and64_sim (in1, in2, in3, in4, in5, in6, in7, in8, 
in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, 
in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, 
in29, in30, in31, in32, in33, in34, in35, in36, in37, in38, 
in39, in40, in41, in42, in43, in44, in45, in46, in47, in48, 
in49, in50, in51, in52, in53, in54, in55, in56, in57, in58, 
in59, in60, in61, in62, in63, in64, o1);

input in1, in2, in3, in4, in5, in6, in7, in8, 
in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, 
in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, 
in29, in30, in31, in32, in33, in34, in35, in36, in37, in38, 
in39, in40, in41, in42, in43, in44, in45, in46, in47, in48, 
in49, in50, in51, in52, in53, in54, in55, in56, in57, in58, 
in59, in60, in61, in62, in63, in64;

output o1;

wire w1, w2, w4, w27, w28, w29, w30, w31, 
w32, w33, w34, w35, w36, w37, gnd, vdd;

X_LUT6 \inter0_wg_lut<3> (.ADR0(in31), .ADR1(in32), .ADR2(in33), .ADR3(in34), .ADR4(in16), .ADR5(in35), .O(w30));
X_CARRY4 \inter0_wg_cy<3> (.CI(gnd), .CYINIT(vdd), .DI_0_(gnd), .DI_1_(gnd), .DI_2_(gnd), .DI_3_(gnd), .S_0_(w30), .S_1_(w29), .S_2_(w28), .S_3_(w27), .CO_0_(w1));
X_LUT6 \inter0_wg_lut<2> (.ADR0(in27), .ADR1(in28), .ADR2(in29), .ADR3(in30), .ADR4(in17), .ADR5(in4), .O(w29));
X_LUT6 \inter0_wg_lut<1> (.ADR0(in22), .ADR1(in23), .ADR2(in24), .ADR3(in25), .ADR4(in18), .ADR5(in26), .O(w28));
X_LUT6 \inter0_wg_lut<0> (.ADR0(vdd), .ADR1(in20), .ADR2(in3), .ADR3(in19), .ADR4(in21), .ADR5(vdd), .O(w27));
X_LUT6 \inter0_wg_lut<7> (.ADR0(in50), .ADR1(in6), .ADR2(in51), .ADR3(in52), .ADR4(in12), .ADR5(in53), .O(w34));
X_CARRY4 \inter0_wg_cy<7> (.CI(w1), .CYINIT(gnd), .DI_0_(gnd), .DI_1_(gnd), .DI_2_(gnd), .DI_3_(gnd), .S_0_(w34), .S_1_(w33), .S_2_(w32), .S_3_(w31), .CO_0_(w2));
X_LUT6 \inter0_wg_lut<6> (.ADR0(in45), .ADR1(in46), .ADR2(in47), .ADR3(in48), .ADR4(in13), .ADR5(in49), .O(w33));
X_LUT6 \inter0_wg_lut<5> (.ADR0(in5), .ADR1(in41), .ADR2(in42), .ADR3(in43), .ADR4(in14), .ADR5(in44), .O(w32));
X_LUT6 \inter0_wg_lut<4> (.ADR0(in36), .ADR1(in37), .ADR2(in38), .ADR3(in39), .ADR4(in15), .ADR5(in40), .O(w31));
X_BUF \u0/dut_outputs/u0/dut_outputs_CMUX_Delay (.I(w4), .O(o1));
X_CARRY4 \inter0_wg_cy<10> (.CI(w2), .CYINIT(gnd), .DI_0_(gnd), .DI_1_(gnd), .DI_2_(gnd), .DI_3_(gnd), .S_0_(gnd), .S_1_(w37), .S_2_(w36), .S_3_(w35), .CO_0_(w4));
X_LUT6 \inter0_wg_lut<10> (.ADR0(in63), .ADR1(in64), .ADR2(in8), .ADR3(in9), .ADR4(in1), .ADR5(in10), .O(w37));
X_LUT6 \inter0_wg_lut<9> (.ADR0(in59), .ADR1(in60), .ADR2(in7), .ADR3(in61), .ADR4(in2), .ADR5(in62), .O(w36));
X_LUT6 \inter0_wg_lut<8> (.ADR0(in54), .ADR1(in55), .ADR2(in56), .ADR3(in57), .ADR4(in11), .ADR5(in58), .O(w35));
endmodule
