// DUT verilog module
module c432_xor8(dut_inputs, dut_outputs);
input wire [43:0] dut_inputs;
output wire [6:0] dut_outputs;


wire keyinput0, keyinput1, keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, G102gat, G105gat, 
G108gat, G112gat, G115gat, G11gat, G14gat, G17gat, G1gat, G21gat, G24gat, G27gat, 
G30gat, G34gat, G37gat, G40gat, G43gat, G47gat, G4gat, G50gat, G53gat, G56gat, 
G60gat, G63gat, G66gat, G69gat, G73gat, G76gat, G79gat, G82gat, G86gat, G89gat, 
G8gat, G92gat, G95gat, G99gat, G223gat, G329gat, G370gat, G421gat, G430gat, G431gat, 
G432gat, G118gat, G119gat, G122gat, G123gat, G126gat, G127gat, G130gat, G131gat, G134gat, 
G135gat, G138gat, G139gat, G142gat, G143gat, G146gat, G147gat, G150gat, G151gat, G154gat, 
G157gat, G158gat, G159gat, G162gat, G165gat, G168gat, G171gat, G174gat, G177gat, G180gat, 
G183gat, G184gat, G185gat, G186gat, G187gat, G188gat, xenc1, G189gat, G190gat, G191gat, 
G192gat, G193gat, G194gat, G195gat, G196gat, G197gat, G198gat, xenc0, xenc4, G199gat, 
G203gat, G213gat, G224gat, G227gat, G230gat, G233gat, G236gat, G239gat, G242gat, G243gat, 
G246gat, G247gat, G250gat, G251gat, G254gat, G255gat, G256gat, G257gat, G258gat, G259gat, 
G260gat, G263gat, G264gat, G267gat, G270gat, G273gat, G276gat, G279gat, G282gat, G285gat, 
G288gat, G289gat, G290gat, G291gat, G292gat, G293gat, G294gat, G295gat, xenc3, G296gat, 
G300gat, G301gat, G302gat, G303gat, G304gat, G305gat, G306gat, G307gat, G308gat, G309gat, 
G319gat, G330gat, G331gat, G332gat, G333gat, G334gat, G335gat, G336gat, G337gat, G338gat, 
G339gat, G340gat, G341gat, G342gat, G343gat, G344gat, G345gat, G346gat, G347gat, G348gat, 
G349gat, G350gat, G351gat, G352gat, G353gat, G354gat, xenc6, G355gat, G356gat, xenc7, 
G357gat, G360gat, G371gat, G372gat, G373gat, G374gat, G375gat, G376gat, G377gat, G378gat, 
G379gat, G380gat, G381gat, G386gat, G393gat, G399gat, G404gat, G407gat, G411gat, G414gat, 
G415gat, xenc5, xenc2, G416gat, G417gat, G418gat, G419gat, G420gat, G422gat, G425gat, 
G428gat, G429gat;


