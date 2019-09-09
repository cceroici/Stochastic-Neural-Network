// Chris Ceroici 

module PARAMS_sim(
	alphaD_L1_0_0, alphaD_L1_0_1, alphaD_L1_0_2, alphaD_L1_0_3, alphaD_L1_0_4, alphaD_L1_0_5, alphaD_L1_0_6, alphaD_L1_0_7, alphaD_L1_0_8, alphaD_L1_0_9, alphaD_L1_0_10, alphaD_L1_0_11, alphaD_L1_0_12, alphaD_L1_0_13, alphaD_L1_0_14, alphaD_L1_0_15, alphaD_L1_0_16, alphaD_L1_0_17, alphaD_L1_0_18, alphaD_L1_0_19, alphaD_L1_0_20, alphaD_L1_0_21, alphaD_L1_0_22, alphaD_L1_0_23, alphaD_L1_0_24,
	alphaD_L1_1_0, alphaD_L1_1_1, alphaD_L1_1_2, alphaD_L1_1_3, alphaD_L1_1_4, alphaD_L1_1_5, alphaD_L1_1_6, alphaD_L1_1_7, alphaD_L1_1_8, alphaD_L1_1_9, alphaD_L1_1_10, alphaD_L1_1_11, alphaD_L1_1_12, alphaD_L1_1_13, alphaD_L1_1_14, alphaD_L1_1_15, alphaD_L1_1_16, alphaD_L1_1_17, alphaD_L1_1_18, alphaD_L1_1_19, alphaD_L1_1_20, alphaD_L1_1_21, alphaD_L1_1_22, alphaD_L1_1_23, alphaD_L1_1_24,
	alphaD_L1_2_0, alphaD_L1_2_1, alphaD_L1_2_2, alphaD_L1_2_3, alphaD_L1_2_4, alphaD_L1_2_5, alphaD_L1_2_6, alphaD_L1_2_7, alphaD_L1_2_8, alphaD_L1_2_9, alphaD_L1_2_10, alphaD_L1_2_11, alphaD_L1_2_12, alphaD_L1_2_13, alphaD_L1_2_14, alphaD_L1_2_15, alphaD_L1_2_16, alphaD_L1_2_17, alphaD_L1_2_18, alphaD_L1_2_19, alphaD_L1_2_20, alphaD_L1_2_21, alphaD_L1_2_22, alphaD_L1_2_23, alphaD_L1_2_24,
	alphaD_L1_3_0, alphaD_L1_3_1, alphaD_L1_3_2, alphaD_L1_3_3, alphaD_L1_3_4, alphaD_L1_3_5, alphaD_L1_3_6, alphaD_L1_3_7, alphaD_L1_3_8, alphaD_L1_3_9, alphaD_L1_3_10, alphaD_L1_3_11, alphaD_L1_3_12, alphaD_L1_3_13, alphaD_L1_3_14, alphaD_L1_3_15, alphaD_L1_3_16, alphaD_L1_3_17, alphaD_L1_3_18, alphaD_L1_3_19, alphaD_L1_3_20, alphaD_L1_3_21, alphaD_L1_3_22, alphaD_L1_3_23, alphaD_L1_3_24,
	alphaD_L1_4_0, alphaD_L1_4_1, alphaD_L1_4_2, alphaD_L1_4_3, alphaD_L1_4_4, alphaD_L1_4_5, alphaD_L1_4_6, alphaD_L1_4_7, alphaD_L1_4_8, alphaD_L1_4_9, alphaD_L1_4_10, alphaD_L1_4_11, alphaD_L1_4_12, alphaD_L1_4_13, alphaD_L1_4_14, alphaD_L1_4_15, alphaD_L1_4_16, alphaD_L1_4_17, alphaD_L1_4_18, alphaD_L1_4_19, alphaD_L1_4_20, alphaD_L1_4_21, alphaD_L1_4_22, alphaD_L1_4_23, alphaD_L1_4_24,
	betaD_L1_0, betaD_L1_1, betaD_L1_2, betaD_L1_3, betaD_L1_4, betaD_L1_5, betaD_L1_6, betaD_L1_7, betaD_L1_8, betaD_L1_9, betaD_L1_10, betaD_L1_11, betaD_L1_12, betaD_L1_13, betaD_L1_14, betaD_L1_15, betaD_L1_16, betaD_L1_17, betaD_L1_18, betaD_L1_19, betaD_L1_20, betaD_L1_21, betaD_L1_22, betaD_L1_23, betaD_L1_24,
	alphaD_L2_0_0, alphaD_L2_0_1, alphaD_L2_0_2, alphaD_L2_0_3, alphaD_L2_0_4, alphaD_L2_0_5, alphaD_L2_0_6, alphaD_L2_0_7,
	alphaD_L2_1_0, alphaD_L2_1_1, alphaD_L2_1_2, alphaD_L2_1_3, alphaD_L2_1_4, alphaD_L2_1_5, alphaD_L2_1_6, alphaD_L2_1_7,
	alphaD_L2_2_0, alphaD_L2_2_1, alphaD_L2_2_2, alphaD_L2_2_3, alphaD_L2_2_4, alphaD_L2_2_5, alphaD_L2_2_6, alphaD_L2_2_7,
	alphaD_L2_3_0, alphaD_L2_3_1, alphaD_L2_3_2, alphaD_L2_3_3, alphaD_L2_3_4, alphaD_L2_3_5, alphaD_L2_3_6, alphaD_L2_3_7,
	alphaD_L2_4_0, alphaD_L2_4_1, alphaD_L2_4_2, alphaD_L2_4_3, alphaD_L2_4_4, alphaD_L2_4_5, alphaD_L2_4_6, alphaD_L2_4_7,
	alphaD_L2_5_0, alphaD_L2_5_1, alphaD_L2_5_2, alphaD_L2_5_3, alphaD_L2_5_4, alphaD_L2_5_5, alphaD_L2_5_6, alphaD_L2_5_7,
	alphaD_L2_6_0, alphaD_L2_6_1, alphaD_L2_6_2, alphaD_L2_6_3, alphaD_L2_6_4, alphaD_L2_6_5, alphaD_L2_6_6, alphaD_L2_6_7,
	alphaD_L2_7_0, alphaD_L2_7_1, alphaD_L2_7_2, alphaD_L2_7_3, alphaD_L2_7_4, alphaD_L2_7_5, alphaD_L2_7_6, alphaD_L2_7_7,
	alphaD_L2_8_0, alphaD_L2_8_1, alphaD_L2_8_2, alphaD_L2_8_3, alphaD_L2_8_4, alphaD_L2_8_5, alphaD_L2_8_6, alphaD_L2_8_7,
	alphaD_L2_9_0, alphaD_L2_9_1, alphaD_L2_9_2, alphaD_L2_9_3, alphaD_L2_9_4, alphaD_L2_9_5, alphaD_L2_9_6, alphaD_L2_9_7,
	alphaD_L2_10_0, alphaD_L2_10_1, alphaD_L2_10_2, alphaD_L2_10_3, alphaD_L2_10_4, alphaD_L2_10_5, alphaD_L2_10_6, alphaD_L2_10_7,
	alphaD_L2_11_0, alphaD_L2_11_1, alphaD_L2_11_2, alphaD_L2_11_3, alphaD_L2_11_4, alphaD_L2_11_5, alphaD_L2_11_6, alphaD_L2_11_7,
	alphaD_L2_12_0, alphaD_L2_12_1, alphaD_L2_12_2, alphaD_L2_12_3, alphaD_L2_12_4, alphaD_L2_12_5, alphaD_L2_12_6, alphaD_L2_12_7,
	alphaD_L2_13_0, alphaD_L2_13_1, alphaD_L2_13_2, alphaD_L2_13_3, alphaD_L2_13_4, alphaD_L2_13_5, alphaD_L2_13_6, alphaD_L2_13_7,
	alphaD_L2_14_0, alphaD_L2_14_1, alphaD_L2_14_2, alphaD_L2_14_3, alphaD_L2_14_4, alphaD_L2_14_5, alphaD_L2_14_6, alphaD_L2_14_7,
	alphaD_L2_15_0, alphaD_L2_15_1, alphaD_L2_15_2, alphaD_L2_15_3, alphaD_L2_15_4, alphaD_L2_15_5, alphaD_L2_15_6, alphaD_L2_15_7,
	alphaD_L2_16_0, alphaD_L2_16_1, alphaD_L2_16_2, alphaD_L2_16_3, alphaD_L2_16_4, alphaD_L2_16_5, alphaD_L2_16_6, alphaD_L2_16_7,
	alphaD_L2_17_0, alphaD_L2_17_1, alphaD_L2_17_2, alphaD_L2_17_3, alphaD_L2_17_4, alphaD_L2_17_5, alphaD_L2_17_6, alphaD_L2_17_7,
	alphaD_L2_18_0, alphaD_L2_18_1, alphaD_L2_18_2, alphaD_L2_18_3, alphaD_L2_18_4, alphaD_L2_18_5, alphaD_L2_18_6, alphaD_L2_18_7,
	alphaD_L2_19_0, alphaD_L2_19_1, alphaD_L2_19_2, alphaD_L2_19_3, alphaD_L2_19_4, alphaD_L2_19_5, alphaD_L2_19_6, alphaD_L2_19_7,
	alphaD_L2_20_0, alphaD_L2_20_1, alphaD_L2_20_2, alphaD_L2_20_3, alphaD_L2_20_4, alphaD_L2_20_5, alphaD_L2_20_6, alphaD_L2_20_7,
	alphaD_L2_21_0, alphaD_L2_21_1, alphaD_L2_21_2, alphaD_L2_21_3, alphaD_L2_21_4, alphaD_L2_21_5, alphaD_L2_21_6, alphaD_L2_21_7,
	alphaD_L2_22_0, alphaD_L2_22_1, alphaD_L2_22_2, alphaD_L2_22_3, alphaD_L2_22_4, alphaD_L2_22_5, alphaD_L2_22_6, alphaD_L2_22_7,
	alphaD_L2_23_0, alphaD_L2_23_1, alphaD_L2_23_2, alphaD_L2_23_3, alphaD_L2_23_4, alphaD_L2_23_5, alphaD_L2_23_6, alphaD_L2_23_7,
	alphaD_L2_24_0, alphaD_L2_24_1, alphaD_L2_24_2, alphaD_L2_24_3, alphaD_L2_24_4, alphaD_L2_24_5, alphaD_L2_24_6, alphaD_L2_24_7,
	betaD_L2_0, betaD_L2_1, betaD_L2_2, betaD_L2_3, betaD_L2_4, betaD_L2_5, betaD_L2_6, betaD_L2_7,
	alphaD_L3_0_0, alphaD_L3_0_1, alphaD_L3_0_2, alphaD_L3_0_3, alphaD_L3_0_4,
	alphaD_L3_1_0, alphaD_L3_1_1, alphaD_L3_1_2, alphaD_L3_1_3, alphaD_L3_1_4,
	alphaD_L3_2_0, alphaD_L3_2_1, alphaD_L3_2_2, alphaD_L3_2_3, alphaD_L3_2_4,
	alphaD_L3_3_0, alphaD_L3_3_1, alphaD_L3_3_2, alphaD_L3_3_3, alphaD_L3_3_4,
	alphaD_L3_4_0, alphaD_L3_4_1, alphaD_L3_4_2, alphaD_L3_4_3, alphaD_L3_4_4,
	alphaD_L3_5_0, alphaD_L3_5_1, alphaD_L3_5_2, alphaD_L3_5_3, alphaD_L3_5_4,
	alphaD_L3_6_0, alphaD_L3_6_1, alphaD_L3_6_2, alphaD_L3_6_3, alphaD_L3_6_4,
	alphaD_L3_7_0, alphaD_L3_7_1, alphaD_L3_7_2, alphaD_L3_7_3, alphaD_L3_7_4,
	betaD_L3_0, betaD_L3_1, betaD_L3_2, betaD_L3_3, betaD_L3_4,
	SIGN_alpha_L1_j_0, SIGN_alpha_L1_j_1, SIGN_alpha_L1_j_2, SIGN_alpha_L1_j_3, SIGN_alpha_L1_j_4, SIGN_alpha_L1_j_5, SIGN_alpha_L1_j_6, SIGN_alpha_L1_j_7, SIGN_alpha_L1_j_8, SIGN_alpha_L1_j_9, SIGN_alpha_L1_j_10, SIGN_alpha_L1_j_11, SIGN_alpha_L1_j_12, SIGN_alpha_L1_j_13, SIGN_alpha_L1_j_14, SIGN_alpha_L1_j_15, SIGN_alpha_L1_j_16, SIGN_alpha_L1_j_17, SIGN_alpha_L1_j_18, SIGN_alpha_L1_j_19, SIGN_alpha_L1_j_20, SIGN_alpha_L1_j_21, SIGN_alpha_L1_j_22, SIGN_alpha_L1_j_23, SIGN_alpha_L1_j_24,
	SIGN_beta_L1,
	SIGN_alpha_L2_j_0, SIGN_alpha_L2_j_1, SIGN_alpha_L2_j_2, SIGN_alpha_L2_j_3, SIGN_alpha_L2_j_4, SIGN_alpha_L2_j_5, SIGN_alpha_L2_j_6, SIGN_alpha_L2_j_7,
	SIGN_beta_L2,
	SIGN_alpha_L3_j_0, SIGN_alpha_L3_j_1, SIGN_alpha_L3_j_2, SIGN_alpha_L3_j_3, SIGN_alpha_L3_j_4,
	SIGN_beta_L3,
	dalpha_L1_j_0, dalpha_L1_j_1, dalpha_L1_j_2, dalpha_L1_j_3, dalpha_L1_j_4, dalpha_L1_j_5, dalpha_L1_j_6, dalpha_L1_j_7, dalpha_L1_j_8, dalpha_L1_j_9, dalpha_L1_j_10, dalpha_L1_j_11, dalpha_L1_j_12, dalpha_L1_j_13, dalpha_L1_j_14, dalpha_L1_j_15, dalpha_L1_j_16, dalpha_L1_j_17, dalpha_L1_j_18, dalpha_L1_j_19, dalpha_L1_j_20, dalpha_L1_j_21, dalpha_L1_j_22, dalpha_L1_j_23, dalpha_L1_j_24,
	dbeta_L1,
	dalpha_L2_j_0, dalpha_L2_j_1, dalpha_L2_j_2, dalpha_L2_j_3, dalpha_L2_j_4, dalpha_L2_j_5, dalpha_L2_j_6, dalpha_L2_j_7,
	dbeta_L2,
	dalpha_L3_j_0, dalpha_L3_j_1, dalpha_L3_j_2, dalpha_L3_j_3, dalpha_L3_j_4,
	dbeta_L3,
	SIGN_dalpha_L1_j_0, SIGN_dalpha_L1_j_1, SIGN_dalpha_L1_j_2, SIGN_dalpha_L1_j_3, SIGN_dalpha_L1_j_4, SIGN_dalpha_L1_j_5, SIGN_dalpha_L1_j_6, SIGN_dalpha_L1_j_7, SIGN_dalpha_L1_j_8, SIGN_dalpha_L1_j_9, SIGN_dalpha_L1_j_10, SIGN_dalpha_L1_j_11, SIGN_dalpha_L1_j_12, SIGN_dalpha_L1_j_13, SIGN_dalpha_L1_j_14, SIGN_dalpha_L1_j_15, SIGN_dalpha_L1_j_16, SIGN_dalpha_L1_j_17, SIGN_dalpha_L1_j_18, SIGN_dalpha_L1_j_19, SIGN_dalpha_L1_j_20, SIGN_dalpha_L1_j_21, SIGN_dalpha_L1_j_22, SIGN_dalpha_L1_j_23, SIGN_dalpha_L1_j_24,
	SIGN_dbeta_L1,
	SIGN_dalpha_L2_j_0, SIGN_dalpha_L2_j_1, SIGN_dalpha_L2_j_2, SIGN_dalpha_L2_j_3, SIGN_dalpha_L2_j_4, SIGN_dalpha_L2_j_5, SIGN_dalpha_L2_j_6, SIGN_dalpha_L2_j_7,
	SIGN_dbeta_L2,
	SIGN_dalpha_L3_j_0, SIGN_dalpha_L3_j_1, SIGN_dalpha_L3_j_2, SIGN_dalpha_L3_j_3, SIGN_dalpha_L3_j_4,
	SIGN_dbeta_L3,
	TrainingActive,
	NNParamExp_CLK, NNParamExp_index, NNParamExp_data, 
	CLK, CLK_TRAINING_flag, TRAINING_CYCLE, BP_FRAME, FP_FRAME, UPDATE, INIT
);

parameter DP_in = 8;
parameter DP_out = 16;
parameter MAX_RATE_ALPHA = 6;
parameter MAX_RATE_BETA = 5;
parameter RESISTANCE_precision = 6;

input wire [5 - 1:0] dalpha_L1_j_0, dalpha_L1_j_1, dalpha_L1_j_2, dalpha_L1_j_3, dalpha_L1_j_4, dalpha_L1_j_5, dalpha_L1_j_6, dalpha_L1_j_7, dalpha_L1_j_8, dalpha_L1_j_9, dalpha_L1_j_10, dalpha_L1_j_11, dalpha_L1_j_12, dalpha_L1_j_13, dalpha_L1_j_14, dalpha_L1_j_15, dalpha_L1_j_16, dalpha_L1_j_17, dalpha_L1_j_18, dalpha_L1_j_19, dalpha_L1_j_20, dalpha_L1_j_21, dalpha_L1_j_22, dalpha_L1_j_23, dalpha_L1_j_24;
input wire [25 - 1:0] dbeta_L1;
input wire [25 - 1:0] dalpha_L2_j_0, dalpha_L2_j_1, dalpha_L2_j_2, dalpha_L2_j_3, dalpha_L2_j_4, dalpha_L2_j_5, dalpha_L2_j_6, dalpha_L2_j_7;
input wire [8 - 1:0] dbeta_L2;
input wire [8 - 1:0] dalpha_L3_j_0, dalpha_L3_j_1, dalpha_L3_j_2, dalpha_L3_j_3, dalpha_L3_j_4;
input wire [5 - 1:0] dbeta_L3;
input wire [5 - 1:0] SIGN_dalpha_L1_j_0, SIGN_dalpha_L1_j_1, SIGN_dalpha_L1_j_2, SIGN_dalpha_L1_j_3, SIGN_dalpha_L1_j_4, SIGN_dalpha_L1_j_5, SIGN_dalpha_L1_j_6, SIGN_dalpha_L1_j_7, SIGN_dalpha_L1_j_8, SIGN_dalpha_L1_j_9, SIGN_dalpha_L1_j_10, SIGN_dalpha_L1_j_11, SIGN_dalpha_L1_j_12, SIGN_dalpha_L1_j_13, SIGN_dalpha_L1_j_14, SIGN_dalpha_L1_j_15, SIGN_dalpha_L1_j_16, SIGN_dalpha_L1_j_17, SIGN_dalpha_L1_j_18, SIGN_dalpha_L1_j_19, SIGN_dalpha_L1_j_20, SIGN_dalpha_L1_j_21, SIGN_dalpha_L1_j_22, SIGN_dalpha_L1_j_23, SIGN_dalpha_L1_j_24;
input wire [25 - 1:0] SIGN_dbeta_L1;
input wire [25 - 1:0] SIGN_dalpha_L2_j_0, SIGN_dalpha_L2_j_1, SIGN_dalpha_L2_j_2, SIGN_dalpha_L2_j_3, SIGN_dalpha_L2_j_4, SIGN_dalpha_L2_j_5, SIGN_dalpha_L2_j_6, SIGN_dalpha_L2_j_7;
input wire [8 - 1:0] SIGN_dbeta_L2;
input wire [8 - 1:0] SIGN_dalpha_L3_j_0, SIGN_dalpha_L3_j_1, SIGN_dalpha_L3_j_2, SIGN_dalpha_L3_j_3, SIGN_dalpha_L3_j_4;
input wire [5 - 1:0] SIGN_dbeta_L3;
input wire TrainingActive;
input wire NNParamExp_CLK;
input wire [16-1:0] NNParamExp_index;

