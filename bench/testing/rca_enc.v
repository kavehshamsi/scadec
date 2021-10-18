// Verilog File 
module rcav (S1,S2,C2,A1,A2,B1,B2,C0,keyinput0, keyinput1,keyinput2);

input A1,A2,B1,B2,C0,keyinput0, keyinput1, keyinput2;

output S1, S2, C2;

wire x1, and1, and2, C1, x2, and3, and4, xenc0, xenc1, xenc2;

xor g0(x1, A1, B1);
xor g1(xenc0, C0, x1);
and g2(and1, A1, B1);
and g3(and2, x1, C0);
or g4(C1, and1, xenc2);
xor g5(x2, A2, B2);
xor g6(S2, C1, xenc1);
and g7(and3, A2, B2);
and g8(and4, xenc1, C1);
or g9(C2, and3, and4);
xnor encXNOR_25(S1, xenc0, keyinput0);
xnor encXNOR_28(xenc1, x2, keyinput1);
xor encXOR_31(xenc2, and2, keyinput2);
endmodule
