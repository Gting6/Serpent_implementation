module inv_S0(clk,in,out);
    input[3:0] in;
    input clk;
    output reg[3:0] out;

    always @(*)begin
        case(in)
			4'h0: out = 4'hd;
			4'h1: out = 4'h3;
			4'h2: out = 4'hb;
			4'h3: out = 4'h0;
			4'h4: out = 4'ha;
			4'h5: out = 4'h6;
			4'h6: out = 4'h5;
			4'h7: out = 4'hc;
			4'h8: out = 4'h1;
			4'h9: out = 4'he;
			4'ha: out = 4'h4;
			4'hb: out = 4'h7;
			4'hc: out = 4'hf;
			4'hd: out = 4'h9;
			4'he: out = 4'h8;
			4'hf: out = 4'h2;
		endcase
    end
endmodule

module inv_S1(clk,in,out);
    input[3:0] in;
    input clk;
    output reg[3:0] out;

    always @(*)begin
        case(in)
			4'h0: out = 4'h5;
			4'h1: out = 4'h8;
			4'h2: out = 4'h2;
			4'h3: out = 4'he;
			4'h4: out = 4'hf;
			4'h5: out = 4'h6;
			4'h6: out = 4'hc;
			4'h7: out = 4'h3;
			4'h8: out = 4'hb;
			4'h9: out = 4'h4;
			4'ha: out = 4'h7;
			4'hb: out = 4'h9;
			4'hc: out = 4'h1;
			4'hd: out = 4'hd;
			4'he: out = 4'ha;
			4'hf: out = 4'h0;
		endcase
    end
endmodule

module inv_S2(clk,in,out);
    input[3:0] in;
    input clk;
    output reg[3:0] out;

    always @(*)begin
        case(in)
			4'h0: out = 4'hc;
			4'h1: out = 4'h9;
			4'h2: out = 4'hf;
			4'h3: out = 4'h4;
			4'h4: out = 4'hb;
			4'h5: out = 4'he;
			4'h6: out = 4'h1;
			4'h7: out = 4'h2;
			4'h8: out = 4'h0;
			4'h9: out = 4'h3;
			4'ha: out = 4'h6;
			4'hb: out = 4'hd;
			4'hc: out = 4'h5;
			4'hd: out = 4'h8;
			4'he: out = 4'ha;
			4'hf: out = 4'h7;
		endcase
    end
endmodule

module inv_S3(clk,in,out);
    input clk;
    input[3:0] in;
    output reg[3:0] out;

    always @(*)begin
        case(in)
			4'h0: out = 4'h0;
			4'h1: out = 4'h9;
			4'h2: out = 4'ha;
			4'h3: out = 4'h7;
			4'h4: out = 4'hb;
			4'h5: out = 4'he;
			4'h6: out = 4'h6;
			4'h7: out = 4'hd;
			4'h8: out = 4'h3;
			4'h9: out = 4'h5;
			4'ha: out = 4'hc;
			4'hb: out = 4'h2;
			4'hc: out = 4'h4;
			4'hd: out = 4'h8;
			4'he: out = 4'hf;
			4'hf: out = 4'h1;
		endcase
    end
endmodule
module inv_S4(clk,in,out);
    input clk;
    input[3:0] in;
    output reg[3:0] out;

    always @(*)begin
        case(in)
			4'h0: out = 4'h5;
			4'h1: out = 4'h0;
			4'h2: out = 4'h8;
			4'h3: out = 4'h3;
			4'h4: out = 4'ha;
			4'h5: out = 4'h9;
			4'h6: out = 4'h7;
			4'h7: out = 4'he;
			4'h8: out = 4'h2;
			4'h9: out = 4'hc;
			4'ha: out = 4'hb;
			4'hb: out = 4'h6;
			4'hc: out = 4'h4;
			4'hd: out = 4'hf;
			4'he: out = 4'hd;
			4'hf: out = 4'h1;
		endcase
    end
endmodule

module inv_S5(clk,in,out);
    input clk;
    input[3:0] in;
    output reg[3:0] out;

    always @(*)begin
        case(in)
			4'h0: out = 4'h8;
			4'h1: out = 4'hf;
			4'h2: out = 4'h2;
			4'h3: out = 4'h9;
			4'h4: out = 4'h4;
			4'h5: out = 4'h1;
			4'h6: out = 4'hd;
			4'h7: out = 4'he;
			4'h8: out = 4'hb;
			4'h9: out = 4'h6;
			4'ha: out = 4'h5;
			4'hb: out = 4'h3;
			4'hc: out = 4'h7;
			4'hd: out = 4'hc;
			4'he: out = 4'ha;
			4'hf: out = 4'h0;
		endcase
    end
endmodule