output wire [DP_in - 1:0] alphaD_L1_0_0, alphaD_L1_0_1, alphaD_L1_0_2, alphaD_L1_0_3, alphaD_L1_0_4, alphaD_L1_0_5, alphaD_L1_0_6, alphaD_L1_0_7, alphaD_L1_0_8, alphaD_L1_0_9, alphaD_L1_0_10, alphaD_L1_0_11, alphaD_L1_0_12, alphaD_L1_0_13, alphaD_L1_0_14, alphaD_L1_0_15, alphaD_L1_0_16, alphaD_L1_0_17, alphaD_L1_0_18, alphaD_L1_0_19, alphaD_L1_0_20, alphaD_L1_0_21, alphaD_L1_0_22, alphaD_L1_0_23, alphaD_L1_0_24;
output wire [DP_in - 1:0] alphaD_L1_1_0, alphaD_L1_1_1, alphaD_L1_1_2, alphaD_L1_1_3, alphaD_L1_1_4, alphaD_L1_1_5, alphaD_L1_1_6, alphaD_L1_1_7, alphaD_L1_1_8, alphaD_L1_1_9, alphaD_L1_1_10, alphaD_L1_1_11, alphaD_L1_1_12, alphaD_L1_1_13, alphaD_L1_1_14, alphaD_L1_1_15, alphaD_L1_1_16, alphaD_L1_1_17, alphaD_L1_1_18, alphaD_L1_1_19, alphaD_L1_1_20, alphaD_L1_1_21, alphaD_L1_1_22, alphaD_L1_1_23, alphaD_L1_1_24;
output wire [DP_in - 1:0] alphaD_L1_2_0, alphaD_L1_2_1, alphaD_L1_2_2, alphaD_L1_2_3, alphaD_L1_2_4, alphaD_L1_2_5, alphaD_L1_2_6, alphaD_L1_2_7, alphaD_L1_2_8, alphaD_L1_2_9, alphaD_L1_2_10, alphaD_L1_2_11, alphaD_L1_2_12, alphaD_L1_2_13, alphaD_L1_2_14, alphaD_L1_2_15, alphaD_L1_2_16, alphaD_L1_2_17, alphaD_L1_2_18, alphaD_L1_2_19, alphaD_L1_2_20, alphaD_L1_2_21, alphaD_L1_2_22, alphaD_L1_2_23, alphaD_L1_2_24;
output wire [DP_in - 1:0] alphaD_L1_3_0, alphaD_L1_3_1, alphaD_L1_3_2, alphaD_L1_3_3, alphaD_L1_3_4, alphaD_L1_3_5, alphaD_L1_3_6, alphaD_L1_3_7, alphaD_L1_3_8, alphaD_L1_3_9, alphaD_L1_3_10, alphaD_L1_3_11, alphaD_L1_3_12, alphaD_L1_3_13, alphaD_L1_3_14, alphaD_L1_3_15, alphaD_L1_3_16, alphaD_L1_3_17, alphaD_L1_3_18, alphaD_L1_3_19, alphaD_L1_3_20, alphaD_L1_3_21, alphaD_L1_3_22, alphaD_L1_3_23, alphaD_L1_3_24;
output wire [DP_in - 1:0] alphaD_L1_4_0, alphaD_L1_4_1, alphaD_L1_4_2, alphaD_L1_4_3, alphaD_L1_4_4, alphaD_L1_4_5, alphaD_L1_4_6, alphaD_L1_4_7, alphaD_L1_4_8, alphaD_L1_4_9, alphaD_L1_4_10, alphaD_L1_4_11, alphaD_L1_4_12, alphaD_L1_4_13, alphaD_L1_4_14, alphaD_L1_4_15, alphaD_L1_4_16, alphaD_L1_4_17, alphaD_L1_4_18, alphaD_L1_4_19, alphaD_L1_4_20, alphaD_L1_4_21, alphaD_L1_4_22, alphaD_L1_4_23, alphaD_L1_4_24;
output wire [DP_in - 1:0] betaD_L1_0, betaD_L1_1, betaD_L1_2, betaD_L1_3, betaD_L1_4, betaD_L1_5, betaD_L1_6, betaD_L1_7, betaD_L1_8, betaD_L1_9, betaD_L1_10, betaD_L1_11, betaD_L1_12, betaD_L1_13, betaD_L1_14, betaD_L1_15, betaD_L1_16, betaD_L1_17, betaD_L1_18, betaD_L1_19, betaD_L1_20, betaD_L1_21, betaD_L1_22, betaD_L1_23, betaD_L1_24;
output wire [DP_in - 1:0] alphaD_L2_0_0, alphaD_L2_0_1, alphaD_L2_0_2, alphaD_L2_0_3, alphaD_L2_0_4, alphaD_L2_0_5, alphaD_L2_0_6, alphaD_L2_0_7;
output wire [DP_in - 1:0] alphaD_L2_1_0, alphaD_L2_1_1, alphaD_L2_1_2, alphaD_L2_1_3, alphaD_L2_1_4, alphaD_L2_1_5, alphaD_L2_1_6, alphaD_L2_1_7;
output wire [DP_in - 1:0] alphaD_L2_2_0, alphaD_L2_2_1, alphaD_L2_2_2, alphaD_L2_2_3, alphaD_L2_2_4, alphaD_L2_2_5, alphaD_L2_2_6, alphaD_L2_2_7;
output wire [DP_in - 1:0] alphaD_L2_3_0, alphaD_L2_3_1, alphaD_L2_3_2, alphaD_L2_3_3, alphaD_L2_3_4, alphaD_L2_3_5, alphaD_L2_3_6, alphaD_L2_3_7;
output wire [DP_in - 1:0] alphaD_L2_4_0, alphaD_L2_4_1, alphaD_L2_4_2, alphaD_L2_4_3, alphaD_L2_4_4, alphaD_L2_4_5, alphaD_L2_4_6, alphaD_L2_4_7;
output wire [DP_in - 1:0] alphaD_L2_5_0, alphaD_L2_5_1, alphaD_L2_5_2, alphaD_L2_5_3, alphaD_L2_5_4, alphaD_L2_5_5, alphaD_L2_5_6, alphaD_L2_5_7;
output wire [DP_in - 1:0] alphaD_L2_6_0, alphaD_L2_6_1, alphaD_L2_6_2, alphaD_L2_6_3, alphaD_L2_6_4, alphaD_L2_6_5, alphaD_L2_6_6, alphaD_L2_6_7;
output wire [DP_in - 1:0] alphaD_L2_7_0, alphaD_L2_7_1, alphaD_L2_7_2, alphaD_L2_7_3, alphaD_L2_7_4, alphaD_L2_7_5, alphaD_L2_7_6, alphaD_L2_7_7;
output wire [DP_in - 1:0] alphaD_L2_8_0, alphaD_L2_8_1, alphaD_L2_8_2, alphaD_L2_8_3, alphaD_L2_8_4, alphaD_L2_8_5, alphaD_L2_8_6, alphaD_L2_8_7;
output wire [DP_in - 1:0] alphaD_L2_9_0, alphaD_L2_9_1, alphaD_L2_9_2, alphaD_L2_9_3, alphaD_L2_9_4, alphaD_L2_9_5, alphaD_L2_9_6, alphaD_L2_9_7;
output wire [DP_in - 1:0] alphaD_L2_10_0, alphaD_L2_10_1, alphaD_L2_10_2, alphaD_L2_10_3, alphaD_L2_10_4, alphaD_L2_10_5, alphaD_L2_10_6, alphaD_L2_10_7;
output wire [DP_in - 1:0] alphaD_L2_11_0, alphaD_L2_11_1, alphaD_L2_11_2, alphaD_L2_11_3, alphaD_L2_11_4, alphaD_L2_11_5, alphaD_L2_11_6, alphaD_L2_11_7;
output wire [DP_in - 1:0] alphaD_L2_12_0, alphaD_L2_12_1, alphaD_L2_12_2, alphaD_L2_12_3, alphaD_L2_12_4, alphaD_L2_12_5, alphaD_L2_12_6, alphaD_L2_12_7;
output wire [DP_in - 1:0] alphaD_L2_13_0, alphaD_L2_13_1, alphaD_L2_13_2, alphaD_L2_13_3, alphaD_L2_13_4, alphaD_L2_13_5, alphaD_L2_13_6, alphaD_L2_13_7;
output wire [DP_in - 1:0] alphaD_L2_14_0, alphaD_L2_14_1, alphaD_L2_14_2, alphaD_L2_14_3, alphaD_L2_14_4, alphaD_L2_14_5, alphaD_L2_14_6, alphaD_L2_14_7;
output wire [DP_in - 1:0] alphaD_L2_15_0, alphaD_L2_15_1, alphaD_L2_15_2, alphaD_L2_15_3, alphaD_L2_15_4, alphaD_L2_15_5, alphaD_L2_15_6, alphaD_L2_15_7;
output wire [DP_in - 1:0] alphaD_L2_16_0, alphaD_L2_16_1, alphaD_L2_16_2, alphaD_L2_16_3, alphaD_L2_16_4, alphaD_L2_16_5, alphaD_L2_16_6, alphaD_L2_16_7;
output wire [DP_in - 1:0] alphaD_L2_17_0, alphaD_L2_17_1, alphaD_L2_17_2, alphaD_L2_17_3, alphaD_L2_17_4, alphaD_L2_17_5, alphaD_L2_17_6, alphaD_L2_17_7;
output wire [DP_in - 1:0] alphaD_L2_18_0, alphaD_L2_18_1, alphaD_L2_18_2, alphaD_L2_18_3, alphaD_L2_18_4, alphaD_L2_18_5, alphaD_L2_18_6, alphaD_L2_18_7;
output wire [DP_in - 1:0] alphaD_L2_19_0, alphaD_L2_19_1, alphaD_L2_19_2, alphaD_L2_19_3, alphaD_L2_19_4, alphaD_L2_19_5, alphaD_L2_19_6, alphaD_L2_19_7;
output wire [DP_in - 1:0] alphaD_L2_20_0, alphaD_L2_20_1, alphaD_L2_20_2, alphaD_L2_20_3, alphaD_L2_20_4, alphaD_L2_20_5, alphaD_L2_20_6, alphaD_L2_20_7;
output wire [DP_in - 1:0] alphaD_L2_21_0, alphaD_L2_21_1, alphaD_L2_21_2, alphaD_L2_21_3, alphaD_L2_21_4, alphaD_L2_21_5, alphaD_L2_21_6, alphaD_L2_21_7;
output wire [DP_in - 1:0] alphaD_L2_22_0, alphaD_L2_22_1, alphaD_L2_22_2, alphaD_L2_22_3, alphaD_L2_22_4, alphaD_L2_22_5, alphaD_L2_22_6, alphaD_L2_22_7;
output wire [DP_in - 1:0] alphaD_L2_23_0, alphaD_L2_23_1, alphaD_L2_23_2, alphaD_L2_23_3, alphaD_L2_23_4, alphaD_L2_23_5, alphaD_L2_23_6, alphaD_L2_23_7;
output wire [DP_in - 1:0] alphaD_L2_24_0, alphaD_L2_24_1, alphaD_L2_24_2, alphaD_L2_24_3, alphaD_L2_24_4, alphaD_L2_24_5, alphaD_L2_24_6, alphaD_L2_24_7;
output wire [DP_in - 1:0] betaD_L2_0, betaD_L2_1, betaD_L2_2, betaD_L2_3, betaD_L2_4, betaD_L2_5, betaD_L2_6, betaD_L2_7;
output wire [DP_in - 1:0] alphaD_L3_0_0, alphaD_L3_0_1, alphaD_L3_0_2, alphaD_L3_0_3, alphaD_L3_0_4;
output wire [DP_in - 1:0] alphaD_L3_1_0, alphaD_L3_1_1, alphaD_L3_1_2, alphaD_L3_1_3, alphaD_L3_1_4;
output wire [DP_in - 1:0] alphaD_L3_2_0, alphaD_L3_2_1, alphaD_L3_2_2, alphaD_L3_2_3, alphaD_L3_2_4;
output wire [DP_in - 1:0] alphaD_L3_3_0, alphaD_L3_3_1, alphaD_L3_3_2, alphaD_L3_3_3, alphaD_L3_3_4;
output wire [DP_in - 1:0] alphaD_L3_4_0, alphaD_L3_4_1, alphaD_L3_4_2, alphaD_L3_4_3, alphaD_L3_4_4;
output wire [DP_in - 1:0] alphaD_L3_5_0, alphaD_L3_5_1, alphaD_L3_5_2, alphaD_L3_5_3, alphaD_L3_5_4;
output wire [DP_in - 1:0] alphaD_L3_6_0, alphaD_L3_6_1, alphaD_L3_6_2, alphaD_L3_6_3, alphaD_L3_6_4;
output wire [DP_in - 1:0] alphaD_L3_7_0, alphaD_L3_7_1, alphaD_L3_7_2, alphaD_L3_7_3, alphaD_L3_7_4;
output wire [DP_in - 1:0] betaD_L3_0, betaD_L3_1, betaD_L3_2, betaD_L3_3, betaD_L3_4;
output wire [5 - 1:0] SIGN_alpha_L1_j_0, SIGN_alpha_L1_j_1, SIGN_alpha_L1_j_2, SIGN_alpha_L1_j_3, SIGN_alpha_L1_j_4, SIGN_alpha_L1_j_5, SIGN_alpha_L1_j_6, SIGN_alpha_L1_j_7, SIGN_alpha_L1_j_8, SIGN_alpha_L1_j_9, SIGN_alpha_L1_j_10, SIGN_alpha_L1_j_11, SIGN_alpha_L1_j_12, SIGN_alpha_L1_j_13, SIGN_alpha_L1_j_14, SIGN_alpha_L1_j_15, SIGN_alpha_L1_j_16, SIGN_alpha_L1_j_17, SIGN_alpha_L1_j_18, SIGN_alpha_L1_j_19, SIGN_alpha_L1_j_20, SIGN_alpha_L1_j_21, SIGN_alpha_L1_j_22, SIGN_alpha_L1_j_23, SIGN_alpha_L1_j_24;
output wire [25 - 1:0] SIGN_beta_L1;
output wire [25 - 1:0] SIGN_alpha_L2_j_0, SIGN_alpha_L2_j_1, SIGN_alpha_L2_j_2, SIGN_alpha_L2_j_3, SIGN_alpha_L2_j_4, SIGN_alpha_L2_j_5, SIGN_alpha_L2_j_6, SIGN_alpha_L2_j_7;
output wire [8 - 1:0] SIGN_beta_L2;
output wire [8 - 1:0] SIGN_alpha_L3_j_0, SIGN_alpha_L3_j_1, SIGN_alpha_L3_j_2, SIGN_alpha_L3_j_3, SIGN_alpha_L3_j_4;
output wire [5 - 1:0] SIGN_beta_L3;
output reg [16 - 1:0] NNParamExp_data;

input wire CLK, CLK_TRAINING_flag, TRAINING_CYCLE, BP_FRAME, FP_FRAME, UPDATE, INIT;

reg TrainingActive_L1_alpha = 1'b1;
reg TrainingActive_L1_beta = 1'b1;
reg TrainingActive_L2_alpha = 1'b1;
reg TrainingActive_L2_beta = 1'b1;
reg TrainingActive_L3_alpha = 1'b1;
reg TrainingActive_L3_beta = 1'b1;

wire [5 - 1:0] TransitionChange_TRIG_alpha_L1_j_0, TransitionChange_TRIG_alpha_L1_j_1, TransitionChange_TRIG_alpha_L1_j_2, TransitionChange_TRIG_alpha_L1_j_3, TransitionChange_TRIG_alpha_L1_j_4, TransitionChange_TRIG_alpha_L1_j_5, TransitionChange_TRIG_alpha_L1_j_6, TransitionChange_TRIG_alpha_L1_j_7, TransitionChange_TRIG_alpha_L1_j_8, TransitionChange_TRIG_alpha_L1_j_9, TransitionChange_TRIG_alpha_L1_j_10, TransitionChange_TRIG_alpha_L1_j_11, TransitionChange_TRIG_alpha_L1_j_12, TransitionChange_TRIG_alpha_L1_j_13, TransitionChange_TRIG_alpha_L1_j_14, TransitionChange_TRIG_alpha_L1_j_15, TransitionChange_TRIG_alpha_L1_j_16, TransitionChange_TRIG_alpha_L1_j_17, TransitionChange_TRIG_alpha_L1_j_18, TransitionChange_TRIG_alpha_L1_j_19, TransitionChange_TRIG_alpha_L1_j_20, TransitionChange_TRIG_alpha_L1_j_21, TransitionChange_TRIG_alpha_L1_j_22, TransitionChange_TRIG_alpha_L1_j_23, TransitionChange_TRIG_alpha_L1_j_24;
wire [25 - 1:0] TransitionChange_TRIG_alpha_L2_j_0, TransitionChange_TRIG_alpha_L2_j_1, TransitionChange_TRIG_alpha_L2_j_2, TransitionChange_TRIG_alpha_L2_j_3, TransitionChange_TRIG_alpha_L2_j_4, TransitionChange_TRIG_alpha_L2_j_5, TransitionChange_TRIG_alpha_L2_j_6, TransitionChange_TRIG_alpha_L2_j_7;
wire [8 - 1:0] TransitionChange_TRIG_alpha_L3_j_0, TransitionChange_TRIG_alpha_L3_j_1, TransitionChange_TRIG_alpha_L3_j_2, TransitionChange_TRIG_alpha_L3_j_3, TransitionChange_TRIG_alpha_L3_j_4;
wire [25 - 1:0] TransitionChange_TRIG_beta_k_L1;
wire [8 - 1:0] TransitionChange_TRIG_beta_k_L2;
wire [5 - 1:0] TransitionChange_TRIG_beta_k_L3;

wire TransitionChange_TRIG_alpha_L1, TransitionChange_TRIG_alpha_L2, TransitionChange_TRIG_alpha_L3;
wire TransitionChange_TRIG_beta_L1, TransitionChange_TRIG_beta_L2, TransitionChange_TRIG_beta_L3;
wire RESISTANCE_NOTATMAX_alpha_L1, RESISTANCE_NOTATMAX_alpha_L2, RESISTANCE_NOTATMAX_alpha_L3;
wire RESISTANCE_NOTATMAX_beta_L1, RESISTANCE_NOTATMAX_beta_L2, RESISTANCE_NOTATMAX_beta_L3;
reg [RESISTANCE_precision-1:0] RESISTANCE_alpha_L1, RESISTANCE_beta_L1, RESISTANCE_alpha_L2, RESISTANCE_beta_L2, RESISTANCE_alpha_L3, RESISTANCE_beta_L3;
wire [RESISTANCE_precision-1:0] RESISTANCE_MAX_alpha_L1, RESISTANCE_MAX_beta_L1, RESISTANCE_MAX_alpha_L2, RESISTANCE_MAX_beta_L2, RESISTANCE_MAX_alpha_L3, RESISTANCE_MAX_beta_L3;
wire [8-1:0] alphaD_L1_INIT, betaD_L1_INIT, alphaD_L2_INIT, betaD_L2_INIT, alphaD_L3_INIT, betaD_L3_INIT;

wire SIGN_alpha_L1_INIT, SIGN_beta_L1_INIT, SIGN_alpha_L2_INIT, SIGN_beta_L2_INIT, SIGN_alpha_L3_INIT, SIGN_beta_L3_INIT;

assign RESISTANCE_MAX_alpha_L3 = 6'd1;
assign RESISTANCE_MAX_beta_L3 = 6'd63;

assign RESISTANCE_MAX_alpha_L1 = 6'd1;
assign RESISTANCE_MAX_beta_L1 = 6'd63;
assign RESISTANCE_MAX_alpha_L2 = 6'd1;
assign RESISTANCE_MAX_beta_L2 = 6'd63;

assign alphaD_L3_INIT = 8'd0;
assign betaD_L3_INIT = 8'd0;

assign alphaD_L1_INIT = 8'd0;
assign betaD_L1_INIT = 8'd0;
assign alphaD_L2_INIT = 8'd0;
assign betaD_L2_INIT = 8'd0;

assign SIGN_alpha_L1_INIT = 8'd0;
assign SIGN_beta_L1_INIT = 8'd0;
assign SIGN_alpha_L2_INIT = 8'd0;
assign SIGN_beta_L2_INIT = 8'd0;
assign SIGN_alpha_L3_INIT = 8'd0;
assign SIGN_beta_L3_INIT = 8'd0;

