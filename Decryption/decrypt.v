module decrypt(clk,in,k0,k1,k2,k3, k4, k5, k6, 
            	k7, k8, k9, k10, k11, k12, k13, k14,
                k15,k16, k17, k18, k19, k20, k21, k22, 
                k23,k24,k25, k26, k27, k28, k29, k30, k31, 
                k32,plain);
    input clk;
	input [127:0] in;
	input [127:0] k0, k1, k2, k3, k4, k5, k6, k7, k8,
	   			 k9, k10, k11, k12, k13, k14, k15, k16, 
	    		 k17, k18, k19, k20, k21, k22, k23, k24, 
	    		 k25, k26, k27, k28, k29, k30, k31, k32;
	output [127:0] plain;
    wire [127:0] s0,s1,s2, s3, s4, s5, s6, s7, s8, s9, s10, s11,s12, s13, s14, s15,
                 s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28,
                 s29, s30 ,s31,s32;  
    assign s32 = in ^ k32;
    assign plain = s0;
    dec_final_round dfr (s32,s31,k31,clk);
    dec_round_0 
        d0(s0,s1,k0,i_clk), d8(s8,s9,k8,i_clk), d16(s16,s17,k16,i_clk), d24(s24,s25,k24,i_clk);
    dec_round_1 
        d1(s1,s2,k1,i_clk), d9(s9,s10,k9,i_clk), d17(s17,s18,k17,i_clk), d25(s25,s26,k25,i_clk);
    dec_round_2 
        d2(s2,s3,k2,i_clk), d10(s10,s11,k10,i_clk), d18(s18,s19,k18,i_clk), d26(s26,s27,k26,i_clk);
    dec_round_3 
        d3(s3,s4,k3,i_clk), d11(s11,s12,k11,i_clk), d19(s19,s20,k19,i_clk), d27(s27,s28,k27,i_clk);
    dec_round_4 
        d4(s4,s5,k4,i_clk), d12(s12,s13,k12,i_clk), d20(s20,s21,k20,i_clk), d28(s28,s29,k28,i_clk);
    dec_round_5 
        d5(s5,s6,k5,i_clk), d13(s13,s14,k13,i_clk), d21(s21,s22,k21,i_clk), d29(s29,s30,k29,i_clk);
    dec_round_6 
        d6(s6,s7,k6,i_clk), d14(s14,s15,k14,i_clk), d22(s22,s23,k22,i_clk), d30(s30,s31,k30,i_clk);
    dec_round_7 
        d7(s7,s8,k7,i_clk), d15(s15,s16,k15,i_clk), d23(s23,s24,k23,i_clk);
endmodule
