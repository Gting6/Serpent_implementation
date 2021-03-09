module dec_final_round(input [127:0] state_in,
				 output [127:0] state_out,
				 input [127:0] round_key,
				 input clk);

	wire[127:0] v2,v3;

	inv_S7_32
		tmp (clk,state_in,v2);

	assign v3 = v2 ^ round_key;
	assign state_out = v3;
endmodule

module dec_round_0(output [127:0] state_out,
				   input[127:0] state_in,
				   input[127:0] key,
				   input clk);
	
	wire [31:0] x0,x1,x2,x3,x_01,x_11,x_21,x_31, x_02,x_12,x_22,x_32;
	wire [127:0] v1,v2; 

	// inverse linear transform
	assign x0 = {state_in[4:0], state_in[31:5]};
	assign x1 = state_in[63:32];
	assign x2 = {state_in[85:64], state_in[95:86]};
	assign x3 = state_in[127:96];
	assign	x_21 = x2 ^ x3 ^ (x1 << 7);
	assign	x_01 = x0 ^ x1 ^ x3;
	assign	x_31 = {x3[6:0], x3[31:7]};
	assign	x_11 = {x1[0], x1[31:1]};
	assign	x_32 = x_31 ^ x_21 ^ (x_01 << 3);
	assign	x_12 = x_11 ^ x_01 ^ x_21;
	assign	x_22 = {x_21[2:0], x_21[31:3]};
	assign	x_02 = {x_01[12:0], x_01[31:13]};

	assign v1 = {x_32, x_22, x_12, x_02};

	inv_S0_32
		tmp (clk,v1,v2);

	assign state_out = v2 ^ key;

endmodule
module dec_round_1(output [127:0] state_out,
				   input[127:0] state_in,
				   input[127:0] key,
				   input clk);
	
	wire [31:0] x0,x1,x2,x3,x_01,x_11,x_21,x_31, x_02,x_12,x_22,x_32;
	wire [127:0] v1,v2; 

	// inverse linear transform
	assign x0 = {state_in[4:0], state_in[31:5]};
	assign x1 = state_in[63:32];
	assign x2 = {state_in[85:64], state_in[95:86]};
	assign x3 = state_in[127:96];
	assign	x_21 = x2 ^ x3 ^ (x1 << 7);
	assign	x_01 = x0 ^ x1 ^ x3;
	assign	x_31 = {x3[6:0], x3[31:7]};
	assign	x_11 = {x1[0], x1[31:1]};
	assign	x_32 = x_31 ^ x_21 ^ (x_01 << 3);
	assign	x_12 = x_11 ^ x_01 ^ x_21;
	assign	x_22 = {x_21[2:0], x_21[31:3]};
	assign	x_02 = {x_01[12:0], x_01[31:13]};

	assign v1 = {x_32, x_22, x_12, x_02};

	inv_S1_32
		tmp (clk,v1,v2);

	assign state_out = v2 ^ key;

endmodule
module dec_round_2(output [127:0] state_out,
				   input[127:0] state_in,
				   input[127:0] key,
				   input clk);
	
	wire [31:0] x0,x1,x2,x3,x_01,x_11,x_21,x_31, x_02,x_12,x_22,x_32;
	wire [127:0] v1,v2; 

	// inverse linear transform
	assign x0 = {state_in[4:0], state_in[31:5]};
	assign x1 = state_in[63:32];
	assign x2 = {state_in[85:64], state_in[95:86]};
	assign x3 = state_in[127:96];
	assign	x_21 = x2 ^ x3 ^ (x1 << 7);
	assign	x_01 = x0 ^ x1 ^ x3;
	assign	x_31 = {x3[6:0], x3[31:7]};
	assign	x_11 = {x1[0], x1[31:1]};
	assign	x_32 = x_31 ^ x_21 ^ (x_01 << 3);
	assign	x_12 = x_11 ^ x_01 ^ x_21;
	assign	x_22 = {x_21[2:0], x_21[31:3]};
	assign	x_02 = {x_01[12:0], x_01[31:13]};

	assign v1 = {x_32, x_22, x_12, x_02};

	inv_S2_32
		tmp (clk,v1,v2);

	assign state_out = v2 ^ key;

endmodule
module dec_round_3(output [127:0] state_out,
				   input[127:0] state_in,
				   input[127:0] key,
				   input clk);
	
	wire [31:0] x0,x1,x2,x3,x_01,x_11,x_21,x_31, x_02,x_12,x_22,x_32;
	wire [127:0] v1,v2; 

	// inverse linear transform
	assign x0 = {state_in[4:0], state_in[31:5]};
	assign x1 = state_in[63:32];
	assign x2 = {state_in[85:64], state_in[95:86]};
	assign x3 = state_in[127:96];
	assign	x_21 = x2 ^ x3 ^ (x1 << 7);
	assign	x_01 = x0 ^ x1 ^ x3;
	assign	x_31 = {x3[6:0], x3[31:7]};
	assign	x_11 = {x1[0], x1[31:1]};
	assign	x_32 = x_31 ^ x_21 ^ (x_01 << 3);
	assign	x_12 = x_11 ^ x_01 ^ x_21;
	assign	x_22 = {x_21[2:0], x_21[31:3]};
	assign	x_02 = {x_01[12:0], x_01[31:13]};

	assign v1 = {x_32, x_22, x_12, x_02};

	inv_S3_32
		tmp (clk,v1,v2);

	assign state_out = v2 ^ key;

