
module hamm_DW01_add_0 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;

  XOR2_X1 U1 ( .A(B[5]), .B(n2), .Z(SUM[5]) );
  AND2_X1 U2 ( .A1(B[5]), .A2(n2), .ZN(SUM[6]) );
  NAND2_X1 U3 ( .A1(n3), .A2(n4), .ZN(n2) );
  NAND2_X1 U4 ( .A1(B[4]), .A2(n5), .ZN(n4) );
  OR2_X1 U5 ( .A1(n6), .A2(A[4]), .ZN(n5) );
  NAND2_X1 U6 ( .A1(A[4]), .A2(n6), .ZN(n3) );
  XOR2_X1 U7 ( .A(n6), .B(n7), .Z(SUM[4]) );
  XOR2_X1 U8 ( .A(B[4]), .B(A[4]), .Z(n7) );
  NAND2_X1 U9 ( .A1(n8), .A2(n9), .ZN(n6) );
  NAND2_X1 U10 ( .A1(B[3]), .A2(n10), .ZN(n9) );
  OR2_X1 U11 ( .A1(n11), .A2(A[3]), .ZN(n10) );
  NAND2_X1 U12 ( .A1(A[3]), .A2(n11), .ZN(n8) );
  XNOR2_X1 U13 ( .A(n12), .B(n11), .ZN(SUM[3]) );
  NAND2_X1 U14 ( .A1(n13), .A2(n14), .ZN(n11) );
  NAND2_X1 U15 ( .A1(B[2]), .A2(n15), .ZN(n14) );
  OR2_X1 U16 ( .A1(n16), .A2(A[2]), .ZN(n15) );
  NAND2_X1 U17 ( .A1(A[2]), .A2(n16), .ZN(n13) );
  XNOR2_X1 U18 ( .A(A[3]), .B(B[3]), .ZN(n12) );
  XOR2_X1 U19 ( .A(n16), .B(n17), .Z(SUM[2]) );
  XOR2_X1 U20 ( .A(B[2]), .B(A[2]), .Z(n17) );
  NAND2_X1 U21 ( .A1(n18), .A2(n19), .ZN(n16) );
  NAND2_X1 U22 ( .A1(B[1]), .A2(n20), .ZN(n19) );
  OR2_X1 U23 ( .A1(A[1]), .A2(n21), .ZN(n20) );
  NAND2_X1 U24 ( .A1(A[1]), .A2(n21), .ZN(n18) );
  XOR2_X1 U25 ( .A(n21), .B(n22), .Z(SUM[1]) );
  XOR2_X1 U26 ( .A(B[1]), .B(A[1]), .Z(n22) );
  AND2_X1 U27 ( .A1(B[0]), .A2(A[0]), .ZN(n21) );
  XOR2_X1 U28 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module hamm_DW01_add_1 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  NAND2_X1 U1 ( .A1(n1), .A2(n2), .ZN(SUM[5]) );
  NAND2_X1 U2 ( .A1(B[4]), .A2(n3), .ZN(n2) );
  OR2_X1 U3 ( .A1(n4), .A2(A[4]), .ZN(n3) );
  NAND2_X1 U4 ( .A1(A[4]), .A2(n4), .ZN(n1) );
  XOR2_X1 U5 ( .A(n4), .B(n5), .Z(SUM[4]) );
  XOR2_X1 U6 ( .A(B[4]), .B(A[4]), .Z(n5) );
  NAND2_X1 U7 ( .A1(n6), .A2(n7), .ZN(n4) );
  NAND2_X1 U8 ( .A1(B[3]), .A2(n8), .ZN(n7) );
  OR2_X1 U9 ( .A1(n9), .A2(A[3]), .ZN(n8) );
  NAND2_X1 U10 ( .A1(A[3]), .A2(n9), .ZN(n6) );
  XNOR2_X1 U11 ( .A(n10), .B(n9), .ZN(SUM[3]) );
  NAND2_X1 U12 ( .A1(n11), .A2(n12), .ZN(n9) );
  NAND2_X1 U13 ( .A1(B[2]), .A2(n13), .ZN(n12) );
  OR2_X1 U14 ( .A1(n14), .A2(A[2]), .ZN(n13) );
  NAND2_X1 U15 ( .A1(A[2]), .A2(n14), .ZN(n11) );
  XNOR2_X1 U16 ( .A(A[3]), .B(B[3]), .ZN(n10) );
  XOR2_X1 U17 ( .A(n14), .B(n15), .Z(SUM[2]) );
  XOR2_X1 U18 ( .A(B[2]), .B(A[2]), .Z(n15) );
  NAND2_X1 U19 ( .A1(n16), .A2(n17), .ZN(n14) );
  NAND2_X1 U20 ( .A1(B[1]), .A2(n18), .ZN(n17) );
  OR2_X1 U21 ( .A1(A[1]), .A2(n19), .ZN(n18) );
  NAND2_X1 U22 ( .A1(A[1]), .A2(n19), .ZN(n16) );
  XOR2_X1 U23 ( .A(n19), .B(n20), .Z(SUM[1]) );
  XOR2_X1 U24 ( .A(B[1]), .B(A[1]), .Z(n20) );
  AND2_X1 U25 ( .A1(B[0]), .A2(A[0]), .ZN(n19) );
  XOR2_X1 U26 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module hamm ( sout, count_ones );
  input [63:0] sout;
  output [6:0] count_ones;
  wire   N263, N262, N261, N260, N259, N258, N255, N254, N253, N252, N251,
         N248, N247, N246, N245, N244, N241, N240, N239, N238, N237, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391;
  wire   SYNOPSYS_UNCONNECTED__0;

  hamm_DW01_add_0 add_22_root_add_16_I64 ( .A({1'b0, 1'b0, N255, N254, N253, 
        N252, N251}), .B({1'b0, N263, N262, N261, N260, N259, N258}), .CI(1'b0), .SUM(count_ones) );
  hamm_DW01_add_1 add_23_root_add_16_I64 ( .A({1'b0, 1'b0, N241, N240, N239, 
        N238, N237}), .B({1'b0, 1'b0, N248, N247, N246, N245, N244}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, N263, N262, N261, N260, N259, N258}) );
  NAND2_X1 U96 ( .A1(n90), .A2(n91), .ZN(N255) );
  NAND2_X1 U97 ( .A1(n92), .A2(n93), .ZN(n91) );
  OR2_X1 U98 ( .A1(n94), .A2(n95), .ZN(n92) );
  NAND2_X1 U99 ( .A1(n95), .A2(n94), .ZN(n90) );
  XOR2_X1 U100 ( .A(n95), .B(n96), .Z(N254) );
  XOR2_X1 U101 ( .A(n93), .B(n94), .Z(n96) );
  NAND2_X1 U102 ( .A1(n97), .A2(n98), .ZN(n94) );
  NAND2_X1 U103 ( .A1(n99), .A2(n100), .ZN(n98) );
  OR2_X1 U104 ( .A1(n101), .A2(n102), .ZN(n99) );
  NAND2_X1 U105 ( .A1(n102), .A2(n101), .ZN(n97) );
  NAND2_X1 U106 ( .A1(n103), .A2(n104), .ZN(n93) );
  NAND2_X1 U107 ( .A1(n105), .A2(n106), .ZN(n104) );
  OR2_X1 U108 ( .A1(n107), .A2(n108), .ZN(n105) );
  NAND2_X1 U109 ( .A1(n108), .A2(n107), .ZN(n103) );
  NAND2_X1 U110 ( .A1(n109), .A2(n110), .ZN(n95) );
  NAND2_X1 U111 ( .A1(n111), .A2(n112), .ZN(n110) );
  NAND2_X1 U112 ( .A1(n113), .A2(n114), .ZN(n111) );
  OR2_X1 U113 ( .A1(n114), .A2(n113), .ZN(n109) );
  XOR2_X1 U114 ( .A(n115), .B(n113), .Z(N253) );
  XNOR2_X1 U115 ( .A(n102), .B(n116), .ZN(n113) );
  XOR2_X1 U116 ( .A(n100), .B(n101), .Z(n116) );
  NAND2_X1 U117 ( .A1(n117), .A2(n118), .ZN(n101) );
  NAND3_X1 U118 ( .A1(n119), .A2(n120), .A3(n121), .ZN(n118) );
  OR2_X1 U119 ( .A1(n122), .A2(n123), .ZN(n120) );
  NAND2_X1 U120 ( .A1(n122), .A2(n123), .ZN(n117) );
  NAND2_X1 U121 ( .A1(n124), .A2(n125), .ZN(n100) );
  NAND3_X1 U122 ( .A1(n126), .A2(n127), .A3(n128), .ZN(n125) );
  OR2_X1 U123 ( .A1(n129), .A2(n130), .ZN(n127) );
  NAND2_X1 U124 ( .A1(n130), .A2(n129), .ZN(n124) );
  NAND2_X1 U125 ( .A1(n131), .A2(n132), .ZN(n102) );
  NAND3_X1 U126 ( .A1(n133), .A2(n134), .A3(n135), .ZN(n132) );
  OR2_X1 U127 ( .A1(n136), .A2(n137), .ZN(n134) );
  NAND2_X1 U128 ( .A1(n136), .A2(n137), .ZN(n131) );
  XOR2_X1 U129 ( .A(n112), .B(n114), .Z(n115) );
  XNOR2_X1 U130 ( .A(n108), .B(n138), .ZN(n114) );
  XOR2_X1 U131 ( .A(n106), .B(n107), .Z(n138) );
  NAND2_X1 U132 ( .A1(n139), .A2(n140), .ZN(n107) );
  NAND3_X1 U133 ( .A1(n141), .A2(n142), .A3(n143), .ZN(n140) );
  OR2_X1 U134 ( .A1(n144), .A2(n145), .ZN(n142) );
  NAND2_X1 U135 ( .A1(n144), .A2(n145), .ZN(n139) );
  NAND2_X1 U136 ( .A1(n146), .A2(n147), .ZN(n106) );
  NAND3_X1 U137 ( .A1(n148), .A2(n149), .A3(n150), .ZN(n147) );
  OR2_X1 U138 ( .A1(n151), .A2(n152), .ZN(n149) );
  NAND2_X1 U139 ( .A1(n152), .A2(n151), .ZN(n146) );
  NAND2_X1 U140 ( .A1(n153), .A2(n154), .ZN(n108) );
  NAND3_X1 U141 ( .A1(n155), .A2(n156), .A3(n157), .ZN(n154) );
  OR2_X1 U142 ( .A1(n158), .A2(n159), .ZN(n156) );
  NAND2_X1 U143 ( .A1(n158), .A2(n159), .ZN(n153) );
  NAND2_X1 U144 ( .A1(n160), .A2(n161), .ZN(n112) );
  NAND3_X1 U145 ( .A1(n162), .A2(n163), .A3(n164), .ZN(n161) );
  NAND2_X1 U146 ( .A1(n165), .A2(n166), .ZN(n163) );
  INV_X1 U147 ( .A(n167), .ZN(n166) );
  INV_X1 U148 ( .A(n168), .ZN(n165) );
  NAND2_X1 U149 ( .A1(n167), .A2(n168), .ZN(n160) );
  XNOR2_X1 U150 ( .A(n168), .B(n169), .ZN(N252) );
  XNOR2_X1 U151 ( .A(n167), .B(n170), .ZN(n169) );
  AND2_X1 U152 ( .A1(n162), .A2(n164), .ZN(n170) );
  XNOR2_X1 U153 ( .A(n171), .B(n129), .ZN(n167) );
  XNOR2_X1 U154 ( .A(n172), .B(n173), .ZN(n129) );
  XOR2_X1 U155 ( .A(n137), .B(n136), .Z(n173) );
  NAND2_X1 U156 ( .A1(n174), .A2(n175), .ZN(n136) );
  NAND2_X1 U157 ( .A1(sout[42]), .A2(n176), .ZN(n175) );
  NAND2_X1 U158 ( .A1(sout[43]), .A2(sout[44]), .ZN(n174) );
  NAND2_X1 U159 ( .A1(n177), .A2(n178), .ZN(n137) );
  NAND2_X1 U160 ( .A1(sout[45]), .A2(n179), .ZN(n178) );
  NAND2_X1 U161 ( .A1(sout[46]), .A2(sout[47]), .ZN(n177) );
  NAND2_X1 U162 ( .A1(n135), .A2(n133), .ZN(n172) );
  XNOR2_X1 U163 ( .A(n130), .B(n180), .ZN(n171) );
  AND2_X1 U164 ( .A1(n126), .A2(n128), .ZN(n180) );
  XNOR2_X1 U165 ( .A(n181), .B(n182), .ZN(n130) );
  XOR2_X1 U166 ( .A(n123), .B(n122), .Z(n182) );
  NAND2_X1 U167 ( .A1(n183), .A2(n184), .ZN(n122) );
  NAND2_X1 U168 ( .A1(sout[48]), .A2(n185), .ZN(n184) );
  NAND2_X1 U169 ( .A1(sout[49]), .A2(sout[50]), .ZN(n183) );
  NAND2_X1 U170 ( .A1(n186), .A2(n187), .ZN(n123) );
  NAND2_X1 U171 ( .A1(sout[51]), .A2(n188), .ZN(n187) );
  NAND2_X1 U172 ( .A1(sout[52]), .A2(sout[53]), .ZN(n186) );
  NAND2_X1 U173 ( .A1(n121), .A2(n119), .ZN(n181) );
  XNOR2_X1 U174 ( .A(n189), .B(n151), .ZN(n168) );
  XNOR2_X1 U175 ( .A(n190), .B(n191), .ZN(n151) );
  XOR2_X1 U176 ( .A(n159), .B(n158), .Z(n191) );
  NAND2_X1 U177 ( .A1(n192), .A2(n193), .ZN(n158) );
  NAND2_X1 U178 ( .A1(sout[30]), .A2(n194), .ZN(n193) );
  NAND2_X1 U179 ( .A1(sout[31]), .A2(sout[32]), .ZN(n192) );
  NAND2_X1 U180 ( .A1(n195), .A2(n196), .ZN(n159) );
  NAND2_X1 U181 ( .A1(sout[33]), .A2(n197), .ZN(n196) );
  NAND2_X1 U182 ( .A1(sout[34]), .A2(sout[35]), .ZN(n195) );
  NAND2_X1 U183 ( .A1(n157), .A2(n155), .ZN(n190) );
  XNOR2_X1 U184 ( .A(n152), .B(n198), .ZN(n189) );
  AND2_X1 U185 ( .A1(n148), .A2(n150), .ZN(n198) );
  XNOR2_X1 U186 ( .A(n199), .B(n200), .ZN(n152) );
  XOR2_X1 U187 ( .A(n145), .B(n144), .Z(n200) );
  NAND2_X1 U188 ( .A1(n201), .A2(n202), .ZN(n144) );
  NAND2_X1 U189 ( .A1(sout[36]), .A2(n203), .ZN(n202) );
  NAND2_X1 U190 ( .A1(sout[37]), .A2(sout[38]), .ZN(n201) );
  NAND2_X1 U191 ( .A1(n204), .A2(n205), .ZN(n145) );
  NAND2_X1 U192 ( .A1(sout[39]), .A2(n206), .ZN(n205) );
  NAND2_X1 U193 ( .A1(sout[40]), .A2(sout[41]), .ZN(n204) );
  NAND2_X1 U194 ( .A1(n143), .A2(n141), .ZN(n199) );
  XOR2_X1 U195 ( .A(n162), .B(n164), .Z(N251) );
  XOR2_X1 U196 ( .A(n150), .B(n148), .Z(n164) );
  XOR2_X1 U197 ( .A(n143), .B(n141), .Z(n148) );
  XOR2_X1 U198 ( .A(sout[36]), .B(n203), .Z(n141) );
  XOR2_X1 U199 ( .A(sout[37]), .B(sout[38]), .Z(n203) );
  XOR2_X1 U200 ( .A(sout[39]), .B(n206), .Z(n143) );
  XOR2_X1 U201 ( .A(sout[40]), .B(sout[41]), .Z(n206) );
  XOR2_X1 U202 ( .A(n157), .B(n155), .Z(n150) );
  XOR2_X1 U203 ( .A(sout[30]), .B(n194), .Z(n155) );
  XOR2_X1 U204 ( .A(sout[31]), .B(sout[32]), .Z(n194) );
  XOR2_X1 U205 ( .A(sout[33]), .B(n197), .Z(n157) );
  XOR2_X1 U206 ( .A(sout[34]), .B(sout[35]), .Z(n197) );
  XOR2_X1 U207 ( .A(n128), .B(n126), .Z(n162) );
  XOR2_X1 U208 ( .A(n135), .B(n133), .Z(n126) );
  XOR2_X1 U209 ( .A(sout[42]), .B(n176), .Z(n133) );
  XOR2_X1 U210 ( .A(sout[43]), .B(sout[44]), .Z(n176) );
  XOR2_X1 U211 ( .A(sout[45]), .B(n179), .Z(n135) );
  XOR2_X1 U212 ( .A(sout[46]), .B(sout[47]), .Z(n179) );
  XOR2_X1 U213 ( .A(n121), .B(n119), .Z(n128) );
  XOR2_X1 U214 ( .A(sout[48]), .B(n185), .Z(n119) );
  XOR2_X1 U215 ( .A(sout[49]), .B(sout[50]), .Z(n185) );
  XOR2_X1 U216 ( .A(sout[51]), .B(n188), .Z(n121) );
  XOR2_X1 U217 ( .A(sout[52]), .B(sout[53]), .Z(n188) );
  NAND2_X1 U218 ( .A1(n207), .A2(n208), .ZN(N248) );
  NAND2_X1 U219 ( .A1(n209), .A2(n210), .ZN(n208) );
  OR2_X1 U220 ( .A1(n211), .A2(n212), .ZN(n209) );
  NAND2_X1 U221 ( .A1(n212), .A2(n211), .ZN(n207) );
  XOR2_X1 U222 ( .A(n212), .B(n213), .Z(N247) );
  XOR2_X1 U223 ( .A(n210), .B(n211), .Z(n213) );
  NAND2_X1 U224 ( .A1(n214), .A2(n215), .ZN(n211) );
  NAND2_X1 U225 ( .A1(n216), .A2(n217), .ZN(n215) );
  OR2_X1 U226 ( .A1(n218), .A2(n219), .ZN(n216) );
  NAND2_X1 U227 ( .A1(n219), .A2(n218), .ZN(n214) );
  NAND2_X1 U228 ( .A1(n220), .A2(n221), .ZN(n210) );
  NAND2_X1 U229 ( .A1(n222), .A2(n223), .ZN(n221) );
  OR2_X1 U230 ( .A1(n224), .A2(n225), .ZN(n222) );
  NAND2_X1 U231 ( .A1(n225), .A2(n224), .ZN(n220) );
  NAND2_X1 U232 ( .A1(n226), .A2(n227), .ZN(n212) );
  NAND2_X1 U233 ( .A1(n228), .A2(n229), .ZN(n227) );
  NAND2_X1 U234 ( .A1(n230), .A2(n231), .ZN(n228) );
  OR2_X1 U235 ( .A1(n231), .A2(n230), .ZN(n226) );
  XOR2_X1 U236 ( .A(n232), .B(n230), .Z(N246) );
  XNOR2_X1 U237 ( .A(n219), .B(n233), .ZN(n230) );
  XOR2_X1 U238 ( .A(n217), .B(n218), .Z(n233) );
  NAND2_X1 U239 ( .A1(n234), .A2(n235), .ZN(n218) );
  NAND3_X1 U240 ( .A1(n236), .A2(n237), .A3(n238), .ZN(n235) );
  OR2_X1 U241 ( .A1(n239), .A2(n240), .ZN(n237) );
  NAND2_X1 U242 ( .A1(n239), .A2(n240), .ZN(n234) );
  NAND2_X1 U243 ( .A1(n241), .A2(n242), .ZN(n217) );
  NAND3_X1 U244 ( .A1(n243), .A2(n244), .A3(n245), .ZN(n242) );
  OR2_X1 U245 ( .A1(n246), .A2(n247), .ZN(n244) );
  NAND2_X1 U246 ( .A1(n247), .A2(n246), .ZN(n241) );
  NAND2_X1 U247 ( .A1(n248), .A2(n249), .ZN(n219) );
  NAND3_X1 U248 ( .A1(n250), .A2(n251), .A3(n252), .ZN(n249) );
  OR2_X1 U249 ( .A1(n253), .A2(n254), .ZN(n251) );
  NAND2_X1 U250 ( .A1(n253), .A2(n254), .ZN(n248) );
  XOR2_X1 U251 ( .A(n229), .B(n231), .Z(n232) );
  XNOR2_X1 U252 ( .A(n225), .B(n255), .ZN(n231) );
  XOR2_X1 U253 ( .A(n223), .B(n224), .Z(n255) );
  NAND2_X1 U254 ( .A1(n256), .A2(n257), .ZN(n224) );
  NAND3_X1 U255 ( .A1(n258), .A2(n259), .A3(n260), .ZN(n257) );
  OR2_X1 U256 ( .A1(n261), .A2(n262), .ZN(n259) );
  NAND2_X1 U257 ( .A1(n261), .A2(n262), .ZN(n256) );
  NAND2_X1 U258 ( .A1(n263), .A2(n264), .ZN(n223) );
  NAND3_X1 U259 ( .A1(n265), .A2(n266), .A3(n267), .ZN(n264) );
  OR2_X1 U260 ( .A1(n268), .A2(n269), .ZN(n266) );
  NAND2_X1 U261 ( .A1(n269), .A2(n268), .ZN(n263) );
  NAND2_X1 U262 ( .A1(n270), .A2(n271), .ZN(n225) );
  NAND3_X1 U263 ( .A1(n272), .A2(n273), .A3(n274), .ZN(n271) );
  OR2_X1 U264 ( .A1(n275), .A2(n276), .ZN(n273) );
  NAND2_X1 U265 ( .A1(n275), .A2(n276), .ZN(n270) );
  NAND2_X1 U266 ( .A1(n277), .A2(n278), .ZN(n229) );
  NAND3_X1 U267 ( .A1(n279), .A2(n280), .A3(n281), .ZN(n278) );
  NAND2_X1 U268 ( .A1(n282), .A2(n283), .ZN(n280) );
  INV_X1 U269 ( .A(n284), .ZN(n283) );
  INV_X1 U270 ( .A(n285), .ZN(n282) );
  NAND2_X1 U271 ( .A1(n284), .A2(n285), .ZN(n277) );
  XNOR2_X1 U272 ( .A(n285), .B(n286), .ZN(N245) );
  XNOR2_X1 U273 ( .A(n284), .B(n287), .ZN(n286) );
  AND2_X1 U274 ( .A1(n279), .A2(n281), .ZN(n287) );
  XNOR2_X1 U275 ( .A(n288), .B(n246), .ZN(n284) );
  XNOR2_X1 U276 ( .A(n289), .B(n290), .ZN(n246) );
  XOR2_X1 U277 ( .A(n254), .B(n253), .Z(n290) );
  NAND2_X1 U278 ( .A1(n291), .A2(n292), .ZN(n253) );
  NAND2_X1 U279 ( .A1(sout[18]), .A2(n293), .ZN(n292) );
  NAND2_X1 U280 ( .A1(sout[19]), .A2(sout[20]), .ZN(n291) );
  NAND2_X1 U281 ( .A1(n294), .A2(n295), .ZN(n254) );
  NAND2_X1 U282 ( .A1(sout[21]), .A2(n296), .ZN(n295) );
  NAND2_X1 U283 ( .A1(sout[22]), .A2(sout[23]), .ZN(n294) );
  NAND2_X1 U284 ( .A1(n252), .A2(n250), .ZN(n289) );
  XNOR2_X1 U285 ( .A(n247), .B(n297), .ZN(n288) );
  AND2_X1 U286 ( .A1(n243), .A2(n245), .ZN(n297) );
  XNOR2_X1 U287 ( .A(n298), .B(n299), .ZN(n247) );
  XOR2_X1 U288 ( .A(n240), .B(n239), .Z(n299) );
  NAND2_X1 U289 ( .A1(n300), .A2(n301), .ZN(n239) );
  NAND2_X1 U290 ( .A1(sout[24]), .A2(n302), .ZN(n301) );
  NAND2_X1 U291 ( .A1(sout[25]), .A2(sout[26]), .ZN(n300) );
  NAND2_X1 U292 ( .A1(n303), .A2(n304), .ZN(n240) );
  NAND2_X1 U293 ( .A1(sout[27]), .A2(n305), .ZN(n304) );
  NAND2_X1 U294 ( .A1(sout[28]), .A2(sout[29]), .ZN(n303) );
  NAND2_X1 U295 ( .A1(n238), .A2(n236), .ZN(n298) );
  XNOR2_X1 U296 ( .A(n306), .B(n268), .ZN(n285) );
  XNOR2_X1 U297 ( .A(n307), .B(n308), .ZN(n268) );
  XOR2_X1 U298 ( .A(n276), .B(n275), .Z(n308) );
  NAND2_X1 U299 ( .A1(n309), .A2(n310), .ZN(n275) );
  NAND2_X1 U300 ( .A1(sout[6]), .A2(n311), .ZN(n310) );
  NAND2_X1 U301 ( .A1(sout[7]), .A2(sout[8]), .ZN(n309) );
  NAND2_X1 U302 ( .A1(n312), .A2(n313), .ZN(n276) );
  NAND2_X1 U303 ( .A1(sout[9]), .A2(n314), .ZN(n313) );
  NAND2_X1 U304 ( .A1(sout[10]), .A2(sout[11]), .ZN(n312) );
  NAND2_X1 U305 ( .A1(n274), .A2(n272), .ZN(n307) );
  XNOR2_X1 U306 ( .A(n269), .B(n315), .ZN(n306) );
  AND2_X1 U307 ( .A1(n265), .A2(n267), .ZN(n315) );
  XNOR2_X1 U308 ( .A(n316), .B(n317), .ZN(n269) );
  XOR2_X1 U309 ( .A(n262), .B(n261), .Z(n317) );
  NAND2_X1 U310 ( .A1(n318), .A2(n319), .ZN(n261) );
  NAND2_X1 U311 ( .A1(sout[12]), .A2(n320), .ZN(n319) );
  NAND2_X1 U312 ( .A1(sout[13]), .A2(sout[14]), .ZN(n318) );
  NAND2_X1 U313 ( .A1(n321), .A2(n322), .ZN(n262) );
  NAND2_X1 U314 ( .A1(sout[15]), .A2(n323), .ZN(n322) );
  NAND2_X1 U315 ( .A1(sout[16]), .A2(sout[17]), .ZN(n321) );
  NAND2_X1 U316 ( .A1(n260), .A2(n258), .ZN(n316) );
  XOR2_X1 U317 ( .A(n279), .B(n281), .Z(N244) );
  XOR2_X1 U318 ( .A(n267), .B(n265), .Z(n281) );
  XOR2_X1 U319 ( .A(n260), .B(n258), .Z(n265) );
  XOR2_X1 U320 ( .A(sout[12]), .B(n320), .Z(n258) );
  XOR2_X1 U321 ( .A(sout[13]), .B(sout[14]), .Z(n320) );
  XOR2_X1 U322 ( .A(sout[15]), .B(n323), .Z(n260) );
  XOR2_X1 U323 ( .A(sout[16]), .B(sout[17]), .Z(n323) );
  XOR2_X1 U324 ( .A(n274), .B(n272), .Z(n267) );
  XOR2_X1 U325 ( .A(sout[6]), .B(n311), .Z(n272) );
  XOR2_X1 U326 ( .A(sout[7]), .B(sout[8]), .Z(n311) );
  XOR2_X1 U327 ( .A(sout[9]), .B(n314), .Z(n274) );
  XOR2_X1 U328 ( .A(sout[10]), .B(sout[11]), .Z(n314) );
  XOR2_X1 U329 ( .A(n245), .B(n243), .Z(n279) );
  XOR2_X1 U330 ( .A(n252), .B(n250), .Z(n243) );
  XOR2_X1 U331 ( .A(sout[18]), .B(n293), .Z(n250) );
  XOR2_X1 U332 ( .A(sout[19]), .B(sout[20]), .Z(n293) );
  XOR2_X1 U333 ( .A(sout[21]), .B(n296), .Z(n252) );
  XOR2_X1 U334 ( .A(sout[22]), .B(sout[23]), .Z(n296) );
  XOR2_X1 U335 ( .A(n238), .B(n236), .Z(n245) );
  XOR2_X1 U336 ( .A(sout[24]), .B(n302), .Z(n236) );
  XOR2_X1 U337 ( .A(sout[25]), .B(sout[26]), .Z(n302) );
  XOR2_X1 U338 ( .A(sout[27]), .B(n305), .Z(n238) );
  XOR2_X1 U339 ( .A(sout[28]), .B(sout[29]), .Z(n305) );
  NOR3_X1 U340 ( .A1(n324), .A2(n325), .A3(n326), .ZN(N241) );
  XNOR2_X1 U341 ( .A(n324), .B(n327), .ZN(N240) );
  NOR2_X1 U342 ( .A1(n326), .A2(n325), .ZN(n327) );
  AND2_X1 U343 ( .A1(n328), .A2(n329), .ZN(n324) );
  NAND2_X1 U344 ( .A1(n330), .A2(n331), .ZN(n329) );
  OR2_X1 U345 ( .A1(n332), .A2(n333), .ZN(n330) );
  NAND2_X1 U346 ( .A1(n333), .A2(n332), .ZN(n328) );
  XNOR2_X1 U347 ( .A(n333), .B(n334), .ZN(N239) );
  XNOR2_X1 U348 ( .A(n331), .B(n332), .ZN(n334) );
  NAND2_X1 U349 ( .A1(n335), .A2(n336), .ZN(n332) );
  NAND3_X1 U350 ( .A1(n337), .A2(n338), .A3(n339), .ZN(n336) );
  OR2_X1 U351 ( .A1(n340), .A2(n341), .ZN(n338) );
  NAND2_X1 U352 ( .A1(n340), .A2(n341), .ZN(n335) );
  NAND2_X1 U353 ( .A1(n342), .A2(n343), .ZN(n331) );
  NAND3_X1 U354 ( .A1(n344), .A2(n345), .A3(n346), .ZN(n343) );
  NAND2_X1 U355 ( .A1(n347), .A2(n348), .ZN(n345) );
  INV_X1 U356 ( .A(n349), .ZN(n348) );
  INV_X1 U357 ( .A(n350), .ZN(n347) );
  NAND2_X1 U358 ( .A1(n349), .A2(n350), .ZN(n342) );
  XOR2_X1 U359 ( .A(n325), .B(n326), .Z(n333) );
  AND2_X1 U360 ( .A1(n351), .A2(n352), .ZN(n326) );
  NAND2_X1 U361 ( .A1(n353), .A2(n354), .ZN(n352) );
  NAND2_X1 U362 ( .A1(n355), .A2(n356), .ZN(n351) );
  AND2_X1 U363 ( .A1(n357), .A2(n358), .ZN(n325) );
  NAND3_X1 U364 ( .A1(n359), .A2(n360), .A3(n361), .ZN(n358) );
  NAND2_X1 U365 ( .A1(n362), .A2(n363), .ZN(n360) );
  OR2_X1 U366 ( .A1(n363), .A2(n362), .ZN(n357) );
  XNOR2_X1 U367 ( .A(n350), .B(n364), .ZN(N238) );
  XNOR2_X1 U368 ( .A(n349), .B(n365), .ZN(n364) );
  NOR2_X1 U369 ( .A1(n366), .A2(n367), .ZN(n365) );
  INV_X1 U370 ( .A(n344), .ZN(n366) );
  XNOR2_X1 U371 ( .A(n368), .B(n363), .ZN(n349) );
  XNOR2_X1 U372 ( .A(n354), .B(n353), .ZN(n363) );
  XOR2_X1 U373 ( .A(n355), .B(n356), .Z(n353) );
  NAND2_X1 U374 ( .A1(n369), .A2(n370), .ZN(n356) );
  NAND2_X1 U375 ( .A1(sout[0]), .A2(n371), .ZN(n370) );
  NAND2_X1 U376 ( .A1(sout[1]), .A2(sout[2]), .ZN(n369) );
  NAND2_X1 U377 ( .A1(n372), .A2(n373), .ZN(n355) );
  NAND2_X1 U378 ( .A1(sout[3]), .A2(n374), .ZN(n373) );
  NAND2_X1 U379 ( .A1(sout[4]), .A2(sout[5]), .ZN(n372) );
  NAND2_X1 U380 ( .A1(n375), .A2(n376), .ZN(n354) );
  NAND2_X1 U381 ( .A1(sout[63]), .A2(n377), .ZN(n376) );
  NAND2_X1 U382 ( .A1(n378), .A2(n379), .ZN(n375) );
  XOR2_X1 U383 ( .A(n380), .B(n362), .Z(n368) );
  AND2_X1 U384 ( .A1(n381), .A2(n382), .ZN(n362) );
  NAND2_X1 U385 ( .A1(sout[60]), .A2(n383), .ZN(n382) );
  NAND2_X1 U386 ( .A1(sout[61]), .A2(sout[62]), .ZN(n381) );
  NAND2_X1 U387 ( .A1(n361), .A2(n359), .ZN(n380) );
  XNOR2_X1 U388 ( .A(n384), .B(n385), .ZN(n350) );
  XOR2_X1 U389 ( .A(n341), .B(n340), .Z(n385) );
  NAND2_X1 U390 ( .A1(n386), .A2(n387), .ZN(n340) );
  NAND2_X1 U391 ( .A1(sout[54]), .A2(n388), .ZN(n387) );
  NAND2_X1 U392 ( .A1(sout[55]), .A2(sout[56]), .ZN(n386) );
  NAND2_X1 U393 ( .A1(n389), .A2(n390), .ZN(n341) );
  NAND2_X1 U394 ( .A1(sout[57]), .A2(n391), .ZN(n390) );
  NAND2_X1 U395 ( .A1(sout[58]), .A2(sout[59]), .ZN(n389) );
  NAND2_X1 U396 ( .A1(n339), .A2(n337), .ZN(n384) );
  XNOR2_X1 U397 ( .A(n344), .B(n367), .ZN(N237) );
  INV_X1 U398 ( .A(n346), .ZN(n367) );
  XOR2_X1 U399 ( .A(n339), .B(n337), .Z(n346) );
  XOR2_X1 U400 ( .A(sout[54]), .B(n388), .Z(n337) );
  XOR2_X1 U401 ( .A(sout[55]), .B(sout[56]), .Z(n388) );
  XOR2_X1 U402 ( .A(sout[57]), .B(n391), .Z(n339) );
  XOR2_X1 U403 ( .A(sout[58]), .B(sout[59]), .Z(n391) );
  XOR2_X1 U404 ( .A(n361), .B(n359), .Z(n344) );
  XOR2_X1 U405 ( .A(sout[63]), .B(n377), .Z(n359) );
  XOR2_X1 U406 ( .A(n378), .B(n379), .Z(n377) );
  XOR2_X1 U407 ( .A(sout[3]), .B(n374), .Z(n379) );
  XOR2_X1 U408 ( .A(sout[4]), .B(sout[5]), .Z(n374) );
  XOR2_X1 U409 ( .A(sout[0]), .B(n371), .Z(n378) );
  XOR2_X1 U410 ( .A(sout[1]), .B(sout[2]), .Z(n371) );
  XOR2_X1 U411 ( .A(sout[60]), .B(n383), .Z(n361) );
  XOR2_X1 U412 ( .A(sout[61]), .B(sout[62]), .Z(n383) );
endmodule

