module fullAdder (Sum, carryOut, xo, BaENB, F11, carryIn);
	input xo, BaENB, F11, carryIn;
	output Sum, carryOut;
	wire wxo1, wxo2, wa1, wa2;

	xor x1(wxo1, xo, BaENB);
	xor x2(wxo2, wxo1, carryIn);
	and a1(wa1, F11, BaENB, xo);
	and a2(wa2, F11, carryIN, wxo1);
	and a3(Sum, wxo2, F11);
	or o(carryOut, wa1, wa2);
	
endmodule