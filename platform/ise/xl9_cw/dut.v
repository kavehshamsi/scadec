// DUT verilog module
module c432_enc(dut_inputs, dut_outputs);
input wire [45:0] dut_inputs;
output wire [6:0] dut_outputs;


 (* S = "true" *) wire G1gat, G4gat, G8gat, G11gat, G14gat, G17gat, G21gat, G24gat, G27gat, G30gat, 
G34gat, G37gat, G40gat, G43gat, G47gat, G50gat, G53gat, G56gat, G60gat, G63gat, 
G66gat, G69gat, G73gat, G76gat, G79gat, G82gat, G86gat, G89gat, G92gat, G95gat, 
G99gat, G102gat, G105gat, G108gat, G112gat, G115gat, keyinput0, keyinput1, keyinput2, keyinput3, 
keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, G223gat, G329gat, G370gat, G421gat, 
G430gat, G431gat, G432gat, G118gat, G119gat, G122gat, G123gat, G126gat, G127gat, G130gat, 
G131gat, G134gat, G135gat, G138gat, G139gat, G142gat, G143gat, G146gat, G147gat, G150gat, 
G151gat, G154gat, G157gat, G158gat, G159gat, G162gat, G165gat, G168gat, G171gat, G174gat, 
G177gat, G180gat, G183gat, G184gat, G185gat, G186gat, G187gat, G188gat, xenc2, G189gat, 
G190gat, G191gat, G192gat, G193gat, G194gat, G195gat, G196gat, G197gat, G198gat, xenc9, 
G199gat, G203gat, G213gat, G224gat, G227gat, G230gat, G233gat, G236gat, G239gat, G242gat, 
G243gat, G246gat, G247gat, G250gat, G251gat, G254gat, G255gat, G256gat, G257gat, G258gat, 
G259gat, G260gat, G263gat, G264gat, G267gat, G270gat, G273gat, G276gat, G279gat, G282gat, 
xenc5, G285gat, G288gat, G289gat, xenc3, G290gat, G291gat, G292gat, G293gat, G294gat, 
G295gat, xenc6, G296gat, G300gat, G301gat, G302gat, G303gat, G304gat, G305gat, G306gat, 
G307gat, G308gat, G309gat, G319gat, G330gat, G331gat, G332gat, G333gat, G334gat, G335gat, 
G336gat, G337gat, G338gat, G339gat, G340gat, G341gat, G342gat, G343gat, G344gat, G345gat, 
G346gat, G347gat, G348gat, G349gat, G350gat, G351gat, G352gat, G353gat, G354gat, G355gat, 
xenc8, G356gat, xenc1, G357gat, G360gat, G371gat, G372gat, G373gat, G374gat, G375gat, 
G376gat, G377gat, G378gat, G379gat, G380gat, xenc0, G381gat, G386gat, G393gat, G399gat, 
G404gat, xenc7, G407gat, xenc4, G411gat, G414gat, G415gat, G416gat, G417gat, G418gat, 
G419gat, G420gat, G422gat, G425gat, G428gat, G429gat;


