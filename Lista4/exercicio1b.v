module exercicio1b(A, B, C, Z);
	input A, B, C;
	output Z;
	
	assign Z = ((~A)&B)||C;
	
endmodule
