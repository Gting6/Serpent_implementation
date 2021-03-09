module final_round(input [127:0] state_in,
				 output [127:0] state_out,
				 input [127:0] round_key1,
				 input [127:0] round_key2,
				 input clk);
	wire[127:0] result,v1,v2,v3;

	assign v1 = state_in ^ round_key1;

	S7_32
		tmp (clk,v1,v2);

	assign v3 = v2 ^ round_key2;
	assign state_out = v3;
endmodule


module enc_round_0(input [127:0] state_in,
				 output [127:0] state_out,
				 input [127:0] round_key,
				 input clk);

	
	wire[127:0] v1,v2;

	// key addition
	assign v1 = state_in ^ round_key;
	// Sbox, v2: after SBOX

    wire [127:0] ped_input; // after permutation
    wire [127:0] ped_output;
	S0_32
		s(clk,v1,v2);
	// linear transform
	wire[31:0] X_00,X_01,X_10,X_11,X_20,X_21,X_22,X_30,X_31; // since X_0 operate 2 times
	
	assign X_00 = ((v2[31:0] << 13) | (v2[31:0] >> 19) );
	assign X_20 = ((v2[95:64] <<  3) |(v2[95:64] >> 29) );
	assign X_10 = v2[63:32] ^ X_00 ^ X_20;
	assign X_30 = v2[127:96] ^ X_20 ^ ((X_00 << 3));

	assign X_11 = ((X_10 << 1) | (X_10 >> 31) );
	assign X_31 = ((X_30 << 7) | (X_30 >> 25) );
	assign X_01 = X_00 ^ X_11 ^ X_31;
	assign X_21 = X_20 ^ X_31 ^ ((X_11 << 7));
	
	assign state_out = {X_31 ,((X_21 << 22) | (X_21 >> 10)) , X_11, ((X_01 << 5) | (X_01 >> 27) )};

endmodule


module enc_round_1(input [127:0] state_in,
				 output reg[127:0] state_out,
				 input [127:0] round_key,
				 input clk);
	wire[127:0] v1,v2;

	// key addition
	assign v1 = state_in ^ round_key;
	// Sbox, v2: after SBOX
	S1_32
		tmp (clk,v1,v2);

	// linear transform
	wire[31:0] X_00,X_01,X_10,X_11,X_20,X_21,X_22,X_30,X_31; // since X_0 operate 2 times
	
	assign X_00 = ((v2[31:0] << 13) | (v2[31:0] >> 19) );
	assign X_20 = ((v2[95:64] <<  3) |(v2[95:64] >> 29) );
	assign X_10 = v2[63:32] ^ X_00 ^ X_20;
	assign X_30 = v2[127:96] ^ X_20 ^ ((X_00 << 3));

	assign X_11 = ((X_10 << 1) | (X_10 >> 31) );
	assign X_31 = ((X_30 << 7) | (X_30 >> 25) );
	assign X_01 = X_00 ^ X_11 ^ X_31;
	assign X_21 = X_20 ^ X_31 ^ ((X_11 << 7));

	always @ (posedge clk) begin
		state_out <= {X_31 ,((X_21 << 22) | (X_21 >> 10)) , X_11, ((X_01 << 5) | (X_01 >> 27) )};
	end

endmodule



module enc_round_2(input [127:0] state_in,
				 output [127:0] state_out,
				 input [127:0] round_key,
				 input clk);
	wire[127:0] v1,v2;

	// key addition
	assign v1 = state_in ^ round_key;
	// Sbox, v2: after SBOX
	S2_32
		tmp (clk,v1,v2);

	// linear transform
	wire[31:0] X_00,X_01,X_10,X_11,X_20,X_21,X_22,X_30,X_31; // since X_0 operate 2 times
	
	assign X_00 = ((v2[31:0] << 13) | (v2[31:0] >> 19) );
	assign X_20 = ((v2[95:64] <<  3) |(v2[95:64] >> 29) );
	assign X_10 = v2[63:32] ^ X_00 ^ X_20;
	assign X_30 = v2[127:96] ^ X_20 ^ ((X_00 << 3) );

	assign X_11 = ((X_10 << 1) | (X_10 >> 31) );
	assign X_31 = ((X_30 << 7) | (X_30 >> 25) );
	assign X_01 = X_00 ^ X_11 ^ X_31;
	assign X_21 = X_20 ^ X_31 ^ ((X_11 << 7));

	assign state_out = {X_31,((X_21 << 22) | (X_21 >> 10)), X_11, ((X_01 << 5) | (X_01 >> 27) )};

endmodule

module enc_round_3(input [127:0] state_in,
				 output [127:0] state_out,
				 input [127:0] round_key,
				 input clk);
	wire[127:0] v1,v2;

	// key addition
	assign v1 = state_in ^ round_key;
	// Sbox, v2: after SBOX
	S3_32
		tmp (clk,v1,v2);

	// linear transform
	wire[31:0] X_00,X_01,X_10,X_11,X_20,X_21,X_22,X_30,X_31; // since X_0 operate 2 times
	
	assign X_00 = ((v2[31:0] << 13) | (v2[31:0] >> 19) );
	assign X_20 = ((v2[95:64] <<  3) |(v2[95:64] >> 29) );
	assign X_10 = v2[63:32] ^ X_00 ^ X_20;
	assign X_30 = v2[127:96] ^ X_20 ^ ((X_00 << 3));

	assign X_11 = ((X_10 << 1) | (X_10 >> 31) );
	assign X_31 = ((X_30 << 7) | (X_30 >> 25) );
	assign X_01 = X_00 ^ X_11 ^ X_31;
	assign X_21 = X_20 ^ X_31 ^ ((X_11 << 7) );

	assign state_out = {X_31,((X_21 << 22) | (X_21 >> 10)), X_11, ((X_01 << 5) | (X_01 >> 27) )};