assign RESISTANCE_NOTATMAX_alpha_L3 = ~(RESISTANCE_alpha_L3>=RESISTANCE_MAX_alpha_L3);
M_OR OR_alpha_L3(.EN(1'b1),.IN({TransitionChange_TRIG_alpha_L3_j_0, TransitionChange_TRIG_alpha_L3_j_1, TransitionChange_TRIG_alpha_L3_j_2, TransitionChange_TRIG_alpha_L3_j_3, TransitionChange_TRIG_alpha_L3_j_4}), .OUT(TransitionChange_TRIG_alpha_L3));
defparam OR_alpha_L3.N = 40;
always @(posedge INIT or posedge TransitionChange_TRIG_alpha_L3) begin
	if (INIT) RESISTANCE_alpha_L3 <= 8'd16;
	else if (RESISTANCE_NOTATMAX_alpha_L3) RESISTANCE_alpha_L3 <= RESISTANCE_alpha_L3 + 1'b1;
end

assign RESISTANCE_NOTATMAX_beta_L3 = ~(RESISTANCE_beta_L3>=RESISTANCE_MAX_beta_L3);
M_OR OR_beta_L3(.EN(1'b1),.IN(TransitionChange_TRIG_beta_k_L3), .OUT(TransitionChange_TRIG_beta_L3));
defparam OR_beta_L3.N = 5;
always @(posedge INIT or posedge TransitionChange_TRIG_beta_L3) begin
	if (INIT) RESISTANCE_beta_L3 <= 8'd63;
	else if (RESISTANCE_NOTATMAX_beta_L3) RESISTANCE_beta_L3 <= RESISTANCE_beta_L3 + 1'b1;
end

assign RESISTANCE_NOTATMAX_alpha_L2 = ~(RESISTANCE_alpha_L2>=RESISTANCE_MAX_alpha_L2);
M_OR OR_alpha_L2(.EN(1'b1),.IN({TransitionChange_TRIG_alpha_L2_j_0, TransitionChange_TRIG_alpha_L2_j_1, TransitionChange_TRIG_alpha_L2_j_2, TransitionChange_TRIG_alpha_L2_j_3, TransitionChange_TRIG_alpha_L2_j_4, TransitionChange_TRIG_alpha_L2_j_5, TransitionChange_TRIG_alpha_L2_j_6, TransitionChange_TRIG_alpha_L2_j_7}), .OUT(TransitionChange_TRIG_alpha_L2));
defparam OR_alpha_L2.N = 200;
always @(posedge INIT or posedge TransitionChange_TRIG_alpha_L2) begin
	if (INIT) RESISTANCE_alpha_L2 <= 8'd4;
	else if (RESISTANCE_NOTATMAX_alpha_L2) RESISTANCE_alpha_L2 <= RESISTANCE_alpha_L2 + 1'b1;
end

assign RESISTANCE_NOTATMAX_beta_L2 = ~(RESISTANCE_beta_L2>=RESISTANCE_MAX_beta_L2);
M_OR OR_beta_L2(.EN(1'b1),.IN(TransitionChange_TRIG_beta_k_L2), .OUT(TransitionChange_TRIG_beta_L2));
defparam OR_beta_L2.N = 8;
always @(posedge INIT or posedge TransitionChange_TRIG_beta_L2) begin
	if (INIT) RESISTANCE_beta_L2 <= 8'd63;
	else if (RESISTANCE_NOTATMAX_beta_L2) RESISTANCE_beta_L2 <= RESISTANCE_beta_L2 + 1'b1;
end

assign RESISTANCE_NOTATMAX_alpha_L1 = ~(RESISTANCE_alpha_L1>=RESISTANCE_MAX_alpha_L1);
M_OR OR_alpha_L1(.EN(1'b1),.IN({TransitionChange_TRIG_alpha_L1_j_0, TransitionChange_TRIG_alpha_L1_j_1, TransitionChange_TRIG_alpha_L1_j_2, TransitionChange_TRIG_alpha_L1_j_3, TransitionChange_TRIG_alpha_L1_j_4, TransitionChange_TRIG_alpha_L1_j_5, TransitionChange_TRIG_alpha_L1_j_6, TransitionChange_TRIG_alpha_L1_j_7, TransitionChange_TRIG_alpha_L1_j_8, TransitionChange_TRIG_alpha_L1_j_9, TransitionChange_TRIG_alpha_L1_j_10, TransitionChange_TRIG_alpha_L1_j_11, TransitionChange_TRIG_alpha_L1_j_12, TransitionChange_TRIG_alpha_L1_j_13, TransitionChange_TRIG_alpha_L1_j_14, TransitionChange_TRIG_alpha_L1_j_15, TransitionChange_TRIG_alpha_L1_j_16, TransitionChange_TRIG_alpha_L1_j_17, TransitionChange_TRIG_alpha_L1_j_18, TransitionChange_TRIG_alpha_L1_j_19, TransitionChange_TRIG_alpha_L1_j_20, TransitionChange_TRIG_alpha_L1_j_21, TransitionChange_TRIG_alpha_L1_j_22, TransitionChange_TRIG_alpha_L1_j_23, TransitionChange_TRIG_alpha_L1_j_24}), .OUT(TransitionChange_TRIG_alpha_L1));
defparam OR_alpha_L1.N = 125;
always @(posedge INIT or posedge TransitionChange_TRIG_alpha_L1) begin
	if (INIT) RESISTANCE_alpha_L1 <= 8'd1;
	else if (RESISTANCE_NOTATMAX_alpha_L1) RESISTANCE_alpha_L1 <= RESISTANCE_alpha_L1 + 1'b1;
end

assign RESISTANCE_NOTATMAX_beta_L1 = ~(RESISTANCE_beta_L1>=RESISTANCE_MAX_beta_L1);
M_OR OR_beta_L1(.EN(1'b1),.IN(TransitionChange_TRIG_beta_k_L1), .OUT(TransitionChange_TRIG_beta_L1));
defparam OR_beta_L1.N = 25;
always @(posedge INIT or posedge TransitionChange_TRIG_beta_L1) begin
	if (INIT) RESISTANCE_beta_L1 <= 8'd63;
	else if (RESISTANCE_NOTATMAX_beta_L1) RESISTANCE_beta_L1 <= RESISTANCE_beta_L1 + 1'b1;
end


NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_0_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_0[0]), .SIGN(SIGN_dalpha_L3_j_0[0]),  .SIGN_out(SIGN_alpha_L3_j_0[0]), .OUT(alphaD_L3_0_0), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_0[0]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_0_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_1[0]), .SIGN(SIGN_dalpha_L3_j_1[0]),  .SIGN_out(SIGN_alpha_L3_j_1[0]), .OUT(alphaD_L3_0_1), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_1[0]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_0_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_2[0]), .SIGN(SIGN_dalpha_L3_j_2[0]),  .SIGN_out(SIGN_alpha_L3_j_2[0]), .OUT(alphaD_L3_0_2), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_2[0]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_0_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_3[0]), .SIGN(SIGN_dalpha_L3_j_3[0]),  .SIGN_out(SIGN_alpha_L3_j_3[0]), .OUT(alphaD_L3_0_3), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_3[0]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_0_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_4[0]), .SIGN(SIGN_dalpha_L3_j_4[0]),  .SIGN_out(SIGN_alpha_L3_j_4[0]), .OUT(alphaD_L3_0_4), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_4[0]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_1_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_0[1]), .SIGN(SIGN_dalpha_L3_j_0[1]),  .SIGN_out(SIGN_alpha_L3_j_0[1]), .OUT(alphaD_L3_1_0), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_0[1]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_1_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_1[1]), .SIGN(SIGN_dalpha_L3_j_1[1]),  .SIGN_out(SIGN_alpha_L3_j_1[1]), .OUT(alphaD_L3_1_1), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_1[1]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_1_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_2[1]), .SIGN(SIGN_dalpha_L3_j_2[1]),  .SIGN_out(SIGN_alpha_L3_j_2[1]), .OUT(alphaD_L3_1_2), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_2[1]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_1_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_3[1]), .SIGN(SIGN_dalpha_L3_j_3[1]),  .SIGN_out(SIGN_alpha_L3_j_3[1]), .OUT(alphaD_L3_1_3), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_3[1]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_1_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_4[1]), .SIGN(SIGN_dalpha_L3_j_4[1]),  .SIGN_out(SIGN_alpha_L3_j_4[1]), .OUT(alphaD_L3_1_4), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_4[1]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_2_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_0[2]), .SIGN(SIGN_dalpha_L3_j_0[2]),  .SIGN_out(SIGN_alpha_L3_j_0[2]), .OUT(alphaD_L3_2_0), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_0[2]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_2_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_1[2]), .SIGN(SIGN_dalpha_L3_j_1[2]),  .SIGN_out(SIGN_alpha_L3_j_1[2]), .OUT(alphaD_L3_2_1), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_1[2]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_2_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_2[2]), .SIGN(SIGN_dalpha_L3_j_2[2]),  .SIGN_out(SIGN_alpha_L3_j_2[2]), .OUT(alphaD_L3_2_2), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_2[2]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_2_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_3[2]), .SIGN(SIGN_dalpha_L3_j_3[2]),  .SIGN_out(SIGN_alpha_L3_j_3[2]), .OUT(alphaD_L3_2_3), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_3[2]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_2_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_4[2]), .SIGN(SIGN_dalpha_L3_j_4[2]),  .SIGN_out(SIGN_alpha_L3_j_4[2]), .OUT(alphaD_L3_2_4), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_4[2]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_3_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_0[3]), .SIGN(SIGN_dalpha_L3_j_0[3]),  .SIGN_out(SIGN_alpha_L3_j_0[3]), .OUT(alphaD_L3_3_0), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_0[3]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_3_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_1[3]), .SIGN(SIGN_dalpha_L3_j_1[3]),  .SIGN_out(SIGN_alpha_L3_j_1[3]), .OUT(alphaD_L3_3_1), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_1[3]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_3_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_2[3]), .SIGN(SIGN_dalpha_L3_j_2[3]),  .SIGN_out(SIGN_alpha_L3_j_2[3]), .OUT(alphaD_L3_3_2), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_2[3]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_3_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_3[3]), .SIGN(SIGN_dalpha_L3_j_3[3]),  .SIGN_out(SIGN_alpha_L3_j_3[3]), .OUT(alphaD_L3_3_3), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_3[3]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_3_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_4[3]), .SIGN(SIGN_dalpha_L3_j_4[3]),  .SIGN_out(SIGN_alpha_L3_j_4[3]), .OUT(alphaD_L3_3_4), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_4[3]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_4_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_0[4]), .SIGN(SIGN_dalpha_L3_j_0[4]),  .SIGN_out(SIGN_alpha_L3_j_0[4]), .OUT(alphaD_L3_4_0), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_0[4]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_4_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_1[4]), .SIGN(SIGN_dalpha_L3_j_1[4]),  .SIGN_out(SIGN_alpha_L3_j_1[4]), .OUT(alphaD_L3_4_1), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_1[4]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_4_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_2[4]), .SIGN(SIGN_dalpha_L3_j_2[4]),  .SIGN_out(SIGN_alpha_L3_j_2[4]), .OUT(alphaD_L3_4_2), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_2[4]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_4_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_3[4]), .SIGN(SIGN_dalpha_L3_j_3[4]),  .SIGN_out(SIGN_alpha_L3_j_3[4]), .OUT(alphaD_L3_4_3), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_3[4]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_4_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_4[4]), .SIGN(SIGN_dalpha_L3_j_4[4]),  .SIGN_out(SIGN_alpha_L3_j_4[4]), .OUT(alphaD_L3_4_4), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_4[4]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_5_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_0[5]), .SIGN(SIGN_dalpha_L3_j_0[5]),  .SIGN_out(SIGN_alpha_L3_j_0[5]), .OUT(alphaD_L3_5_0), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_0[5]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_5_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_1[5]), .SIGN(SIGN_dalpha_L3_j_1[5]),  .SIGN_out(SIGN_alpha_L3_j_1[5]), .OUT(alphaD_L3_5_1), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_1[5]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_5_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_2[5]), .SIGN(SIGN_dalpha_L3_j_2[5]),  .SIGN_out(SIGN_alpha_L3_j_2[5]), .OUT(alphaD_L3_5_2), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_2[5]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_5_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_3[5]), .SIGN(SIGN_dalpha_L3_j_3[5]),  .SIGN_out(SIGN_alpha_L3_j_3[5]), .OUT(alphaD_L3_5_3), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_3[5]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_5_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_4[5]), .SIGN(SIGN_dalpha_L3_j_4[5]),  .SIGN_out(SIGN_alpha_L3_j_4[5]), .OUT(alphaD_L3_5_4), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_4[5]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_6_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_0[6]), .SIGN(SIGN_dalpha_L3_j_0[6]),  .SIGN_out(SIGN_alpha_L3_j_0[6]), .OUT(alphaD_L3_6_0), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_0[6]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_6_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_1[6]), .SIGN(SIGN_dalpha_L3_j_1[6]),  .SIGN_out(SIGN_alpha_L3_j_1[6]), .OUT(alphaD_L3_6_1), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_1[6]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_6_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_2[6]), .SIGN(SIGN_dalpha_L3_j_2[6]),  .SIGN_out(SIGN_alpha_L3_j_2[6]), .OUT(alphaD_L3_6_2), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_2[6]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_6_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_3[6]), .SIGN(SIGN_dalpha_L3_j_3[6]),  .SIGN_out(SIGN_alpha_L3_j_3[6]), .OUT(alphaD_L3_6_3), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_3[6]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_6_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_4[6]), .SIGN(SIGN_dalpha_L3_j_4[6]),  .SIGN_out(SIGN_alpha_L3_j_4[6]), .OUT(alphaD_L3_6_4), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_4[6]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_7_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_0[7]), .SIGN(SIGN_dalpha_L3_j_0[7]),  .SIGN_out(SIGN_alpha_L3_j_0[7]), .OUT(alphaD_L3_7_0), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_0[7]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_7_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_1[7]), .SIGN(SIGN_dalpha_L3_j_1[7]),  .SIGN_out(SIGN_alpha_L3_j_1[7]), .OUT(alphaD_L3_7_1), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_1[7]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_7_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_2[7]), .SIGN(SIGN_dalpha_L3_j_2[7]),  .SIGN_out(SIGN_alpha_L3_j_2[7]), .OUT(alphaD_L3_7_2), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_2[7]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_7_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_3[7]), .SIGN(SIGN_dalpha_L3_j_3[7]),  .SIGN_out(SIGN_alpha_L3_j_3[7]), .OUT(alphaD_L3_7_3), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_3[7]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L3_7_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L3_j_4[7]), .SIGN(SIGN_dalpha_L3_j_4[7]),  .SIGN_out(SIGN_alpha_L3_j_4[7]), .OUT(alphaD_L3_7_4), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L3), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L3_j_4[7]), .EN(TrainingActive&TrainingActive_L3_alpha)); 
defparam SMOOTHGRAD_a_L3_0_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_0_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_0_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_0_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_0_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_0_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_0_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_0_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_0_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_0_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_1_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_1_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_1_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_1_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_1_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_1_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_1_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_1_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_1_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_1_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_2_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_2_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_2_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_2_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_2_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_2_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_2_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_2_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_2_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_2_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_3_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_3_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_3_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_3_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_3_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_3_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_3_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_3_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_3_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_3_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_4_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_4_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_4_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_4_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_4_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_4_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_4_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_4_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_4_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_4_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_5_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_5_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_5_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_5_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_5_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_5_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_5_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_5_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_5_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_5_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_6_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_6_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_6_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_6_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_6_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_6_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_6_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_6_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_6_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_6_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_7_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_7_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_7_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_7_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_7_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_7_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_7_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_7_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L3_7_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L3_7_4.N_RESISTANCE = RESISTANCE_precision;

NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L3_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L3[0]), .SIGN(SIGN_dbeta_L3[0]), .SIGN_out(SIGN_beta_L3[0]), .OUT(betaD_L3_0), .OUT_INIT(betaD_L3_INIT), .SIGN_OUT_INIT(SIGN_beta_L3_INIT), .RESISTANCE(RESISTANCE_beta_L3), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L3[0]), .EN(TrainingActive&TrainingActive_L3_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L3_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L3[1]), .SIGN(SIGN_dbeta_L3[1]), .SIGN_out(SIGN_beta_L3[1]), .OUT(betaD_L3_1), .OUT_INIT(betaD_L3_INIT), .SIGN_OUT_INIT(SIGN_beta_L3_INIT), .RESISTANCE(RESISTANCE_beta_L3), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L3[1]), .EN(TrainingActive&TrainingActive_L3_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L3_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L3[2]), .SIGN(SIGN_dbeta_L3[2]), .SIGN_out(SIGN_beta_L3[2]), .OUT(betaD_L3_2), .OUT_INIT(betaD_L3_INIT), .SIGN_OUT_INIT(SIGN_beta_L3_INIT), .RESISTANCE(RESISTANCE_beta_L3), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L3[2]), .EN(TrainingActive&TrainingActive_L3_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L3_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L3[3]), .SIGN(SIGN_dbeta_L3[3]), .SIGN_out(SIGN_beta_L3[3]), .OUT(betaD_L3_3), .OUT_INIT(betaD_L3_INIT), .SIGN_OUT_INIT(SIGN_beta_L3_INIT), .RESISTANCE(RESISTANCE_beta_L3), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L3[3]), .EN(TrainingActive&TrainingActive_L3_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L3_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L3[4]), .SIGN(SIGN_dbeta_L3[4]), .SIGN_out(SIGN_beta_L3[4]), .OUT(betaD_L3_4), .OUT_INIT(betaD_L3_INIT), .SIGN_OUT_INIT(SIGN_beta_L3_INIT), .RESISTANCE(RESISTANCE_beta_L3), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L3[4]), .EN(TrainingActive&TrainingActive_L3_beta));
defparam SMOOTHGRAD_b_L3_0.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L3_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L3_1.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L3_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L3_2.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L3_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L3_3.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L3_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L3_4.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L3_4.N_RESISTANCE = RESISTANCE_precision;

NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_0_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[0]), .SIGN(SIGN_dalpha_L2_j_0[0]),  .SIGN_out(SIGN_alpha_L2_j_0[0]), .OUT(alphaD_L2_0_0), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[0]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_0_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[0]), .SIGN(SIGN_dalpha_L2_j_1[0]),  .SIGN_out(SIGN_alpha_L2_j_1[0]), .OUT(alphaD_L2_0_1), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[0]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_0_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[0]), .SIGN(SIGN_dalpha_L2_j_2[0]),  .SIGN_out(SIGN_alpha_L2_j_2[0]), .OUT(alphaD_L2_0_2), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[0]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_0_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[0]), .SIGN(SIGN_dalpha_L2_j_3[0]),  .SIGN_out(SIGN_alpha_L2_j_3[0]), .OUT(alphaD_L2_0_3), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[0]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_0_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[0]), .SIGN(SIGN_dalpha_L2_j_4[0]),  .SIGN_out(SIGN_alpha_L2_j_4[0]), .OUT(alphaD_L2_0_4), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[0]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_0_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[0]), .SIGN(SIGN_dalpha_L2_j_5[0]),  .SIGN_out(SIGN_alpha_L2_j_5[0]), .OUT(alphaD_L2_0_5), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[0]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_0_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[0]), .SIGN(SIGN_dalpha_L2_j_6[0]),  .SIGN_out(SIGN_alpha_L2_j_6[0]), .OUT(alphaD_L2_0_6), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[0]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_0_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[0]), .SIGN(SIGN_dalpha_L2_j_7[0]),  .SIGN_out(SIGN_alpha_L2_j_7[0]), .OUT(alphaD_L2_0_7), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[0]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_1_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[1]), .SIGN(SIGN_dalpha_L2_j_0[1]),  .SIGN_out(SIGN_alpha_L2_j_0[1]), .OUT(alphaD_L2_1_0), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[1]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_1_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[1]), .SIGN(SIGN_dalpha_L2_j_1[1]),  .SIGN_out(SIGN_alpha_L2_j_1[1]), .OUT(alphaD_L2_1_1), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[1]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_1_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[1]), .SIGN(SIGN_dalpha_L2_j_2[1]),  .SIGN_out(SIGN_alpha_L2_j_2[1]), .OUT(alphaD_L2_1_2), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[1]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_1_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[1]), .SIGN(SIGN_dalpha_L2_j_3[1]),  .SIGN_out(SIGN_alpha_L2_j_3[1]), .OUT(alphaD_L2_1_3), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[1]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_1_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[1]), .SIGN(SIGN_dalpha_L2_j_4[1]),  .SIGN_out(SIGN_alpha_L2_j_4[1]), .OUT(alphaD_L2_1_4), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[1]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_1_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[1]), .SIGN(SIGN_dalpha_L2_j_5[1]),  .SIGN_out(SIGN_alpha_L2_j_5[1]), .OUT(alphaD_L2_1_5), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[1]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_1_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[1]), .SIGN(SIGN_dalpha_L2_j_6[1]),  .SIGN_out(SIGN_alpha_L2_j_6[1]), .OUT(alphaD_L2_1_6), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[1]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_1_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[1]), .SIGN(SIGN_dalpha_L2_j_7[1]),  .SIGN_out(SIGN_alpha_L2_j_7[1]), .OUT(alphaD_L2_1_7), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[1]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_2_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[2]), .SIGN(SIGN_dalpha_L2_j_0[2]),  .SIGN_out(SIGN_alpha_L2_j_0[2]), .OUT(alphaD_L2_2_0), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[2]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_2_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[2]), .SIGN(SIGN_dalpha_L2_j_1[2]),  .SIGN_out(SIGN_alpha_L2_j_1[2]), .OUT(alphaD_L2_2_1), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[2]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_2_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[2]), .SIGN(SIGN_dalpha_L2_j_2[2]),  .SIGN_out(SIGN_alpha_L2_j_2[2]), .OUT(alphaD_L2_2_2), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[2]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_2_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[2]), .SIGN(SIGN_dalpha_L2_j_3[2]),  .SIGN_out(SIGN_alpha_L2_j_3[2]), .OUT(alphaD_L2_2_3), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[2]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_2_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[2]), .SIGN(SIGN_dalpha_L2_j_4[2]),  .SIGN_out(SIGN_alpha_L2_j_4[2]), .OUT(alphaD_L2_2_4), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[2]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_2_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[2]), .SIGN(SIGN_dalpha_L2_j_5[2]),  .SIGN_out(SIGN_alpha_L2_j_5[2]), .OUT(alphaD_L2_2_5), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[2]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_2_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[2]), .SIGN(SIGN_dalpha_L2_j_6[2]),  .SIGN_out(SIGN_alpha_L2_j_6[2]), .OUT(alphaD_L2_2_6), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[2]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_2_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[2]), .SIGN(SIGN_dalpha_L2_j_7[2]),  .SIGN_out(SIGN_alpha_L2_j_7[2]), .OUT(alphaD_L2_2_7), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[2]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_3_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[3]), .SIGN(SIGN_dalpha_L2_j_0[3]),  .SIGN_out(SIGN_alpha_L2_j_0[3]), .OUT(alphaD_L2_3_0), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[3]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_3_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[3]), .SIGN(SIGN_dalpha_L2_j_1[3]),  .SIGN_out(SIGN_alpha_L2_j_1[3]), .OUT(alphaD_L2_3_1), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[3]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_3_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[3]), .SIGN(SIGN_dalpha_L2_j_2[3]),  .SIGN_out(SIGN_alpha_L2_j_2[3]), .OUT(alphaD_L2_3_2), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[3]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_3_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[3]), .SIGN(SIGN_dalpha_L2_j_3[3]),  .SIGN_out(SIGN_alpha_L2_j_3[3]), .OUT(alphaD_L2_3_3), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[3]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_3_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[3]), .SIGN(SIGN_dalpha_L2_j_4[3]),  .SIGN_out(SIGN_alpha_L2_j_4[3]), .OUT(alphaD_L2_3_4), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[3]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_3_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[3]), .SIGN(SIGN_dalpha_L2_j_5[3]),  .SIGN_out(SIGN_alpha_L2_j_5[3]), .OUT(alphaD_L2_3_5), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[3]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_3_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[3]), .SIGN(SIGN_dalpha_L2_j_6[3]),  .SIGN_out(SIGN_alpha_L2_j_6[3]), .OUT(alphaD_L2_3_6), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[3]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_3_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[3]), .SIGN(SIGN_dalpha_L2_j_7[3]),  .SIGN_out(SIGN_alpha_L2_j_7[3]), .OUT(alphaD_L2_3_7), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[3]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_4_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[4]), .SIGN(SIGN_dalpha_L2_j_0[4]),  .SIGN_out(SIGN_alpha_L2_j_0[4]), .OUT(alphaD_L2_4_0), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[4]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_4_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[4]), .SIGN(SIGN_dalpha_L2_j_1[4]),  .SIGN_out(SIGN_alpha_L2_j_1[4]), .OUT(alphaD_L2_4_1), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[4]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_4_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[4]), .SIGN(SIGN_dalpha_L2_j_2[4]),  .SIGN_out(SIGN_alpha_L2_j_2[4]), .OUT(alphaD_L2_4_2), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[4]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_4_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[4]), .SIGN(SIGN_dalpha_L2_j_3[4]),  .SIGN_out(SIGN_alpha_L2_j_3[4]), .OUT(alphaD_L2_4_3), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[4]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_4_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[4]), .SIGN(SIGN_dalpha_L2_j_4[4]),  .SIGN_out(SIGN_alpha_L2_j_4[4]), .OUT(alphaD_L2_4_4), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[4]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_4_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[4]), .SIGN(SIGN_dalpha_L2_j_5[4]),  .SIGN_out(SIGN_alpha_L2_j_5[4]), .OUT(alphaD_L2_4_5), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[4]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_4_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[4]), .SIGN(SIGN_dalpha_L2_j_6[4]),  .SIGN_out(SIGN_alpha_L2_j_6[4]), .OUT(alphaD_L2_4_6), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[4]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_4_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[4]), .SIGN(SIGN_dalpha_L2_j_7[4]),  .SIGN_out(SIGN_alpha_L2_j_7[4]), .OUT(alphaD_L2_4_7), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[4]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_5_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[5]), .SIGN(SIGN_dalpha_L2_j_0[5]),  .SIGN_out(SIGN_alpha_L2_j_0[5]), .OUT(alphaD_L2_5_0), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[5]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_5_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[5]), .SIGN(SIGN_dalpha_L2_j_1[5]),  .SIGN_out(SIGN_alpha_L2_j_1[5]), .OUT(alphaD_L2_5_1), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[5]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_5_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[5]), .SIGN(SIGN_dalpha_L2_j_2[5]),  .SIGN_out(SIGN_alpha_L2_j_2[5]), .OUT(alphaD_L2_5_2), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[5]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_5_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[5]), .SIGN(SIGN_dalpha_L2_j_3[5]),  .SIGN_out(SIGN_alpha_L2_j_3[5]), .OUT(alphaD_L2_5_3), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[5]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_5_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[5]), .SIGN(SIGN_dalpha_L2_j_4[5]),  .SIGN_out(SIGN_alpha_L2_j_4[5]), .OUT(alphaD_L2_5_4), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[5]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_5_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[5]), .SIGN(SIGN_dalpha_L2_j_5[5]),  .SIGN_out(SIGN_alpha_L2_j_5[5]), .OUT(alphaD_L2_5_5), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[5]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_5_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[5]), .SIGN(SIGN_dalpha_L2_j_6[5]),  .SIGN_out(SIGN_alpha_L2_j_6[5]), .OUT(alphaD_L2_5_6), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[5]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_5_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[5]), .SIGN(SIGN_dalpha_L2_j_7[5]),  .SIGN_out(SIGN_alpha_L2_j_7[5]), .OUT(alphaD_L2_5_7), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[5]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_6_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[6]), .SIGN(SIGN_dalpha_L2_j_0[6]),  .SIGN_out(SIGN_alpha_L2_j_0[6]), .OUT(alphaD_L2_6_0), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[6]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_6_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[6]), .SIGN(SIGN_dalpha_L2_j_1[6]),  .SIGN_out(SIGN_alpha_L2_j_1[6]), .OUT(alphaD_L2_6_1), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[6]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_6_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[6]), .SIGN(SIGN_dalpha_L2_j_2[6]),  .SIGN_out(SIGN_alpha_L2_j_2[6]), .OUT(alphaD_L2_6_2), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[6]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_6_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[6]), .SIGN(SIGN_dalpha_L2_j_3[6]),  .SIGN_out(SIGN_alpha_L2_j_3[6]), .OUT(alphaD_L2_6_3), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[6]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_6_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[6]), .SIGN(SIGN_dalpha_L2_j_4[6]),  .SIGN_out(SIGN_alpha_L2_j_4[6]), .OUT(alphaD_L2_6_4), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[6]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_6_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[6]), .SIGN(SIGN_dalpha_L2_j_5[6]),  .SIGN_out(SIGN_alpha_L2_j_5[6]), .OUT(alphaD_L2_6_5), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[6]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_6_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[6]), .SIGN(SIGN_dalpha_L2_j_6[6]),  .SIGN_out(SIGN_alpha_L2_j_6[6]), .OUT(alphaD_L2_6_6), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[6]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_6_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[6]), .SIGN(SIGN_dalpha_L2_j_7[6]),  .SIGN_out(SIGN_alpha_L2_j_7[6]), .OUT(alphaD_L2_6_7), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[6]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_7_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[7]), .SIGN(SIGN_dalpha_L2_j_0[7]),  .SIGN_out(SIGN_alpha_L2_j_0[7]), .OUT(alphaD_L2_7_0), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[7]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_7_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[7]), .SIGN(SIGN_dalpha_L2_j_1[7]),  .SIGN_out(SIGN_alpha_L2_j_1[7]), .OUT(alphaD_L2_7_1), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[7]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_7_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[7]), .SIGN(SIGN_dalpha_L2_j_2[7]),  .SIGN_out(SIGN_alpha_L2_j_2[7]), .OUT(alphaD_L2_7_2), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[7]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_7_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[7]), .SIGN(SIGN_dalpha_L2_j_3[7]),  .SIGN_out(SIGN_alpha_L2_j_3[7]), .OUT(alphaD_L2_7_3), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[7]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_7_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[7]), .SIGN(SIGN_dalpha_L2_j_4[7]),  .SIGN_out(SIGN_alpha_L2_j_4[7]), .OUT(alphaD_L2_7_4), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[7]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_7_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[7]), .SIGN(SIGN_dalpha_L2_j_5[7]),  .SIGN_out(SIGN_alpha_L2_j_5[7]), .OUT(alphaD_L2_7_5), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[7]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_7_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[7]), .SIGN(SIGN_dalpha_L2_j_6[7]),  .SIGN_out(SIGN_alpha_L2_j_6[7]), .OUT(alphaD_L2_7_6), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[7]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_7_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[7]), .SIGN(SIGN_dalpha_L2_j_7[7]),  .SIGN_out(SIGN_alpha_L2_j_7[7]), .OUT(alphaD_L2_7_7), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[7]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_8_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[8]), .SIGN(SIGN_dalpha_L2_j_0[8]),  .SIGN_out(SIGN_alpha_L2_j_0[8]), .OUT(alphaD_L2_8_0), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[8]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_8_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[8]), .SIGN(SIGN_dalpha_L2_j_1[8]),  .SIGN_out(SIGN_alpha_L2_j_1[8]), .OUT(alphaD_L2_8_1), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[8]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_8_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[8]), .SIGN(SIGN_dalpha_L2_j_2[8]),  .SIGN_out(SIGN_alpha_L2_j_2[8]), .OUT(alphaD_L2_8_2), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[8]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_8_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[8]), .SIGN(SIGN_dalpha_L2_j_3[8]),  .SIGN_out(SIGN_alpha_L2_j_3[8]), .OUT(alphaD_L2_8_3), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[8]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_8_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[8]), .SIGN(SIGN_dalpha_L2_j_4[8]),  .SIGN_out(SIGN_alpha_L2_j_4[8]), .OUT(alphaD_L2_8_4), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[8]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_8_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[8]), .SIGN(SIGN_dalpha_L2_j_5[8]),  .SIGN_out(SIGN_alpha_L2_j_5[8]), .OUT(alphaD_L2_8_5), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[8]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_8_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[8]), .SIGN(SIGN_dalpha_L2_j_6[8]),  .SIGN_out(SIGN_alpha_L2_j_6[8]), .OUT(alphaD_L2_8_6), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[8]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_8_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[8]), .SIGN(SIGN_dalpha_L2_j_7[8]),  .SIGN_out(SIGN_alpha_L2_j_7[8]), .OUT(alphaD_L2_8_7), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[8]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_9_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[9]), .SIGN(SIGN_dalpha_L2_j_0[9]),  .SIGN_out(SIGN_alpha_L2_j_0[9]), .OUT(alphaD_L2_9_0), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[9]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_9_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[9]), .SIGN(SIGN_dalpha_L2_j_1[9]),  .SIGN_out(SIGN_alpha_L2_j_1[9]), .OUT(alphaD_L2_9_1), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[9]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_9_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[9]), .SIGN(SIGN_dalpha_L2_j_2[9]),  .SIGN_out(SIGN_alpha_L2_j_2[9]), .OUT(alphaD_L2_9_2), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[9]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_9_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[9]), .SIGN(SIGN_dalpha_L2_j_3[9]),  .SIGN_out(SIGN_alpha_L2_j_3[9]), .OUT(alphaD_L2_9_3), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[9]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_9_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[9]), .SIGN(SIGN_dalpha_L2_j_4[9]),  .SIGN_out(SIGN_alpha_L2_j_4[9]), .OUT(alphaD_L2_9_4), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[9]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_9_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[9]), .SIGN(SIGN_dalpha_L2_j_5[9]),  .SIGN_out(SIGN_alpha_L2_j_5[9]), .OUT(alphaD_L2_9_5), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[9]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_9_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[9]), .SIGN(SIGN_dalpha_L2_j_6[9]),  .SIGN_out(SIGN_alpha_L2_j_6[9]), .OUT(alphaD_L2_9_6), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[9]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_9_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[9]), .SIGN(SIGN_dalpha_L2_j_7[9]),  .SIGN_out(SIGN_alpha_L2_j_7[9]), .OUT(alphaD_L2_9_7), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[9]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_10_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[10]), .SIGN(SIGN_dalpha_L2_j_0[10]),  .SIGN_out(SIGN_alpha_L2_j_0[10]), .OUT(alphaD_L2_10_0), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[10]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_10_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[10]), .SIGN(SIGN_dalpha_L2_j_1[10]),  .SIGN_out(SIGN_alpha_L2_j_1[10]), .OUT(alphaD_L2_10_1), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[10]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_10_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[10]), .SIGN(SIGN_dalpha_L2_j_2[10]),  .SIGN_out(SIGN_alpha_L2_j_2[10]), .OUT(alphaD_L2_10_2), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[10]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_10_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[10]), .SIGN(SIGN_dalpha_L2_j_3[10]),  .SIGN_out(SIGN_alpha_L2_j_3[10]), .OUT(alphaD_L2_10_3), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[10]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_10_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[10]), .SIGN(SIGN_dalpha_L2_j_4[10]),  .SIGN_out(SIGN_alpha_L2_j_4[10]), .OUT(alphaD_L2_10_4), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[10]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_10_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[10]), .SIGN(SIGN_dalpha_L2_j_5[10]),  .SIGN_out(SIGN_alpha_L2_j_5[10]), .OUT(alphaD_L2_10_5), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[10]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_10_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[10]), .SIGN(SIGN_dalpha_L2_j_6[10]),  .SIGN_out(SIGN_alpha_L2_j_6[10]), .OUT(alphaD_L2_10_6), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[10]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_10_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[10]), .SIGN(SIGN_dalpha_L2_j_7[10]),  .SIGN_out(SIGN_alpha_L2_j_7[10]), .OUT(alphaD_L2_10_7), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[10]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_11_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[11]), .SIGN(SIGN_dalpha_L2_j_0[11]),  .SIGN_out(SIGN_alpha_L2_j_0[11]), .OUT(alphaD_L2_11_0), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[11]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_11_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[11]), .SIGN(SIGN_dalpha_L2_j_1[11]),  .SIGN_out(SIGN_alpha_L2_j_1[11]), .OUT(alphaD_L2_11_1), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[11]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_11_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[11]), .SIGN(SIGN_dalpha_L2_j_2[11]),  .SIGN_out(SIGN_alpha_L2_j_2[11]), .OUT(alphaD_L2_11_2), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[11]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_11_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[11]), .SIGN(SIGN_dalpha_L2_j_3[11]),  .SIGN_out(SIGN_alpha_L2_j_3[11]), .OUT(alphaD_L2_11_3), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[11]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_11_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[11]), .SIGN(SIGN_dalpha_L2_j_4[11]),  .SIGN_out(SIGN_alpha_L2_j_4[11]), .OUT(alphaD_L2_11_4), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[11]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_11_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[11]), .SIGN(SIGN_dalpha_L2_j_5[11]),  .SIGN_out(SIGN_alpha_L2_j_5[11]), .OUT(alphaD_L2_11_5), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[11]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_11_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[11]), .SIGN(SIGN_dalpha_L2_j_6[11]),  .SIGN_out(SIGN_alpha_L2_j_6[11]), .OUT(alphaD_L2_11_6), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[11]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_11_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[11]), .SIGN(SIGN_dalpha_L2_j_7[11]),  .SIGN_out(SIGN_alpha_L2_j_7[11]), .OUT(alphaD_L2_11_7), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[11]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_12_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[12]), .SIGN(SIGN_dalpha_L2_j_0[12]),  .SIGN_out(SIGN_alpha_L2_j_0[12]), .OUT(alphaD_L2_12_0), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[12]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_12_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[12]), .SIGN(SIGN_dalpha_L2_j_1[12]),  .SIGN_out(SIGN_alpha_L2_j_1[12]), .OUT(alphaD_L2_12_1), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[12]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_12_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[12]), .SIGN(SIGN_dalpha_L2_j_2[12]),  .SIGN_out(SIGN_alpha_L2_j_2[12]), .OUT(alphaD_L2_12_2), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[12]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_12_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[12]), .SIGN(SIGN_dalpha_L2_j_3[12]),  .SIGN_out(SIGN_alpha_L2_j_3[12]), .OUT(alphaD_L2_12_3), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[12]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_12_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[12]), .SIGN(SIGN_dalpha_L2_j_4[12]),  .SIGN_out(SIGN_alpha_L2_j_4[12]), .OUT(alphaD_L2_12_4), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[12]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_12_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[12]), .SIGN(SIGN_dalpha_L2_j_5[12]),  .SIGN_out(SIGN_alpha_L2_j_5[12]), .OUT(alphaD_L2_12_5), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[12]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_12_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[12]), .SIGN(SIGN_dalpha_L2_j_6[12]),  .SIGN_out(SIGN_alpha_L2_j_6[12]), .OUT(alphaD_L2_12_6), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[12]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_12_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[12]), .SIGN(SIGN_dalpha_L2_j_7[12]),  .SIGN_out(SIGN_alpha_L2_j_7[12]), .OUT(alphaD_L2_12_7), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[12]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_13_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[13]), .SIGN(SIGN_dalpha_L2_j_0[13]),  .SIGN_out(SIGN_alpha_L2_j_0[13]), .OUT(alphaD_L2_13_0), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[13]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_13_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[13]), .SIGN(SIGN_dalpha_L2_j_1[13]),  .SIGN_out(SIGN_alpha_L2_j_1[13]), .OUT(alphaD_L2_13_1), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[13]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_13_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[13]), .SIGN(SIGN_dalpha_L2_j_2[13]),  .SIGN_out(SIGN_alpha_L2_j_2[13]), .OUT(alphaD_L2_13_2), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[13]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_13_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[13]), .SIGN(SIGN_dalpha_L2_j_3[13]),  .SIGN_out(SIGN_alpha_L2_j_3[13]), .OUT(alphaD_L2_13_3), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[13]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_13_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[13]), .SIGN(SIGN_dalpha_L2_j_4[13]),  .SIGN_out(SIGN_alpha_L2_j_4[13]), .OUT(alphaD_L2_13_4), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[13]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_13_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[13]), .SIGN(SIGN_dalpha_L2_j_5[13]),  .SIGN_out(SIGN_alpha_L2_j_5[13]), .OUT(alphaD_L2_13_5), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[13]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_13_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[13]), .SIGN(SIGN_dalpha_L2_j_6[13]),  .SIGN_out(SIGN_alpha_L2_j_6[13]), .OUT(alphaD_L2_13_6), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[13]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_13_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[13]), .SIGN(SIGN_dalpha_L2_j_7[13]),  .SIGN_out(SIGN_alpha_L2_j_7[13]), .OUT(alphaD_L2_13_7), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[13]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_14_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[14]), .SIGN(SIGN_dalpha_L2_j_0[14]),  .SIGN_out(SIGN_alpha_L2_j_0[14]), .OUT(alphaD_L2_14_0), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[14]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_14_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[14]), .SIGN(SIGN_dalpha_L2_j_1[14]),  .SIGN_out(SIGN_alpha_L2_j_1[14]), .OUT(alphaD_L2_14_1), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[14]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_14_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[14]), .SIGN(SIGN_dalpha_L2_j_2[14]),  .SIGN_out(SIGN_alpha_L2_j_2[14]), .OUT(alphaD_L2_14_2), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[14]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_14_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[14]), .SIGN(SIGN_dalpha_L2_j_3[14]),  .SIGN_out(SIGN_alpha_L2_j_3[14]), .OUT(alphaD_L2_14_3), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[14]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_14_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[14]), .SIGN(SIGN_dalpha_L2_j_4[14]),  .SIGN_out(SIGN_alpha_L2_j_4[14]), .OUT(alphaD_L2_14_4), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[14]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_14_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[14]), .SIGN(SIGN_dalpha_L2_j_5[14]),  .SIGN_out(SIGN_alpha_L2_j_5[14]), .OUT(alphaD_L2_14_5), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[14]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_14_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[14]), .SIGN(SIGN_dalpha_L2_j_6[14]),  .SIGN_out(SIGN_alpha_L2_j_6[14]), .OUT(alphaD_L2_14_6), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[14]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_14_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[14]), .SIGN(SIGN_dalpha_L2_j_7[14]),  .SIGN_out(SIGN_alpha_L2_j_7[14]), .OUT(alphaD_L2_14_7), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[14]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_15_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[15]), .SIGN(SIGN_dalpha_L2_j_0[15]),  .SIGN_out(SIGN_alpha_L2_j_0[15]), .OUT(alphaD_L2_15_0), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[15]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_15_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[15]), .SIGN(SIGN_dalpha_L2_j_1[15]),  .SIGN_out(SIGN_alpha_L2_j_1[15]), .OUT(alphaD_L2_15_1), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[15]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_15_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[15]), .SIGN(SIGN_dalpha_L2_j_2[15]),  .SIGN_out(SIGN_alpha_L2_j_2[15]), .OUT(alphaD_L2_15_2), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[15]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_15_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[15]), .SIGN(SIGN_dalpha_L2_j_3[15]),  .SIGN_out(SIGN_alpha_L2_j_3[15]), .OUT(alphaD_L2_15_3), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[15]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_15_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[15]), .SIGN(SIGN_dalpha_L2_j_4[15]),  .SIGN_out(SIGN_alpha_L2_j_4[15]), .OUT(alphaD_L2_15_4), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[15]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_15_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[15]), .SIGN(SIGN_dalpha_L2_j_5[15]),  .SIGN_out(SIGN_alpha_L2_j_5[15]), .OUT(alphaD_L2_15_5), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[15]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_15_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[15]), .SIGN(SIGN_dalpha_L2_j_6[15]),  .SIGN_out(SIGN_alpha_L2_j_6[15]), .OUT(alphaD_L2_15_6), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[15]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_15_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[15]), .SIGN(SIGN_dalpha_L2_j_7[15]),  .SIGN_out(SIGN_alpha_L2_j_7[15]), .OUT(alphaD_L2_15_7), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[15]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_16_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[16]), .SIGN(SIGN_dalpha_L2_j_0[16]),  .SIGN_out(SIGN_alpha_L2_j_0[16]), .OUT(alphaD_L2_16_0), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[16]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_16_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[16]), .SIGN(SIGN_dalpha_L2_j_1[16]),  .SIGN_out(SIGN_alpha_L2_j_1[16]), .OUT(alphaD_L2_16_1), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[16]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_16_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[16]), .SIGN(SIGN_dalpha_L2_j_2[16]),  .SIGN_out(SIGN_alpha_L2_j_2[16]), .OUT(alphaD_L2_16_2), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[16]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_16_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[16]), .SIGN(SIGN_dalpha_L2_j_3[16]),  .SIGN_out(SIGN_alpha_L2_j_3[16]), .OUT(alphaD_L2_16_3), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[16]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_16_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[16]), .SIGN(SIGN_dalpha_L2_j_4[16]),  .SIGN_out(SIGN_alpha_L2_j_4[16]), .OUT(alphaD_L2_16_4), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[16]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_16_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[16]), .SIGN(SIGN_dalpha_L2_j_5[16]),  .SIGN_out(SIGN_alpha_L2_j_5[16]), .OUT(alphaD_L2_16_5), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[16]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_16_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[16]), .SIGN(SIGN_dalpha_L2_j_6[16]),  .SIGN_out(SIGN_alpha_L2_j_6[16]), .OUT(alphaD_L2_16_6), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[16]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_16_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[16]), .SIGN(SIGN_dalpha_L2_j_7[16]),  .SIGN_out(SIGN_alpha_L2_j_7[16]), .OUT(alphaD_L2_16_7), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[16]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_17_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[17]), .SIGN(SIGN_dalpha_L2_j_0[17]),  .SIGN_out(SIGN_alpha_L2_j_0[17]), .OUT(alphaD_L2_17_0), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[17]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_17_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[17]), .SIGN(SIGN_dalpha_L2_j_1[17]),  .SIGN_out(SIGN_alpha_L2_j_1[17]), .OUT(alphaD_L2_17_1), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[17]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_17_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[17]), .SIGN(SIGN_dalpha_L2_j_2[17]),  .SIGN_out(SIGN_alpha_L2_j_2[17]), .OUT(alphaD_L2_17_2), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[17]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_17_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[17]), .SIGN(SIGN_dalpha_L2_j_3[17]),  .SIGN_out(SIGN_alpha_L2_j_3[17]), .OUT(alphaD_L2_17_3), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[17]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_17_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[17]), .SIGN(SIGN_dalpha_L2_j_4[17]),  .SIGN_out(SIGN_alpha_L2_j_4[17]), .OUT(alphaD_L2_17_4), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[17]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_17_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[17]), .SIGN(SIGN_dalpha_L2_j_5[17]),  .SIGN_out(SIGN_alpha_L2_j_5[17]), .OUT(alphaD_L2_17_5), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[17]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_17_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[17]), .SIGN(SIGN_dalpha_L2_j_6[17]),  .SIGN_out(SIGN_alpha_L2_j_6[17]), .OUT(alphaD_L2_17_6), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[17]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_17_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[17]), .SIGN(SIGN_dalpha_L2_j_7[17]),  .SIGN_out(SIGN_alpha_L2_j_7[17]), .OUT(alphaD_L2_17_7), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[17]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_18_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[18]), .SIGN(SIGN_dalpha_L2_j_0[18]),  .SIGN_out(SIGN_alpha_L2_j_0[18]), .OUT(alphaD_L2_18_0), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[18]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_18_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[18]), .SIGN(SIGN_dalpha_L2_j_1[18]),  .SIGN_out(SIGN_alpha_L2_j_1[18]), .OUT(alphaD_L2_18_1), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[18]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_18_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[18]), .SIGN(SIGN_dalpha_L2_j_2[18]),  .SIGN_out(SIGN_alpha_L2_j_2[18]), .OUT(alphaD_L2_18_2), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[18]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_18_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[18]), .SIGN(SIGN_dalpha_L2_j_3[18]),  .SIGN_out(SIGN_alpha_L2_j_3[18]), .OUT(alphaD_L2_18_3), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[18]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_18_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[18]), .SIGN(SIGN_dalpha_L2_j_4[18]),  .SIGN_out(SIGN_alpha_L2_j_4[18]), .OUT(alphaD_L2_18_4), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[18]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_18_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[18]), .SIGN(SIGN_dalpha_L2_j_5[18]),  .SIGN_out(SIGN_alpha_L2_j_5[18]), .OUT(alphaD_L2_18_5), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[18]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_18_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[18]), .SIGN(SIGN_dalpha_L2_j_6[18]),  .SIGN_out(SIGN_alpha_L2_j_6[18]), .OUT(alphaD_L2_18_6), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[18]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_18_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[18]), .SIGN(SIGN_dalpha_L2_j_7[18]),  .SIGN_out(SIGN_alpha_L2_j_7[18]), .OUT(alphaD_L2_18_7), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[18]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_19_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[19]), .SIGN(SIGN_dalpha_L2_j_0[19]),  .SIGN_out(SIGN_alpha_L2_j_0[19]), .OUT(alphaD_L2_19_0), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[19]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_19_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[19]), .SIGN(SIGN_dalpha_L2_j_1[19]),  .SIGN_out(SIGN_alpha_L2_j_1[19]), .OUT(alphaD_L2_19_1), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[19]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_19_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[19]), .SIGN(SIGN_dalpha_L2_j_2[19]),  .SIGN_out(SIGN_alpha_L2_j_2[19]), .OUT(alphaD_L2_19_2), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[19]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_19_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[19]), .SIGN(SIGN_dalpha_L2_j_3[19]),  .SIGN_out(SIGN_alpha_L2_j_3[19]), .OUT(alphaD_L2_19_3), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[19]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_19_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[19]), .SIGN(SIGN_dalpha_L2_j_4[19]),  .SIGN_out(SIGN_alpha_L2_j_4[19]), .OUT(alphaD_L2_19_4), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[19]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_19_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[19]), .SIGN(SIGN_dalpha_L2_j_5[19]),  .SIGN_out(SIGN_alpha_L2_j_5[19]), .OUT(alphaD_L2_19_5), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[19]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_19_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[19]), .SIGN(SIGN_dalpha_L2_j_6[19]),  .SIGN_out(SIGN_alpha_L2_j_6[19]), .OUT(alphaD_L2_19_6), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[19]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_19_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[19]), .SIGN(SIGN_dalpha_L2_j_7[19]),  .SIGN_out(SIGN_alpha_L2_j_7[19]), .OUT(alphaD_L2_19_7), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[19]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_20_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[20]), .SIGN(SIGN_dalpha_L2_j_0[20]),  .SIGN_out(SIGN_alpha_L2_j_0[20]), .OUT(alphaD_L2_20_0), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[20]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_20_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[20]), .SIGN(SIGN_dalpha_L2_j_1[20]),  .SIGN_out(SIGN_alpha_L2_j_1[20]), .OUT(alphaD_L2_20_1), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[20]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_20_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[20]), .SIGN(SIGN_dalpha_L2_j_2[20]),  .SIGN_out(SIGN_alpha_L2_j_2[20]), .OUT(alphaD_L2_20_2), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[20]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_20_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[20]), .SIGN(SIGN_dalpha_L2_j_3[20]),  .SIGN_out(SIGN_alpha_L2_j_3[20]), .OUT(alphaD_L2_20_3), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[20]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_20_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[20]), .SIGN(SIGN_dalpha_L2_j_4[20]),  .SIGN_out(SIGN_alpha_L2_j_4[20]), .OUT(alphaD_L2_20_4), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[20]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_20_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[20]), .SIGN(SIGN_dalpha_L2_j_5[20]),  .SIGN_out(SIGN_alpha_L2_j_5[20]), .OUT(alphaD_L2_20_5), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[20]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_20_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[20]), .SIGN(SIGN_dalpha_L2_j_6[20]),  .SIGN_out(SIGN_alpha_L2_j_6[20]), .OUT(alphaD_L2_20_6), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[20]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_20_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[20]), .SIGN(SIGN_dalpha_L2_j_7[20]),  .SIGN_out(SIGN_alpha_L2_j_7[20]), .OUT(alphaD_L2_20_7), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[20]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_21_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[21]), .SIGN(SIGN_dalpha_L2_j_0[21]),  .SIGN_out(SIGN_alpha_L2_j_0[21]), .OUT(alphaD_L2_21_0), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[21]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_21_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[21]), .SIGN(SIGN_dalpha_L2_j_1[21]),  .SIGN_out(SIGN_alpha_L2_j_1[21]), .OUT(alphaD_L2_21_1), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[21]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_21_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[21]), .SIGN(SIGN_dalpha_L2_j_2[21]),  .SIGN_out(SIGN_alpha_L2_j_2[21]), .OUT(alphaD_L2_21_2), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[21]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_21_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[21]), .SIGN(SIGN_dalpha_L2_j_3[21]),  .SIGN_out(SIGN_alpha_L2_j_3[21]), .OUT(alphaD_L2_21_3), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[21]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_21_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[21]), .SIGN(SIGN_dalpha_L2_j_4[21]),  .SIGN_out(SIGN_alpha_L2_j_4[21]), .OUT(alphaD_L2_21_4), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[21]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_21_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[21]), .SIGN(SIGN_dalpha_L2_j_5[21]),  .SIGN_out(SIGN_alpha_L2_j_5[21]), .OUT(alphaD_L2_21_5), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[21]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_21_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[21]), .SIGN(SIGN_dalpha_L2_j_6[21]),  .SIGN_out(SIGN_alpha_L2_j_6[21]), .OUT(alphaD_L2_21_6), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[21]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_21_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[21]), .SIGN(SIGN_dalpha_L2_j_7[21]),  .SIGN_out(SIGN_alpha_L2_j_7[21]), .OUT(alphaD_L2_21_7), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[21]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_22_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[22]), .SIGN(SIGN_dalpha_L2_j_0[22]),  .SIGN_out(SIGN_alpha_L2_j_0[22]), .OUT(alphaD_L2_22_0), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[22]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_22_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[22]), .SIGN(SIGN_dalpha_L2_j_1[22]),  .SIGN_out(SIGN_alpha_L2_j_1[22]), .OUT(alphaD_L2_22_1), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[22]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_22_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[22]), .SIGN(SIGN_dalpha_L2_j_2[22]),  .SIGN_out(SIGN_alpha_L2_j_2[22]), .OUT(alphaD_L2_22_2), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[22]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_22_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[22]), .SIGN(SIGN_dalpha_L2_j_3[22]),  .SIGN_out(SIGN_alpha_L2_j_3[22]), .OUT(alphaD_L2_22_3), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[22]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_22_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[22]), .SIGN(SIGN_dalpha_L2_j_4[22]),  .SIGN_out(SIGN_alpha_L2_j_4[22]), .OUT(alphaD_L2_22_4), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[22]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_22_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[22]), .SIGN(SIGN_dalpha_L2_j_5[22]),  .SIGN_out(SIGN_alpha_L2_j_5[22]), .OUT(alphaD_L2_22_5), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[22]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_22_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[22]), .SIGN(SIGN_dalpha_L2_j_6[22]),  .SIGN_out(SIGN_alpha_L2_j_6[22]), .OUT(alphaD_L2_22_6), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[22]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_22_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[22]), .SIGN(SIGN_dalpha_L2_j_7[22]),  .SIGN_out(SIGN_alpha_L2_j_7[22]), .OUT(alphaD_L2_22_7), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[22]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_23_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[23]), .SIGN(SIGN_dalpha_L2_j_0[23]),  .SIGN_out(SIGN_alpha_L2_j_0[23]), .OUT(alphaD_L2_23_0), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[23]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_23_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[23]), .SIGN(SIGN_dalpha_L2_j_1[23]),  .SIGN_out(SIGN_alpha_L2_j_1[23]), .OUT(alphaD_L2_23_1), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[23]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_23_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[23]), .SIGN(SIGN_dalpha_L2_j_2[23]),  .SIGN_out(SIGN_alpha_L2_j_2[23]), .OUT(alphaD_L2_23_2), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[23]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_23_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[23]), .SIGN(SIGN_dalpha_L2_j_3[23]),  .SIGN_out(SIGN_alpha_L2_j_3[23]), .OUT(alphaD_L2_23_3), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[23]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_23_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[23]), .SIGN(SIGN_dalpha_L2_j_4[23]),  .SIGN_out(SIGN_alpha_L2_j_4[23]), .OUT(alphaD_L2_23_4), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[23]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_23_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[23]), .SIGN(SIGN_dalpha_L2_j_5[23]),  .SIGN_out(SIGN_alpha_L2_j_5[23]), .OUT(alphaD_L2_23_5), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[23]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_23_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[23]), .SIGN(SIGN_dalpha_L2_j_6[23]),  .SIGN_out(SIGN_alpha_L2_j_6[23]), .OUT(alphaD_L2_23_6), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[23]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_23_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[23]), .SIGN(SIGN_dalpha_L2_j_7[23]),  .SIGN_out(SIGN_alpha_L2_j_7[23]), .OUT(alphaD_L2_23_7), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[23]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_24_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_0[24]), .SIGN(SIGN_dalpha_L2_j_0[24]),  .SIGN_out(SIGN_alpha_L2_j_0[24]), .OUT(alphaD_L2_24_0), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_0[24]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_24_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_1[24]), .SIGN(SIGN_dalpha_L2_j_1[24]),  .SIGN_out(SIGN_alpha_L2_j_1[24]), .OUT(alphaD_L2_24_1), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_1[24]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_24_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_2[24]), .SIGN(SIGN_dalpha_L2_j_2[24]),  .SIGN_out(SIGN_alpha_L2_j_2[24]), .OUT(alphaD_L2_24_2), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_2[24]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_24_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_3[24]), .SIGN(SIGN_dalpha_L2_j_3[24]),  .SIGN_out(SIGN_alpha_L2_j_3[24]), .OUT(alphaD_L2_24_3), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_3[24]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_24_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_4[24]), .SIGN(SIGN_dalpha_L2_j_4[24]),  .SIGN_out(SIGN_alpha_L2_j_4[24]), .OUT(alphaD_L2_24_4), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_4[24]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_24_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_5[24]), .SIGN(SIGN_dalpha_L2_j_5[24]),  .SIGN_out(SIGN_alpha_L2_j_5[24]), .OUT(alphaD_L2_24_5), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_5[24]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_24_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_6[24]), .SIGN(SIGN_dalpha_L2_j_6[24]),  .SIGN_out(SIGN_alpha_L2_j_6[24]), .OUT(alphaD_L2_24_6), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_6[24]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L2_24_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L2_j_7[24]), .SIGN(SIGN_dalpha_L2_j_7[24]),  .SIGN_out(SIGN_alpha_L2_j_7[24]), .OUT(alphaD_L2_24_7), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L2), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L2_j_7[24]), .EN(TrainingActive&TrainingActive_L2_alpha)); 
defparam SMOOTHGRAD_a_L2_0_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_0_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_0_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_0_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_0_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_0_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_0_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_0_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_0_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_0_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_0_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_0_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_0_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_0_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_0_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_0_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_1_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_1_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_1_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_1_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_1_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_1_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_1_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_1_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_1_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_1_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_1_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_1_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_1_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_1_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_1_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_1_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_2_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_2_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_2_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_2_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_2_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_2_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_2_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_2_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_2_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_2_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_2_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_2_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_2_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_2_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_2_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_2_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_3_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_3_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_3_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_3_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_3_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_3_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_3_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_3_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_3_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_3_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_3_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_3_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_3_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_3_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_3_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_3_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_4_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_4_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_4_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_4_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_4_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_4_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_4_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_4_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_4_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_4_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_4_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_4_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_4_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_4_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_4_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_4_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_5_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_5_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_5_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_5_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_5_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_5_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_5_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_5_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_5_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_5_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_5_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_5_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_5_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_5_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_5_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_5_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_6_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_6_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_6_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_6_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_6_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_6_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_6_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_6_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_6_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_6_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_6_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_6_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_6_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_6_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_6_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_6_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_7_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_7_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_7_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_7_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_7_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_7_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_7_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_7_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_7_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_7_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_7_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_7_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_7_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_7_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_7_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_7_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_8_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_8_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_8_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_8_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_8_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_8_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_8_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_8_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_8_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_8_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_8_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_8_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_8_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_8_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_8_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_8_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_9_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_9_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_9_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_9_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_9_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_9_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_9_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_9_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_9_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_9_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_9_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_9_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_9_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_9_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_9_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_9_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_10_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_10_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_10_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_10_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_10_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_10_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_10_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_10_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_10_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_10_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_10_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_10_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_10_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_10_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_10_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_10_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_11_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_11_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_11_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_11_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_11_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_11_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_11_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_11_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_11_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_11_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_11_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_11_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_11_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_11_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_11_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_11_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_12_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_12_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_12_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_12_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_12_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_12_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_12_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_12_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_12_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_12_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_12_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_12_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_12_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_12_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_12_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_12_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_13_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_13_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_13_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_13_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_13_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_13_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_13_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_13_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_13_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_13_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_13_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_13_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_13_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_13_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_13_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_13_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_14_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_14_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_14_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_14_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_14_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_14_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_14_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_14_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_14_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_14_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_14_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_14_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_14_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_14_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_14_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_14_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_15_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_15_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_15_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_15_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_15_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_15_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_15_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_15_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_15_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_15_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_15_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_15_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_15_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_15_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_15_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_15_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_16_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_16_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_16_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_16_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_16_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_16_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_16_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_16_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_16_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_16_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_16_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_16_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_16_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_16_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_16_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_16_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_17_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_17_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_17_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_17_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_17_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_17_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_17_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_17_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_17_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_17_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_17_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_17_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_17_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_17_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_17_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_17_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_18_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_18_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_18_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_18_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_18_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_18_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_18_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_18_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_18_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_18_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_18_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_18_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_18_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_18_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_18_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_18_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_19_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_19_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_19_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_19_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_19_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_19_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_19_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_19_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_19_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_19_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_19_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_19_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_19_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_19_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_19_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_19_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_20_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_20_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_20_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_20_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_20_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_20_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_20_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_20_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_20_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_20_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_20_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_20_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_20_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_20_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_20_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_20_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_21_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_21_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_21_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_21_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_21_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_21_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_21_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_21_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_21_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_21_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_21_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_21_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_21_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_21_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_21_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_21_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_22_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_22_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_22_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_22_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_22_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_22_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_22_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_22_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_22_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_22_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_22_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_22_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_22_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_22_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_22_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_22_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_23_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_23_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_23_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_23_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_23_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_23_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_23_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_23_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_23_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_23_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_23_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_23_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_23_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_23_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_23_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_23_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_24_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_24_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_24_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_24_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_24_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_24_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_24_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_24_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_24_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_24_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_24_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_24_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_24_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_24_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L2_24_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L2_24_7.N_RESISTANCE = RESISTANCE_precision;

NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L2_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L2[0]), .SIGN(SIGN_dbeta_L2[0]), .SIGN_out(SIGN_beta_L2[0]), .OUT(betaD_L2_0), .OUT_INIT(betaD_L2_INIT), .SIGN_OUT_INIT(SIGN_beta_L2_INIT), .RESISTANCE(RESISTANCE_beta_L2), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L2[0]), .EN(TrainingActive&TrainingActive_L2_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L2_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L2[1]), .SIGN(SIGN_dbeta_L2[1]), .SIGN_out(SIGN_beta_L2[1]), .OUT(betaD_L2_1), .OUT_INIT(betaD_L2_INIT), .SIGN_OUT_INIT(SIGN_beta_L2_INIT), .RESISTANCE(RESISTANCE_beta_L2), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L2[1]), .EN(TrainingActive&TrainingActive_L2_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L2_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L2[2]), .SIGN(SIGN_dbeta_L2[2]), .SIGN_out(SIGN_beta_L2[2]), .OUT(betaD_L2_2), .OUT_INIT(betaD_L2_INIT), .SIGN_OUT_INIT(SIGN_beta_L2_INIT), .RESISTANCE(RESISTANCE_beta_L2), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L2[2]), .EN(TrainingActive&TrainingActive_L2_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L2_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L2[3]), .SIGN(SIGN_dbeta_L2[3]), .SIGN_out(SIGN_beta_L2[3]), .OUT(betaD_L2_3), .OUT_INIT(betaD_L2_INIT), .SIGN_OUT_INIT(SIGN_beta_L2_INIT), .RESISTANCE(RESISTANCE_beta_L2), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L2[3]), .EN(TrainingActive&TrainingActive_L2_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L2_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L2[4]), .SIGN(SIGN_dbeta_L2[4]), .SIGN_out(SIGN_beta_L2[4]), .OUT(betaD_L2_4), .OUT_INIT(betaD_L2_INIT), .SIGN_OUT_INIT(SIGN_beta_L2_INIT), .RESISTANCE(RESISTANCE_beta_L2), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L2[4]), .EN(TrainingActive&TrainingActive_L2_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L2_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L2[5]), .SIGN(SIGN_dbeta_L2[5]), .SIGN_out(SIGN_beta_L2[5]), .OUT(betaD_L2_5), .OUT_INIT(betaD_L2_INIT), .SIGN_OUT_INIT(SIGN_beta_L2_INIT), .RESISTANCE(RESISTANCE_beta_L2), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L2[5]), .EN(TrainingActive&TrainingActive_L2_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L2_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L2[6]), .SIGN(SIGN_dbeta_L2[6]), .SIGN_out(SIGN_beta_L2[6]), .OUT(betaD_L2_6), .OUT_INIT(betaD_L2_INIT), .SIGN_OUT_INIT(SIGN_beta_L2_INIT), .RESISTANCE(RESISTANCE_beta_L2), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L2[6]), .EN(TrainingActive&TrainingActive_L2_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L2_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L2[7]), .SIGN(SIGN_dbeta_L2[7]), .SIGN_out(SIGN_beta_L2[7]), .OUT(betaD_L2_7), .OUT_INIT(betaD_L2_INIT), .SIGN_OUT_INIT(SIGN_beta_L2_INIT), .RESISTANCE(RESISTANCE_beta_L2), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L2[7]), .EN(TrainingActive&TrainingActive_L2_beta));
defparam SMOOTHGRAD_b_L2_0.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L2_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L2_1.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L2_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L2_2.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L2_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L2_3.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L2_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L2_4.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L2_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L2_5.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L2_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L2_6.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L2_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L2_7.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L2_7.N_RESISTANCE = RESISTANCE_precision;

NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_0[0]), .SIGN(SIGN_dalpha_L1_j_0[0]),  .SIGN_out(SIGN_alpha_L1_j_0[0]), .OUT(alphaD_L1_0_0), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_0[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_1[0]), .SIGN(SIGN_dalpha_L1_j_1[0]),  .SIGN_out(SIGN_alpha_L1_j_1[0]), .OUT(alphaD_L1_0_1), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_1[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_2[0]), .SIGN(SIGN_dalpha_L1_j_2[0]),  .SIGN_out(SIGN_alpha_L1_j_2[0]), .OUT(alphaD_L1_0_2), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_2[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_3[0]), .SIGN(SIGN_dalpha_L1_j_3[0]),  .SIGN_out(SIGN_alpha_L1_j_3[0]), .OUT(alphaD_L1_0_3), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_3[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_4[0]), .SIGN(SIGN_dalpha_L1_j_4[0]),  .SIGN_out(SIGN_alpha_L1_j_4[0]), .OUT(alphaD_L1_0_4), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_4[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_5[0]), .SIGN(SIGN_dalpha_L1_j_5[0]),  .SIGN_out(SIGN_alpha_L1_j_5[0]), .OUT(alphaD_L1_0_5), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_5[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_6[0]), .SIGN(SIGN_dalpha_L1_j_6[0]),  .SIGN_out(SIGN_alpha_L1_j_6[0]), .OUT(alphaD_L1_0_6), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_6[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_7[0]), .SIGN(SIGN_dalpha_L1_j_7[0]),  .SIGN_out(SIGN_alpha_L1_j_7[0]), .OUT(alphaD_L1_0_7), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_7[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_8(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_8[0]), .SIGN(SIGN_dalpha_L1_j_8[0]),  .SIGN_out(SIGN_alpha_L1_j_8[0]), .OUT(alphaD_L1_0_8), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_8[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_9(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_9[0]), .SIGN(SIGN_dalpha_L1_j_9[0]),  .SIGN_out(SIGN_alpha_L1_j_9[0]), .OUT(alphaD_L1_0_9), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_9[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_10(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_10[0]), .SIGN(SIGN_dalpha_L1_j_10[0]),  .SIGN_out(SIGN_alpha_L1_j_10[0]), .OUT(alphaD_L1_0_10), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_10[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_11(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_11[0]), .SIGN(SIGN_dalpha_L1_j_11[0]),  .SIGN_out(SIGN_alpha_L1_j_11[0]), .OUT(alphaD_L1_0_11), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_11[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_12(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_12[0]), .SIGN(SIGN_dalpha_L1_j_12[0]),  .SIGN_out(SIGN_alpha_L1_j_12[0]), .OUT(alphaD_L1_0_12), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_12[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_13(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_13[0]), .SIGN(SIGN_dalpha_L1_j_13[0]),  .SIGN_out(SIGN_alpha_L1_j_13[0]), .OUT(alphaD_L1_0_13), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_13[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_14(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_14[0]), .SIGN(SIGN_dalpha_L1_j_14[0]),  .SIGN_out(SIGN_alpha_L1_j_14[0]), .OUT(alphaD_L1_0_14), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_14[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_15(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_15[0]), .SIGN(SIGN_dalpha_L1_j_15[0]),  .SIGN_out(SIGN_alpha_L1_j_15[0]), .OUT(alphaD_L1_0_15), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_15[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_16(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_16[0]), .SIGN(SIGN_dalpha_L1_j_16[0]),  .SIGN_out(SIGN_alpha_L1_j_16[0]), .OUT(alphaD_L1_0_16), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_16[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_17(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_17[0]), .SIGN(SIGN_dalpha_L1_j_17[0]),  .SIGN_out(SIGN_alpha_L1_j_17[0]), .OUT(alphaD_L1_0_17), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_17[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_18(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_18[0]), .SIGN(SIGN_dalpha_L1_j_18[0]),  .SIGN_out(SIGN_alpha_L1_j_18[0]), .OUT(alphaD_L1_0_18), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_18[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_19(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_19[0]), .SIGN(SIGN_dalpha_L1_j_19[0]),  .SIGN_out(SIGN_alpha_L1_j_19[0]), .OUT(alphaD_L1_0_19), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_19[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_20(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_20[0]), .SIGN(SIGN_dalpha_L1_j_20[0]),  .SIGN_out(SIGN_alpha_L1_j_20[0]), .OUT(alphaD_L1_0_20), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_20[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_21(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_21[0]), .SIGN(SIGN_dalpha_L1_j_21[0]),  .SIGN_out(SIGN_alpha_L1_j_21[0]), .OUT(alphaD_L1_0_21), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_21[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_22(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_22[0]), .SIGN(SIGN_dalpha_L1_j_22[0]),  .SIGN_out(SIGN_alpha_L1_j_22[0]), .OUT(alphaD_L1_0_22), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_22[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_23(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_23[0]), .SIGN(SIGN_dalpha_L1_j_23[0]),  .SIGN_out(SIGN_alpha_L1_j_23[0]), .OUT(alphaD_L1_0_23), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_23[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_0_24(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_24[0]), .SIGN(SIGN_dalpha_L1_j_24[0]),  .SIGN_out(SIGN_alpha_L1_j_24[0]), .OUT(alphaD_L1_0_24), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_24[0]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_0[1]), .SIGN(SIGN_dalpha_L1_j_0[1]),  .SIGN_out(SIGN_alpha_L1_j_0[1]), .OUT(alphaD_L1_1_0), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_0[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_1[1]), .SIGN(SIGN_dalpha_L1_j_1[1]),  .SIGN_out(SIGN_alpha_L1_j_1[1]), .OUT(alphaD_L1_1_1), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_1[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_2[1]), .SIGN(SIGN_dalpha_L1_j_2[1]),  .SIGN_out(SIGN_alpha_L1_j_2[1]), .OUT(alphaD_L1_1_2), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_2[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_3[1]), .SIGN(SIGN_dalpha_L1_j_3[1]),  .SIGN_out(SIGN_alpha_L1_j_3[1]), .OUT(alphaD_L1_1_3), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_3[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_4[1]), .SIGN(SIGN_dalpha_L1_j_4[1]),  .SIGN_out(SIGN_alpha_L1_j_4[1]), .OUT(alphaD_L1_1_4), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_4[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_5[1]), .SIGN(SIGN_dalpha_L1_j_5[1]),  .SIGN_out(SIGN_alpha_L1_j_5[1]), .OUT(alphaD_L1_1_5), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_5[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_6[1]), .SIGN(SIGN_dalpha_L1_j_6[1]),  .SIGN_out(SIGN_alpha_L1_j_6[1]), .OUT(alphaD_L1_1_6), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_6[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_7[1]), .SIGN(SIGN_dalpha_L1_j_7[1]),  .SIGN_out(SIGN_alpha_L1_j_7[1]), .OUT(alphaD_L1_1_7), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_7[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_8(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_8[1]), .SIGN(SIGN_dalpha_L1_j_8[1]),  .SIGN_out(SIGN_alpha_L1_j_8[1]), .OUT(alphaD_L1_1_8), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_8[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_9(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_9[1]), .SIGN(SIGN_dalpha_L1_j_9[1]),  .SIGN_out(SIGN_alpha_L1_j_9[1]), .OUT(alphaD_L1_1_9), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_9[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_10(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_10[1]), .SIGN(SIGN_dalpha_L1_j_10[1]),  .SIGN_out(SIGN_alpha_L1_j_10[1]), .OUT(alphaD_L1_1_10), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_10[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_11(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_11[1]), .SIGN(SIGN_dalpha_L1_j_11[1]),  .SIGN_out(SIGN_alpha_L1_j_11[1]), .OUT(alphaD_L1_1_11), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_11[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_12(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_12[1]), .SIGN(SIGN_dalpha_L1_j_12[1]),  .SIGN_out(SIGN_alpha_L1_j_12[1]), .OUT(alphaD_L1_1_12), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_12[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_13(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_13[1]), .SIGN(SIGN_dalpha_L1_j_13[1]),  .SIGN_out(SIGN_alpha_L1_j_13[1]), .OUT(alphaD_L1_1_13), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_13[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_14(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_14[1]), .SIGN(SIGN_dalpha_L1_j_14[1]),  .SIGN_out(SIGN_alpha_L1_j_14[1]), .OUT(alphaD_L1_1_14), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_14[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_15(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_15[1]), .SIGN(SIGN_dalpha_L1_j_15[1]),  .SIGN_out(SIGN_alpha_L1_j_15[1]), .OUT(alphaD_L1_1_15), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_15[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_16(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_16[1]), .SIGN(SIGN_dalpha_L1_j_16[1]),  .SIGN_out(SIGN_alpha_L1_j_16[1]), .OUT(alphaD_L1_1_16), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_16[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_17(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_17[1]), .SIGN(SIGN_dalpha_L1_j_17[1]),  .SIGN_out(SIGN_alpha_L1_j_17[1]), .OUT(alphaD_L1_1_17), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_17[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_18(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_18[1]), .SIGN(SIGN_dalpha_L1_j_18[1]),  .SIGN_out(SIGN_alpha_L1_j_18[1]), .OUT(alphaD_L1_1_18), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_18[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_19(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_19[1]), .SIGN(SIGN_dalpha_L1_j_19[1]),  .SIGN_out(SIGN_alpha_L1_j_19[1]), .OUT(alphaD_L1_1_19), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_19[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_20(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_20[1]), .SIGN(SIGN_dalpha_L1_j_20[1]),  .SIGN_out(SIGN_alpha_L1_j_20[1]), .OUT(alphaD_L1_1_20), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_20[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_21(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_21[1]), .SIGN(SIGN_dalpha_L1_j_21[1]),  .SIGN_out(SIGN_alpha_L1_j_21[1]), .OUT(alphaD_L1_1_21), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_21[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_22(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_22[1]), .SIGN(SIGN_dalpha_L1_j_22[1]),  .SIGN_out(SIGN_alpha_L1_j_22[1]), .OUT(alphaD_L1_1_22), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_22[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_23(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_23[1]), .SIGN(SIGN_dalpha_L1_j_23[1]),  .SIGN_out(SIGN_alpha_L1_j_23[1]), .OUT(alphaD_L1_1_23), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_23[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_1_24(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_24[1]), .SIGN(SIGN_dalpha_L1_j_24[1]),  .SIGN_out(SIGN_alpha_L1_j_24[1]), .OUT(alphaD_L1_1_24), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_24[1]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_0[2]), .SIGN(SIGN_dalpha_L1_j_0[2]),  .SIGN_out(SIGN_alpha_L1_j_0[2]), .OUT(alphaD_L1_2_0), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_0[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_1[2]), .SIGN(SIGN_dalpha_L1_j_1[2]),  .SIGN_out(SIGN_alpha_L1_j_1[2]), .OUT(alphaD_L1_2_1), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_1[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_2[2]), .SIGN(SIGN_dalpha_L1_j_2[2]),  .SIGN_out(SIGN_alpha_L1_j_2[2]), .OUT(alphaD_L1_2_2), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_2[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_3[2]), .SIGN(SIGN_dalpha_L1_j_3[2]),  .SIGN_out(SIGN_alpha_L1_j_3[2]), .OUT(alphaD_L1_2_3), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_3[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_4[2]), .SIGN(SIGN_dalpha_L1_j_4[2]),  .SIGN_out(SIGN_alpha_L1_j_4[2]), .OUT(alphaD_L1_2_4), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_4[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_5[2]), .SIGN(SIGN_dalpha_L1_j_5[2]),  .SIGN_out(SIGN_alpha_L1_j_5[2]), .OUT(alphaD_L1_2_5), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_5[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_6[2]), .SIGN(SIGN_dalpha_L1_j_6[2]),  .SIGN_out(SIGN_alpha_L1_j_6[2]), .OUT(alphaD_L1_2_6), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_6[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_7[2]), .SIGN(SIGN_dalpha_L1_j_7[2]),  .SIGN_out(SIGN_alpha_L1_j_7[2]), .OUT(alphaD_L1_2_7), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_7[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_8(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_8[2]), .SIGN(SIGN_dalpha_L1_j_8[2]),  .SIGN_out(SIGN_alpha_L1_j_8[2]), .OUT(alphaD_L1_2_8), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_8[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_9(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_9[2]), .SIGN(SIGN_dalpha_L1_j_9[2]),  .SIGN_out(SIGN_alpha_L1_j_9[2]), .OUT(alphaD_L1_2_9), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_9[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_10(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_10[2]), .SIGN(SIGN_dalpha_L1_j_10[2]),  .SIGN_out(SIGN_alpha_L1_j_10[2]), .OUT(alphaD_L1_2_10), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_10[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_11(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_11[2]), .SIGN(SIGN_dalpha_L1_j_11[2]),  .SIGN_out(SIGN_alpha_L1_j_11[2]), .OUT(alphaD_L1_2_11), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_11[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_12(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_12[2]), .SIGN(SIGN_dalpha_L1_j_12[2]),  .SIGN_out(SIGN_alpha_L1_j_12[2]), .OUT(alphaD_L1_2_12), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_12[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_13(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_13[2]), .SIGN(SIGN_dalpha_L1_j_13[2]),  .SIGN_out(SIGN_alpha_L1_j_13[2]), .OUT(alphaD_L1_2_13), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_13[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_14(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_14[2]), .SIGN(SIGN_dalpha_L1_j_14[2]),  .SIGN_out(SIGN_alpha_L1_j_14[2]), .OUT(alphaD_L1_2_14), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_14[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_15(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_15[2]), .SIGN(SIGN_dalpha_L1_j_15[2]),  .SIGN_out(SIGN_alpha_L1_j_15[2]), .OUT(alphaD_L1_2_15), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_15[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_16(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_16[2]), .SIGN(SIGN_dalpha_L1_j_16[2]),  .SIGN_out(SIGN_alpha_L1_j_16[2]), .OUT(alphaD_L1_2_16), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_16[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_17(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_17[2]), .SIGN(SIGN_dalpha_L1_j_17[2]),  .SIGN_out(SIGN_alpha_L1_j_17[2]), .OUT(alphaD_L1_2_17), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_17[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_18(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_18[2]), .SIGN(SIGN_dalpha_L1_j_18[2]),  .SIGN_out(SIGN_alpha_L1_j_18[2]), .OUT(alphaD_L1_2_18), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_18[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_19(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_19[2]), .SIGN(SIGN_dalpha_L1_j_19[2]),  .SIGN_out(SIGN_alpha_L1_j_19[2]), .OUT(alphaD_L1_2_19), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_19[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_20(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_20[2]), .SIGN(SIGN_dalpha_L1_j_20[2]),  .SIGN_out(SIGN_alpha_L1_j_20[2]), .OUT(alphaD_L1_2_20), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_20[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_21(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_21[2]), .SIGN(SIGN_dalpha_L1_j_21[2]),  .SIGN_out(SIGN_alpha_L1_j_21[2]), .OUT(alphaD_L1_2_21), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_21[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_22(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_22[2]), .SIGN(SIGN_dalpha_L1_j_22[2]),  .SIGN_out(SIGN_alpha_L1_j_22[2]), .OUT(alphaD_L1_2_22), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_22[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_23(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_23[2]), .SIGN(SIGN_dalpha_L1_j_23[2]),  .SIGN_out(SIGN_alpha_L1_j_23[2]), .OUT(alphaD_L1_2_23), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_23[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_2_24(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_24[2]), .SIGN(SIGN_dalpha_L1_j_24[2]),  .SIGN_out(SIGN_alpha_L1_j_24[2]), .OUT(alphaD_L1_2_24), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_24[2]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_0[3]), .SIGN(SIGN_dalpha_L1_j_0[3]),  .SIGN_out(SIGN_alpha_L1_j_0[3]), .OUT(alphaD_L1_3_0), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_0[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_1[3]), .SIGN(SIGN_dalpha_L1_j_1[3]),  .SIGN_out(SIGN_alpha_L1_j_1[3]), .OUT(alphaD_L1_3_1), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_1[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_2[3]), .SIGN(SIGN_dalpha_L1_j_2[3]),  .SIGN_out(SIGN_alpha_L1_j_2[3]), .OUT(alphaD_L1_3_2), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_2[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_3[3]), .SIGN(SIGN_dalpha_L1_j_3[3]),  .SIGN_out(SIGN_alpha_L1_j_3[3]), .OUT(alphaD_L1_3_3), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_3[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_4[3]), .SIGN(SIGN_dalpha_L1_j_4[3]),  .SIGN_out(SIGN_alpha_L1_j_4[3]), .OUT(alphaD_L1_3_4), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_4[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_5[3]), .SIGN(SIGN_dalpha_L1_j_5[3]),  .SIGN_out(SIGN_alpha_L1_j_5[3]), .OUT(alphaD_L1_3_5), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_5[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_6[3]), .SIGN(SIGN_dalpha_L1_j_6[3]),  .SIGN_out(SIGN_alpha_L1_j_6[3]), .OUT(alphaD_L1_3_6), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_6[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_7[3]), .SIGN(SIGN_dalpha_L1_j_7[3]),  .SIGN_out(SIGN_alpha_L1_j_7[3]), .OUT(alphaD_L1_3_7), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_7[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_8(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_8[3]), .SIGN(SIGN_dalpha_L1_j_8[3]),  .SIGN_out(SIGN_alpha_L1_j_8[3]), .OUT(alphaD_L1_3_8), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_8[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_9(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_9[3]), .SIGN(SIGN_dalpha_L1_j_9[3]),  .SIGN_out(SIGN_alpha_L1_j_9[3]), .OUT(alphaD_L1_3_9), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_9[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_10(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_10[3]), .SIGN(SIGN_dalpha_L1_j_10[3]),  .SIGN_out(SIGN_alpha_L1_j_10[3]), .OUT(alphaD_L1_3_10), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_10[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_11(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_11[3]), .SIGN(SIGN_dalpha_L1_j_11[3]),  .SIGN_out(SIGN_alpha_L1_j_11[3]), .OUT(alphaD_L1_3_11), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_11[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_12(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_12[3]), .SIGN(SIGN_dalpha_L1_j_12[3]),  .SIGN_out(SIGN_alpha_L1_j_12[3]), .OUT(alphaD_L1_3_12), .OUT_INIT(8'd5),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_12[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_13(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_13[3]), .SIGN(SIGN_dalpha_L1_j_13[3]),  .SIGN_out(SIGN_alpha_L1_j_13[3]), .OUT(alphaD_L1_3_13), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_13[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_14(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_14[3]), .SIGN(SIGN_dalpha_L1_j_14[3]),  .SIGN_out(SIGN_alpha_L1_j_14[3]), .OUT(alphaD_L1_3_14), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_14[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_15(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_15[3]), .SIGN(SIGN_dalpha_L1_j_15[3]),  .SIGN_out(SIGN_alpha_L1_j_15[3]), .OUT(alphaD_L1_3_15), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_15[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_16(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_16[3]), .SIGN(SIGN_dalpha_L1_j_16[3]),  .SIGN_out(SIGN_alpha_L1_j_16[3]), .OUT(alphaD_L1_3_16), .OUT_INIT(8'd0),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_16[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_17(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_17[3]), .SIGN(SIGN_dalpha_L1_j_17[3]),  .SIGN_out(SIGN_alpha_L1_j_17[3]), .OUT(alphaD_L1_3_17), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_17[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_18(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_18[3]), .SIGN(SIGN_dalpha_L1_j_18[3]),  .SIGN_out(SIGN_alpha_L1_j_18[3]), .OUT(alphaD_L1_3_18), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_18[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_19(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_19[3]), .SIGN(SIGN_dalpha_L1_j_19[3]),  .SIGN_out(SIGN_alpha_L1_j_19[3]), .OUT(alphaD_L1_3_19), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_19[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_20(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_20[3]), .SIGN(SIGN_dalpha_L1_j_20[3]),  .SIGN_out(SIGN_alpha_L1_j_20[3]), .OUT(alphaD_L1_3_20), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_20[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_21(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_21[3]), .SIGN(SIGN_dalpha_L1_j_21[3]),  .SIGN_out(SIGN_alpha_L1_j_21[3]), .OUT(alphaD_L1_3_21), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_21[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_22(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_22[3]), .SIGN(SIGN_dalpha_L1_j_22[3]),  .SIGN_out(SIGN_alpha_L1_j_22[3]), .OUT(alphaD_L1_3_22), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_22[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_23(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_23[3]), .SIGN(SIGN_dalpha_L1_j_23[3]),  .SIGN_out(SIGN_alpha_L1_j_23[3]), .OUT(alphaD_L1_3_23), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_23[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_3_24(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_24[3]), .SIGN(SIGN_dalpha_L1_j_24[3]),  .SIGN_out(SIGN_alpha_L1_j_24[3]), .OUT(alphaD_L1_3_24), .OUT_INIT(8'd2),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_24[3]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_0[4]), .SIGN(SIGN_dalpha_L1_j_0[4]),  .SIGN_out(SIGN_alpha_L1_j_0[4]), .OUT(alphaD_L1_4_0), .OUT_INIT(8'd3),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_0[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_1[4]), .SIGN(SIGN_dalpha_L1_j_1[4]),  .SIGN_out(SIGN_alpha_L1_j_1[4]), .OUT(alphaD_L1_4_1), .OUT_INIT(8'd9),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_1[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_2[4]), .SIGN(SIGN_dalpha_L1_j_2[4]),  .SIGN_out(SIGN_alpha_L1_j_2[4]), .OUT(alphaD_L1_4_2), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_2[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_3[4]), .SIGN(SIGN_dalpha_L1_j_3[4]),  .SIGN_out(SIGN_alpha_L1_j_3[4]), .OUT(alphaD_L1_4_3), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_3[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_4[4]), .SIGN(SIGN_dalpha_L1_j_4[4]),  .SIGN_out(SIGN_alpha_L1_j_4[4]), .OUT(alphaD_L1_4_4), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_4[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_5[4]), .SIGN(SIGN_dalpha_L1_j_5[4]),  .SIGN_out(SIGN_alpha_L1_j_5[4]), .OUT(alphaD_L1_4_5), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_5[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_6[4]), .SIGN(SIGN_dalpha_L1_j_6[4]),  .SIGN_out(SIGN_alpha_L1_j_6[4]), .OUT(alphaD_L1_4_6), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_6[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_7[4]), .SIGN(SIGN_dalpha_L1_j_7[4]),  .SIGN_out(SIGN_alpha_L1_j_7[4]), .OUT(alphaD_L1_4_7), .OUT_INIT(8'd14),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_7[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_8(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_8[4]), .SIGN(SIGN_dalpha_L1_j_8[4]),  .SIGN_out(SIGN_alpha_L1_j_8[4]), .OUT(alphaD_L1_4_8), .OUT_INIT(8'd4),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_8[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_9(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_9[4]), .SIGN(SIGN_dalpha_L1_j_9[4]),  .SIGN_out(SIGN_alpha_L1_j_9[4]), .OUT(alphaD_L1_4_9), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_9[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_10(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_10[4]), .SIGN(SIGN_dalpha_L1_j_10[4]),  .SIGN_out(SIGN_alpha_L1_j_10[4]), .OUT(alphaD_L1_4_10), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_10[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_11(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_11[4]), .SIGN(SIGN_dalpha_L1_j_11[4]),  .SIGN_out(SIGN_alpha_L1_j_11[4]), .OUT(alphaD_L1_4_11), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_11[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_12(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_12[4]), .SIGN(SIGN_dalpha_L1_j_12[4]),  .SIGN_out(SIGN_alpha_L1_j_12[4]), .OUT(alphaD_L1_4_12), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_12[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_13(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_13[4]), .SIGN(SIGN_dalpha_L1_j_13[4]),  .SIGN_out(SIGN_alpha_L1_j_13[4]), .OUT(alphaD_L1_4_13), .OUT_INIT(8'd7),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_13[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_14(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_14[4]), .SIGN(SIGN_dalpha_L1_j_14[4]),  .SIGN_out(SIGN_alpha_L1_j_14[4]), .OUT(alphaD_L1_4_14), .OUT_INIT(8'd1),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_14[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_15(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_15[4]), .SIGN(SIGN_dalpha_L1_j_15[4]),  .SIGN_out(SIGN_alpha_L1_j_15[4]), .OUT(alphaD_L1_4_15), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_15[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_16(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_16[4]), .SIGN(SIGN_dalpha_L1_j_16[4]),  .SIGN_out(SIGN_alpha_L1_j_16[4]), .OUT(alphaD_L1_4_16), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_16[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_17(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_17[4]), .SIGN(SIGN_dalpha_L1_j_17[4]),  .SIGN_out(SIGN_alpha_L1_j_17[4]), .OUT(alphaD_L1_4_17), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_17[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_18(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_18[4]), .SIGN(SIGN_dalpha_L1_j_18[4]),  .SIGN_out(SIGN_alpha_L1_j_18[4]), .OUT(alphaD_L1_4_18), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_18[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_19(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_19[4]), .SIGN(SIGN_dalpha_L1_j_19[4]),  .SIGN_out(SIGN_alpha_L1_j_19[4]), .OUT(alphaD_L1_4_19), .OUT_INIT(8'd11),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_19[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_20(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_20[4]), .SIGN(SIGN_dalpha_L1_j_20[4]),  .SIGN_out(SIGN_alpha_L1_j_20[4]), .OUT(alphaD_L1_4_20), .OUT_INIT(8'd6),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_20[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_21(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_21[4]), .SIGN(SIGN_dalpha_L1_j_21[4]),  .SIGN_out(SIGN_alpha_L1_j_21[4]), .OUT(alphaD_L1_4_21), .OUT_INIT(8'd13),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_21[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_22(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_22[4]), .SIGN(SIGN_dalpha_L1_j_22[4]),  .SIGN_out(SIGN_alpha_L1_j_22[4]), .OUT(alphaD_L1_4_22), .OUT_INIT(8'd12),.SIGN_OUT_INIT(1'd0), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_22[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_23(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_23[4]), .SIGN(SIGN_dalpha_L1_j_23[4]),  .SIGN_out(SIGN_alpha_L1_j_23[4]), .OUT(alphaD_L1_4_23), .OUT_INIT(8'd8),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_23[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_a_L1_4_24(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dalpha_L1_j_24[4]), .SIGN(SIGN_dalpha_L1_j_24[4]),  .SIGN_out(SIGN_alpha_L1_j_24[4]), .OUT(alphaD_L1_4_24), .OUT_INIT(8'd10),.SIGN_OUT_INIT(1'd1), .RESISTANCE(RESISTANCE_alpha_L1), .TransitionChange_TRIG(TransitionChange_TRIG_alpha_L1_j_24[4]), .EN(TrainingActive&TrainingActive_L1_alpha)); 
defparam SMOOTHGRAD_a_L1_0_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_8.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_8.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_9.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_9.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_10.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_10.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_11.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_11.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_12.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_12.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_13.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_13.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_14.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_14.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_15.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_15.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_16.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_16.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_17.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_17.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_18.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_18.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_19.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_19.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_20.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_20.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_21.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_21.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_22.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_22.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_23.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_23.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_0_24.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_0_24.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_8.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_8.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_9.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_9.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_10.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_10.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_11.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_11.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_12.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_12.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_13.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_13.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_14.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_14.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_15.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_15.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_16.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_16.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_17.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_17.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_18.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_18.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_19.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_19.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_20.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_20.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_21.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_21.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_22.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_22.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_23.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_23.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_1_24.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_1_24.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_8.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_8.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_9.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_9.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_10.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_10.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_11.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_11.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_12.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_12.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_13.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_13.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_14.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_14.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_15.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_15.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_16.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_16.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_17.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_17.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_18.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_18.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_19.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_19.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_20.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_20.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_21.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_21.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_22.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_22.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_23.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_23.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_2_24.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_2_24.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_8.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_8.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_9.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_9.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_10.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_10.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_11.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_11.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_12.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_12.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_13.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_13.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_14.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_14.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_15.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_15.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_16.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_16.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_17.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_17.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_18.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_18.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_19.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_19.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_20.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_20.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_21.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_21.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_22.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_22.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_23.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_23.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_3_24.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_3_24.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_0.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_1.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_2.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_3.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_4.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_5.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_6.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_7.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_8.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_8.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_9.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_9.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_10.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_10.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_11.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_11.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_12.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_12.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_13.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_13.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_14.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_14.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_15.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_15.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_16.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_16.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_17.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_17.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_18.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_18.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_19.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_19.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_20.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_20.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_21.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_21.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_22.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_22.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_23.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_23.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_a_L1_4_24.N = 8; // decimal output size
defparam SMOOTHGRAD_a_L1_4_24.N_RESISTANCE = RESISTANCE_precision;

NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_0(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[0]), .SIGN(SIGN_dbeta_L1[0]), .SIGN_out(SIGN_beta_L1[0]), .OUT(betaD_L1_0), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[0]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_1(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[1]), .SIGN(SIGN_dbeta_L1[1]), .SIGN_out(SIGN_beta_L1[1]), .OUT(betaD_L1_1), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[1]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_2(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[2]), .SIGN(SIGN_dbeta_L1[2]), .SIGN_out(SIGN_beta_L1[2]), .OUT(betaD_L1_2), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[2]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_3(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[3]), .SIGN(SIGN_dbeta_L1[3]), .SIGN_out(SIGN_beta_L1[3]), .OUT(betaD_L1_3), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[3]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_4(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[4]), .SIGN(SIGN_dbeta_L1[4]), .SIGN_out(SIGN_beta_L1[4]), .OUT(betaD_L1_4), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[4]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_5(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[5]), .SIGN(SIGN_dbeta_L1[5]), .SIGN_out(SIGN_beta_L1[5]), .OUT(betaD_L1_5), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[5]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_6(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[6]), .SIGN(SIGN_dbeta_L1[6]), .SIGN_out(SIGN_beta_L1[6]), .OUT(betaD_L1_6), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[6]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_7(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[7]), .SIGN(SIGN_dbeta_L1[7]), .SIGN_out(SIGN_beta_L1[7]), .OUT(betaD_L1_7), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[7]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_8(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[8]), .SIGN(SIGN_dbeta_L1[8]), .SIGN_out(SIGN_beta_L1[8]), .OUT(betaD_L1_8), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[8]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_9(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[9]), .SIGN(SIGN_dbeta_L1[9]), .SIGN_out(SIGN_beta_L1[9]), .OUT(betaD_L1_9), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[9]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_10(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[10]), .SIGN(SIGN_dbeta_L1[10]), .SIGN_out(SIGN_beta_L1[10]), .OUT(betaD_L1_10), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[10]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_11(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[11]), .SIGN(SIGN_dbeta_L1[11]), .SIGN_out(SIGN_beta_L1[11]), .OUT(betaD_L1_11), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[11]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_12(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[12]), .SIGN(SIGN_dbeta_L1[12]), .SIGN_out(SIGN_beta_L1[12]), .OUT(betaD_L1_12), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[12]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_13(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[13]), .SIGN(SIGN_dbeta_L1[13]), .SIGN_out(SIGN_beta_L1[13]), .OUT(betaD_L1_13), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[13]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_14(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[14]), .SIGN(SIGN_dbeta_L1[14]), .SIGN_out(SIGN_beta_L1[14]), .OUT(betaD_L1_14), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[14]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_15(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[15]), .SIGN(SIGN_dbeta_L1[15]), .SIGN_out(SIGN_beta_L1[15]), .OUT(betaD_L1_15), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[15]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_16(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[16]), .SIGN(SIGN_dbeta_L1[16]), .SIGN_out(SIGN_beta_L1[16]), .OUT(betaD_L1_16), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[16]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_17(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[17]), .SIGN(SIGN_dbeta_L1[17]), .SIGN_out(SIGN_beta_L1[17]), .OUT(betaD_L1_17), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[17]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_18(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[18]), .SIGN(SIGN_dbeta_L1[18]), .SIGN_out(SIGN_beta_L1[18]), .OUT(betaD_L1_18), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[18]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_19(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[19]), .SIGN(SIGN_dbeta_L1[19]), .SIGN_out(SIGN_beta_L1[19]), .OUT(betaD_L1_19), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[19]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_20(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[20]), .SIGN(SIGN_dbeta_L1[20]), .SIGN_out(SIGN_beta_L1[20]), .OUT(betaD_L1_20), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[20]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_21(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[21]), .SIGN(SIGN_dbeta_L1[21]), .SIGN_out(SIGN_beta_L1[21]), .OUT(betaD_L1_21), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[21]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_22(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[22]), .SIGN(SIGN_dbeta_L1[22]), .SIGN_out(SIGN_beta_L1[22]), .OUT(betaD_L1_22), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[22]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_23(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[23]), .SIGN(SIGN_dbeta_L1[23]), .SIGN_out(SIGN_beta_L1[23]), .OUT(betaD_L1_23), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[23]), .EN(TrainingActive&TrainingActive_L1_beta));
NN_SMOOTHGRAD_POLAR SMOOTHGRAD_b_L1_24(.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .INIT(INIT), .IN_SS(dbeta_L1[24]), .SIGN(SIGN_dbeta_L1[24]), .SIGN_out(SIGN_beta_L1[24]), .OUT(betaD_L1_24), .OUT_INIT(betaD_L1_INIT), .SIGN_OUT_INIT(SIGN_beta_L1_INIT), .RESISTANCE(RESISTANCE_beta_L1), .TransitionChange_TRIG(TransitionChange_TRIG_beta_k_L1[24]), .EN(TrainingActive&TrainingActive_L1_beta));
defparam SMOOTHGRAD_b_L1_0.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_0.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_1.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_1.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_2.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_2.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_3.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_3.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_4.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_4.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_5.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_5.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_6.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_6.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_7.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_7.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_8.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_8.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_9.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_9.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_10.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_10.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_11.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_11.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_12.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_12.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_13.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_13.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_14.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_14.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_15.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_15.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_16.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_16.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_17.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_17.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_18.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_18.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_19.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_19.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_20.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_20.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_21.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_21.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_22.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_22.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_23.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_23.N_RESISTANCE = RESISTANCE_precision;
defparam SMOOTHGRAD_b_L1_24.N = 8; // decimal output size
defparam SMOOTHGRAD_b_L1_24.N_RESISTANCE = RESISTANCE_precision;

always @(posedge NNParamExp_CLK) begin
	case (NNParamExp_index)
		16'd0: NNParamExp_data = alphaD_L1_0_0;
		16'd1: NNParamExp_data = alphaD_L1_1_0;
		16'd2: NNParamExp_data = alphaD_L1_2_0;
		16'd3: NNParamExp_data = alphaD_L1_3_0;
		16'd4: NNParamExp_data = alphaD_L1_4_0;
		16'd5: NNParamExp_data = alphaD_L1_0_1;
		16'd6: NNParamExp_data = alphaD_L1_1_1;
		16'd7: NNParamExp_data = alphaD_L1_2_1;
		16'd8: NNParamExp_data = alphaD_L1_3_1;
		16'd9: NNParamExp_data = alphaD_L1_4_1;
		16'd10: NNParamExp_data = alphaD_L1_0_2;
		16'd11: NNParamExp_data = alphaD_L1_1_2;
		16'd12: NNParamExp_data = alphaD_L1_2_2;
		16'd13: NNParamExp_data = alphaD_L1_3_2;
		16'd14: NNParamExp_data = alphaD_L1_4_2;
		16'd15: NNParamExp_data = alphaD_L1_0_3;
		16'd16: NNParamExp_data = alphaD_L1_1_3;
		16'd17: NNParamExp_data = alphaD_L1_2_3;
		16'd18: NNParamExp_data = alphaD_L1_3_3;
		16'd19: NNParamExp_data = alphaD_L1_4_3;
		16'd20: NNParamExp_data = alphaD_L1_0_4;
		16'd21: NNParamExp_data = alphaD_L1_1_4;
		16'd22: NNParamExp_data = alphaD_L1_2_4;
		16'd23: NNParamExp_data = alphaD_L1_3_4;
		16'd24: NNParamExp_data = alphaD_L1_4_4;
		16'd25: NNParamExp_data = alphaD_L1_0_5;
		16'd26: NNParamExp_data = alphaD_L1_1_5;
		16'd27: NNParamExp_data = alphaD_L1_2_5;
		16'd28: NNParamExp_data = alphaD_L1_3_5;
		16'd29: NNParamExp_data = alphaD_L1_4_5;
		16'd30: NNParamExp_data = alphaD_L1_0_6;
		16'd31: NNParamExp_data = alphaD_L1_1_6;
		16'd32: NNParamExp_data = alphaD_L1_2_6;
		16'd33: NNParamExp_data = alphaD_L1_3_6;
		16'd34: NNParamExp_data = alphaD_L1_4_6;
		16'd35: NNParamExp_data = alphaD_L1_0_7;
		16'd36: NNParamExp_data = alphaD_L1_1_7;
		16'd37: NNParamExp_data = alphaD_L1_2_7;
		16'd38: NNParamExp_data = alphaD_L1_3_7;
		16'd39: NNParamExp_data = alphaD_L1_4_7;
		16'd40: NNParamExp_data = alphaD_L1_0_8;
		16'd41: NNParamExp_data = alphaD_L1_1_8;
		16'd42: NNParamExp_data = alphaD_L1_2_8;
		16'd43: NNParamExp_data = alphaD_L1_3_8;
		16'd44: NNParamExp_data = alphaD_L1_4_8;
		16'd45: NNParamExp_data = alphaD_L1_0_9;
		16'd46: NNParamExp_data = alphaD_L1_1_9;
		16'd47: NNParamExp_data = alphaD_L1_2_9;
		16'd48: NNParamExp_data = alphaD_L1_3_9;
		16'd49: NNParamExp_data = alphaD_L1_4_9;
		16'd50: NNParamExp_data = alphaD_L1_0_10;
		16'd51: NNParamExp_data = alphaD_L1_1_10;
		16'd52: NNParamExp_data = alphaD_L1_2_10;
		16'd53: NNParamExp_data = alphaD_L1_3_10;
		16'd54: NNParamExp_data = alphaD_L1_4_10;
		16'd55: NNParamExp_data = alphaD_L1_0_11;
		16'd56: NNParamExp_data = alphaD_L1_1_11;
		16'd57: NNParamExp_data = alphaD_L1_2_11;
		16'd58: NNParamExp_data = alphaD_L1_3_11;
		16'd59: NNParamExp_data = alphaD_L1_4_11;
		16'd60: NNParamExp_data = alphaD_L1_0_12;
		16'd61: NNParamExp_data = alphaD_L1_1_12;
		16'd62: NNParamExp_data = alphaD_L1_2_12;
		16'd63: NNParamExp_data = alphaD_L1_3_12;
		16'd64: NNParamExp_data = alphaD_L1_4_12;
		16'd65: NNParamExp_data = alphaD_L1_0_13;
		16'd66: NNParamExp_data = alphaD_L1_1_13;
		16'd67: NNParamExp_data = alphaD_L1_2_13;
		16'd68: NNParamExp_data = alphaD_L1_3_13;
		16'd69: NNParamExp_data = alphaD_L1_4_13;
		16'd70: NNParamExp_data = alphaD_L1_0_14;
		16'd71: NNParamExp_data = alphaD_L1_1_14;
		16'd72: NNParamExp_data = alphaD_L1_2_14;
		16'd73: NNParamExp_data = alphaD_L1_3_14;
		16'd74: NNParamExp_data = alphaD_L1_4_14;
		16'd75: NNParamExp_data = alphaD_L1_0_15;
		16'd76: NNParamExp_data = alphaD_L1_1_15;
		16'd77: NNParamExp_data = alphaD_L1_2_15;
		16'd78: NNParamExp_data = alphaD_L1_3_15;
		16'd79: NNParamExp_data = alphaD_L1_4_15;
		16'd80: NNParamExp_data = alphaD_L1_0_16;
		16'd81: NNParamExp_data = alphaD_L1_1_16;
		16'd82: NNParamExp_data = alphaD_L1_2_16;
		16'd83: NNParamExp_data = alphaD_L1_3_16;
		16'd84: NNParamExp_data = alphaD_L1_4_16;
		16'd85: NNParamExp_data = alphaD_L1_0_17;
		16'd86: NNParamExp_data = alphaD_L1_1_17;
		16'd87: NNParamExp_data = alphaD_L1_2_17;
		16'd88: NNParamExp_data = alphaD_L1_3_17;
		16'd89: NNParamExp_data = alphaD_L1_4_17;
		16'd90: NNParamExp_data = alphaD_L1_0_18;
		16'd91: NNParamExp_data = alphaD_L1_1_18;
		16'd92: NNParamExp_data = alphaD_L1_2_18;
		16'd93: NNParamExp_data = alphaD_L1_3_18;
		16'd94: NNParamExp_data = alphaD_L1_4_18;
		16'd95: NNParamExp_data = alphaD_L1_0_19;
		16'd96: NNParamExp_data = alphaD_L1_1_19;
		16'd97: NNParamExp_data = alphaD_L1_2_19;
		16'd98: NNParamExp_data = alphaD_L1_3_19;
		16'd99: NNParamExp_data = alphaD_L1_4_19;
		16'd100: NNParamExp_data = alphaD_L1_0_20;
		16'd101: NNParamExp_data = alphaD_L1_1_20;
		16'd102: NNParamExp_data = alphaD_L1_2_20;
		16'd103: NNParamExp_data = alphaD_L1_3_20;
		16'd104: NNParamExp_data = alphaD_L1_4_20;
		16'd105: NNParamExp_data = alphaD_L1_0_21;
		16'd106: NNParamExp_data = alphaD_L1_1_21;
		16'd107: NNParamExp_data = alphaD_L1_2_21;
		16'd108: NNParamExp_data = alphaD_L1_3_21;
		16'd109: NNParamExp_data = alphaD_L1_4_21;
		16'd110: NNParamExp_data = alphaD_L1_0_22;
		16'd111: NNParamExp_data = alphaD_L1_1_22;
		16'd112: NNParamExp_data = alphaD_L1_2_22;
		16'd113: NNParamExp_data = alphaD_L1_3_22;
		16'd114: NNParamExp_data = alphaD_L1_4_22;
		16'd115: NNParamExp_data = alphaD_L1_0_23;
		16'd116: NNParamExp_data = alphaD_L1_1_23;
		16'd117: NNParamExp_data = alphaD_L1_2_23;
		16'd118: NNParamExp_data = alphaD_L1_3_23;
		16'd119: NNParamExp_data = alphaD_L1_4_23;
		16'd120: NNParamExp_data = alphaD_L1_0_24;
		16'd121: NNParamExp_data = alphaD_L1_1_24;
		16'd122: NNParamExp_data = alphaD_L1_2_24;
		16'd123: NNParamExp_data = alphaD_L1_3_24;
		16'd124: NNParamExp_data = alphaD_L1_4_24;
		
		16'd125: NNParamExp_data = SIGN_alpha_L1_j_0;
		16'd126: NNParamExp_data = SIGN_alpha_L1_j_1;
		16'd127: NNParamExp_data = SIGN_alpha_L1_j_2;
		16'd128: NNParamExp_data = SIGN_alpha_L1_j_3;
		16'd129: NNParamExp_data = SIGN_alpha_L1_j_4;
		16'd130: NNParamExp_data = SIGN_alpha_L1_j_5;
		16'd131: NNParamExp_data = SIGN_alpha_L1_j_6;
		16'd132: NNParamExp_data = SIGN_alpha_L1_j_7;
		16'd133: NNParamExp_data = SIGN_alpha_L1_j_8;
		16'd134: NNParamExp_data = SIGN_alpha_L1_j_9;
		16'd135: NNParamExp_data = SIGN_alpha_L1_j_10;
		16'd136: NNParamExp_data = SIGN_alpha_L1_j_11;
		16'd137: NNParamExp_data = SIGN_alpha_L1_j_12;
		16'd138: NNParamExp_data = SIGN_alpha_L1_j_13;
		16'd139: NNParamExp_data = SIGN_alpha_L1_j_14;
		16'd140: NNParamExp_data = SIGN_alpha_L1_j_15;
		16'd141: NNParamExp_data = SIGN_alpha_L1_j_16;
		16'd142: NNParamExp_data = SIGN_alpha_L1_j_17;
		16'd143: NNParamExp_data = SIGN_alpha_L1_j_18;
		16'd144: NNParamExp_data = SIGN_alpha_L1_j_19;
		16'd145: NNParamExp_data = SIGN_alpha_L1_j_20;
		16'd146: NNParamExp_data = SIGN_alpha_L1_j_21;
		16'd147: NNParamExp_data = SIGN_alpha_L1_j_22;
		16'd148: NNParamExp_data = SIGN_alpha_L1_j_23;
		16'd149: NNParamExp_data = SIGN_alpha_L1_j_24;
		
		16'd150: NNParamExp_data = betaD_L1_0;
		16'd151: NNParamExp_data = betaD_L1_1;
		16'd152: NNParamExp_data = betaD_L1_2;
		16'd153: NNParamExp_data = betaD_L1_3;
		16'd154: NNParamExp_data = betaD_L1_4;
		16'd155: NNParamExp_data = betaD_L1_5;
		16'd156: NNParamExp_data = betaD_L1_6;
		16'd157: NNParamExp_data = betaD_L1_7;
		16'd158: NNParamExp_data = betaD_L1_8;
		16'd159: NNParamExp_data = betaD_L1_9;
		16'd160: NNParamExp_data = betaD_L1_10;
		16'd161: NNParamExp_data = betaD_L1_11;
		16'd162: NNParamExp_data = betaD_L1_12;
		16'd163: NNParamExp_data = betaD_L1_13;
		16'd164: NNParamExp_data = betaD_L1_14;
		16'd165: NNParamExp_data = betaD_L1_15;
		16'd166: NNParamExp_data = betaD_L1_16;
		16'd167: NNParamExp_data = betaD_L1_17;
		16'd168: NNParamExp_data = betaD_L1_18;
		16'd169: NNParamExp_data = betaD_L1_19;
		16'd170: NNParamExp_data = betaD_L1_20;
		16'd171: NNParamExp_data = betaD_L1_21;
		16'd172: NNParamExp_data = betaD_L1_22;
		16'd173: NNParamExp_data = betaD_L1_23;
		16'd174: NNParamExp_data = betaD_L1_24;
		
		16'd175: NNParamExp_data = SIGN_beta_L1[24:9];
		16'd176: NNParamExp_data = {7'd0 , SIGN_beta_L1[8:0]};
		
		16'd177: NNParamExp_data = alphaD_L2_0_0;
		16'd178: NNParamExp_data = alphaD_L2_1_0;
		16'd179: NNParamExp_data = alphaD_L2_2_0;
		16'd180: NNParamExp_data = alphaD_L2_3_0;
		16'd181: NNParamExp_data = alphaD_L2_4_0;
		16'd182: NNParamExp_data = alphaD_L2_5_0;
		16'd183: NNParamExp_data = alphaD_L2_6_0;
		16'd184: NNParamExp_data = alphaD_L2_7_0;
		16'd185: NNParamExp_data = alphaD_L2_8_0;
		16'd186: NNParamExp_data = alphaD_L2_9_0;
		16'd187: NNParamExp_data = alphaD_L2_10_0;
		16'd188: NNParamExp_data = alphaD_L2_11_0;
		16'd189: NNParamExp_data = alphaD_L2_12_0;
		16'd190: NNParamExp_data = alphaD_L2_13_0;
		16'd191: NNParamExp_data = alphaD_L2_14_0;
		16'd192: NNParamExp_data = alphaD_L2_15_0;
		16'd193: NNParamExp_data = alphaD_L2_16_0;
		16'd194: NNParamExp_data = alphaD_L2_17_0;
		16'd195: NNParamExp_data = alphaD_L2_18_0;
		16'd196: NNParamExp_data = alphaD_L2_19_0;
		16'd197: NNParamExp_data = alphaD_L2_20_0;
		16'd198: NNParamExp_data = alphaD_L2_21_0;
		16'd199: NNParamExp_data = alphaD_L2_22_0;
		16'd200: NNParamExp_data = alphaD_L2_23_0;
		16'd201: NNParamExp_data = alphaD_L2_24_0;
		16'd202: NNParamExp_data = alphaD_L2_0_1;
		16'd203: NNParamExp_data = alphaD_L2_1_1;
		16'd204: NNParamExp_data = alphaD_L2_2_1;
		16'd205: NNParamExp_data = alphaD_L2_3_1;
		16'd206: NNParamExp_data = alphaD_L2_4_1;
		16'd207: NNParamExp_data = alphaD_L2_5_1;
		16'd208: NNParamExp_data = alphaD_L2_6_1;
		16'd209: NNParamExp_data = alphaD_L2_7_1;
		16'd210: NNParamExp_data = alphaD_L2_8_1;
		16'd211: NNParamExp_data = alphaD_L2_9_1;
		16'd212: NNParamExp_data = alphaD_L2_10_1;
		16'd213: NNParamExp_data = alphaD_L2_11_1;
		16'd214: NNParamExp_data = alphaD_L2_12_1;
		16'd215: NNParamExp_data = alphaD_L2_13_1;
		16'd216: NNParamExp_data = alphaD_L2_14_1;
		16'd217: NNParamExp_data = alphaD_L2_15_1;
		16'd218: NNParamExp_data = alphaD_L2_16_1;
		16'd219: NNParamExp_data = alphaD_L2_17_1;
		16'd220: NNParamExp_data = alphaD_L2_18_1;
		16'd221: NNParamExp_data = alphaD_L2_19_1;
		16'd222: NNParamExp_data = alphaD_L2_20_1;
		16'd223: NNParamExp_data = alphaD_L2_21_1;
		16'd224: NNParamExp_data = alphaD_L2_22_1;
		16'd225: NNParamExp_data = alphaD_L2_23_1;
		16'd226: NNParamExp_data = alphaD_L2_24_1;
		16'd227: NNParamExp_data = alphaD_L2_0_2;
		16'd228: NNParamExp_data = alphaD_L2_1_2;
		16'd229: NNParamExp_data = alphaD_L2_2_2;
		16'd230: NNParamExp_data = alphaD_L2_3_2;
		16'd231: NNParamExp_data = alphaD_L2_4_2;
		16'd232: NNParamExp_data = alphaD_L2_5_2;
		16'd233: NNParamExp_data = alphaD_L2_6_2;
		16'd234: NNParamExp_data = alphaD_L2_7_2;
		16'd235: NNParamExp_data = alphaD_L2_8_2;
		16'd236: NNParamExp_data = alphaD_L2_9_2;
		16'd237: NNParamExp_data = alphaD_L2_10_2;
		16'd238: NNParamExp_data = alphaD_L2_11_2;
		16'd239: NNParamExp_data = alphaD_L2_12_2;
		16'd240: NNParamExp_data = alphaD_L2_13_2;
		16'd241: NNParamExp_data = alphaD_L2_14_2;
		16'd242: NNParamExp_data = alphaD_L2_15_2;
		16'd243: NNParamExp_data = alphaD_L2_16_2;
		16'd244: NNParamExp_data = alphaD_L2_17_2;
		16'd245: NNParamExp_data = alphaD_L2_18_2;
		16'd246: NNParamExp_data = alphaD_L2_19_2;
		16'd247: NNParamExp_data = alphaD_L2_20_2;
		16'd248: NNParamExp_data = alphaD_L2_21_2;
		16'd249: NNParamExp_data = alphaD_L2_22_2;
		16'd250: NNParamExp_data = alphaD_L2_23_2;
		16'd251: NNParamExp_data = alphaD_L2_24_2;
		16'd252: NNParamExp_data = alphaD_L2_0_3;
		16'd253: NNParamExp_data = alphaD_L2_1_3;
		16'd254: NNParamExp_data = alphaD_L2_2_3;
		16'd255: NNParamExp_data = alphaD_L2_3_3;
		16'd256: NNParamExp_data = alphaD_L2_4_3;
		16'd257: NNParamExp_data = alphaD_L2_5_3;
		16'd258: NNParamExp_data = alphaD_L2_6_3;
		16'd259: NNParamExp_data = alphaD_L2_7_3;
		16'd260: NNParamExp_data = alphaD_L2_8_3;
		16'd261: NNParamExp_data = alphaD_L2_9_3;
		16'd262: NNParamExp_data = alphaD_L2_10_3;
		16'd263: NNParamExp_data = alphaD_L2_11_3;
		16'd264: NNParamExp_data = alphaD_L2_12_3;
		16'd265: NNParamExp_data = alphaD_L2_13_3;
		16'd266: NNParamExp_data = alphaD_L2_14_3;
		16'd267: NNParamExp_data = alphaD_L2_15_3;
		16'd268: NNParamExp_data = alphaD_L2_16_3;
		16'd269: NNParamExp_data = alphaD_L2_17_3;
		16'd270: NNParamExp_data = alphaD_L2_18_3;
		16'd271: NNParamExp_data = alphaD_L2_19_3;
		16'd272: NNParamExp_data = alphaD_L2_20_3;
		16'd273: NNParamExp_data = alphaD_L2_21_3;
		16'd274: NNParamExp_data = alphaD_L2_22_3;
		16'd275: NNParamExp_data = alphaD_L2_23_3;
		16'd276: NNParamExp_data = alphaD_L2_24_3;
		16'd277: NNParamExp_data = alphaD_L2_0_4;
		16'd278: NNParamExp_data = alphaD_L2_1_4;
		16'd279: NNParamExp_data = alphaD_L2_2_4;
		16'd280: NNParamExp_data = alphaD_L2_3_4;
		16'd281: NNParamExp_data = alphaD_L2_4_4;
		16'd282: NNParamExp_data = alphaD_L2_5_4;
		16'd283: NNParamExp_data = alphaD_L2_6_4;
		16'd284: NNParamExp_data = alphaD_L2_7_4;
		16'd285: NNParamExp_data = alphaD_L2_8_4;
		16'd286: NNParamExp_data = alphaD_L2_9_4;
		16'd287: NNParamExp_data = alphaD_L2_10_4;
		16'd288: NNParamExp_data = alphaD_L2_11_4;
		16'd289: NNParamExp_data = alphaD_L2_12_4;
		16'd290: NNParamExp_data = alphaD_L2_13_4;
		16'd291: NNParamExp_data = alphaD_L2_14_4;
		16'd292: NNParamExp_data = alphaD_L2_15_4;
		16'd293: NNParamExp_data = alphaD_L2_16_4;
		16'd294: NNParamExp_data = alphaD_L2_17_4;
		16'd295: NNParamExp_data = alphaD_L2_18_4;
		16'd296: NNParamExp_data = alphaD_L2_19_4;
		16'd297: NNParamExp_data = alphaD_L2_20_4;
		16'd298: NNParamExp_data = alphaD_L2_21_4;
		16'd299: NNParamExp_data = alphaD_L2_22_4;
		16'd300: NNParamExp_data = alphaD_L2_23_4;
		16'd301: NNParamExp_data = alphaD_L2_24_4;
		16'd302: NNParamExp_data = alphaD_L2_0_5;
		16'd303: NNParamExp_data = alphaD_L2_1_5;
		16'd304: NNParamExp_data = alphaD_L2_2_5;
		16'd305: NNParamExp_data = alphaD_L2_3_5;
		16'd306: NNParamExp_data = alphaD_L2_4_5;
		16'd307: NNParamExp_data = alphaD_L2_5_5;
		16'd308: NNParamExp_data = alphaD_L2_6_5;
		16'd309: NNParamExp_data = alphaD_L2_7_5;
		16'd310: NNParamExp_data = alphaD_L2_8_5;
		16'd311: NNParamExp_data = alphaD_L2_9_5;
		16'd312: NNParamExp_data = alphaD_L2_10_5;
		16'd313: NNParamExp_data = alphaD_L2_11_5;
		16'd314: NNParamExp_data = alphaD_L2_12_5;
		16'd315: NNParamExp_data = alphaD_L2_13_5;
		16'd316: NNParamExp_data = alphaD_L2_14_5;
		16'd317: NNParamExp_data = alphaD_L2_15_5;
		16'd318: NNParamExp_data = alphaD_L2_16_5;
		16'd319: NNParamExp_data = alphaD_L2_17_5;
		16'd320: NNParamExp_data = alphaD_L2_18_5;
		16'd321: NNParamExp_data = alphaD_L2_19_5;
		16'd322: NNParamExp_data = alphaD_L2_20_5;
		16'd323: NNParamExp_data = alphaD_L2_21_5;
		16'd324: NNParamExp_data = alphaD_L2_22_5;
		16'd325: NNParamExp_data = alphaD_L2_23_5;
		16'd326: NNParamExp_data = alphaD_L2_24_5;
		16'd327: NNParamExp_data = alphaD_L2_0_6;
		16'd328: NNParamExp_data = alphaD_L2_1_6;
		16'd329: NNParamExp_data = alphaD_L2_2_6;
		16'd330: NNParamExp_data = alphaD_L2_3_6;
		16'd331: NNParamExp_data = alphaD_L2_4_6;
		16'd332: NNParamExp_data = alphaD_L2_5_6;
		16'd333: NNParamExp_data = alphaD_L2_6_6;
		16'd334: NNParamExp_data = alphaD_L2_7_6;
		16'd335: NNParamExp_data = alphaD_L2_8_6;
		16'd336: NNParamExp_data = alphaD_L2_9_6;
		16'd337: NNParamExp_data = alphaD_L2_10_6;
		16'd338: NNParamExp_data = alphaD_L2_11_6;
		16'd339: NNParamExp_data = alphaD_L2_12_6;
		16'd340: NNParamExp_data = alphaD_L2_13_6;
		16'd341: NNParamExp_data = alphaD_L2_14_6;
		16'd342: NNParamExp_data = alphaD_L2_15_6;
		16'd343: NNParamExp_data = alphaD_L2_16_6;
		16'd344: NNParamExp_data = alphaD_L2_17_6;
		16'd345: NNParamExp_data = alphaD_L2_18_6;
		16'd346: NNParamExp_data = alphaD_L2_19_6;
		16'd347: NNParamExp_data = alphaD_L2_20_6;
		16'd348: NNParamExp_data = alphaD_L2_21_6;
		16'd349: NNParamExp_data = alphaD_L2_22_6;
		16'd350: NNParamExp_data = alphaD_L2_23_6;
		16'd351: NNParamExp_data = alphaD_L2_24_6;
		16'd352: NNParamExp_data = alphaD_L2_0_7;
		16'd353: NNParamExp_data = alphaD_L2_1_7;
		16'd354: NNParamExp_data = alphaD_L2_2_7;
		16'd355: NNParamExp_data = alphaD_L2_3_7;
		16'd356: NNParamExp_data = alphaD_L2_4_7;
		16'd357: NNParamExp_data = alphaD_L2_5_7;
		16'd358: NNParamExp_data = alphaD_L2_6_7;
		16'd359: NNParamExp_data = alphaD_L2_7_7;
		16'd360: NNParamExp_data = alphaD_L2_8_7;
		16'd361: NNParamExp_data = alphaD_L2_9_7;
		16'd362: NNParamExp_data = alphaD_L2_10_7;
		16'd363: NNParamExp_data = alphaD_L2_11_7;
		16'd364: NNParamExp_data = alphaD_L2_12_7;
		16'd365: NNParamExp_data = alphaD_L2_13_7;
		16'd366: NNParamExp_data = alphaD_L2_14_7;
		16'd367: NNParamExp_data = alphaD_L2_15_7;
		16'd368: NNParamExp_data = alphaD_L2_16_7;
		16'd369: NNParamExp_data = alphaD_L2_17_7;
		16'd370: NNParamExp_data = alphaD_L2_18_7;
		16'd371: NNParamExp_data = alphaD_L2_19_7;
		16'd372: NNParamExp_data = alphaD_L2_20_7;
		16'd373: NNParamExp_data = alphaD_L2_21_7;
		16'd374: NNParamExp_data = alphaD_L2_22_7;
		16'd375: NNParamExp_data = alphaD_L2_23_7;
		16'd376: NNParamExp_data = alphaD_L2_24_7;
		
		16'd377: NNParamExp_data = SIGN_alpha_L2_j_0[24:9];
		16'd378: NNParamExp_data = {7'd0 ,SIGN_alpha_L2_j_0[8:0]};
		16'd379: NNParamExp_data = SIGN_alpha_L2_j_1[24:9];
		16'd380: NNParamExp_data = {7'd0 ,SIGN_alpha_L2_j_1[8:0]};
		16'd381: NNParamExp_data = SIGN_alpha_L2_j_2[24:9];
		16'd382: NNParamExp_data = {7'd0 ,SIGN_alpha_L2_j_2[8:0]};
		16'd383: NNParamExp_data = SIGN_alpha_L2_j_3[24:9];
		16'd384: NNParamExp_data = {7'd0 ,SIGN_alpha_L2_j_3[8:0]};
		16'd385: NNParamExp_data = SIGN_alpha_L2_j_4[24:9];
		16'd386: NNParamExp_data = {7'd0 ,SIGN_alpha_L2_j_4[8:0]};
		16'd387: NNParamExp_data = SIGN_alpha_L2_j_5[24:9];
		16'd388: NNParamExp_data = {7'd0 ,SIGN_alpha_L2_j_5[8:0]};
		16'd389: NNParamExp_data = SIGN_alpha_L2_j_6[24:9];
		16'd390: NNParamExp_data = {7'd0 ,SIGN_alpha_L2_j_6[8:0]};
		16'd391: NNParamExp_data = SIGN_alpha_L2_j_7[24:9];
		16'd392: NNParamExp_data = {7'd0 ,SIGN_alpha_L2_j_7[8:0]};
		
		16'd393: NNParamExp_data = betaD_L2_0;
		16'd394: NNParamExp_data = betaD_L2_1;
		16'd395: NNParamExp_data = betaD_L2_2;
		16'd396: NNParamExp_data = betaD_L2_3;
		16'd397: NNParamExp_data = betaD_L2_4;
		16'd398: NNParamExp_data = betaD_L2_5;
		16'd399: NNParamExp_data = betaD_L2_6;
		16'd400: NNParamExp_data = betaD_L2_7;
		
		16'd401: NNParamExp_data = SIGN_beta_L2;
		
		16'd402: NNParamExp_data = alphaD_L3_0_0;
		16'd403: NNParamExp_data = alphaD_L3_1_0;
		16'd404: NNParamExp_data = alphaD_L3_2_0;
		16'd405: NNParamExp_data = alphaD_L3_3_0;
		16'd406: NNParamExp_data = alphaD_L3_4_0;
		16'd407: NNParamExp_data = alphaD_L3_5_0;
		16'd408: NNParamExp_data = alphaD_L3_6_0;
		16'd409: NNParamExp_data = alphaD_L3_7_0;
		16'd410: NNParamExp_data = alphaD_L3_0_1;
		16'd411: NNParamExp_data = alphaD_L3_1_1;
		16'd412: NNParamExp_data = alphaD_L3_2_1;
		16'd413: NNParamExp_data = alphaD_L3_3_1;
		16'd414: NNParamExp_data = alphaD_L3_4_1;
		16'd415: NNParamExp_data = alphaD_L3_5_1;
		16'd416: NNParamExp_data = alphaD_L3_6_1;
		16'd417: NNParamExp_data = alphaD_L3_7_1;
		16'd418: NNParamExp_data = alphaD_L3_0_2;
		16'd419: NNParamExp_data = alphaD_L3_1_2;
		16'd420: NNParamExp_data = alphaD_L3_2_2;
		16'd421: NNParamExp_data = alphaD_L3_3_2;
		16'd422: NNParamExp_data = alphaD_L3_4_2;
		16'd423: NNParamExp_data = alphaD_L3_5_2;
		16'd424: NNParamExp_data = alphaD_L3_6_2;
		16'd425: NNParamExp_data = alphaD_L3_7_2;
		16'd426: NNParamExp_data = alphaD_L3_0_3;
		16'd427: NNParamExp_data = alphaD_L3_1_3;
		16'd428: NNParamExp_data = alphaD_L3_2_3;
		16'd429: NNParamExp_data = alphaD_L3_3_3;
		16'd430: NNParamExp_data = alphaD_L3_4_3;
		16'd431: NNParamExp_data = alphaD_L3_5_3;
		16'd432: NNParamExp_data = alphaD_L3_6_3;
		16'd433: NNParamExp_data = alphaD_L3_7_3;
		16'd434: NNParamExp_data = alphaD_L3_0_4;
		16'd435: NNParamExp_data = alphaD_L3_1_4;
		16'd436: NNParamExp_data = alphaD_L3_2_4;
		16'd437: NNParamExp_data = alphaD_L3_3_4;
		16'd438: NNParamExp_data = alphaD_L3_4_4;
		16'd439: NNParamExp_data = alphaD_L3_5_4;
		16'd440: NNParamExp_data = alphaD_L3_6_4;
		16'd441: NNParamExp_data = alphaD_L3_7_4;
		
		16'd442: NNParamExp_data = SIGN_alpha_L3_j_0;
		16'd443: NNParamExp_data = SIGN_alpha_L3_j_1;
		16'd444: NNParamExp_data = SIGN_alpha_L3_j_2;
		16'd445: NNParamExp_data = SIGN_alpha_L3_j_3;
		16'd446: NNParamExp_data = SIGN_alpha_L3_j_4;
		
		16'd447: NNParamExp_data = betaD_L3_0;
		16'd448: NNParamExp_data = betaD_L3_1;
		16'd449: NNParamExp_data = betaD_L3_2;
		16'd450: NNParamExp_data = betaD_L3_3;
		16'd451: NNParamExp_data = betaD_L3_4;
		
		16'd452: NNParamExp_data = SIGN_beta_L3;
		
		default: NNParamExp_data = 1'b0;
	
	endcase
end


endmodule
