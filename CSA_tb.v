module CSA_tb();
reg[15:0] a,b ;
wire [15:0]sum;
wire Cout;
CSA carryadder1(a,b,Cout,sum);
initial begin
$display("\t\ta\t\tb\t\tsum\t carry");
$monitor ("%b %b %b %b" ,a ,b ,sum , Cout);

//first case 
a = 16'b1111000000000000;
b = 16'b0000000000000000;

//second case
#10
a = 16'b1111111100000000;
b = 16'b0000000000000000;

//third case 
#10
a = 16'b1111000000000000;
b = 16'b0000000000000001;

//fourth case
#10
a = 16'b1111111100000000;
b = 16'b0000000000000001;

//fifth case
#10
a= 16'b0000000000000000;
b= 16'b0000000000000000;

//sixth case 
#10 
a= 16'b1111111111111111;
b= 16'b1111111111111111;

//seventh case
#10
a=16'b1111111111111111;
b=16'b1111111111111001;

//eighth case
#10
a=16'b0101010101100000;
b=16'b1111111101111111;

//ninth case
#10
a=16'b0000000000000000;
b=16'b1110010100111100;

//tenth case
#10
a=16'b1111000011110000;
b=16'b1111000011110000;


#10 
$finish;
end
endmodule




