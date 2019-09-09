// Chris Ceroici

// Neural Network Forward Propagation 

module FWDPROP(
	alpha_L1_j_0, alpha_L1_j_1, alpha_L1_j_2, alpha_L1_j_3, alpha_L1_j_4, alpha_L1_j_5, alpha_L1_j_6, alpha_L1_j_7, alpha_L1_j_8, alpha_L1_j_9, alpha_L1_j_10, alpha_L1_j_11, alpha_L1_j_12, alpha_L1_j_13, alpha_L1_j_14, alpha_L1_j_15, alpha_L1_j_16, alpha_L1_j_17, alpha_L1_j_18, alpha_L1_j_19, alpha_L1_j_20, alpha_L1_j_21, alpha_L1_j_22, alpha_L1_j_23, alpha_L1_j_24,
	beta_L1,
	alpha_L2_j_0, alpha_L2_j_1, alpha_L2_j_2, alpha_L2_j_3, alpha_L2_j_4, alpha_L2_j_5, alpha_L2_j_6, alpha_L2_j_7,
	beta_L2,
	alpha_L3_j_0, alpha_L3_j_1, alpha_L3_j_2, alpha_L3_j_3, alpha_L3_j_4,
	beta_L3,
	SIGN_alpha_L1_j_0, SIGN_alpha_L1_j_1, SIGN_alpha_L1_j_2, SIGN_alpha_L1_j_3, SIGN_alpha_L1_j_4, SIGN_alpha_L1_j_5, SIGN_alpha_L1_j_6, SIGN_alpha_L1_j_7, SIGN_alpha_L1_j_8, SIGN_alpha_L1_j_9, SIGN_alpha_L1_j_10, SIGN_alpha_L1_j_11, SIGN_alpha_L1_j_12, SIGN_alpha_L1_j_13, SIGN_alpha_L1_j_14, SIGN_alpha_L1_j_15, SIGN_alpha_L1_j_16, SIGN_alpha_L1_j_17, SIGN_alpha_L1_j_18, SIGN_alpha_L1_j_19, SIGN_alpha_L1_j_20, SIGN_alpha_L1_j_21, SIGN_alpha_L1_j_22, SIGN_alpha_L1_j_23, SIGN_alpha_L1_j_24,
	SIGN_beta_L1,
	SIGN_alpha_L2_j_0, SIGN_alpha_L2_j_1, SIGN_alpha_L2_j_2, SIGN_alpha_L2_j_3, SIGN_alpha_L2_j_4, SIGN_alpha_L2_j_5, SIGN_alpha_L2_j_6, SIGN_alpha_L2_j_7,
	SIGN_beta_L2,
	SIGN_alpha_L3_j_0, SIGN_alpha_L3_j_1, SIGN_alpha_L3_j_2, SIGN_alpha_L3_j_3, SIGN_alpha_L3_j_4,
	SIGN_beta_L3,
	R_FP0, R_FP1, R_FP2, R_FP3, R_FP4, R_FP5, R_FP6, R_FP7, R_FP8,
	zeroCenterSource,
	a_L0,
	a_L1,
	a_L2,
	a_L3,
	z_L0,
	z_L1,
	z_L2,
	z_L3,
	zp_L0,
	zp_L1,
	zp_L2,
	zp_L3,
	a_MEM_ACTIVE_L1,
	a_MEM_ACTIVE_L2,
	a_MEM_ACTIVE_L3,
	CLK, INIT, CLK_TRAINING_flag
);

parameter MEMSIZE = 3;
parameter DP_in = 8;
parameter DP_out = 16;

