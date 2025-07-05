module moore(clk, rst, entrada, saida);
	input clk, rst, entrada;
	output saida;
	reg saida;
	reg [2:0] estado;
	
	`define inicial 3'b000 //definição de estados
	`define A1 3'b001
	`define A2 3'b010
	`define A3 3'b011
	`define B1 3'b100
	`define B2 3'b101
	`define B3 3'b110
	`define C 3'b111

	always @(posedge clk or posedge rst) //transição de estados
	begin
		if(rst == 1'b1)
			estado <= `inicial;
		else
			case (estado)
				`inicial: if (entrada==1'b1) estado <= `A1; else estado <= `B1;
				`A1: if (entrada==1'b1) estado <= `A1; else estado <= `A2;
				`A2: if (entrada==1'b1) estado <= `A3; else estado <= `B1;
				`A3: if (entrada==1'b1) estado <= `B3; else estado <= `C;
				`B1: if (entrada==1'b1) estado <= `B2; else estado <= `B1;
				`B2: if (entrada==1'b1) estado <= `B3; else estado <= `A2;
				`B3: if (entrada==1'b1) estado <= `A1; else estado <= `C;
				`C: if (entrada==1'b1) estado <= `A3; else estado <= `B1;
				default: estado <= `inicial;
			endcase
	end
	
	always @(estado) //geração das saidas
	begin
		case (estado)
			`inicial: saida <= 1'b0;
			`A1: saida <= 1'b0;
			`A2: saida <= 1'b0;
			`A3: saida <= 1'b0;
			`B1: saida <= 1'b0;
			`B2: saida <= 1'b0;
			`B3: saida <= 1'b0;
			`C: saida <= 1'b1;
		endcase
	end
		
endmodule