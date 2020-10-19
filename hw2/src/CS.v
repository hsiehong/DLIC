`timescale 1ns/10ps
module CS(Y, X, reset, clk);

input clk, reset; 
input 	[7:0] X;
output 	[9:0] Y;

wire [11:0] sum;//sum of nine numbers
wire [7:0] avg;
wire [7:0] xappr [7:0];//temporary result when comparing
reg [11:0] tempSum;//
reg [8:0] lta; //less than or equal to average , 1 for true , 9 numbers
wire [8:0] lta2;//record winner is less than average or not , 8 comparison sets
reg [7:0] buffer [8:0];//store inupt
integer i;

assign sum = tempSum - {4'b0,buffer[8]} + {4'b0,X};
assign avg = sum/9;
assign Y = ({1'b0,tempSum} + {2'b0,xappr[7],3'b0} + {5'b0,xappr[7]}) >> 3;
			//sum of nine numbers div 8
			//not directory shift right , cause it will maybe overflow

cmp c1(lta[0],lta[1],buffer[0],buffer[1],lta2[0],xappr[0]);
cmp c2(lta[2],lta[3],buffer[2],buffer[3],lta2[1],xappr[1]);
cmp c3(lta[4],lta[5],buffer[4],buffer[5],lta2[2],xappr[2]);
cmp c4(lta[6],lta[7],buffer[6],buffer[7],lta2[3],xappr[3]);
cmp c5(lta2[0],lta2[1],xappr[0],xappr[1],lta2[4],xappr[4]);
cmp c6(lta2[2],lta2[3],xappr[2],xappr[3],lta2[5],xappr[5]);
cmp c7(lta2[4],lta2[5],xappr[4],xappr[5],lta2[6],xappr[6]);
cmp c8(lta2[6],lta[8],xappr[6],buffer[8],lta2[7],xappr[7]);

always@(posedge clk or posedge reset)begin
	if(reset)begin
		for(i=0;i<9;i=i+1)begin
			buffer[i] <= 8'b0;
			lta[i] <= 0;
		end
		tempSum <= 0;
	end
	else begin
		for(i=1;i<9;i=i+1)begin
			buffer[i] <= buffer[i-1];
			lta[i] <= (buffer[i-1] <= avg)?1:0;
		end
		buffer[0] <= X;
		lta[0] <= (X <= avg)?1:0;
		tempSum <= sum;
	end
end
endmodule

module cmp(flag1,flag2,in1,in2,resFlag,win);
	input flag1,flag2;
	input [7:0] in1,in2;
	output resFlag;
	output reg [7:0] win;

	assign resFlag = flag1|flag2;
	always@(*)begin
		case({flag1,flag2})
			2'b00:begin
				win = 8'b0;
			end
			2'b01:begin
				win = in2;
			end
			2'b10:begin
				win = in1;
			end
			2'b11:begin
				win = (in1>in2)?in1:in2;
			end
		endcase
	end
endmodule
