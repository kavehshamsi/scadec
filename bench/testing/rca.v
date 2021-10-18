module rc_adder(S1, S2, C2, A1, A2, B1, B2, C0);
   output S1, S2, C2;
   input  A1, A2, B1, B2, C0;
   
   wire  x1, and1, and2, C1, x2, and3, and4;
   
   xor gate_0(x1, A1, B1);
   xor gate_2(S1, C0, x1);
   and gate_1(and1, A1, B1);   
   and gate_3(and2, x1, C0); 
   or gate_4(C1, and1, and2);
   xor gate_5(x2, A2, B2);
   xor gate_7(S2, C1, x2);
   and gate_6(and3, A2, B2);   
   and gate_8(and4, x2, C1); 
   or gate_9(C2, and3, and4);
endmodule 
