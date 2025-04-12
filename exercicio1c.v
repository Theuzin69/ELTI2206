module exercicio1c(A, B, C, D, W, Z);
	input A, B, C, D;
	output W, Z;
	
	assign Z = ~(A||(~C))&(B||D);
	assign W = ~Z;
	
endmodule