input wire CLK, INIT, CLK_TRAINING_flag;
input wire [5 - 1:0] alpha_L1_j_0, alpha_L1_j_1, alpha_L1_j_2, alpha_L1_j_3, alpha_L1_j_4, alpha_L1_j_5, alpha_L1_j_6, alpha_L1_j_7, alpha_L1_j_8, alpha_L1_j_9, alpha_L1_j_10, alpha_L1_j_11, alpha_L1_j_12, alpha_L1_j_13, alpha_L1_j_14, alpha_L1_j_15, alpha_L1_j_16, alpha_L1_j_17, alpha_L1_j_18, alpha_L1_j_19, alpha_L1_j_20, alpha_L1_j_21, alpha_L1_j_22, alpha_L1_j_23, alpha_L1_j_24;
input wire [25 - 1:0] beta_L1;
input wire [25 - 1:0] alpha_L2_j_0, alpha_L2_j_1, alpha_L2_j_2, alpha_L2_j_3, alpha_L2_j_4, alpha_L2_j_5, alpha_L2_j_6, alpha_L2_j_7;
input wire [8 - 1:0] beta_L2;
input wire [8 - 1:0] alpha_L3_j_0, alpha_L3_j_1, alpha_L3_j_2, alpha_L3_j_3, alpha_L3_j_4;
input wire [5 - 1:0] beta_L3;
input wire [5 - 1:0] SIGN_alpha_L1_j_0, SIGN_alpha_L1_j_1, SIGN_alpha_L1_j_2, SIGN_alpha_L1_j_3, SIGN_alpha_L1_j_4, SIGN_alpha_L1_j_5, SIGN_alpha_L1_j_6, SIGN_alpha_L1_j_7, SIGN_alpha_L1_j_8, SIGN_alpha_L1_j_9, SIGN_alpha_L1_j_10, SIGN_alpha_L1_j_11, SIGN_alpha_L1_j_12, SIGN_alpha_L1_j_13, SIGN_alpha_L1_j_14, SIGN_alpha_L1_j_15, SIGN_alpha_L1_j_16, SIGN_alpha_L1_j_17, SIGN_alpha_L1_j_18, SIGN_alpha_L1_j_19, SIGN_alpha_L1_j_20, SIGN_alpha_L1_j_21, SIGN_alpha_L1_j_22, SIGN_alpha_L1_j_23, SIGN_alpha_L1_j_24;
input wire [25 - 1:0] SIGN_beta_L1;
input wire [25 - 1:0] SIGN_alpha_L2_j_0, SIGN_alpha_L2_j_1, SIGN_alpha_L2_j_2, SIGN_alpha_L2_j_3, SIGN_alpha_L2_j_4, SIGN_alpha_L2_j_5, SIGN_alpha_L2_j_6, SIGN_alpha_L2_j_7;
input wire [8 - 1:0] SIGN_beta_L2;
input wire [8 - 1:0] SIGN_alpha_L3_j_0, SIGN_alpha_L3_j_1, SIGN_alpha_L3_j_2, SIGN_alpha_L3_j_3, SIGN_alpha_L3_j_4;
input wire [5 - 1:0] SIGN_beta_L3;
input wire [5 - 1:0] a_L0;
output wire [25 - 1:0] a_L1;
output wire [8 - 1:0] a_L2;
output wire [5 - 1:0] a_L3;
output wire [5 - 1:0] z_L0;
output wire [25 - 1:0] z_L1;
output wire [8 - 1:0] z_L2;
output wire [5 - 1:0] z_L3;
output wire [5 - 1:0] zp_L0;
output wire [25 - 1:0] zp_L1;
output wire [8 - 1:0] zp_L2;
output wire [5 - 1:0] zp_L3;
input wire [25 - 1:0] a_MEM_ACTIVE_L1;
input wire [8 - 1:0] a_MEM_ACTIVE_L2;
input wire [5 - 1:0] a_MEM_ACTIVE_L3;
input wire [7:0] R_FP0, R_FP1, R_FP2, R_FP3, R_FP4, R_FP5, R_FP6, R_FP7, R_FP8;
input wire [39-1:0] zeroCenterSource;

wire [8:0] R_FP_source;


