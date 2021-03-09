//8 S box SubByte for 4 Bits //
module S0 (clk, in, out);
    input clk;
    input [3:0] in;
    output reg [3:0] out;
    always @ (posedge clk) 
    case (in)
    4'h0: out <= 4'h3;
    4'h1: out <= 4'h8;
    4'h2: out <= 4'hf;
    4'h3: out <= 4'h1;
    4'h4: out <= 4'ha;
    4'h5: out <= 4'h6;
    4'h6: out <= 4'h5;
    4'h7: out <= 4'hb;
    4'h8: out <= 4'he;
    4'h9: out <= 4'hd;
    4'ha: out <= 4'h4;
    4'hb: out <= 4'h2;
    4'hc: out <= 4'h7;
    4'hd: out <= 4'h0;
    4'he: out <= 4'h9;
    4'hf: out <= 4'hc;
    endcase
endmodule

module S1 (clk, in, out);
    input clk;
    input [3:0] in;
    output reg [3:0] out;
    always @ (posedge clk) 
    case (in)
    4'h0: out <= 4'hf;
    4'h1: out <= 4'hc;
    4'h2: out <= 4'h2;
    4'h3: out <= 4'h7;
    4'h4: out <= 4'h9;
    4'h5: out <= 4'h0;
    4'h6: out <= 4'h5;
    4'h7: out <= 4'ha;
    4'h8: out <= 4'h1;
    4'h9: out <= 4'hb;
    4'ha: out <= 4'he;
    4'hb: out <= 4'h8;
    4'hc: out <= 4'h6;
    4'hd: out <= 4'hd;
    4'he: out <= 4'h3;
    4'hf: out <= 4'h4;
    endcase
endmodule

module S2 (clk, in, out);
    input clk;
    input [3:0] in;
    output reg [3:0] out;
    always @ (posedge clk) 
    case (in)
    4'h0: out <= 4'h8;
    4'h1: out <= 4'h6;
    4'h2: out <= 4'h7;
    4'h3: out <= 4'h9;
    4'h4: out <= 4'h3;
    4'h5: out <= 4'hc;
    4'h6: out <= 4'ha;
    4'h7: out <= 4'hf;
    4'h8: out <= 4'hd;
    4'h9: out <= 4'h1;
    4'ha: out <= 4'he;
    4'hb: out <= 4'h4;
    4'hc: out <= 4'h0;
    4'hd: out <= 4'hb;
    4'he: out <= 4'h5;
    4'hf: out <= 4'h2;
    endcase
endmodule

module S3 (clk, in, out);
    input clk;
    input [3:0] in;
    output reg [3:0] out;
    always @ (posedge clk) 
    case (in)
    4'h0: out <= 4'h0;
    4'h1: out <= 4'hf;
    4'h2: out <= 4'hb;
    4'h3: out <= 4'h8;
    4'h4: out <= 4'hc;
    4'h5: out <= 4'h9;
    4'h6: out <= 4'h6;
    4'h7: out <= 4'h3;
    4'h8: out <= 4'hd;
    4'h9: out <= 4'h1;
    4'ha: out <= 4'h2;
    4'hb: out <= 4'h4;
    4'hc: out <= 4'ha;
    4'hd: out <= 4'h7;
    4'he: out <= 4'h5;
    4'hf: out <= 4'he;
    endcase
endmodule

module S4 (clk, in, out);
    input clk;
    input [3:0] in;
    output reg [3:0] out;
    always @ (posedge clk) // GT: why no begin?
    case (in)
    4'h0: out <= 4'h1;
    4'h1: out <= 4'hf;
    4'h2: out <= 4'h8;
    4'h3: out <= 4'h3;
    4'h4: out <= 4'hc;
    4'h5: out <= 4'h0;
    4'h6: out <= 4'hb;
    4'h7: out <= 4'h6;
    4'h8: out <= 4'h2;
    4'h9: out <= 4'h5;
    4'ha: out <= 4'h4;
    4'hb: out <= 4'ha;
    4'hc: out <= 4'h9;
    4'hd: out <= 4'he;
    4'he: out <= 4'h7;
    4'hf: out <= 4'hd;
    endcase
endmodule

module S5 (clk, in, out);
    input clk;
    input [3:0] in;
    output reg [3:0] out;
    always @ (posedge clk) // GT: why no begin?
    case (in)
    4'h0: out <= 4'hf;
    4'h1: out <= 4'h5;
    4'h2: out <= 4'h2;
    4'h3: out <= 4'hb;
    4'h4: out <= 4'h4;
    4'h5: out <= 4'ha;
    4'h6: out <= 4'h9;
    4'h7: out <= 4'hc;
    4'h8: out <= 4'h0;
    4'h9: out <= 4'h3;
    4'ha: out <= 4'he;
    4'hb: out <= 4'h8;
    4'hc: out <= 4'hd;
    4'hd: out <= 4'h6;
    4'he: out <= 4'h7;
    4'hf: out <= 4'h1;
    endcase
