// Verilog File 
module cir (inter0 , in0 , keyinput0 , in1 , keyinput1 , in2 , keyinput2 , in3 , 
keyinput3 , in4 , keyinput4 , in5 , keyinput5 , in6 , keyinput6 , in7 , keyinput7 , in8 , 
keyinput8 , in9 , keyinput9 , in10 , keyinput10 , in11 , keyinput11 , in12 , keyinput12 , in13 , 
keyinput13 , in14 , keyinput14 , in15 , keyinput15 ) ;

input in0 , keyinput0 , in1 , keyinput1 , in2 , keyinput2 , in3 , keyinput3 , 
in4 , keyinput4 , in5 , keyinput5 , in6 , keyinput6 , in7 , keyinput7 , in8 , keyinput8 , 
in9 , keyinput9 , in10 , keyinput10 , in11 , keyinput11 , in12 , keyinput12 , in13 , keyinput13 , 
in14 , keyinput14 , in15 , keyinput15 ;

output inter0 ;

wire in0xor , in1xor , in2xor , in3xor , in4xor , in5xor , in6xor , in7xor , 
in8xor , in9xor , in10xor , in11xor , in12xor , in13xor , in14xor , in15xor , inter14 , inter13 , 
inter12 , inter11 , inter10 , inter9 , inter8 , inter7 , inter6 , inter5 , inter4 , inter3 , 
inter2 , inter1 ;

and andgate14(inter14 , in0xor , in1xor ) ;
and andgate13(inter13 , in2xor , in3xor ) ;
and andgate12(inter12 , in4xor , in5xor ) ;
and andgate11(inter11 , in6xor , in7xor ) ;
and andgate10(inter10 , in8xor , in9xor ) ;
and andgate9(inter9 , in10xor , in11xor ) ;
and andgate8(inter8 , in12xor , in13xor ) ;
and andgate7(inter7 , in14xor , in15xor ) ;
and andgate6(inter6 , inter14 , inter13 ) ;
and andgate5(inter5 , inter12 , inter11 ) ;
and andgate4(inter4 , inter10 , inter9 ) ;
and andgate3(inter3 , inter8 , inter7 ) ;
and andgate2(inter2 , inter6 , inter5 ) ;
and andgate1(inter1 , inter4 , inter3 ) ;
and andgate0(inter0 , inter2 , inter1 ) ;
xnor xor_0(in0xor , in0 , keyinput0 ) ;
xnor xor_1(in1xor , in1 , keyinput1 ) ;
xnor xor_2(in2xor , in2 , keyinput2 ) ;
xnor xor_3(in3xor , in3 , keyinput3 ) ;
xnor xor_4(in4xor , in4 , keyinput4 ) ;
xnor xor_5(in5xor , in5 , keyinput5 ) ;
xnor xor_6(in6xor , in6 , keyinput6 ) ;
xnor xor_7(in7xor , in7 , keyinput7 ) ;
xnor xor_8(in8xor , in8 , keyinput8 ) ;
xnor xor_9(in9xor , in9 , keyinput9 ) ;
xnor xor_10(in10xor , in10 , keyinput10 ) ;
xnor xor_11(in11xor , in11 , keyinput11 ) ;
xnor xor_12(in12xor , in12 , keyinput12 ) ;
xnor xor_13(in13xor , in13 , keyinput13 ) ;
xnor xor_14(in14xor , in14 , keyinput14 ) ;
xnor xor_15(in15xor , in15 , keyinput15 ) ;
endmodule
