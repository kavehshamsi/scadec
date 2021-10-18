
module c432_xrnd_64 ( G1gat, G4gat, G8gat, G11gat, G14gat, G17gat, G21gat, 
        G24gat, G27gat, G30gat, G34gat, G37gat, G40gat, G43gat, G47gat, G50gat, 
        G53gat, G56gat, G60gat, G63gat, G66gat, G69gat, G73gat, G76gat, G79gat, 
        G82gat, G86gat, G89gat, G92gat, G95gat, G99gat, G102gat, G105gat, 
        G108gat, G112gat, G115gat, G223gat, G329gat, G370gat, G421gat, G430gat, 
        G431gat, G432gat, keyinput0, keyinput1, keyinput2, keyinput3, 
        keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, 
        keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, 
        keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, 
        keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, 
        keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33, 
        keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39, 
        keyinput40, keyinput41, keyinput42, keyinput43, keyinput44, keyinput45, 
        keyinput46, keyinput47, keyinput48, keyinput49, keyinput50, keyinput51, 
        keyinput52, keyinput53, keyinput54, keyinput55, keyinput56, keyinput57, 
        keyinput58, keyinput59, keyinput60, keyinput61, keyinput62, keyinput63
 );
  input G1gat, G4gat, G8gat, G11gat, G14gat, G17gat, G21gat, G24gat, G27gat,
         G30gat, G34gat, G37gat, G40gat, G43gat, G47gat, G50gat, G53gat,
         G56gat, G60gat, G63gat, G66gat, G69gat, G73gat, G76gat, G79gat,
         G82gat, G86gat, G89gat, G92gat, G95gat, G99gat, G102gat, G105gat,
         G108gat, G112gat, G115gat, keyinput0, keyinput1, keyinput2, keyinput3,
         keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9,
         keyinput10, keyinput11, keyinput12, keyinput13, keyinput14,
         keyinput15, keyinput16, keyinput17, keyinput18, keyinput19,
         keyinput20, keyinput21, keyinput22, keyinput23, keyinput24,
         keyinput25, keyinput26, keyinput27, keyinput28, keyinput29,
         keyinput30, keyinput31, keyinput32, keyinput33, keyinput34,
         keyinput35, keyinput36, keyinput37, keyinput38, keyinput39,
         keyinput40, keyinput41, keyinput42, keyinput43, keyinput44,
         keyinput45, keyinput46, keyinput47, keyinput48, keyinput49,
         keyinput50, keyinput51, keyinput52, keyinput53, keyinput54,
         keyinput55, keyinput56, keyinput57, keyinput58, keyinput59,
         keyinput60, keyinput61, keyinput62, keyinput63;
  output G223gat, G329gat, G370gat, G421gat, G430gat, G431gat, G432gat;
  wire   n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
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
         n380, n381, n382;

  NOR4_X2 U194 ( .A1(n284), .A2(n328), .A3(n340), .A4(n341), .ZN(n255) );
  XOR2_X2 U195 ( .A(n366), .B(keyinput9), .Z(G223gat) );
  NAND2_X1 U196 ( .A1(n193), .A2(n194), .ZN(G432gat) );
  NAND2_X1 U197 ( .A1(n195), .A2(n196), .ZN(n194) );
  NAND3_X1 U198 ( .A1(n197), .A2(n198), .A3(n199), .ZN(n195) );
  NAND3_X1 U199 ( .A1(n200), .A2(n201), .A3(n202), .ZN(n197) );
  INV_X1 U200 ( .A(n203), .ZN(n202) );
  NAND4_X1 U201 ( .A1(n204), .A2(n193), .A3(n196), .A4(n198), .ZN(G431gat) );
  NAND2_X1 U202 ( .A1(n205), .A2(n206), .ZN(n198) );
  NAND2_X1 U203 ( .A1(n207), .A2(n205), .ZN(n204) );
  INV_X1 U204 ( .A(n208), .ZN(n205) );
  NAND4_X1 U205 ( .A1(n199), .A2(n209), .A3(n193), .A4(n196), .ZN(G430gat) );
  XOR2_X1 U206 ( .A(n200), .B(keyinput27), .Z(n199) );
  NOR2_X1 U207 ( .A1(n210), .A2(n211), .ZN(G421gat) );
  XOR2_X1 U208 ( .A(keyinput34), .B(n212), .Z(n211) );
  NOR4_X1 U209 ( .A1(n213), .A2(n208), .A3(n207), .A4(n206), .ZN(n212) );
  AND4_X1 U210 ( .A1(n214), .A2(n215), .A3(n216), .A4(n217), .ZN(n206) );
  NAND2_X1 U211 ( .A1(G370gat), .A2(n218), .ZN(n217) );
  NAND2_X1 U212 ( .A1(G223gat), .A2(G63gat), .ZN(n216) );
  XOR2_X1 U213 ( .A(n219), .B(keyinput31), .Z(n214) );
  NAND2_X1 U214 ( .A1(G73gat), .A2(G329gat), .ZN(n219) );
  INV_X1 U215 ( .A(n201), .ZN(n207) );
  NAND3_X1 U216 ( .A1(n220), .A2(n221), .A3(n222), .ZN(n201) );
  XOR2_X1 U217 ( .A(n223), .B(keyinput56), .Z(n222) );
  NAND2_X1 U218 ( .A1(G86gat), .A2(G329gat), .ZN(n223) );
  NAND2_X1 U219 ( .A1(n224), .A2(n225), .ZN(n221) );
  NAND2_X1 U220 ( .A1(G82gat), .A2(n226), .ZN(n224) );
  NAND2_X1 U221 ( .A1(G92gat), .A2(G370gat), .ZN(n220) );
  NAND2_X1 U222 ( .A1(n200), .A2(n209), .ZN(n208) );
  NAND4_X1 U223 ( .A1(n227), .A2(G56gat), .A3(n228), .A4(n229), .ZN(n209) );
  NAND2_X1 U224 ( .A1(G370gat), .A2(n230), .ZN(n229) );
  INV_X1 U225 ( .A(n231), .ZN(n230) );
  NAND2_X1 U226 ( .A1(G50gat), .A2(G223gat), .ZN(n228) );
  XOR2_X1 U227 ( .A(n232), .B(n233), .Z(n227) );
  XOR2_X1 U228 ( .A(keyinput7), .B(keyinput63), .Z(n233) );
  NAND2_X1 U229 ( .A1(n234), .A2(G329gat), .ZN(n232) );
  XOR2_X1 U230 ( .A(keyinput12), .B(G60gat), .Z(n234) );
  XOR2_X1 U231 ( .A(n235), .B(keyinput46), .Z(n200) );
  NAND4_X1 U232 ( .A1(G43gat), .A2(n236), .A3(n237), .A4(n238), .ZN(n235) );
  NAND2_X1 U233 ( .A1(G53gat), .A2(G370gat), .ZN(n238) );
  NAND2_X1 U234 ( .A1(G223gat), .A2(G37gat), .ZN(n237) );
  NAND2_X1 U235 ( .A1(G47gat), .A2(G329gat), .ZN(n236) );
  NAND4_X1 U236 ( .A1(n193), .A2(n196), .A3(n239), .A4(n203), .ZN(n213) );
  NAND4_X1 U237 ( .A1(n240), .A2(G95gat), .A3(n241), .A4(n242), .ZN(n203) );
  NAND2_X1 U238 ( .A1(G89gat), .A2(G223gat), .ZN(n242) );
  NAND2_X1 U239 ( .A1(G105gat), .A2(G370gat), .ZN(n241) );
  XOR2_X1 U240 ( .A(n243), .B(keyinput62), .Z(n240) );
  NAND2_X1 U241 ( .A1(G99gat), .A2(G329gat), .ZN(n243) );
  NAND3_X1 U242 ( .A1(n244), .A2(n245), .A3(n246), .ZN(n239) );
  NAND2_X1 U243 ( .A1(n247), .A2(n248), .ZN(n246) );
  OR2_X1 U244 ( .A1(G223gat), .A2(n249), .ZN(n248) );
  NAND2_X1 U245 ( .A1(n250), .A2(G329gat), .ZN(n245) );
  NAND2_X1 U246 ( .A1(G115gat), .A2(G370gat), .ZN(n244) );
  NAND4_X1 U247 ( .A1(G30gat), .A2(n251), .A3(n252), .A4(n253), .ZN(n196) );
  OR2_X1 U248 ( .A1(n254), .A2(n255), .ZN(n253) );
  NAND2_X1 U249 ( .A1(G370gat), .A2(n256), .ZN(n252) );
  INV_X1 U250 ( .A(n257), .ZN(n256) );
  NAND2_X1 U251 ( .A1(G24gat), .A2(G223gat), .ZN(n251) );
  NAND4_X1 U252 ( .A1(n258), .A2(G17gat), .A3(n259), .A4(n260), .ZN(n193) );
  NAND2_X1 U253 ( .A1(G27gat), .A2(G370gat), .ZN(n260) );
  NAND2_X1 U254 ( .A1(G223gat), .A2(G11gat), .ZN(n259) );
  XOR2_X1 U255 ( .A(n261), .B(keyinput41), .Z(n258) );
  NAND2_X1 U256 ( .A1(G21gat), .A2(G329gat), .ZN(n261) );
  XOR2_X1 U257 ( .A(keyinput14), .B(n262), .Z(n210) );
  NOR3_X1 U258 ( .A1(n263), .A2(n264), .A3(n265), .ZN(n262) );
  AND2_X1 U259 ( .A1(G370gat), .A2(G14gat), .ZN(n265) );
  AND2_X1 U260 ( .A1(G329gat), .A2(G8gat), .ZN(n264) );
  NOR2_X1 U261 ( .A1(n266), .A2(n267), .ZN(n263) );
  NOR2_X1 U262 ( .A1(G223gat), .A2(n268), .ZN(n266) );
  XOR2_X1 U263 ( .A(n269), .B(keyinput35), .Z(G370gat) );
  NAND4_X1 U264 ( .A1(n270), .A2(n271), .A3(n272), .A4(n273), .ZN(n269) );
  NOR4_X1 U265 ( .A1(n274), .A2(n275), .A3(n276), .A4(n277), .ZN(n273) );
  XOR2_X1 U266 ( .A(keyinput13), .B(n278), .Z(n277) );
  NOR2_X1 U267 ( .A1(n279), .A2(n280), .ZN(n278) );
  XOR2_X1 U268 ( .A(n281), .B(keyinput49), .Z(n280) );
  OR2_X1 U269 ( .A1(n218), .A2(n282), .ZN(n281) );
  XOR2_X1 U270 ( .A(keyinput45), .B(G79gat), .Z(n218) );
  XOR2_X1 U271 ( .A(G329gat), .B(n283), .Z(n279) );
  XOR2_X1 U272 ( .A(keyinput47), .B(n284), .Z(n283) );
  XOR2_X1 U273 ( .A(keyinput5), .B(n285), .Z(n276) );
  NOR2_X1 U274 ( .A1(n286), .A2(n287), .ZN(n285) );
  XOR2_X1 U275 ( .A(n288), .B(keyinput52), .Z(n287) );
  NAND3_X1 U276 ( .A1(n289), .A2(n290), .A3(G95gat), .ZN(n288) );
  INV_X1 U277 ( .A(G105gat), .ZN(n290) );
  XOR2_X1 U278 ( .A(n291), .B(n292), .Z(n286) );
  XOR2_X1 U279 ( .A(G329gat), .B(keyinput39), .Z(n291) );
  NOR2_X1 U280 ( .A1(n293), .A2(n294), .ZN(n275) );
  XOR2_X1 U281 ( .A(G329gat), .B(n295), .Z(n294) );
  XOR2_X1 U282 ( .A(keyinput18), .B(n296), .Z(n295) );
  XOR2_X1 U283 ( .A(n297), .B(n298), .Z(n293) );
  NOR3_X1 U284 ( .A1(n268), .A2(G14gat), .A3(n299), .ZN(n298) );
  XNOR2_X1 U285 ( .A(keyinput8), .B(keyinput61), .ZN(n297) );
  NOR3_X1 U286 ( .A1(n300), .A2(n301), .A3(n302), .ZN(n274) );
  NOR2_X1 U287 ( .A1(n303), .A2(n255), .ZN(n301) );
  NOR2_X1 U288 ( .A1(G47gat), .A2(n304), .ZN(n303) );
  XOR2_X1 U289 ( .A(n305), .B(keyinput38), .Z(n300) );
  OR2_X1 U290 ( .A1(n304), .A2(G53gat), .ZN(n305) );
  NOR3_X1 U291 ( .A1(n306), .A2(n307), .A3(n308), .ZN(n272) );
  NOR2_X1 U292 ( .A1(n309), .A2(n310), .ZN(n308) );
  XOR2_X1 U293 ( .A(n311), .B(n312), .Z(n310) );
  XOR2_X1 U294 ( .A(keyinput24), .B(n313), .Z(n312) );
  NOR2_X1 U295 ( .A1(n314), .A2(n315), .ZN(n313) );
  XOR2_X1 U296 ( .A(n316), .B(keyinput16), .Z(n315) );
  NAND2_X1 U297 ( .A1(n231), .A2(G56gat), .ZN(n316) );
  XNOR2_X1 U298 ( .A(keyinput17), .B(G66gat), .ZN(n231) );
  XNOR2_X1 U299 ( .A(keyinput4), .B(keyinput28), .ZN(n311) );
  XOR2_X1 U300 ( .A(G329gat), .B(n317), .Z(n309) );
  XOR2_X1 U301 ( .A(keyinput30), .B(n318), .Z(n317) );
  NOR2_X1 U302 ( .A1(n319), .A2(n320), .ZN(n307) );
  XOR2_X1 U303 ( .A(n321), .B(keyinput11), .Z(n320) );
  NAND2_X1 U304 ( .A1(n322), .A2(n323), .ZN(n321) );
  XOR2_X1 U305 ( .A(n225), .B(G223gat), .Z(n323) );
  XOR2_X1 U306 ( .A(n324), .B(n325), .Z(n322) );
  XNOR2_X1 U307 ( .A(keyinput54), .B(keyinput25), .ZN(n325) );
  OR2_X1 U308 ( .A1(n326), .A2(G92gat), .ZN(n324) );
  XOR2_X1 U309 ( .A(G329gat), .B(n327), .Z(n319) );
  XOR2_X1 U310 ( .A(keyinput2), .B(n328), .Z(n327) );
  NOR4_X1 U311 ( .A1(G27gat), .A2(n329), .A3(n330), .A4(n331), .ZN(n306) );
  NOR2_X1 U312 ( .A1(n255), .A2(n332), .ZN(n329) );
  NAND4_X1 U313 ( .A1(n257), .A2(G30gat), .A3(n333), .A4(n334), .ZN(n271) );
  OR2_X1 U314 ( .A1(n335), .A2(n255), .ZN(n334) );
  XNOR2_X1 U315 ( .A(keyinput22), .B(G40gat), .ZN(n257) );
  OR4_X1 U316 ( .A1(n336), .A2(n337), .A3(n249), .A4(G115gat), .ZN(n270) );
  XOR2_X1 U317 ( .A(n255), .B(n338), .Z(n336) );
  XNOR2_X1 U318 ( .A(n339), .B(keyinput19), .ZN(n338) );
  INV_X1 U319 ( .A(n255), .ZN(G329gat) );
  OR4_X1 U320 ( .A1(n342), .A2(n292), .A3(n335), .A4(n332), .ZN(n341) );
  XOR2_X1 U321 ( .A(keyinput44), .B(n343), .Z(n332) );
  NOR3_X1 U322 ( .A1(n330), .A2(G21gat), .A3(n331), .ZN(n343) );
  XOR2_X1 U323 ( .A(n344), .B(G223gat), .Z(n331) );
  XNOR2_X1 U324 ( .A(G17gat), .B(keyinput59), .ZN(n330) );
  XNOR2_X1 U325 ( .A(n345), .B(n346), .ZN(n335) );
  XOR2_X1 U326 ( .A(keyinput43), .B(keyinput15), .Z(n346) );
  NAND3_X1 U327 ( .A1(G30gat), .A2(n333), .A3(n254), .ZN(n345) );
  XNOR2_X1 U328 ( .A(keyinput58), .B(G34gat), .ZN(n254) );
  XOR2_X1 U329 ( .A(n347), .B(G223gat), .Z(n333) );
  XNOR2_X1 U330 ( .A(n348), .B(keyinput40), .ZN(n347) );
  XNOR2_X1 U331 ( .A(n349), .B(keyinput60), .ZN(n292) );
  NAND2_X1 U332 ( .A1(n350), .A2(n289), .ZN(n349) );
  XOR2_X1 U333 ( .A(n351), .B(G223gat), .Z(n289) );
  XOR2_X1 U334 ( .A(keyinput57), .B(n352), .Z(n350) );
  NOR2_X1 U335 ( .A1(G99gat), .A2(n353), .ZN(n352) );
  NOR3_X1 U336 ( .A1(n304), .A2(G47gat), .A3(n302), .ZN(n342) );
  XOR2_X1 U337 ( .A(n354), .B(n226), .Z(n302) );
  INV_X1 U338 ( .A(G43gat), .ZN(n304) );
  OR3_X1 U339 ( .A1(n339), .A2(n318), .A3(n296), .ZN(n340) );
  NOR3_X1 U340 ( .A1(n299), .A2(G8gat), .A3(n268), .ZN(n296) );
  INV_X1 U341 ( .A(G4gat), .ZN(n268) );
  XOR2_X1 U342 ( .A(n355), .B(G223gat), .Z(n299) );
  NOR2_X1 U343 ( .A1(n356), .A2(n314), .ZN(n318) );
  XNOR2_X1 U344 ( .A(n357), .B(n226), .ZN(n314) );
  XNOR2_X1 U345 ( .A(n358), .B(n359), .ZN(n356) );
  XNOR2_X1 U346 ( .A(keyinput32), .B(keyinput3), .ZN(n359) );
  NAND2_X1 U347 ( .A1(n360), .A2(G56gat), .ZN(n358) );
  XNOR2_X1 U348 ( .A(G60gat), .B(keyinput12), .ZN(n360) );
  NOR3_X1 U349 ( .A1(n337), .A2(n249), .A3(n250), .ZN(n339) );
  XOR2_X1 U350 ( .A(keyinput42), .B(G112gat), .Z(n250) );
  XOR2_X1 U351 ( .A(n361), .B(n362), .Z(n337) );
  XOR2_X1 U352 ( .A(n247), .B(G223gat), .Z(n362) );
  XNOR2_X1 U353 ( .A(keyinput6), .B(keyinput50), .ZN(n361) );
  NOR3_X1 U354 ( .A1(n363), .A2(G86gat), .A3(n326), .ZN(n328) );
  XOR2_X1 U355 ( .A(n225), .B(n226), .Z(n363) );
  INV_X1 U356 ( .A(G223gat), .ZN(n226) );
  NOR2_X1 U357 ( .A1(n282), .A2(G73gat), .ZN(n284) );
  NAND2_X1 U358 ( .A1(n364), .A2(n215), .ZN(n282) );
  XOR2_X1 U359 ( .A(n365), .B(G223gat), .Z(n364) );
  NAND4_X1 U360 ( .A1(n351), .A2(n365), .A3(n367), .A4(n368), .ZN(n366) );
  NOR4_X1 U361 ( .A1(n357), .A2(n355), .A3(n348), .A4(n344), .ZN(n368) );
  XNOR2_X1 U362 ( .A(n369), .B(keyinput0), .ZN(n344) );
  NAND2_X1 U363 ( .A1(n370), .A2(G17gat), .ZN(n369) );
  XOR2_X1 U364 ( .A(n371), .B(n372), .Z(n370) );
  XOR2_X1 U365 ( .A(keyinput1), .B(G11gat), .Z(n372) );
  XNOR2_X1 U366 ( .A(keyinput26), .B(keyinput21), .ZN(n371) );
  XNOR2_X1 U367 ( .A(n373), .B(keyinput20), .ZN(n348) );
  NAND2_X1 U368 ( .A1(G30gat), .A2(n374), .ZN(n373) );
  INV_X1 U369 ( .A(G24gat), .ZN(n374) );
  XOR2_X1 U370 ( .A(n267), .B(n375), .Z(n355) );
  XOR2_X1 U371 ( .A(keyinput55), .B(keyinput23), .Z(n375) );
  AND2_X1 U372 ( .A1(n376), .A2(G4gat), .ZN(n267) );
  XNOR2_X1 U373 ( .A(keyinput48), .B(G1gat), .ZN(n376) );
  XNOR2_X1 U374 ( .A(n377), .B(keyinput10), .ZN(n357) );
  NAND2_X1 U375 ( .A1(G56gat), .A2(n378), .ZN(n377) );
  INV_X1 U376 ( .A(G50gat), .ZN(n378) );
  AND3_X1 U377 ( .A1(n354), .A2(n247), .A3(n225), .ZN(n367) );
  OR2_X1 U378 ( .A1(G76gat), .A2(n326), .ZN(n225) );
  INV_X1 U379 ( .A(G82gat), .ZN(n326) );
  OR2_X1 U380 ( .A1(G102gat), .A2(n249), .ZN(n247) );
  XNOR2_X1 U381 ( .A(keyinput29), .B(G108gat), .ZN(n249) );
  NAND2_X1 U382 ( .A1(n379), .A2(G43gat), .ZN(n354) );
  XNOR2_X1 U383 ( .A(G37gat), .B(keyinput37), .ZN(n379) );
  NAND2_X1 U384 ( .A1(n380), .A2(n215), .ZN(n365) );
  XNOR2_X1 U385 ( .A(n381), .B(G69gat), .ZN(n215) );
  XNOR2_X1 U386 ( .A(keyinput51), .B(keyinput36), .ZN(n381) );
  XNOR2_X1 U387 ( .A(G63gat), .B(keyinput33), .ZN(n380) );
  XOR2_X1 U388 ( .A(n382), .B(keyinput53), .Z(n351) );
  OR2_X1 U389 ( .A1(n353), .A2(G89gat), .ZN(n382) );
  INV_X1 U390 ( .A(G95gat), .ZN(n353) );
endmodule