endmodule
module dec_round_4(output [127:0] state_out,
				   input[127:0] state_in,
				   input[127:0] key,
				   input clk);
	
	wire [31:0] x0,x1,x2,x3,x_01,x_11,x_21,x_31, x_02,x_12,x_22,x_32;
	wire [127:0] v1,v2; 

	// inverse linear transform
	assign x0 = {state_in[4:0], state_in[31:5]};
	assign x1 = state_in[63:32];
	assign x2 = {state_in[85:64], state_in[95:86]};
	assign x3 = state_in[127:96];
	assign	x_21 = x2 ^ x3 ^ (x1 << 7);
	assign	x_01 = x0 ^ x1 ^ x3;
	assign	x_31 = {x3[6:0], x3[31:7]};
	assign	x_11 = {x1[0], x1[31:1]};
	assign	x_32 = x_31 ^ x_21 ^ (x_01 << 3);
	assign	x_12 = x_11 ^ x_01 ^ x_21;
	assign	x_22 = {x_21[2:0], x_21[31:3]};
	assign	x_02 = {x_01[12:0], x_01[31:13]};

	assign v1 = {x_32, x_22, x_12, x_02};

	inv_S4_32
		tmp (clk,v1,v2);

	assign state_out = v2 ^ key;

endmodule
module dec_round_5(output [127:0] state_out,
				   input[127:0] state_in,
				   input[127:0] key,
				   input clk);
	
	wire [31:0] x0,x1,x2,x3,x_01,x_11,x_21,x_31, x_02,x_12,x_22,x_32;
	wire [127:0] v1,v2; 

	// inverse linear transform
	assign x0 = {state_in[4:0], state_in[31:5]};
	assign x1 = state_in[63:32];
	assign x2 = {state_in[85:64], state_in[95:86]};
	assign x3 = state_in[127:96];
	assign	x_21 = x2 ^ x3 ^ (x1 << 7);
	assign	x_01 = x0 ^ x1 ^ x3;
	assign	x_31 = {x3[6:0], x3[31:7]};
	assign	x_11 = {x1[0], x1[31:1]};
	assign	x_32 = x_31 ^ x_21 ^ (x_01 << 3);
	assign	x_12 = x_11 ^ x_01 ^ x_21;
	assign	x_22 = {x_21[2:0], x_21[31:3]};
	assign	x_02 = {x_01[12:0], x_01[31:13]};

	assign v1 = {x_32, x_22, x_12, x_02};

	inv_S5_32
		tmp (clk,v1,v2);

	assign state_out = v2 ^ key;

endmodule
module dec_round_6(output [127:0] state_out,
				   input[127:0] state_in,
				   input[127:0] key,
				   input clk);
	
	wire [31:0] x0,x1,x2,x3,x_01,x_11,x_21,x_31, x_02,x_12,x_22,x_32;
	wire [127:0] v1,v2; 

	// inverse linear transform
	assign x0 = {state_in[4:0], state_in[31:5]};
	assign x1 = state_in[63:32];
	assign x2 = {state_in[85:64], state_in[95:86]};
	assign x3 = state_in[127:96];
	assign	x_21 = x2 ^ x3 ^ (x1 << 7);
	assign	x_01 = x0 ^ x1 ^ x3;
	assign	x_31 = {x3[6:0], x3[31:7]};
	assign	x_11 = {x1[0], x1[31:1]};
	assign	x_32 = x_31 ^ x_21 ^ (x_01 << 3);
	assign	x_12 = x_11 ^ x_01 ^ x_21;
	assign	x_22 = {x_21[2:0], x_21[31:3]};
	assign	x_02 = {x_01[12:0], x_01[31:13]};

	assign v1 = {x_32, x_22, x_12, x_02};

	inv_S6_32
		tmp (clk,v1,v2);

	assign state_out = v2 ^ key;

endmodule
module dec_round_7(output [127:0] state_out,
				   input[127:0] state_in,
				   input[127:0] key,
				   input clk);
	
	wire [31:0] x0,x1,x2,x3,x_01,x_11,x_21,x_31, x_02,x_12,x_22,x_32;
	wire [127:0] v1,v2; 


	// inverse linear transform
	assign x0 = {state_in[4:0], state_in[31:5]};
	assign x1 = state_in[63:32];
	assign x2 = {state_in[85:64], state_in[95:86]};
	assign x3 = state_in[127:96];
	assign	x_21 = x2 ^ x3 ^ (x1 << 7);
	assign	x_01 = x0 ^ x1 ^ x3;
	assign	x_31 = {x3[6:0], x3[31:7]};
	assign	x_11 = {x1[0], x1[31:1]};
	assign	x_32 = x_31 ^ x_21 ^ (x_01 << 3);
	assign	x_12 = x_11 ^ x_01 ^ x_21;
	assign	x_22 = {x_21[2:0], x_21[31:3]};
	assign	x_02 = {x_01[12:0], x_01[31:13]};


	assign v1 = {x_32, x_22, x_12, x_02};

	inv_S7_32
		tmp (clk,v1,v2);

	assign state_out = v2 ^ key;

endmodule
