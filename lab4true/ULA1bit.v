module ULA1bit (out, carryOut, INVA, A, ENA, B, ENB, F0, F1, carryIn);
	input INVA, A, ENA, B, ENB, F0, F1, carryIn;
	output out, carryOut;
	wire xo, BaENB, ao1, ao2, ao3, F00, F01, F10, F11, Sum, carryOut;
	
	inLogicalUnit inLU(xo, BaENB, INVA, A, ENA, B, ENB);	//module inLogicalUnit (xo, BaENB, INVA, A, ENA, B, ENB);
	LogicalUnit LU(ao1, ao2, ao3, xo, BaENB, F00, F01, F10); //module LogicalUnit (ao1, ao2, ao3, xo, BaENB, F00, F01, F10);
	decoder dimas(F00, F01, F10, F11, F0, F1); //module decoder (ao1, ao2, ao3, ao4, F0, F1);
	fullAdder fA(Sum, carryOut, xo, BaENB,F11, carryIn); //module fullAdder (Sum, carryOut, xo, BaENB, F11, carryIn);
	or o(out, Sum, ao1, ao2, ao3);
	
endmodule