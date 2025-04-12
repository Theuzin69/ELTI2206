//latchSR
module exercicio2(Clk, S, R, Q, Qn);
input Clk, S, R;
output Q, Qn;

assign Q = ~( ( ~(S&Clk) ) & (Qn) );
assign Qn = ~(  ( ~(Clk&R) ) & (Q) );

endmodule
