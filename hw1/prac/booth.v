`timescale 1ns / 10ps
module booth(out, in1, in2);

parameter width = 6;

input  	[width-1:0]   in1; //multiplicand
input  	[width-1:0]   in2; //multiplier
output  [2*width-1:0] out; //product

reg [2*width:0] mul; //least significant bit is pseudo bit
reg [2*width:0] tmp;
assign out = mul[12:1];
integer i = 32'b0;

always@ (in1 or in2) begin
	mul = {6'b0,in2,1'b0};
	tmp = mul;
	for (i = 0; i < width; i = i + 1) begin
	case({mul[1:0] & 2'b11})
			2'b01 : 
				tmp = mul + {in1 , 7'b0};
			2'b10 : 
				tmp = mul - {in1 , 7'b0};
			default : 
				tmp = mul;
		endcase
		mul = tmp >> 1;
		mul[12] = tmp[12] ? 1 : 0; // arithmetically shift right
	end
end

endmodule
