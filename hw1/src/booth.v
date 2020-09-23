`timescale 1ns / 10ps
module booth(out, in1, in2);

parameter width = 6;

input  	[width-1:0]   in1; //multiplicand
input  	[width-1:0]   in2; //multiplier
output  [2*width-1:0] out; //product

reg [2*width:0] mul [width:0]; //least significant bit is pseudo bit
reg [2*width:0] tmp;
assign out = mul[width][12:1];
integer i = 32'b0;

always@ (in1 or in2) begin
	mul[0] = {6'b0,in2,1'b0};
	tmp = mul[0];
	for (i = 1; i <= width; i = i + 1) begin
		case({mul[i-1] & 2'b11})
			2'b01 : 
				tmp = mul[i-1] + {in1 , 7'b0};
			2'b10 : 
				tmp = mul[i-1] - {in1 , 7'b0};
			default : 
				tmp = mul[i-1];
		endcase
		mul[i] = tmp >> 1;
		mul[i][12] = tmp[12] ? 1 : 0; // arithmetically shift right
	end
end

endmodule