DEC2STCH DSRFP0(.CLK(CLK), .INIT(INIT), .D(8'd127),.LFSR(R_FP0),.S(R_FP_source[0]));
DEC2STCH DSRFP1(.CLK(CLK), .INIT(INIT), .D(8'd127),.LFSR(R_FP1),.S(R_FP_source[1]));
DEC2STCH DSRFP2(.CLK(CLK), .INIT(INIT), .D(8'd127),.LFSR(R_FP2),.S(R_FP_source[2]));

FULLCONNBLOCK_L1 FULLCONNBLOCK_L1_0(
	.a_input(a_L0),
	.a_MEM_ACTIVE(a_MEM_ACTIVE_L1),
	.alpha_j_0(alpha_L1_j_0), .alpha_j_1(alpha_L1_j_1), .alpha_j_2(alpha_L1_j_2), .alpha_j_3(alpha_L1_j_3), .alpha_j_4(alpha_L1_j_4), .alpha_j_5(alpha_L1_j_5), .alpha_j_6(alpha_L1_j_6), .alpha_j_7(alpha_L1_j_7), .alpha_j_8(alpha_L1_j_8), .alpha_j_9(alpha_L1_j_9), .alpha_j_10(alpha_L1_j_10), .alpha_j_11(alpha_L1_j_11), .alpha_j_12(alpha_L1_j_12), .alpha_j_13(alpha_L1_j_13), .alpha_j_14(alpha_L1_j_14), .alpha_j_15(alpha_L1_j_15), .alpha_j_16(alpha_L1_j_16), .alpha_j_17(alpha_L1_j_17), .alpha_j_18(alpha_L1_j_18), .alpha_j_19(alpha_L1_j_19), .alpha_j_20(alpha_L1_j_20), .alpha_j_21(alpha_L1_j_21), .alpha_j_22(alpha_L1_j_22), .alpha_j_23(alpha_L1_j_23), .alpha_j_24(alpha_L1_j_24), 
	.beta(beta_L1),
	.SIGN_alpha_j_0(SIGN_alpha_L1_j_0), .SIGN_alpha_j_1(SIGN_alpha_L1_j_1), .SIGN_alpha_j_2(SIGN_alpha_L1_j_2), .SIGN_alpha_j_3(SIGN_alpha_L1_j_3), .SIGN_alpha_j_4(SIGN_alpha_L1_j_4), .SIGN_alpha_j_5(SIGN_alpha_L1_j_5), .SIGN_alpha_j_6(SIGN_alpha_L1_j_6), .SIGN_alpha_j_7(SIGN_alpha_L1_j_7), .SIGN_alpha_j_8(SIGN_alpha_L1_j_8), .SIGN_alpha_j_9(SIGN_alpha_L1_j_9), .SIGN_alpha_j_10(SIGN_alpha_L1_j_10), .SIGN_alpha_j_11(SIGN_alpha_L1_j_11), .SIGN_alpha_j_12(SIGN_alpha_L1_j_12), .SIGN_alpha_j_13(SIGN_alpha_L1_j_13), .SIGN_alpha_j_14(SIGN_alpha_L1_j_14), .SIGN_alpha_j_15(SIGN_alpha_L1_j_15), .SIGN_alpha_j_16(SIGN_alpha_L1_j_16), .SIGN_alpha_j_17(SIGN_alpha_L1_j_17), .SIGN_alpha_j_18(SIGN_alpha_L1_j_18), .SIGN_alpha_j_19(SIGN_alpha_L1_j_19), .SIGN_alpha_j_20(SIGN_alpha_L1_j_20), .SIGN_alpha_j_21(SIGN_alpha_L1_j_21), .SIGN_alpha_j_22(SIGN_alpha_L1_j_22), .SIGN_alpha_j_23(SIGN_alpha_L1_j_23), .SIGN_alpha_j_24(SIGN_alpha_L1_j_24), 
	.SIGN_beta(SIGN_beta_L1),
	.z(z_L1),
	.zp(zp_L1),
	.a_out(a_L1),
	.R_FPsource(R_FP_source[0]), .zeroCenterSource(zeroCenterSource[0]),
	.CLK(CLK), .INIT(INIT), .CLK_TRAINING_flag(CLK_TRAINING_flag)
);

FULLCONNBLOCK_L2 FULLCONNBLOCK_L2_0(
	.a_input(a_L1),
	.a_MEM_ACTIVE(a_MEM_ACTIVE_L2),
	.alpha_j_0(alpha_L2_j_0), .alpha_j_1(alpha_L2_j_1), .alpha_j_2(alpha_L2_j_2), .alpha_j_3(alpha_L2_j_3), .alpha_j_4(alpha_L2_j_4), .alpha_j_5(alpha_L2_j_5), .alpha_j_6(alpha_L2_j_6), .alpha_j_7(alpha_L2_j_7), 
	.beta(beta_L2),
	.SIGN_alpha_j_0(SIGN_alpha_L2_j_0), .SIGN_alpha_j_1(SIGN_alpha_L2_j_1), .SIGN_alpha_j_2(SIGN_alpha_L2_j_2), .SIGN_alpha_j_3(SIGN_alpha_L2_j_3), .SIGN_alpha_j_4(SIGN_alpha_L2_j_4), .SIGN_alpha_j_5(SIGN_alpha_L2_j_5), .SIGN_alpha_j_6(SIGN_alpha_L2_j_6), .SIGN_alpha_j_7(SIGN_alpha_L2_j_7), 
	.SIGN_beta(SIGN_beta_L2),
	.z(z_L2),
	.zp(zp_L2),
	.a_out(a_L2),
	.R_FPsource(R_FP_source[1]), .zeroCenterSource(zeroCenterSource[1]),
	.CLK(CLK), .INIT(INIT), .CLK_TRAINING_flag(CLK_TRAINING_flag)
);

FULLCONNBLOCK_L3 FULLCONNBLOCK_L3_0(
	.a_input(a_L2),
	.a_MEM_ACTIVE(a_MEM_ACTIVE_L3),
	.alpha_j_0(alpha_L3_j_0), .alpha_j_1(alpha_L3_j_1), .alpha_j_2(alpha_L3_j_2), .alpha_j_3(alpha_L3_j_3), .alpha_j_4(alpha_L3_j_4), 
	.beta(beta_L3),
	.SIGN_alpha_j_0(SIGN_alpha_L3_j_0), .SIGN_alpha_j_1(SIGN_alpha_L3_j_1), .SIGN_alpha_j_2(SIGN_alpha_L3_j_2), .SIGN_alpha_j_3(SIGN_alpha_L3_j_3), .SIGN_alpha_j_4(SIGN_alpha_L3_j_4), 
	.SIGN_beta(SIGN_beta_L3),
	.z(z_L3),
	.zp(zp_L3),
	.a_out(a_L3),
	.R_FPsource(R_FP_source[2]), .zeroCenterSource(zeroCenterSource[2]),
	.CLK(CLK), .INIT(INIT), .CLK_TRAINING_flag(CLK_TRAINING_flag)
);


endmodule