module inv_S6(clk,in,out);
    input clk;
    input[3:0] in;
    output reg[3:0] out;

    always @(*)begin
        case(in)
			4'h0: out = 4'hf;
			4'h1: out = 4'ha;
			4'h2: out = 4'h1;
			4'h3: out = 4'hd;
			4'h4: out = 4'h5;
			4'h5: out = 4'h3;
			4'h6: out = 4'h6;
			4'h7: out = 4'h0;
			4'h8: out = 4'h4;
			4'h9: out = 4'h9;
			4'ha: out = 4'he;
			4'hb: out = 4'h7;
			4'hc: out = 4'h2;
			4'hd: out = 4'hc;
			4'he: out = 4'h8;
			4'hf: out = 4'hb;
		endcase
    end
endmodule

module inv_S7(clk,in,out);
    input clk;
    input[3:0] in;
    output reg[3:0] out;

    always @(*)begin
        case(in)
			4'h0: out = 4'h3;
			4'h1: out = 4'h0;
			4'h2: out = 4'h6;
			4'h3: out = 4'hd;
			4'h4: out = 4'h9;
			4'h5: out = 4'he;
			4'h6: out = 4'hf;
			4'h7: out = 4'h8;
			4'h8: out = 4'h5;
			4'h9: out = 4'hc;
			4'ha: out = 4'hb;
			4'hb: out = 4'h7;
			4'hc: out = 4'ha;
			4'hd: out = 4'h1;
			4'he: out = 4'h4;
			4'hf: out = 4'h2;
		endcase
    end
endmodule

