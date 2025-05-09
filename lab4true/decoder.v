module decoder (ao1, ao2, ao3, ao4, F0, F1);
	input F0, F1;
	output ao1, ao2, ao3, ao4; // 13a 3o 5n 3x 22f
	wire n0, n1; 

	not not0(n0, F0);
	not not1(n1, F1);
	and and1(ao1, n0, n1);
	and and2(ao2, n0,F1);
	and and3(ao3, F0, n1);
	and and4(ao4, F0, F1);
	
endmodule