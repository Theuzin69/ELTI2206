module ULA2bit (out, carryOut, INVA, A, ENA, B, ENB, F0, F1, carryIn);
	input INVA, ENA, ENB, F0, F1, carryIn;
	input [1:0]A,B;
	output carryOut;
	output [1:0]out;
	wire wcarryOut;
	
	ULA1bit U1(out[0], wcarryOut, INVA, A[0], ENA, B[0], ENB, F0, F1, carryIn); //module ULA1bit (out, carryOut, INVA, A, ENA, B, ENB, F0, F1, carryIn);
	ULA1bit U2(out[1], carryOut, INVA, A[1], ENA, B[1], ENB, F0, F1, wcarryOut);
	
endmodule