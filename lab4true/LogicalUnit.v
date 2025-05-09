module LogicalUnit (ao1, ao2, ao3, xo, BaENB, F00, F01, F10);
	input xo, BaENB, F00, F01, F10;
	output ao1, ao2, ao3;
	wire nB, wAoB, wAB;
	
	not notB(nB, BaENB);
	and and1(wAB, xo, BaENB);
	or o(wAoB, xo, BaENB);
	and and2(ao1, wAB, F00);
	and and3(ao2, wAoB, F01);
	and and4(ao3, nB, F10);
	
endmodule