assign keyinput0 = dut_inputs[0];
assign keyinput1 = dut_inputs[1];
assign keyinput2 = dut_inputs[2];
assign keyinput3 = dut_inputs[3];
assign keyinput4 = dut_inputs[4];
assign keyinput5 = dut_inputs[5];
assign keyinput6 = dut_inputs[6];
assign keyinput7 = dut_inputs[7];
assign G102gat = dut_inputs[8];
assign G105gat = dut_inputs[9];
assign G108gat = dut_inputs[10];
assign G112gat = dut_inputs[11];
assign G115gat = dut_inputs[12];
assign G11gat = dut_inputs[13];
assign G14gat = dut_inputs[14];
assign G17gat = dut_inputs[15];
assign G1gat = dut_inputs[16];
assign G21gat = dut_inputs[17];
assign G24gat = dut_inputs[18];
assign G27gat = dut_inputs[19];
assign G30gat = dut_inputs[20];
assign G34gat = dut_inputs[21];
assign G37gat = dut_inputs[22];
assign G40gat = dut_inputs[23];
assign G43gat = dut_inputs[24];
assign G47gat = dut_inputs[25];
assign G4gat = dut_inputs[26];
assign G50gat = dut_inputs[27];
assign G53gat = dut_inputs[28];
assign G56gat = dut_inputs[29];
assign G60gat = dut_inputs[30];
assign G63gat = dut_inputs[31];
assign G66gat = dut_inputs[32];
assign G69gat = dut_inputs[33];
assign G73gat = dut_inputs[34];
assign G76gat = dut_inputs[35];
assign G79gat = dut_inputs[36];
assign G82gat = dut_inputs[37];
assign G86gat = dut_inputs[38];
assign G89gat = dut_inputs[39];
assign G8gat = dut_inputs[40];
assign G92gat = dut_inputs[41];
assign G95gat = dut_inputs[42];
assign G99gat = dut_inputs[43];
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
nand g18 (G154gat, G4gat, G118gat);
nor g19 (G157gat, G8gat, G119gat);
nor g20 (G158gat, G119gat, G14gat);
nand g21 (G159gat, G122gat, G17gat);
nand g22 (G162gat, G30gat, G126gat);
nand g23 (G165gat, G130gat, G43gat);
nand g24 (G168gat, G134gat, G56gat);
nand g25 (G171gat, G138gat, G69gat);
nand g26 (G174gat, G142gat, G82gat);
nand g27 (G177gat, G146gat, G95gat);
nand g28 (G180gat, G108gat, G150gat);
nor g29 (G183gat, G21gat, G123gat);
nor g30 (G184gat, G123gat, G27gat);
nor g31 (G185gat, G34gat, G127gat);
nor g32 (G186gat, G127gat, G40gat);
nor g33 (G187gat, G47gat, G131gat);
nor g34 (G188gat, G131gat, G53gat);
nor g35 (G189gat, xenc1, G60gat);
nor g36 (G190gat, G66gat, xenc1);
nor g37 (G191gat, G73gat, G139gat);
nor g38 (G192gat, G139gat, G79gat);
nor g39 (G193gat, G143gat, G86gat);
nor g40 (G194gat, G92gat, G143gat);
nor g41 (G195gat, G147gat, G99gat);
nor g42 (G196gat, G105gat, G147gat);
nor g43 (G197gat, G112gat, G151gat);
nor g44 (G198gat, G115gat, G151gat);
and g45 (G199gat, G162gat, xenc4, G165gat, G171gat, G154gat, G177gat, G180gat, G159gat, xenc0);
not g46 (G203gat, G199gat);
not g47 (G213gat, G199gat);
not g48 (G223gat, G199gat);
xor g49 (G224gat, G154gat, G203gat);
xor g50 (G227gat, G203gat, G159gat);
xor g51 (G230gat, G162gat, G203gat);
xor g52 (G233gat, G165gat, G203gat);
xor g53 (G236gat, G203gat, xenc0);
xor g54 (G239gat, G203gat, G171gat);
nand g55 (G242gat, G1gat, G213gat);
xor g56 (G243gat, xenc4, G203gat);
nand g57 (G246gat, G213gat, G11gat);
xor g58 (G247gat, G177gat, G203gat);
nand g59 (G250gat, G24gat, G213gat);
xor g60 (G251gat, G203gat, G180gat);
nand g61 (G254gat, G213gat, G37gat);
nand g62 (G255gat, G50gat, G213gat);
nand g63 (G256gat, G213gat, G63gat);
nand g64 (G257gat, G76gat, G213gat);
nand g65 (G258gat, G213gat, G89gat);
nand g66 (G259gat, G102gat, G213gat);
nand g67 (G260gat, G224gat, G157gat);
nand g68 (G263gat, G224gat, G158gat);
nand g69 (G264gat, G227gat, G183gat);
nand g70 (G267gat, G185gat, G230gat);
nand g71 (G270gat, G187gat, G233gat);
nand g72 (G273gat, G236gat, G189gat);
nand g73 (G276gat, G239gat, G191gat);
nand g74 (G279gat, G193gat, G243gat);
nand g75 (G282gat, G247gat, G195gat);
nand g76 (G285gat, G197gat, G251gat);
nand g77 (G288gat, G184gat, G227gat);
nand g78 (G289gat, G186gat, G230gat);
nand g79 (G290gat, G188gat, G233gat);
nand g80 (G291gat, G236gat, G190gat);
nand g81 (G292gat, G192gat, G239gat);
nand g82 (G293gat, G194gat, G243gat);
nand g83 (G294gat, G196gat, G247gat);
nand g84 (G295gat, G198gat, G251gat);
and g85 (G296gat, G264gat, xenc3, G267gat, G270gat, G273gat, G282gat, G279gat, G260gat, G285gat);
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
xor g98 (G330gat, G260gat, G309gat);
xor g99 (G331gat, G264gat, G309gat);
xor g100 (G332gat, G267gat, G309gat);
xor g101 (G333gat, G270gat, G309gat);
nand g102 (G334gat, G8gat, G319gat);
xor g103 (G335gat, G309gat, G273gat);
nand g104 (G336gat, G21gat, G319gat);
xor g105 (G337gat, xenc3, G309gat);
nand g106 (G338gat, G34gat, G319gat);
xor g107 (G339gat, G279gat, G309gat);
nand g108 (G340gat, G47gat, G319gat);
xor g109 (G341gat, G282gat, G309gat);
nand g110 (G342gat, G60gat, G319gat);
xor g111 (G343gat, G309gat, G285gat);
nand g112 (G344gat, G73gat, G319gat);
nand g113 (G345gat, G86gat, G319gat);
nand g114 (G346gat, G99gat, G319gat);
nand g115 (G347gat, G112gat, G319gat);
nand g116 (G348gat, G330gat, G300gat);
nand g117 (G349gat, G331gat, G301gat);
nand g118 (G350gat, G332gat, G302gat);
nand g119 (G351gat, G333gat, G303gat);
nand g120 (G352gat, G304gat, G335gat);
nand g121 (G353gat, G337gat, G305gat);
nand g122 (G354gat, G339gat, G306gat);
nand g123 (G355gat, G307gat, xenc6);
nand g124 (G356gat, G308gat, G343gat);
and g125 (G357gat, xenc7, G350gat, G351gat, G352gat, G353gat, G354gat, G355gat, G348gat, G356gat);
not g126 (G360gat, G357gat);
not g127 (G370gat, G357gat);
nand g128 (G371gat, G360gat, G14gat);
nand g129 (G372gat, G27gat, G360gat);
nand g130 (G373gat, G360gat, G40gat);
nand g131 (G374gat, G53gat, G360gat);
nand g132 (G375gat, G66gat, G360gat);
nand g133 (G376gat, G79gat, G360gat);
nand g134 (G377gat, G92gat, G360gat);
nand g135 (G378gat, G105gat, G360gat);
nand g136 (G379gat, G115gat, G360gat);
nand g137 (G380gat, G4gat, G242gat, G334gat, G371gat);
nand g138 (G381gat, G246gat, G372gat, G336gat, G17gat);
nand g139 (G386gat, G30gat, G338gat, G373gat, G250gat);
nand g140 (G393gat, G254gat, G43gat, G374gat, G340gat);
nand g141 (G399gat, G255gat, G56gat, G342gat, G375gat);
nand g142 (G404gat, G376gat, G256gat, G344gat, G69gat);
nand g143 (G407gat, G345gat, G377gat, G82gat, G257gat);
nand g144 (G411gat, G258gat, G346gat, G95gat, G378gat);
nand g145 (G414gat, G259gat, G347gat, G108gat, G379gat);
not g146 (G415gat, G380gat);
and g147 (G416gat, G399gat, G404gat, xenc5, G414gat, G381gat, G386gat, xenc2, G393gat);
not g148 (G417gat, G393gat);
not g149 (G418gat, G404gat);
not g150 (G419gat, xenc5);
not g151 (G420gat, xenc2);
nor g152 (G421gat, G415gat, G416gat);
nand g153 (G422gat, G417gat, G386gat);
nand g154 (G425gat, G399gat, G418gat, G386gat, G393gat);
nand g155 (G428gat, G399gat, G419gat, G393gat);
nand g156 (G429gat, G420gat, G386gat, xenc5, G393gat);
nand g157 (G430gat, G399gat, G422gat, G381gat, G386gat);
nand g158 (G431gat, G381gat, G425gat, G386gat, G428gat);
nand g159 (G432gat, G429gat, G422gat, G381gat, G425gat);
xor g160 (xenc0, keyinput0, G168gat);
xor g161 (xenc1, keyinput1, G135gat);
xor g162 (xenc2, keyinput2, G411gat);
xor g163 (xenc3, G276gat, keyinput3);
xor g164 (xenc4, G174gat, keyinput4);
xor g165 (xenc5, G407gat, keyinput5);
xor g166 (xenc6, G341gat, keyinput6);
xor g167 (xenc7, G349gat, keyinput7);

endmodule
