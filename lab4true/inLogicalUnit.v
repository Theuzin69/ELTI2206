module inLogicalUnit (xo, BaENB, INVA, A, ENA, B, ENB);
	input INVA, A, ENA, B, ENB;
	output xo, BaENB;
	wire wa;
	
	and and1(wa, A, ENA);
	and and2(BaENB, B, ENB);
	xor x(xo, INVA, wa);

endmodule