endmodule

module enc_round_4(input [127:0] state_in,
				 output [127:0] state_out,
				 input [127:0] round_key,
				 input clk);
	wire[127:0] v1,v2;

	// key addition
	assign v1 = state_in ^ round_key;
	// Sbox, v2: after SBOX
	S4_32
		tmp (clk,v1,v2);

	// linear transform
	wire[31:0] X_00,X_01,X_10,X_11,X_20,X_21,X_22,X_30,X_31; // since X_0 operate 2 times
	
	assign X_00 = ((v2[31:0] << 13) | (v2[31:0] >> 19) );
	assign X_20 = ((v2[95:64] <<  3) |(v2[95:64] >> 29) );
	assign X_10 = v2[63:32] ^ X_00 ^ X_20;
	assign X_30 = v2[127:96] ^ X_20 ^ ((X_00 << 3) );

	assign X_11 = ((X_10 << 1) | (X_10 >> 31) );
	assign X_31 = ((X_30 << 7) | (X_30 >> 25) );
	assign X_01 = X_00 ^ X_11 ^ X_31;
	assign X_21 = X_20 ^ X_31 ^ ((X_11 << 7) );

	assign state_out = {X_31,((X_21 << 22) | (X_21 >> 10)), X_11, ((X_01 << 5) | (X_01 >> 27) )};

endmodule

module enc_round_5(input [127:0] state_in,
				 output [127:0] state_out,
				 input [127:0] round_key,
				 input clk);
	wire[127:0] v1,v2;

	// key addition
	assign v1 = state_in ^ round_key;
	// Sbox, v2: after SBOX
	S5_32
		tmp (clk,v1,v2);

	// linear transform
	wire[31:0] X_00,X_01,X_10,X_11,X_20,X_21,X_22,X_30,X_31; // since X_0 operate 2 times
	
	assign X_00 = ((v2[31:0] << 13) | (v2[31:0] >> 19) );
	assign X_20 = ((v2[95:64] <<  3) |(v2[95:64] >> 29) );
	assign X_10 = v2[63:32] ^ X_00 ^ X_20;
	assign X_30 = v2[127:96] ^ X_20 ^ ((X_00 << 3) );

	assign X_11 = ((X_10 << 1) | (X_10 >> 31) );
	assign X_31 = ((X_30 << 7) | (X_30 >> 25) );
	assign X_01 = X_00 ^ X_11 ^ X_31;
	assign X_21 = X_20 ^ X_31 ^ ((X_11 << 7));

	assign state_out = {X_31,((X_21 << 22) | (X_21 >> 10)), X_11, ((X_01 << 5) | (X_01 >> 27) )};

endmodule

module enc_round_6(input [127:0] state_in,
				 output [127:0] state_out,
				 input [127:0] round_key,
				 input clk);
	wire[127:0] v1,v2;

	// key addition
	assign v1 = state_in ^ round_key;
	// Sbox, v2: after SBOX
	S6_32
		tmp (clk,v1,v2);

	// linear transform
	wire[31:0] X_00,X_01,X_10,X_11,X_20,X_21,X_22,X_30,X_31; // since X_0 operate 2 times
	
	assign X_00 = ((v2[31:0] << 13) | (v2[31:0] >> 19) );
	assign X_20 = ((v2[95:64] <<  3) |(v2[95:64] >> 29) );
	assign X_10 = v2[63:32] ^ X_00 ^ X_20;
	assign X_30 = v2[127:96] ^ X_20 ^ ((X_00 << 3) );

	assign X_11 = ((X_10 << 1) | (X_10 >> 31) );
	assign X_31 = ((X_30 << 7) | (X_30 >> 25) );
	assign X_01 = X_00 ^ X_11 ^ X_31;
	assign X_21 = X_20 ^ X_31 ^ ((X_11 << 7));

	assign state_out = {X_31,((X_21 << 22) | (X_21 >> 10)), X_11, ((X_01 << 5) | (X_01 >> 27) )};

endmodule

module enc_round_7(input [127:0] state_in,
				 output [127:0] state_out,
				 input [127:0] round_key,
				 input clk);
	wire[127:0] v1,v2;

	// key addition
	assign v1 = state_in ^ round_key;
	// Sbox, v2: after SBOX
	S7_32
		tmp (clk,v1,v2);

	// linear transform
	wire[31:0] X_00,X_01,X_10,X_11,X_20,X_21,X_22,X_30,X_31; // since X_0 operate 2 times
	
	assign X_00 = ((v2[31:0] << 13) | (v2[31:0] >> 19) );
	assign X_20 = ((v2[95:64] <<  3) |(v2[95:64] >> 29) );
	assign X_10 = v2[63:32] ^ X_00 ^ X_20;
	assign X_30 = v2[127:96] ^ X_20 ^ ((X_00 << 3)  );

	assign X_11 = ((X_10 << 1) | (X_10 >> 31) );
	assign X_31 = ((X_30 << 7) | (X_30 >> 25) );
	assign X_01 = X_00 ^ X_11 ^ X_31;
	assign X_21 = X_20 ^ X_31 ^ ((X_11 << 7));

	assign state_out = {X_31,((X_21 << 22) | (X_21 >> 10)), X_11, ((X_01 << 5) | (X_01 >> 27) )};

endmodule