assign G1gat = dut_inputs[0];
assign G4gat = dut_inputs[1];
assign G8gat = dut_inputs[2];
assign G11gat = dut_inputs[3];
assign G14gat = dut_inputs[4];
assign G17gat = dut_inputs[5];
assign G21gat = dut_inputs[6];
assign G24gat = dut_inputs[7];
assign G27gat = dut_inputs[8];
assign G30gat = dut_inputs[9];
assign G34gat = dut_inputs[10];
assign G37gat = dut_inputs[11];
assign G40gat = dut_inputs[12];
assign G43gat = dut_inputs[13];
assign G47gat = dut_inputs[14];
assign G50gat = dut_inputs[15];
assign G53gat = dut_inputs[16];
assign G56gat = dut_inputs[17];
assign G60gat = dut_inputs[18];
assign G63gat = dut_inputs[19];
assign G66gat = dut_inputs[20];
assign G69gat = dut_inputs[21];
assign G73gat = dut_inputs[22];
assign G76gat = dut_inputs[23];
assign G79gat = dut_inputs[24];
assign G82gat = dut_inputs[25];
assign G86gat = dut_inputs[26];
assign G89gat = dut_inputs[27];
assign G92gat = dut_inputs[28];
assign G95gat = dut_inputs[29];
assign G99gat = dut_inputs[30];
assign G102gat = dut_inputs[31];
assign G105gat = dut_inputs[32];
assign G108gat = dut_inputs[33];
assign G112gat = dut_inputs[34];
assign G115gat = dut_inputs[35];
assign keyinput0 = dut_inputs[36];
assign keyinput1 = dut_inputs[37];
assign keyinput2 = dut_inputs[38];
assign keyinput3 = dut_inputs[39];
assign keyinput4 = dut_inputs[40];
assign keyinput5 = dut_inputs[41];
assign keyinput6 = dut_inputs[42];
assign keyinput7 = dut_inputs[43];
assign keyinput8 = dut_inputs[44];
assign keyinput9 = dut_inputs[45];
assign dut_outputs[0] = G223gat;
assign dut_outputs[1] = G329gat;
assign dut_outputs[2] = G370gat;
assign dut_outputs[3] = G421gat;
assign dut_outputs[4] = G430gat;
assign dut_outputs[5] = G431gat;
assign dut_outputs[6] = G432gat;
not g0 (G118gat, G1gat);
not g1 (G119gat, G4gat);
not g2 (G122gat, G11gat);
not g3 (G123gat, G17gat);
not g4 (G126gat, G24gat);
not g5 (G127gat, G30gat);
not g6 (G130gat, G37gat);
not g7 (G131gat, G43gat);
not g8 (G134gat, G50gat);
not g9 (G135gat, G56gat);
not g10 (G138gat, G63gat);
not g11 (G139gat, G69gat);
not g12 (G142gat, G76gat);
not g13 (G143gat, G82gat);
not g14 (G146gat, G89gat);
not g15 (G147gat, G95gat);
not g16 (G150gat, G102gat);
not g17 (G151gat, G108gat);
nand g18 (G154gat, G118gat, G4gat);
nor g19 (G157gat, G8gat, G119gat);
nor g20 (G158gat, G14gat, G119gat);
nand g21 (G159gat, G122gat, G17gat);
nand g22 (G162gat, G126gat, G30gat);
nand g23 (G165gat, G130gat, G43gat);
nand g24 (G168gat, G134gat, G56gat);
nand g25 (G171gat, G138gat, G69gat);
nand g26 (G174gat, G142gat, G82gat);
nand g27 (G177gat, G146gat, G95gat);
nand g28 (G180gat, G150gat, G108gat);
nor g29 (G183gat, G21gat, G123gat);
nor g30 (G184gat, G27gat, G123gat);
nor g31 (G185gat, G34gat, G127gat);
nor g32 (G186gat, G40gat, G127gat);
nor g33 (G187gat, G47gat, G131gat);
nor g34 (G188gat, G53gat, G131gat);
nor g35 (G189gat, G60gat, xenc2);
nor g36 (G190gat, G66gat, xenc2);
nor g37 (G191gat, G73gat, G139gat);
nor g38 (G192gat, G79gat, G139gat);
nor g39 (G193gat, G86gat, G143gat);
nor g40 (G194gat, G92gat, G143gat);
nor g41 (G195gat, G99gat, G147gat);
nor g42 (G196gat, G105gat, G147gat);
nor g43 (G197gat, G112gat, G151gat);
nor g44 (G198gat, G115gat, G151gat);
and g45 (G199gat, G154gat, G159gat, xenc9, G165gat, G168gat, G171gat, G174gat, G177gat, G180gat);
not g46 (G203gat, G199gat);
not g47 (G213gat, G199gat);
not g48 (G223gat, G199gat);
xor g49 (G224gat, G203gat, G154gat);
xor g50 (G227gat, G203gat, G159gat);
xor g51 (G230gat, G203gat, xenc9);
xor g52 (G233gat, G203gat, G165gat);
xor g53 (G236gat, G203gat, G168gat);
xor g54 (G239gat, G203gat, G171gat);
nand g55 (G242gat, G1gat, G213gat);
xor g56 (G243gat, G203gat, G174gat);
nand g57 (G246gat, G213gat, G11gat);
xor g58 (G247gat, G203gat, G177gat);
nand g59 (G250gat, G213gat, G24gat);
xor g60 (G251gat, G203gat, G180gat);
nand g61 (G254gat, G213gat, G37gat);
nand g62 (G255gat, G213gat, G50gat);
nand g63 (G256gat, G213gat, G63gat);
nand g64 (G257gat, G213gat, G76gat);
nand g65 (G258gat, G213gat, G89gat);
nand g66 (G259gat, G213gat, G102gat);
nand g67 (G260gat, G224gat, G157gat);
nand g68 (G263gat, G224gat, G158gat);
nand g69 (G264gat, G227gat, G183gat);
nand g70 (G267gat, G230gat, G185gat);
nand g71 (G270gat, G233gat, G187gat);
nand g72 (G273gat, G236gat, G189gat);
nand g73 (G276gat, G239gat, G191gat);
nand g74 (G279gat, G243gat, G193gat);
nand g75 (G282gat, G247gat, G195gat);
nand g76 (G285gat, xenc5, G197gat);
nand g77 (G288gat, G227gat, G184gat);
nand g78 (G289gat, G230gat, G186gat);
nand g79 (G290gat, G233gat, xenc3);
nand g80 (G291gat, G236gat, G190gat);
nand g81 (G292gat, G239gat, G192gat);
nand g82 (G293gat, G243gat, G194gat);
nand g83 (G294gat, G247gat, G196gat);
nand g84 (G295gat, xenc5, G198gat);
and g85 (G296gat, G260gat, G264gat, G267gat, G270gat, G273gat, G276gat, G279gat, xenc6, G285gat);
not g86 (G300gat, G263gat);
not g87 (G301gat, G288gat);
not g88 (G302gat, G289gat);
not g89 (G303gat, G290gat);
not g90 (G304gat, G291gat);
not g91 (G305gat, G292gat);
not g92 (G306gat, G293gat);
not g93 (G307gat, G294gat);
not g94 (G308gat, G295gat);
not g95 (G309gat, G296gat);
not g96 (G319gat, G296gat);
not g97 (G329gat, G296gat);
xor g98 (G330gat, G309gat, G260gat);
xor g99 (G331gat, G309gat, G264gat);
xor g100 (G332gat, G309gat, G267gat);
xor g101 (G333gat, G309gat, G270gat);
nand g102 (G334gat, G8gat, G319gat);
xor g103 (G335gat, G309gat, G273gat);
nand g104 (G336gat, G319gat, G21gat);
xor g105 (G337gat, G309gat, G276gat);
nand g106 (G338gat, G319gat, G34gat);
xor g107 (G339gat, G309gat, G279gat);
nand g108 (G340gat, G319gat, G47gat);
xor g109 (G341gat, G309gat, xenc6);
nand g110 (G342gat, G319gat, G60gat);
xor g111 (G343gat, G309gat, G285gat);
nand g112 (G344gat, G319gat, G73gat);
nand g113 (G345gat, G319gat, G86gat);
nand g114 (G346gat, G319gat, G99gat);
nand g115 (G347gat, G319gat, G112gat);
nand g116 (G348gat, G330gat, G300gat);
nand g117 (G349gat, G331gat, G301gat);
nand g118 (G350gat, G332gat, G302gat);
nand g119 (G351gat, G333gat, G303gat);
nand g120 (G352gat, G335gat, G304gat);
nand g121 (G353gat, G337gat, G305gat);
nand g122 (G354gat, G339gat, G306gat);
nand g123 (G355gat, G341gat, G307gat);
nand g124 (G356gat, xenc8, G308gat);
and g125 (G357gat, G348gat, G349gat, G350gat, G351gat, xenc1, G353gat, G354gat, G355gat, G356gat);
not g126 (G360gat, G357gat);
not g127 (G370gat, G357gat);
nand g128 (G371gat, G14gat, G360gat);
nand g129 (G372gat, G360gat, G27gat);
nand g130 (G373gat, G360gat, G40gat);
nand g131 (G374gat, G360gat, G53gat);
nand g132 (G375gat, G360gat, G66gat);
nand g133 (G376gat, G360gat, G79gat);
nand g134 (G377gat, G360gat, G92gat);
nand g135 (G378gat, G360gat, G105gat);
nand g136 (G379gat, G360gat, G115gat);
nand g137 (G380gat, G4gat, G242gat, G334gat, G371gat);
nand g138 (G381gat, xenc0, G336gat, G372gat, G17gat);
nand g139 (G386gat, G250gat, G338gat, G373gat, G30gat);
nand g140 (G393gat, G254gat, G340gat, G374gat, G43gat);
nand g141 (G399gat, G255gat, G342gat, G375gat, G56gat);
nand g142 (G404gat, G256gat, G344gat, G376gat, G69gat);
nand g143 (G407gat, xenc7, G345gat, G377gat, G82gat);
nand g144 (G411gat, xenc4, G346gat, G378gat, G95gat);
nand g145 (G414gat, G259gat, G347gat, G379gat, G108gat);
not g146 (G415gat, G380gat);
and g147 (G416gat, G381gat, G386gat, G393gat, G399gat, G404gat, G407gat, G411gat, G414gat);
not g148 (G417gat, G393gat);
not g149 (G418gat, G404gat);
not g150 (G419gat, G407gat);
not g151 (G420gat, G411gat);
nor g152 (G421gat, G415gat, G416gat);
nand g153 (G422gat, G386gat, G417gat);
nand g154 (G425gat, G386gat, G393gat, G418gat, G399gat);
nand g155 (G428gat, G399gat, G393gat, G419gat);
nand g156 (G429gat, G386gat, G393gat, G407gat, G420gat);
nand g157 (G430gat, G381gat, G386gat, G422gat, G399gat);
nand g158 (G431gat, G381gat, G386gat, G425gat, G428gat);
nand g159 (G432gat, G381gat, G422gat, G425gat, G429gat);
xor g160 (xenc0, G246gat, keyinput0);
xor g161 (xenc1, G352gat, keyinput1);
xor g162 (xenc2, G135gat, keyinput2);
xor g163 (xenc3, G188gat, keyinput3);
xor g164 (xenc4, G258gat, keyinput4);
xor g165 (xenc5, G251gat, keyinput5);
xor g166 (xenc6, G282gat, keyinput6);
xor g167 (xenc7, G257gat, keyinput7);
xor g168 (xenc8, G343gat, keyinput8);
xor g169 (xenc9, G162gat, keyinput9);

endmodule
