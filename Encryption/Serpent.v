module Serpent(     input i_clk,
                    input i_resetn,
                    input i_dir,
                    input [255:0] i_key,
                    input i_new_block,
                    input [127:0] i_data,
                    output o_ready,
                    output [127:0] o_output);

        parameter _Delay = 64;
        wire [127:0] cipher, plain;
        reg [6:0] counter;
        wire [6:0] next_counter;
        wire start;
        reg o_ready;
        wire [127:0] k0, k1, k2, k3, k4, k5, k6, k7, k8,
                 k9, k10, k11, k12, k13, k14, k15, k16, 
                 k17, k18, k19, k20, k21, k22, k23, k24, 
                 k25, k26, k27, k28, k29, k30, k31, k32;

        // hand-shake mechanism
        
        assign start = i_new_block;
        always@(posedge i_clk or negedge i_resetn)begin
            if (~i_resetn)begin
                o_ready <= 1;
            end
            else if (start) begin
                o_ready <= 0;
            end
            else if (counter == _Delay)begin
                o_ready <= 1;
            end
            else begin
                o_ready <= o_ready;
            end
        end

        always@(posedge i_clk or negedge i_resetn)begin
            if (~i_resetn)begin
                counter <= 6'd0;
            end
            else begin
                counter <= next_counter;
            end
        end

        assign next_counter = (start)? 6'd1:
                            (counter == 6'd0)? 6'd0:
                            (counter == _Delay)? _Delay : counter + 1;

        
        key_schedule 
            KK (i_clk, i_key, k0, k1, k2, k3, k4, k5, k6, 
                k7, k8, k9, k10, k11, k12, k13, k14, k15, 
                k16, k17, k18, k19, k20, k21, k22, k23, k24, 
                k25, k26, k27, k28, k29, k30, k31, k32);
        encrypt
            ee(i_clk, i_data, k0, k1, k2, k3, k4, k5, k6, 
             k7, k8, k9, k10, k11, k12, k13, k14, k15, 
             k16, k17, k18, k19, k20, k21, k22, k23, k24, 
             k25, k26, k27, k28, k29, k30, k31, k32, cipher);
        
        decrypt
            dd(i_clk, i_data, k0, k1, k2, k3, k4, k5, k6, 
              k7, k8, k9, k10, k11, k12, k13, k14, k15, 
              k16, k17, k18, k19, k20, k21, k22, k23, k24, 
              k25, k26, k27, k28, k29, k30, k31, k32, plain);
        
        assign o_output = (i_dir == 0)? plain: cipher;
endmodule

module key_schedule(i_clk, i_key, K0, K1, K2, K3, K4, K5, K6, 
                    K7, K8, K9, K10, K11, K12, K13, K14, K15, 
                    K16, K17, K18, K19, K20, K21, K22, K23, K24, 
                    K25, K26, K27, K28, K29, K30, K31, K32);
    input             i_clk;
    input   [255:0] i_key;
    output [127:0] K0, K1, K2, K3, K4, K5, K6, K7, K8,
                  K9, K10, K11, K12, K13, K14, K15, K16, 
                  K17, K18, K19, K20, K21, K22, K23, K24, 
                  K25, K26, K27, K28, K29, K30, K31, K32;

    wire   [127:0] k0, k1, k2, k3, k4, k5, k6, k7, k8,
                    k9, k10, k11, k12, k13, k14, k15, k16, 
                    k17, k18, k19, k20, k21, k22, k23, k24, 
                    k25, k26, k27, k28, k29, k30, k31, k32; 
    
    wire [31:0] w_n8, w_n7, w_n6, w_n5, w_n4, w_n3, w_n2, w_n1; // -1~-8 prekey

    reg [255:0] _K0;

    wire [31:0]pk [131:0]; // prekey: pk[0] ~ pk[131]
    
    parameter phi = 32'h9e3779b9;
    // key scheduling
    assign {w_n1,w_n2,w_n3,w_n4,w_n5,w_n6,w_n7,w_n8} = i_key;
    assign pk[0] = ((w_n8 ^ w_n5 ^ w_n3 ^ w_n1 ^ phi ^ 0) << 11)|((w_n8 ^ w_n5 ^ w_n3 ^ w_n1 ^ phi ^ 0) >> 21);
    assign pk[1] = ((w_n7 ^ w_n4 ^ w_n2 ^ pk[0] ^ phi ^ 1) << 11)|((w_n7 ^ w_n4 ^ w_n2 ^ pk[0] ^ phi ^ 1) >> 21);
    assign pk[2] = ((w_n6 ^ w_n3 ^ w_n1 ^ pk[1] ^ phi ^ 2) << 11)|((w_n6 ^ w_n3 ^ w_n1 ^ pk[1] ^ phi ^ 2) >> 21);
    assign pk[3] = ((w_n5 ^ w_n2 ^ pk[0] ^ pk[2] ^ phi ^ 3) << 11)|((w_n5 ^ w_n2 ^ pk[0] ^ pk[2] ^ phi ^ 3) >> 21);
    assign pk[4] = ((w_n4 ^ w_n1 ^ pk[1] ^ pk[3] ^ phi ^ 4) << 11)|((w_n4 ^ w_n1 ^ pk[1] ^ pk[3] ^ phi ^ 4) >> 21);
    assign pk[5] = ((w_n3 ^ pk[0] ^ pk[2] ^ pk[4] ^ phi ^ 5) << 11)|((w_n3 ^ pk[0] ^ pk[2] ^ pk[4] ^ phi ^ 5) >> 21);
    assign pk[6] = ((w_n2 ^ pk[1] ^ pk[3] ^ pk[5] ^ phi ^ 6) << 11)|((w_n2 ^ pk[1] ^ pk[3] ^ pk[5] ^ phi ^ 6) >> 21);
    assign pk[7] = ((w_n1 ^ pk[2] ^ pk[4] ^ pk[6] ^ phi ^ 7) << 11)|((w_n1 ^ pk[2] ^ pk[4] ^ pk[6] ^ phi ^ 7) >> 21);

    genvar idx;
    generate 
        for (idx = 8; idx < 132; idx = idx+1) begin
            assign pk[idx] = ((pk[idx-8] ^ pk[idx-5] ^ pk[idx-3] ^ pk[idx-1] ^ phi ^ idx) << 11)|((pk[idx-8] ^ pk[idx-5] ^ pk[idx-3] ^ pk[idx-1] ^ phi ^ idx) >> 21); 
        end
    endgenerate
    always @ (posedge i_clk)
      begin
        _K0 <= i_key;
      end

    S0_32
        a3 (i_clk,{pk[15] , pk[14] , pk[13] , pk[12]} , k3 ),
        a11(i_clk,{pk[47] , pk[46] , pk[45] , pk[44]} , k11),
        a19(i_clk,{pk[79] , pk[78] , pk[77] , pk[76]} , k19),
        a27(i_clk,{pk[111], pk[110], pk[109], pk[108]}, k27);

    S1_32
        a2 (i_clk,{pk[11]  , pk[10]  , pk[9] , pk[8]} , k2 ),
        a10(i_clk,{pk[43] , pk[42] , pk[41] , pk[40]} , k10),
        a18(i_clk,{pk[75] , pk[74] , pk[73] , pk[72]} , k18),
        a26(i_clk,{pk[107], pk[106], pk[105], pk[104]}, k26);

    S2_32
        a1 (i_clk,{  pk[7],   pk[6],   pk[5],   pk[4]}, k1 ),
        a9 (i_clk,{ pk[39],  pk[38],  pk[37],  pk[36]}, k9 ),
        a17(i_clk,{ pk[71],  pk[70],  pk[69],  pk[68]}, k17),
        a25(i_clk,{pk[103], pk[102], pk[101], pk[100]}, k25);

    S3_32
        a0 (i_clk,{pk[3] , pk[2] , pk[1] , pk[0] }, k0 ), 
        a8 (i_clk,{pk[35], pk[34], pk[33], pk[32]}, k8 ),
        a16(i_clk,{pk[67], pk[66], pk[65], pk[64]}, k16),
        a24(i_clk,{pk[99], pk[98], pk[97], pk[96]}, k24),
        a32(i_clk,{pk[131], pk[130], pk[129], pk[128]},k32);
    S4_32
        a7 (i_clk,{pk[31],  pk[30], pk[29], pk[28]}, k7 ), 
        a15(i_clk,{pk[63],  pk[62], pk[61], pk[60]}, k15),
        a23(i_clk,{pk[95],  pk[94], pk[93], pk[92]}, k23),
        a31(i_clk,{pk[127],pk[126],pk[125],pk[124]}, k31);

    S5_32
        a6 (i_clk,{ pk[27],  pk[26],  pk[25],  pk[24]}, k6 ), 
        a14(i_clk,{ pk[59],  pk[58],  pk[57],  pk[56]}, k14),
        a22(i_clk,{ pk[91],  pk[90],  pk[89],  pk[88]}, k22),
        a30(i_clk,{pk[123], pk[122], pk[121], pk[120]}, k30);

    S6_32
        a5 (i_clk,{ pk[23],  pk[22],  pk[21],  pk[20]}, k5 ), 
        a13(i_clk,{ pk[55],  pk[54],  pk[53],  pk[52]}, k13),
        a21(i_clk,{ pk[87],  pk[86],  pk[85],  pk[84]}, k21),
        a29(i_clk,{pk[119], pk[118], pk[117], pk[116]}, k29);

    S7_32
        a4 (i_clk,{ pk[19],  pk[18],  pk[17],  pk[16]}, k4 ), 
        a12(i_clk,{ pk[51],  pk[50],  pk[49],  pk[48]}, k12),
        a20(i_clk,{ pk[83],  pk[82],  pk[81],  pk[80]}, k20),
        a28(i_clk,{pk[115], pk[114], pk[113], pk[112]}, k28);
    assign K0 = k0;
    assign K1 = k1;
    assign K2 = k2;
    assign K3 = k3;
    assign K4 = k4;
    assign K5 = k5;
    assign K6 = k6;
    assign K7 = k7;
    assign K8 = k8;
    assign K9 = k9;
    assign K10 = k10;
    assign K11 = k11;
    assign K12 = k12;
    assign K13 = k13;
    assign K14 = k14;
    assign K15 = k15;
    assign K16 = k16;
    assign K17 = k17;
    assign K18 = k18;
    assign K19 = k19;
    assign K20 = k20;
    assign K21 = k21;
    assign K22 = k22;
    assign K23 = k23;
    assign K24 = k24;
    assign K25 = k25;
    assign K26 = k26;
    assign K27 = k27;
    assign K28 = k28;
    assign K29 = k29;
    assign K30 = k30;
    assign K31 = k31;
    assign K32 = k32;
endmodule



module encrypt (i_clk, data, k0, k1, k2, k3, k4, k5, k6, 
            	k7, k8, k9, k10, k11, k12, k13, k14, k15, 
           		k16, k17, k18, k19, k20, k21, k22, k23, k24, 
            	k25, k26, k27, k28, k29, k30, k31, k32, cipher);
	input i_clk;
	input [127:0] data;
	input [127:0] k0, k1, k2, k3, k4, k5, k6, k7, k8,
	   			 k9, k10, k11, k12, k13, k14, k15, k16, 
	    		 k17, k18, k19, k20, k21, k22, k23, k24, 
	    		 k25, k26, k27, k28, k29, k30, k31, k32;
	output [127:0] cipher;

	wire [127:0] s0, s1, s2, s3, s4, s5, s6, s7, s8,
	   			 s9, s10, s11, s12, s13, s14, s15, s16, 
	    		 s17, s18, s19, s20, s21, s22, s23, s24, 
	    		 s25, s26, s27, s28, s29, s30, s31, s32;

	assign s0 = data;
    assign cipher = s32;
    // 2. make keys
    // encryption
    enc_round_0 
        e0(s0,s1,k0,i_clk), e8(s8,s9,k8,i_clk), e16(s16,s17,k16,i_clk), e24(s24,s25,k24,i_clk);
    enc_round_1 
        e1(s1,s2,k1,i_clk), e9(s9,s10,k9,i_clk), e17(s17,s18,k17,i_clk), e25(s25,s26,k25,i_clk);
    enc_round_2 
        e2(s2,s3,k2,i_clk), e10(s10,s11,k10,i_clk), e18(s18,s19,k18,i_clk), e26(s26,s27,k26,i_clk);
    enc_round_3 
        e3(s3,s4,k3,i_clk), e11(s11,s12,k11,i_clk), e19(s19,s20,k19,i_clk), e27(s27,s28,k27,i_clk);
    enc_round_4 
        e4(s4,s5,k4,i_clk), e12(s12,s13,k12,i_clk), e20(s20,s21,k20,i_clk), e28(s28,s29,k28,i_clk);
    enc_round_5 
        e5(s5,s6,k5,i_clk), e13(s13,s14,k13,i_clk), e21(s21,s22,k21,i_clk), e29(s29,s30,k29,i_clk);
    enc_round_6 
        e6(s6,s7,k6,i_clk), e14(s14,s15,k14,i_clk), e22(s22,s23,k22,i_clk), e30(s30,s31,k30,i_clk);
    enc_round_7 
        e7(s7,s8,k7,i_clk), e15(s15,s16,k15,i_clk), e23(s23,s24,k23,i_clk);

    final_round
        fr(s31,s32,k31,k32,i_clk);
endmodule