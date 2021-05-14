module fullAdder
(
input[3:0] A,B ,
input Cin ,
output [3:0] Sum ,
output Cout
);
assign {Cout, Sum} = A+B+Cin;
endmodule

module CSA 
(
input [15:0] A1,B1 ,
output Cout ,
output [15:0] Sum
);

wire [3:0] Sum0,Sum1,Sum2,Sum3,Sum4,Sum5;
wire cout1,cout2,cout3,cout4,cout5,cout6,cout7,cout8,cout9;
fullAdder Adder1(A1[3:0],B1[3:0],1'b0,Sum[3:0],cout1);
fullAdder Adder2(A1[7:4],B1[7:4],1'b0,Sum0,cout2);
fullAdder Adder3(A1[7:4],B1[7:4],1'b1,Sum1,cout3);
assign Sum[7:4] = (cout1 == 1'b0) ? Sum0 :(cout1 == 1'b1)?Sum1:1'bx ;
assign cout8 = (cout1==1'b0) ? cout2 : cout3 ;
fullAdder Adder4(A1[11:8],B1[11:8],1'b0,Sum2,cout4);
fullAdder Adder5(A1[11:8],B1[11:8],1'b1,Sum3,cout5);
assign Sum[11:8] = (cout8 == 1'b0) ? Sum2 :(cout8 == 1'b1)?Sum3:1'bx ;
assign cout9 = (cout8==1'b0)?cout4:cout5;
fullAdder Adder6(A1[15:12],B1[15:12],1'b0,Sum4,cout6);
fullAdder Adder7(A1[15:12],B1[15:12],1'b1,Sum5,cout7);
assign Sum[15:12] = (cout9 == 1'b0) ? Sum4 :(cout9 == 1'b1)?Sum5:1'bx ;
assign Cout = (cout9==1'b0)?cout6:cout7;

endmodule
