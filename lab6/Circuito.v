module Circuito(LED1, LED2, LED3, LED4, E1, E2, E3, D);
	input [2:0]E1, E2, E3;
	input D;
	reg [2:0] R;
	output [6:0] LED1, LED2, LED3, LED4;

	always @(*) begin
		if(D == 1'b0)
			if(E1 < E2 && E1 < E3)
				R = E1;
			else if(E2 < E3)
				R = E2;
			else
				R = E3;
		else
			if(E1 > E2 && E1 > E3)
				R = E1;
			else if(E2 > E3)
				R = E2;
			else
				R = E3;
			
	end
	
	BCD7Seg A(LED1,E1);
	BCD7Seg B(LED2,E2);
	BCD7Seg C(LED3,E3);
	BCD7Seg M(LED4,R);
	
endmodule