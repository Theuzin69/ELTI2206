module BCD7Seg (S, E);
	input [2:0]E;
	output reg [6:0]S;

	always @(*) begin
		case(E)
			3'b000: S = 7'b1000000; 
			3'b001: S = 7'b1111001;
			3'b010: S = 7'b0100100;
			3'b011: S = 7'b0110000;
			3'b100: S = 7'b0011001;
			3'b101: S = 7'b0010010;
			3'b110: S = 7'b0000010;
			3'b111: S = 7'b1111000;
		endcase
	end
endmodule