endmodule

module S6 (clk, in, out);
    input clk;
    input [3:0] in;
    output reg [3:0] out;
    always @ (posedge clk) // GT: why no begin?
    case (in)
    4'h0: out <= 4'h7;
    4'h1: out <= 4'h2;
    4'h2: out <= 4'hc;
    4'h3: out <= 4'h5;
    4'h4: out <= 4'h8;
    4'h5: out <= 4'h4;
    4'h6: out <= 4'h6;
    4'h7: out <= 4'hb;
    4'h8: out <= 4'he;
    4'h9: out <= 4'h9;
    4'ha: out <= 4'h1;
    4'hb: out <= 4'hf;
    4'hc: out <= 4'hd;
    4'hd: out <= 4'h3;
    4'he: out <= 4'ha;
    4'hf: out <= 4'h0;
    endcase
endmodule

module S7 (clk, in, out);
    input clk;
    input [3:0] in;
    output reg [3:0] out;
    always @ (posedge clk) // GT: why no begin?
    case (in)
    4'h0: out <= 4'h1;
    4'h1: out <= 4'hd;
    4'h2: out <= 4'hf;
    4'h3: out <= 4'h0;
    4'h4: out <= 4'he;
    4'h5: out <= 4'h8;
    4'h6: out <= 4'h2;
    4'h7: out <= 4'hb;
    4'h8: out <= 4'h7;
    4'h9: out <= 4'h4;
    4'ha: out <= 4'hc;
    4'hb: out <= 4'ha;
    4'hc: out <= 4'h9;
    4'hd: out <= 4'h3;
    4'he: out <= 4'h5;
    4'hf: out <= 4'h6;
    endcase
endmodule

module S0_32 (clk, in, out);
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

    S0
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

module S1_32 (clk, in, out);
    input clk;
    input [127:0] in;
    output [127:0] out;

    wire [127:0] ped_input; // after permutation
    wire [127:0] ped_output;

    genvar i;
    generate
        for(i = 0; i<32; i = i+1) begin
            assign ped_input[4*i+0] = in[i+0];            
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

    S1
        S1_0  (clk, ped_input[127:124], ped_output[127:124]),
        S1_1  (clk, ped_input[123:120], ped_output[123:120]),
        S1_2  (clk, ped_input[119:116], ped_output[119:116]),
        S1_3  (clk, ped_input[115:112], ped_output[115:112]),
        S1_4  (clk, ped_input[111:108], ped_output[111:108]),
        S1_5  (clk, ped_input[107:104], ped_output[107:104]),
        S1_6  (clk, ped_input[103:100], ped_output[103:100]),
        S1_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S1_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S1_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S1_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S1_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S1_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S1_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S1_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S1_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S1_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S1_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S1_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S1_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S1_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S1_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S1_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S1_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S1_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S1_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S1_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S1_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S1_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S1_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S1_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S1_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module S2_32 (clk, in, out);
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

    S2
        S2_0  (clk, ped_input[127:124], ped_output[127:124]),
        S2_1  (clk, ped_input[123:120], ped_output[123:120]),
        S2_2  (clk, ped_input[119:116], ped_output[119:116]),
        S2_3  (clk, ped_input[115:112], ped_output[115:112]),
        S2_4  (clk, ped_input[111:108], ped_output[111:108]),
        S2_5  (clk, ped_input[107:104], ped_output[107:104]),
        S2_6  (clk, ped_input[103:100], ped_output[103:100]),
        S2_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S2_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S2_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S2_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S2_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S2_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S2_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S2_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S2_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S2_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S2_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S2_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S2_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S2_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S2_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S2_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S2_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S2_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S2_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S2_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S2_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S2_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S2_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S2_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S2_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module S3_32 (clk, in, out);
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

    S3
        S3_0  (clk, ped_input[127:124], ped_output[127:124]),
        S3_1  (clk, ped_input[123:120], ped_output[123:120]),
        S3_2  (clk, ped_input[119:116], ped_output[119:116]),
        S3_3  (clk, ped_input[115:112], ped_output[115:112]),
        S3_4  (clk, ped_input[111:108], ped_output[111:108]),
        S3_5  (clk, ped_input[107:104], ped_output[107:104]),
        S3_6  (clk, ped_input[103:100], ped_output[103:100]),
        S3_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S3_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S3_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S3_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S3_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S3_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S3_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S3_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S3_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S3_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S3_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S3_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S3_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S3_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S3_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S3_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S3_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S3_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S3_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S3_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S3_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S3_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S3_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S3_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S3_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module S4_32 (clk, in, out);
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

    S4
        S4_0  (clk, ped_input[127:124], ped_output[127:124]),
        S4_1  (clk, ped_input[123:120], ped_output[123:120]),
        S4_2  (clk, ped_input[119:116], ped_output[119:116]),
        S4_3  (clk, ped_input[115:112], ped_output[115:112]),
        S4_4  (clk, ped_input[111:108], ped_output[111:108]),
        S4_5  (clk, ped_input[107:104], ped_output[107:104]),
        S4_6  (clk, ped_input[103:100], ped_output[103:100]),
        S4_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S4_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S4_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S4_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S4_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S4_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S4_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S4_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S4_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S4_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S4_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S4_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S4_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S4_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S4_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S4_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S4_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S4_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S4_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S4_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S4_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S4_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S4_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S4_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S4_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module S5_32 (clk, in, out);
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

    S5
        S5_0  (clk, ped_input[127:124], ped_output[127:124]),
        S5_1  (clk, ped_input[123:120], ped_output[123:120]),
        S5_2  (clk, ped_input[119:116], ped_output[119:116]),
        S5_3  (clk, ped_input[115:112], ped_output[115:112]),
        S5_4  (clk, ped_input[111:108], ped_output[111:108]),
        S5_5  (clk, ped_input[107:104], ped_output[107:104]),
        S5_6  (clk, ped_input[103:100], ped_output[103:100]),
        S5_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S5_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S5_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S5_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S5_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S5_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S5_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S5_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S5_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S5_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S5_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S5_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S5_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S5_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S5_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S5_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S5_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S5_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S5_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S5_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S5_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S5_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S5_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S5_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S5_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module S6_32 (clk, in, out);
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

    S6
        S6_0  (clk, ped_input[127:124], ped_output[127:124]),
        S6_1  (clk, ped_input[123:120], ped_output[123:120]),
        S6_2  (clk, ped_input[119:116], ped_output[119:116]),
        S6_3  (clk, ped_input[115:112], ped_output[115:112]),
        S6_4  (clk, ped_input[111:108], ped_output[111:108]),
        S6_5  (clk, ped_input[107:104], ped_output[107:104]),
        S6_6  (clk, ped_input[103:100], ped_output[103:100]),
        S6_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S6_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S6_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S6_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S6_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S6_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S6_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S6_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S6_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S6_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S6_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S6_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S6_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S6_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S6_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S6_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S6_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S6_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S6_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S6_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S6_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S6_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S6_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S6_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S6_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule

module S7_32 (clk, in, out);
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

    S7
        S7_0  (clk, ped_input[127:124], ped_output[127:124]),
        S7_1  (clk, ped_input[123:120], ped_output[123:120]),
        S7_2  (clk, ped_input[119:116], ped_output[119:116]),
        S7_3  (clk, ped_input[115:112], ped_output[115:112]),
        S7_4  (clk, ped_input[111:108], ped_output[111:108]),
        S7_5  (clk, ped_input[107:104], ped_output[107:104]),
        S7_6  (clk, ped_input[103:100], ped_output[103:100]),
        S7_7  (clk, ped_input[99:96]  , ped_output[99:96]  ),
        S7_8  (clk, ped_input[95:92]  , ped_output[95:92]  ),
        S7_9  (clk, ped_input[91:88]  , ped_output[91:88]  ),
        S7_10 (clk, ped_input[87:84]  , ped_output[87:84]  ),
        S7_11 (clk, ped_input[83:80]  , ped_output[83:80]  ),
        S7_12 (clk, ped_input[79:76]  , ped_output[79:76]  ),
        S7_13 (clk, ped_input[75:72]  , ped_output[75:72]  ),
        S7_14 (clk, ped_input[71:68]  , ped_output[71:68]  ),
        S7_15 (clk, ped_input[67:64]  , ped_output[67:64]  ),
        S7_16 (clk, ped_input[63:60]  , ped_output[63:60]  ),
        S7_17 (clk, ped_input[59:56]  , ped_output[59:56]  ),
        S7_18 (clk, ped_input[55:52]  , ped_output[55:52]  ),
        S7_19 (clk, ped_input[51:48]  , ped_output[51:48]  ),
        S7_20 (clk, ped_input[47:44]  , ped_output[47:44]  ),
        S7_21 (clk, ped_input[43:40]  , ped_output[43:40]  ),
        S7_22 (clk, ped_input[39:36]  , ped_output[39:36]  ),
        S7_23 (clk, ped_input[35:32]  , ped_output[35:32]  ),
        S7_24 (clk, ped_input[31:28]  , ped_output[31:28]  ),
        S7_25 (clk, ped_input[27:24]  , ped_output[27:24]  ),
        S7_26 (clk, ped_input[23:20]  , ped_output[23:20]  ),
        S7_27 (clk, ped_input[19:16]  , ped_output[19:16]  ),
        S7_28 (clk, ped_input[15:12]  , ped_output[15:12]  ),
        S7_29 (clk, ped_input[11:8]   , ped_output[11:8]   ),
        S7_30 (clk, ped_input[7:4]    , ped_output[7:4]    ),
        S7_31 (clk, ped_input[3:0]    , ped_output[3:0]    );
endmodule