module inv_S0_32 (clk, in, out);
    input clk;
    input [127:0] in;
    output [127:0] out;

    wire [127:0] ped_input; // after permutation
    wire [127:0] ped_output;

    genvar i;
    generate
        for(i = 0; i<32; i = i+1) begin
            assign ped_input[4*i] = in[i];            
            assign ped_input[4*i+1] = in[i+32];            
            assign ped_input[4*i+2] = in[i+64];            
            assign ped_input[4*i+3] = in[i+96];            
        end
    endgenerate
    generate
        for(i = 0; i<32; i = i+1) begin
            assign out[i+96] = ped_output[4*i+3];            
            assign out[i+64] = ped_output[4*i+2];            
            assign out[i+32] = ped_output[4*i+1];            
            assign out[i] = ped_output[4*i];            
        end
    endgenerate

    inv_S0
        S0_0  (clk, ped_input[127:124], ped_output[127:124]),
        S0_1  (clk, ped_input[123:120], ped_output[123:120]),
        S0_2  (clk, ped_input[119:116], ped_output[119:116]),
        S0_3  (clk, ped_input[115:112], ped_output[115:112]),
        S0_4  (clk, ped_input[111:108], ped_output[111:108]),
        S0_5  (clk, ped_input[107:104], ped_output[107:104]),
        S0_6  (clk, ped_input[103:100], ped_output[103:100]),
        S0_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S0_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S0_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S0_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S0_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S0_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S0_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S0_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S0_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S0_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S0_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S0_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S0_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S0_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S0_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S0_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S0_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S0_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S0_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S0_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S0_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S0_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S0_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S0_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S0_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module inv_S1_32 (clk, in, out);
    input clk;
    input [127:0] in;
    output [127:0] out;

    wire [127:0] ped_input; // after permutation
    wire [127:0] ped_output;

    genvar i;
    generate
        for(i = 0; i<32; i = i+1) begin
            assign ped_input[4*i] = in[i];            
            assign ped_input[4*i+1] = in[i+32];            
            assign ped_input[4*i+2] = in[i+64];            
            assign ped_input[4*i+3] = in[i+96];            
        end
    endgenerate
    generate
        for(i = 0; i<32; i = i+1) begin
            assign out[i+96] = ped_output[4*i+3];            
            assign out[i+64] = ped_output[4*i+2];            
            assign out[i+32] = ped_output[4*i+1];            
            assign out[i] = ped_output[4*i];            
        end
    endgenerate

    inv_S1
        S0_0  (clk, ped_input[127:124], ped_output[127:124]),
        S0_1  (clk, ped_input[123:120], ped_output[123:120]),
        S0_2  (clk, ped_input[119:116], ped_output[119:116]),
        S0_3  (clk, ped_input[115:112], ped_output[115:112]),
        S0_4  (clk, ped_input[111:108], ped_output[111:108]),
        S0_5  (clk, ped_input[107:104], ped_output[107:104]),
        S0_6  (clk, ped_input[103:100], ped_output[103:100]),
        S0_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S0_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S0_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S0_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S0_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S0_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S0_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S0_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S0_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S0_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S0_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S0_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S0_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S0_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S0_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S0_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S0_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S0_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S0_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S0_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S0_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S0_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S0_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S0_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S0_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module inv_S2_32 (clk, in, out);
    input clk;
    input [127:0] in;
    output [127:0] out;

    wire [127:0] ped_input; // after permutation
    wire [127:0] ped_output;

    genvar i;
    generate
        for(i = 0; i<32; i = i+1) begin
            assign ped_input[4*i] = in[i];            
            assign ped_input[4*i+1] = in[i+32];            
            assign ped_input[4*i+2] = in[i+64];            
            assign ped_input[4*i+3] = in[i+96];            
        end
    endgenerate
    generate
        for(i = 0; i<32; i = i+1) begin
            assign out[i+96] = ped_output[4*i+3];            
            assign out[i+64] = ped_output[4*i+2];            
            assign out[i+32] = ped_output[4*i+1];            
            assign out[i] = ped_output[4*i];            
        end
    endgenerate

    inv_S2
        S0_0  (clk, ped_input[127:124], ped_output[127:124]),
        S0_1  (clk, ped_input[123:120], ped_output[123:120]),
        S0_2  (clk, ped_input[119:116], ped_output[119:116]),
        S0_3  (clk, ped_input[115:112], ped_output[115:112]),
        S0_4  (clk, ped_input[111:108], ped_output[111:108]),
        S0_5  (clk, ped_input[107:104], ped_output[107:104]),
        S0_6  (clk, ped_input[103:100], ped_output[103:100]),
        S0_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S0_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S0_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S0_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S0_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S0_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S0_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S0_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S0_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S0_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S0_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S0_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S0_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S0_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S0_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S0_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S0_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S0_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S0_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S0_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S0_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S0_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S0_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S0_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S0_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module inv_S3_32 (clk, in, out);
    input clk;
    input [127:0] in;
    output [127:0] out;

    wire [127:0] ped_input; // after permutation
    wire [127:0] ped_output;

    genvar i;
    generate
        for(i = 0; i<32; i = i+1) begin
            assign ped_input[4*i] = in[i];            
            assign ped_input[4*i+1] = in[i+32];            
            assign ped_input[4*i+2] = in[i+64];            
            assign ped_input[4*i+3] = in[i+96];            
        end
    endgenerate
    generate
        for(i = 0; i<32; i = i+1) begin
            assign out[i+96] = ped_output[4*i+3];            
            assign out[i+64] = ped_output[4*i+2];            
            assign out[i+32] = ped_output[4*i+1];            
            assign out[i] = ped_output[4*i];            
        end
    endgenerate

    inv_S3
        S0_0  (clk, ped_input[127:124], ped_output[127:124]),
        S0_1  (clk, ped_input[123:120], ped_output[123:120]),
        S0_2  (clk, ped_input[119:116], ped_output[119:116]),
        S0_3  (clk, ped_input[115:112], ped_output[115:112]),
        S0_4  (clk, ped_input[111:108], ped_output[111:108]),
        S0_5  (clk, ped_input[107:104], ped_output[107:104]),
        S0_6  (clk, ped_input[103:100], ped_output[103:100]),
        S0_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S0_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S0_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S0_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S0_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S0_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S0_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S0_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S0_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S0_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S0_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S0_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S0_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S0_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S0_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S0_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S0_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S0_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S0_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S0_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S0_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S0_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S0_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S0_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S0_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module inv_S4_32 (clk, in, out);
    input clk;
    input [127:0] in;
    output [127:0] out;

    wire [127:0] ped_input; // after permutation
    wire [127:0] ped_output;

    genvar i;
    generate
        for(i = 0; i<32; i = i+1) begin
            assign ped_input[4*i] = in[i];            
            assign ped_input[4*i+1] = in[i+32];            
            assign ped_input[4*i+2] = in[i+64];            
            assign ped_input[4*i+3] = in[i+96];            
        end
    endgenerate
    generate
        for(i = 0; i<32; i = i+1) begin
            assign out[i+96] = ped_output[4*i+3];            
            assign out[i+64] = ped_output[4*i+2];            
            assign out[i+32] = ped_output[4*i+1];            
            assign out[i] = ped_output[4*i];            
        end
    endgenerate

    inv_S4
        S0_0  (clk, ped_input[127:124], ped_output[127:124]),
        S0_1  (clk, ped_input[123:120], ped_output[123:120]),
        S0_2  (clk, ped_input[119:116], ped_output[119:116]),
        S0_3  (clk, ped_input[115:112], ped_output[115:112]),
        S0_4  (clk, ped_input[111:108], ped_output[111:108]),
        S0_5  (clk, ped_input[107:104], ped_output[107:104]),
        S0_6  (clk, ped_input[103:100], ped_output[103:100]),
        S0_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S0_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S0_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S0_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S0_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S0_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S0_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S0_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S0_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S0_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S0_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S0_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S0_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S0_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S0_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S0_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S0_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S0_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S0_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S0_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S0_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S0_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S0_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S0_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S0_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module inv_S5_32 (clk, in, out);
    input clk;
    input [127:0] in;
    output [127:0] out;

    wire [127:0] ped_input; // after permutation
    wire [127:0] ped_output;

    genvar i;
    generate
        for(i = 0; i<32; i = i+1) begin
            assign ped_input[4*i] = in[i];            
            assign ped_input[4*i+1] = in[i+32];            
            assign ped_input[4*i+2] = in[i+64];            
            assign ped_input[4*i+3] = in[i+96];            
        end
    endgenerate
    generate
        for(i = 0; i<32; i = i+1) begin
            assign out[i+96] = ped_output[4*i+3];            
            assign out[i+64] = ped_output[4*i+2];            
            assign out[i+32] = ped_output[4*i+1];            
            assign out[i] = ped_output[4*i];            
        end
    endgenerate

    inv_S5
        S0_0  (clk, ped_input[127:124], ped_output[127:124]),
        S0_1  (clk, ped_input[123:120], ped_output[123:120]),
        S0_2  (clk, ped_input[119:116], ped_output[119:116]),
        S0_3  (clk, ped_input[115:112], ped_output[115:112]),
        S0_4  (clk, ped_input[111:108], ped_output[111:108]),
        S0_5  (clk, ped_input[107:104], ped_output[107:104]),
        S0_6  (clk, ped_input[103:100], ped_output[103:100]),
        S0_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S0_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S0_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S0_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S0_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S0_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S0_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S0_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S0_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S0_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S0_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S0_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S0_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S0_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S0_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S0_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S0_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S0_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S0_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S0_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S0_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S0_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S0_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S0_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S0_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module inv_S6_32 (clk, in, out);
    input clk;
    input [127:0] in;
    output [127:0] out;

    wire [127:0] ped_input; // after permutation
    wire [127:0] ped_output;

    genvar i;
    generate
        for(i = 0; i<32; i = i+1) begin
            assign ped_input[4*i] = in[i];            
            assign ped_input[4*i+1] = in[i+32];            
            assign ped_input[4*i+2] = in[i+64];            
            assign ped_input[4*i+3] = in[i+96];            
        end
    endgenerate
    generate
        for(i = 0; i<32; i = i+1) begin
            assign out[i+96] = ped_output[4*i+3];            
            assign out[i+64] = ped_output[4*i+2];            
            assign out[i+32] = ped_output[4*i+1];            
            assign out[i] = ped_output[4*i];            
        end
    endgenerate

    inv_S6
        S0_0  (clk, ped_input[127:124], ped_output[127:124]),
        S0_1  (clk, ped_input[123:120], ped_output[123:120]),
        S0_2  (clk, ped_input[119:116], ped_output[119:116]),
        S0_3  (clk, ped_input[115:112], ped_output[115:112]),
        S0_4  (clk, ped_input[111:108], ped_output[111:108]),
        S0_5  (clk, ped_input[107:104], ped_output[107:104]),
        S0_6  (clk, ped_input[103:100], ped_output[103:100]),
        S0_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S0_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S0_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S0_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S0_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S0_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S0_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S0_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S0_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S0_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S0_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S0_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S0_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S0_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S0_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S0_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S0_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S0_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S0_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S0_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S0_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S0_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S0_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S0_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S0_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module inv_S7_32 (clk, in, out);
    input clk;
    input [127:0] in;
    output [127:0] out;

    wire [127:0] ped_input; // after permutation
    wire [127:0] ped_output;

    genvar i;
    generate
        for(i = 0; i<32; i = i+1) begin
            assign ped_input[4*i] = in[i];            
            assign ped_input[4*i+1] = in[i+32];            
            assign ped_input[4*i+2] = in[i+64];            
            assign ped_input[4*i+3] = in[i+96];            
        end
    endgenerate
    generate
        for(i = 0; i<32; i = i+1) begin
            assign out[i+96] = ped_output[4*i+3];            
            assign out[i+64] = ped_output[4*i+2];            
            assign out[i+32] = ped_output[4*i+1];            
            assign out[i] = ped_output[4*i];            
        end
    endgenerate

    inv_S7
        S0_0  (clk, ped_input[127:124], ped_output[127:124]),
        S0_1  (clk, ped_input[123:120], ped_output[123:120]),
        S0_2  (clk, ped_input[119:116], ped_output[119:116]),
        S0_3  (clk, ped_input[115:112], ped_output[115:112]),
        S0_4  (clk, ped_input[111:108], ped_output[111:108]),
        S0_5  (clk, ped_input[107:104], ped_output[107:104]),
        S0_6  (clk, ped_input[103:100], ped_output[103:100]),
        S0_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S0_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S0_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S0_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S0_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S0_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S0_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S0_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S0_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S0_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S0_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S0_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S0_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S0_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S0_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S0_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S0_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S0_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S0_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S0_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S0_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S0_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S0_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S0_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S0_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule
