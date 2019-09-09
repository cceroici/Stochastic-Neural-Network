// Chris Ceroici

// Top level module for NN
// Version 12.0

module TOP();

parameter DP_in = 8; // number of bits of precision for input decimal parameters
parameter DP_out = 16; // number of bits of precision for output decimal parameters
parameter LFSR_S = 16; // LFSR size
parameter TRAINING_DURATION = 16; // Number of clock cycles per training set (2^N)

// Control System Wires
reg INIT = 1'b1;
reg INIT_late = 1'b0;
reg INIT_powerup = 1'b1;
reg INIT_powerupflag = 1'b1;
reg [31:0] SDcount = 32'd0;
reg TrainingActive = 1'b1;
reg [15:0] INITcounter = 1'b0;
reg [15:0] COUNTtotal = 1'b0;
reg [15:0] FrameCounter = 1'b1;

wire TRAINING_PRESET, TRAINING_PRESET2, CLK_TRAINING_flag;
wire [7:0] TRAINING_SET_CURRENT_netPar0, TRAINING_SET_CURRENT_netPar1, TRAINING_SET_CURRENT_netPar2;
wire [15:0] TRAINING_DURATION_cap;
wire pre_FP_FRAME, FP_FRAME, pre_BP_FRAME, BP_FRAME, pre_FRAME_END, FrameEnd;
wire FRAME_RESET_DELAYED, FRAME_RESET;
wire [7:0] TRAINING_SET_netPar0;
wire [7:0] TRAINING_SET_netPar1;
wire [7:0] TRAINING_SET_netPar2;
reg [7:0] TRAINING_SET_OVR = 1'b0;
reg [7:0] TS_OVR = 1'b0;
reg TS_OVR_EN = 1'b0;
reg TRAINING_SET_OVR_EN = 1'b0;
reg [15:0] N_Frames = 1'b0;
assign TRAINING_DURATION_cap = 16'd50;
reg [15:0] ReadWriteIndex = 1'd0;
wire [15:0] NodeOutputExp_data;
reg [7:0] WriteTrainingSet_index = 1'd0;
reg NodeOutputExp_clk = 1'b0;
wire [15:0] ParameterRead;
reg [15:0] DataWrite = 1'b0;
reg [12:0] ERRROR_COUNTER = 1'd1;
reg [15:0] ERROR_SUM = 1'd0;
reg [15:0] ERROR = 1'd0;


// Random Numbers/Seeds
`include "RN_SEED_Declarations.v"
	
// Decimal Network Outputs/inputs
`include "Decimal_IO_Declarations.v"
	
// Stochastic Network Outputs/inputs
wire [5 - 1:0] a_L0_netPar0;
wire [25 - 1:0] a_L1_netPar0;
wire [8 - 1:0] a_L2_netPar0;
wire [5 - 1:0] a_L3_netPar0;
wire [5 - 1:0] z_L0_netPar0;
wire [25 - 1:0] z_L1_netPar0;
wire [8 - 1:0] z_L2_netPar0;
wire [5 - 1:0] z_L3_netPar0;
wire [5 - 1:0] zp_L0_netPar0;
wire [25 - 1:0] zp_L1_netPar0;
wire [8 - 1:0] zp_L2_netPar0;
wire [5 - 1:0] zp_L3_netPar0;
wire [5 - 1:0] a_L0_netPar1;
wire [25 - 1:0] a_L1_netPar1;
wire [8 - 1:0] a_L2_netPar1;
wire [5 - 1:0] a_L3_netPar1;
wire [5 - 1:0] z_L0_netPar1;
wire [25 - 1:0] z_L1_netPar1;
wire [8 - 1:0] z_L2_netPar1;
wire [5 - 1:0] z_L3_netPar1;
wire [5 - 1:0] zp_L0_netPar1;
wire [25 - 1:0] zp_L1_netPar1;
wire [8 - 1:0] zp_L2_netPar1;
wire [5 - 1:0] zp_L3_netPar1;
wire [5 - 1:0] a_L0_netPar2;
wire [25 - 1:0] a_L1_netPar2;
wire [8 - 1:0] a_L2_netPar2;
wire [5 - 1:0] a_L3_netPar2;
wire [5 - 1:0] z_L0_netPar2;
wire [25 - 1:0] z_L1_netPar2;
wire [8 - 1:0] z_L2_netPar2;
wire [5 - 1:0] z_L3_netPar2;
wire [5 - 1:0] zp_L0_netPar2;
wire [25 - 1:0] zp_L1_netPar2;
wire [8 - 1:0] zp_L2_netPar2;
wire [5 - 1:0] zp_L3_netPar2;
wire [5 - 1:0] Y_netPar0, Y_netPar1, Y_netPar2;

wire [5 - 1:0] eps_netPar0;
wire [5 - 1:0] eps_netPar1;
wire [5 - 1:0] eps_netPar2;
wire [25 - 1:0] a_MEM_ACTIVE_L1_netPar0;
wire [8 - 1:0] a_MEM_ACTIVE_L2_netPar0;
wire [5 - 1:0] a_MEM_ACTIVE_L3_netPar0;
wire [25 - 1:0] a_MEM_ACTIVE_L1_netPar1;
wire [8 - 1:0] a_MEM_ACTIVE_L2_netPar1;
wire [5 - 1:0] a_MEM_ACTIVE_L3_netPar1;
wire [25 - 1:0] a_MEM_ACTIVE_L1_netPar2;
wire [8 - 1:0] a_MEM_ACTIVE_L2_netPar2;
wire [5 - 1:0] a_MEM_ACTIVE_L3_netPar2;

// Decimal Network Parameters
`include "DecimalParam_Declarations.v"
	
// Stochastic Network Parameters
wire [5 - 1:0] alpha_L1_j_0, alpha_L1_j_1, alpha_L1_j_2, alpha_L1_j_3, alpha_L1_j_4, alpha_L1_j_5, alpha_L1_j_6, alpha_L1_j_7, alpha_L1_j_8, alpha_L1_j_9, alpha_L1_j_10, alpha_L1_j_11, alpha_L1_j_12, alpha_L1_j_13, alpha_L1_j_14, alpha_L1_j_15, alpha_L1_j_16, alpha_L1_j_17, alpha_L1_j_18, alpha_L1_j_19, alpha_L1_j_20, alpha_L1_j_21, alpha_L1_j_22, alpha_L1_j_23, alpha_L1_j_24;
wire [25 - 1:0] beta_L1;
wire [25 - 1:0] alpha_L2_j_0, alpha_L2_j_1, alpha_L2_j_2, alpha_L2_j_3, alpha_L2_j_4, alpha_L2_j_5, alpha_L2_j_6, alpha_L2_j_7;
wire [8 - 1:0] beta_L2;
wire [8 - 1:0] alpha_L3_j_0, alpha_L3_j_1, alpha_L3_j_2, alpha_L3_j_3, alpha_L3_j_4;
wire [5 - 1:0] beta_L3;

// Network Parameter Polarity
wire [5 - 1:0] SIGN_alpha_L1_j_0, SIGN_alpha_L1_j_1, SIGN_alpha_L1_j_2, SIGN_alpha_L1_j_3, SIGN_alpha_L1_j_4, SIGN_alpha_L1_j_5, SIGN_alpha_L1_j_6, SIGN_alpha_L1_j_7, SIGN_alpha_L1_j_8, SIGN_alpha_L1_j_9, SIGN_alpha_L1_j_10, SIGN_alpha_L1_j_11, SIGN_alpha_L1_j_12, SIGN_alpha_L1_j_13, SIGN_alpha_L1_j_14, SIGN_alpha_L1_j_15, SIGN_alpha_L1_j_16, SIGN_alpha_L1_j_17, SIGN_alpha_L1_j_18, SIGN_alpha_L1_j_19, SIGN_alpha_L1_j_20, SIGN_alpha_L1_j_21, SIGN_alpha_L1_j_22, SIGN_alpha_L1_j_23, SIGN_alpha_L1_j_24;
wire [25 - 1:0] SIGN_beta_L1;
wire [25 - 1:0] SIGN_alpha_L2_j_0, SIGN_alpha_L2_j_1, SIGN_alpha_L2_j_2, SIGN_alpha_L2_j_3, SIGN_alpha_L2_j_4, SIGN_alpha_L2_j_5, SIGN_alpha_L2_j_6, SIGN_alpha_L2_j_7;
wire [8 - 1:0] SIGN_beta_L2;
wire [8 - 1:0] SIGN_alpha_L3_j_0, SIGN_alpha_L3_j_1, SIGN_alpha_L3_j_2, SIGN_alpha_L3_j_3, SIGN_alpha_L3_j_4;
wire [5 - 1:0] SIGN_beta_L3;

// Stochastic Backpropagation wires
wire [5 - 1:0] dalpha_L1_j_0, dalpha_L1_j_1, dalpha_L1_j_2, dalpha_L1_j_3, dalpha_L1_j_4, dalpha_L1_j_5, dalpha_L1_j_6, dalpha_L1_j_7, dalpha_L1_j_8, dalpha_L1_j_9, dalpha_L1_j_10, dalpha_L1_j_11, dalpha_L1_j_12, dalpha_L1_j_13, dalpha_L1_j_14, dalpha_L1_j_15, dalpha_L1_j_16, dalpha_L1_j_17, dalpha_L1_j_18, dalpha_L1_j_19, dalpha_L1_j_20, dalpha_L1_j_21, dalpha_L1_j_22, dalpha_L1_j_23, dalpha_L1_j_24;
wire [25 - 1:0] dbeta_L1;
wire [25 - 1:0] dalpha_L2_j_0, dalpha_L2_j_1, dalpha_L2_j_2, dalpha_L2_j_3, dalpha_L2_j_4, dalpha_L2_j_5, dalpha_L2_j_6, dalpha_L2_j_7;
wire [8 - 1:0] dbeta_L2;
wire [8 - 1:0] dalpha_L3_j_0, dalpha_L3_j_1, dalpha_L3_j_2, dalpha_L3_j_3, dalpha_L3_j_4;
wire [5 - 1:0] dbeta_L3;
wire [5 - 1:0] SIGN_dalpha_L1_j_0, SIGN_dalpha_L1_j_1, SIGN_dalpha_L1_j_2, SIGN_dalpha_L1_j_3, SIGN_dalpha_L1_j_4, SIGN_dalpha_L1_j_5, SIGN_dalpha_L1_j_6, SIGN_dalpha_L1_j_7, SIGN_dalpha_L1_j_8, SIGN_dalpha_L1_j_9, SIGN_dalpha_L1_j_10, SIGN_dalpha_L1_j_11, SIGN_dalpha_L1_j_12, SIGN_dalpha_L1_j_13, SIGN_dalpha_L1_j_14, SIGN_dalpha_L1_j_15, SIGN_dalpha_L1_j_16, SIGN_dalpha_L1_j_17, SIGN_dalpha_L1_j_18, SIGN_dalpha_L1_j_19, SIGN_dalpha_L1_j_20, SIGN_dalpha_L1_j_21, SIGN_dalpha_L1_j_22, SIGN_dalpha_L1_j_23, SIGN_dalpha_L1_j_24;
wire [25 - 1:0] SIGN_dbeta_L1;
wire [25 - 1:0] SIGN_dalpha_L2_j_0, SIGN_dalpha_L2_j_1, SIGN_dalpha_L2_j_2, SIGN_dalpha_L2_j_3, SIGN_dalpha_L2_j_4, SIGN_dalpha_L2_j_5, SIGN_dalpha_L2_j_6, SIGN_dalpha_L2_j_7;
wire [8 - 1:0] SIGN_dbeta_L2;
wire [8 - 1:0] SIGN_dalpha_L3_j_0, SIGN_dalpha_L3_j_1, SIGN_dalpha_L3_j_2, SIGN_dalpha_L3_j_3, SIGN_dalpha_L3_j_4;
wire [5 - 1:0] SIGN_dbeta_L3;
wire [5 - 1:0] dalpha_L1_j_0_netPar0, dalpha_L1_j_1_netPar0, dalpha_L1_j_2_netPar0, dalpha_L1_j_3_netPar0, dalpha_L1_j_4_netPar0, dalpha_L1_j_5_netPar0, dalpha_L1_j_6_netPar0, dalpha_L1_j_7_netPar0, dalpha_L1_j_8_netPar0, dalpha_L1_j_9_netPar0, dalpha_L1_j_10_netPar0, dalpha_L1_j_11_netPar0, dalpha_L1_j_12_netPar0, dalpha_L1_j_13_netPar0, dalpha_L1_j_14_netPar0, dalpha_L1_j_15_netPar0, dalpha_L1_j_16_netPar0, dalpha_L1_j_17_netPar0, dalpha_L1_j_18_netPar0, dalpha_L1_j_19_netPar0, dalpha_L1_j_20_netPar0, dalpha_L1_j_21_netPar0, dalpha_L1_j_22_netPar0, dalpha_L1_j_23_netPar0, dalpha_L1_j_24_netPar0;
wire [25 - 1:0] dbeta_L1_netPar0;
wire [25 - 1:0] dalpha_L2_j_0_netPar0, dalpha_L2_j_1_netPar0, dalpha_L2_j_2_netPar0, dalpha_L2_j_3_netPar0, dalpha_L2_j_4_netPar0, dalpha_L2_j_5_netPar0, dalpha_L2_j_6_netPar0, dalpha_L2_j_7_netPar0;
wire [8 - 1:0] dbeta_L2_netPar0;
wire [8 - 1:0] dalpha_L3_j_0_netPar0, dalpha_L3_j_1_netPar0, dalpha_L3_j_2_netPar0, dalpha_L3_j_3_netPar0, dalpha_L3_j_4_netPar0;
wire [5 - 1:0] dbeta_L3_netPar0;
wire [5 - 1:0] dalpha_L1_j_0_netPar1, dalpha_L1_j_1_netPar1, dalpha_L1_j_2_netPar1, dalpha_L1_j_3_netPar1, dalpha_L1_j_4_netPar1, dalpha_L1_j_5_netPar1, dalpha_L1_j_6_netPar1, dalpha_L1_j_7_netPar1, dalpha_L1_j_8_netPar1, dalpha_L1_j_9_netPar1, dalpha_L1_j_10_netPar1, dalpha_L1_j_11_netPar1, dalpha_L1_j_12_netPar1, dalpha_L1_j_13_netPar1, dalpha_L1_j_14_netPar1, dalpha_L1_j_15_netPar1, dalpha_L1_j_16_netPar1, dalpha_L1_j_17_netPar1, dalpha_L1_j_18_netPar1, dalpha_L1_j_19_netPar1, dalpha_L1_j_20_netPar1, dalpha_L1_j_21_netPar1, dalpha_L1_j_22_netPar1, dalpha_L1_j_23_netPar1, dalpha_L1_j_24_netPar1;
wire [25 - 1:0] dbeta_L1_netPar1;
wire [25 - 1:0] dalpha_L2_j_0_netPar1, dalpha_L2_j_1_netPar1, dalpha_L2_j_2_netPar1, dalpha_L2_j_3_netPar1, dalpha_L2_j_4_netPar1, dalpha_L2_j_5_netPar1, dalpha_L2_j_6_netPar1, dalpha_L2_j_7_netPar1;
wire [8 - 1:0] dbeta_L2_netPar1;
wire [8 - 1:0] dalpha_L3_j_0_netPar1, dalpha_L3_j_1_netPar1, dalpha_L3_j_2_netPar1, dalpha_L3_j_3_netPar1, dalpha_L3_j_4_netPar1;
wire [5 - 1:0] dbeta_L3_netPar1;
wire [5 - 1:0] dalpha_L1_j_0_netPar2, dalpha_L1_j_1_netPar2, dalpha_L1_j_2_netPar2, dalpha_L1_j_3_netPar2, dalpha_L1_j_4_netPar2, dalpha_L1_j_5_netPar2, dalpha_L1_j_6_netPar2, dalpha_L1_j_7_netPar2, dalpha_L1_j_8_netPar2, dalpha_L1_j_9_netPar2, dalpha_L1_j_10_netPar2, dalpha_L1_j_11_netPar2, dalpha_L1_j_12_netPar2, dalpha_L1_j_13_netPar2, dalpha_L1_j_14_netPar2, dalpha_L1_j_15_netPar2, dalpha_L1_j_16_netPar2, dalpha_L1_j_17_netPar2, dalpha_L1_j_18_netPar2, dalpha_L1_j_19_netPar2, dalpha_L1_j_20_netPar2, dalpha_L1_j_21_netPar2, dalpha_L1_j_22_netPar2, dalpha_L1_j_23_netPar2, dalpha_L1_j_24_netPar2;
wire [25 - 1:0] dbeta_L1_netPar2;
wire [25 - 1:0] dalpha_L2_j_0_netPar2, dalpha_L2_j_1_netPar2, dalpha_L2_j_2_netPar2, dalpha_L2_j_3_netPar2, dalpha_L2_j_4_netPar2, dalpha_L2_j_5_netPar2, dalpha_L2_j_6_netPar2, dalpha_L2_j_7_netPar2;
wire [8 - 1:0] dbeta_L2_netPar2;
wire [8 - 1:0] dalpha_L3_j_0_netPar2, dalpha_L3_j_1_netPar2, dalpha_L3_j_2_netPar2, dalpha_L3_j_3_netPar2, dalpha_L3_j_4_netPar2;
wire [5 - 1:0] dbeta_L3_netPar2;
wire [5 - 1:0] SIGN_dalpha_L1_j_0_netPar0, SIGN_dalpha_L1_j_1_netPar0, SIGN_dalpha_L1_j_2_netPar0, SIGN_dalpha_L1_j_3_netPar0, SIGN_dalpha_L1_j_4_netPar0, SIGN_dalpha_L1_j_5_netPar0, SIGN_dalpha_L1_j_6_netPar0, SIGN_dalpha_L1_j_7_netPar0, SIGN_dalpha_L1_j_8_netPar0, SIGN_dalpha_L1_j_9_netPar0, SIGN_dalpha_L1_j_10_netPar0, SIGN_dalpha_L1_j_11_netPar0, SIGN_dalpha_L1_j_12_netPar0, SIGN_dalpha_L1_j_13_netPar0, SIGN_dalpha_L1_j_14_netPar0, SIGN_dalpha_L1_j_15_netPar0, SIGN_dalpha_L1_j_16_netPar0, SIGN_dalpha_L1_j_17_netPar0, SIGN_dalpha_L1_j_18_netPar0, SIGN_dalpha_L1_j_19_netPar0, SIGN_dalpha_L1_j_20_netPar0, SIGN_dalpha_L1_j_21_netPar0, SIGN_dalpha_L1_j_22_netPar0, SIGN_dalpha_L1_j_23_netPar0, SIGN_dalpha_L1_j_24_netPar0;
wire [25 - 1:0] SIGN_dbeta_L1_netPar0;
wire [25 - 1:0] SIGN_dalpha_L2_j_0_netPar0, SIGN_dalpha_L2_j_1_netPar0, SIGN_dalpha_L2_j_2_netPar0, SIGN_dalpha_L2_j_3_netPar0, SIGN_dalpha_L2_j_4_netPar0, SIGN_dalpha_L2_j_5_netPar0, SIGN_dalpha_L2_j_6_netPar0, SIGN_dalpha_L2_j_7_netPar0;
wire [8 - 1:0] SIGN_dbeta_L2_netPar0;
wire [8 - 1:0] SIGN_dalpha_L3_j_0_netPar0, SIGN_dalpha_L3_j_1_netPar0, SIGN_dalpha_L3_j_2_netPar0, SIGN_dalpha_L3_j_3_netPar0, SIGN_dalpha_L3_j_4_netPar0;
wire [5 - 1:0] SIGN_dbeta_L3_netPar0;
wire [5 - 1:0] SIGN_dalpha_L1_j_0_netPar1, SIGN_dalpha_L1_j_1_netPar1, SIGN_dalpha_L1_j_2_netPar1, SIGN_dalpha_L1_j_3_netPar1, SIGN_dalpha_L1_j_4_netPar1, SIGN_dalpha_L1_j_5_netPar1, SIGN_dalpha_L1_j_6_netPar1, SIGN_dalpha_L1_j_7_netPar1, SIGN_dalpha_L1_j_8_netPar1, SIGN_dalpha_L1_j_9_netPar1, SIGN_dalpha_L1_j_10_netPar1, SIGN_dalpha_L1_j_11_netPar1, SIGN_dalpha_L1_j_12_netPar1, SIGN_dalpha_L1_j_13_netPar1, SIGN_dalpha_L1_j_14_netPar1, SIGN_dalpha_L1_j_15_netPar1, SIGN_dalpha_L1_j_16_netPar1, SIGN_dalpha_L1_j_17_netPar1, SIGN_dalpha_L1_j_18_netPar1, SIGN_dalpha_L1_j_19_netPar1, SIGN_dalpha_L1_j_20_netPar1, SIGN_dalpha_L1_j_21_netPar1, SIGN_dalpha_L1_j_22_netPar1, SIGN_dalpha_L1_j_23_netPar1, SIGN_dalpha_L1_j_24_netPar1;
wire [25 - 1:0] SIGN_dbeta_L1_netPar1;
wire [25 - 1:0] SIGN_dalpha_L2_j_0_netPar1, SIGN_dalpha_L2_j_1_netPar1, SIGN_dalpha_L2_j_2_netPar1, SIGN_dalpha_L2_j_3_netPar1, SIGN_dalpha_L2_j_4_netPar1, SIGN_dalpha_L2_j_5_netPar1, SIGN_dalpha_L2_j_6_netPar1, SIGN_dalpha_L2_j_7_netPar1;
wire [8 - 1:0] SIGN_dbeta_L2_netPar1;
wire [8 - 1:0] SIGN_dalpha_L3_j_0_netPar1, SIGN_dalpha_L3_j_1_netPar1, SIGN_dalpha_L3_j_2_netPar1, SIGN_dalpha_L3_j_3_netPar1, SIGN_dalpha_L3_j_4_netPar1;
wire [5 - 1:0] SIGN_dbeta_L3_netPar1;
wire [5 - 1:0] SIGN_dalpha_L1_j_0_netPar2, SIGN_dalpha_L1_j_1_netPar2, SIGN_dalpha_L1_j_2_netPar2, SIGN_dalpha_L1_j_3_netPar2, SIGN_dalpha_L1_j_4_netPar2, SIGN_dalpha_L1_j_5_netPar2, SIGN_dalpha_L1_j_6_netPar2, SIGN_dalpha_L1_j_7_netPar2, SIGN_dalpha_L1_j_8_netPar2, SIGN_dalpha_L1_j_9_netPar2, SIGN_dalpha_L1_j_10_netPar2, SIGN_dalpha_L1_j_11_netPar2, SIGN_dalpha_L1_j_12_netPar2, SIGN_dalpha_L1_j_13_netPar2, SIGN_dalpha_L1_j_14_netPar2, SIGN_dalpha_L1_j_15_netPar2, SIGN_dalpha_L1_j_16_netPar2, SIGN_dalpha_L1_j_17_netPar2, SIGN_dalpha_L1_j_18_netPar2, SIGN_dalpha_L1_j_19_netPar2, SIGN_dalpha_L1_j_20_netPar2, SIGN_dalpha_L1_j_21_netPar2, SIGN_dalpha_L1_j_22_netPar2, SIGN_dalpha_L1_j_23_netPar2, SIGN_dalpha_L1_j_24_netPar2;
wire [25 - 1:0] SIGN_dbeta_L1_netPar2;
wire [25 - 1:0] SIGN_dalpha_L2_j_0_netPar2, SIGN_dalpha_L2_j_1_netPar2, SIGN_dalpha_L2_j_2_netPar2, SIGN_dalpha_L2_j_3_netPar2, SIGN_dalpha_L2_j_4_netPar2, SIGN_dalpha_L2_j_5_netPar2, SIGN_dalpha_L2_j_6_netPar2, SIGN_dalpha_L2_j_7_netPar2;
wire [8 - 1:0] SIGN_dbeta_L2_netPar2;
wire [8 - 1:0] SIGN_dalpha_L3_j_0_netPar2, SIGN_dalpha_L3_j_1_netPar2, SIGN_dalpha_L3_j_2_netPar2, SIGN_dalpha_L3_j_3_netPar2, SIGN_dalpha_L3_j_4_netPar2;
wire [5 - 1:0] SIGN_dbeta_L3_netPar2;

wire [5 - 1:0] SIGN_L3_netPar0;
wire [5 - 1:0] SIGN_L3_netPar1;
wire [5 - 1:0] SIGN_L3_netPar2;

// Nios Data ports
reg TrainingSetOutput_CLK = 1'd0;
reg TrainingSetInput_CLK = 1'd0;
reg [15:0] TrainingSetOutput_index = 1'd0;
reg [15:0] TrainingSetInput_index = 1'd0;
reg [15:0] TrainingSetOutput_data = 1'd0;
reg [7:0] TrainingSetInput_data = 1'd0;
wire ERROR_req;
reg NNParamExp_CLK = 1'b0;
reg [15:0] NNParamExp_index = 1'b0;

reg CLK = 1'b0;

always #10 CLK = ~CLK;

assign pre_FP_FRAME = (FrameCounter == 8'd0);
assign FP_FRAME = (FrameCounter == 8'd2);
assign pre_BP_FRAME = (FrameCounter == 8'd0);
assign BP_FRAME = (FrameCounter == 8'd2);
assign FRAME_RESET_DELAYED = (FrameCounter == 8'd2);
assign FRAME_RESET = (FrameCounter == 8'd0);
assign pre_FRAME_END = (FrameCounter == 8'd0);
assign FrameEnd = (FrameCounter == 8'd2);

always @(posedge CLK) begin
	if (INITcounter > 8'd5) begin
		INITcounter <= INITcounter;
		INIT <= 1'b0;
		INIT_late <= 1'b0;
		FrameCounter <= FrameCounter + 1'b1;
	end else if (INITcounter > 8'd2) begin
		INITcounter <= INITcounter + 1'b1;
		INIT <= 1'b1;
		INIT_late <= 1'b1;
		FrameCounter <= FrameCounter;
	end else begin
		INITcounter <= INITcounter + 1'b1;
		INIT <= 1'b1;
		INIT_late <= 1'b0;
		FrameCounter <= FrameCounter;
	end
	COUNTtotal <= COUNTtotal + 1'b1;
end

always @(posedge CLK) begin
	ERRROR_COUNTER <= ERRROR_COUNTER + 1'b1;
end

always @(posedge CLK) begin
	if ((ERRROR_COUNTER <= 1'd0)&(TrainingActive)) N_Frames <= N_Frames + 1'b1;
end

wire[7:0] ERROR_MOVAVG;

SS_MOVAVG MOVAVG0(.IN(eps_netPar0[0] | eps_netPar0[1] | eps_netPar0[2] | eps_netPar0[3] | eps_netPar0[4] | eps_netPar1[0] | eps_netPar1[1] | eps_netPar1[2] | eps_netPar1[3] | eps_netPar1[4] | eps_netPar2[0] | eps_netPar2[1] | eps_netPar2[2] | eps_netPar2[3] | eps_netPar2[4]), .AVG(ERROR_MOVAVG), .CLK(CLK), .INIT(INIT)); 
defparam MOVAVG0.W = 100;
defparam MOVAVG0.N = 8;
defparam MOVAVG0.F_sampling = 100;


//	Random number engine
RNE RNE0(
`include "RNE_portDefinitions.v"
	.CLK(CLK),.INIT_powerup(INIT),.SDcount(SDcount)
); 

//	LFSR Seed files
SEED SEED0(
	`include "SEED_portDefinitions.v"
	.INIT(SDcount[31])
);

// Stochastic bit generator
STOCH STOCH0(
`include "STOCH_portDefinitions.v"
	.CLK(CLK)
);

TRAINING TRAINING0(
`include "TRAINING_portDefinitions.v"
	.TrainingSetOutput_CLK(WriteTS_Output_clk), .TrainingSetInput_CLK(WriteTS_Input_clk),
	.TrainingSetOutput_index(ReadWriteIndex), .TrainingSetInput_index(ReadWriteIndex),
	.TrainingSetOutput_data(DataWrite), .TrainingSetInput_data(DataWrite),
	.TRAINING_SET_LIMIT(8'd5), .TRAINING_SET_OVR(TS_OVR), .TRAINING_SET_OVR_EN(TS_OVR_EN), .WriteTrainingSet_index(WriteTrainingSet_index),
	.CLK(CLK), .INIT(INIT), .TRAINING_PRESET(TRAINING_PRESET), .TRAINING_PRESET2(TRAINING_PRESET2), .CLK_TRAINING_flag(CLK_TRAINING_flag), .TRAINING_DURATION_cap(TRAINING_DURATION_cap), .TRAINING_SET_CURRENT_netPar0(TRAINING_SET_CURRENT_netPar0), .TRAINING_SET_CURRENT_netPar1(TRAINING_SET_CURRENT_netPar1), .TRAINING_SET_CURRENT_netPar2(TRAINING_SET_CURRENT_netPar2)
);

// Forward Propagation Module 0:
FWDPROP FWDPROP0(
	.alpha_L1_j_0(alpha_L1_j_0), .alpha_L1_j_1(alpha_L1_j_1), .alpha_L1_j_2(alpha_L1_j_2), .alpha_L1_j_3(alpha_L1_j_3), .alpha_L1_j_4(alpha_L1_j_4), .alpha_L1_j_5(alpha_L1_j_5), .alpha_L1_j_6(alpha_L1_j_6), .alpha_L1_j_7(alpha_L1_j_7), .alpha_L1_j_8(alpha_L1_j_8), .alpha_L1_j_9(alpha_L1_j_9), .alpha_L1_j_10(alpha_L1_j_10), .alpha_L1_j_11(alpha_L1_j_11), .alpha_L1_j_12(alpha_L1_j_12), .alpha_L1_j_13(alpha_L1_j_13), .alpha_L1_j_14(alpha_L1_j_14), .alpha_L1_j_15(alpha_L1_j_15), .alpha_L1_j_16(alpha_L1_j_16), .alpha_L1_j_17(alpha_L1_j_17), .alpha_L1_j_18(alpha_L1_j_18), .alpha_L1_j_19(alpha_L1_j_19), .alpha_L1_j_20(alpha_L1_j_20), .alpha_L1_j_21(alpha_L1_j_21), .alpha_L1_j_22(alpha_L1_j_22), .alpha_L1_j_23(alpha_L1_j_23), .alpha_L1_j_24(alpha_L1_j_24),
	.beta_L1(beta_L1),
	.alpha_L2_j_0(alpha_L2_j_0), .alpha_L2_j_1(alpha_L2_j_1), .alpha_L2_j_2(alpha_L2_j_2), .alpha_L2_j_3(alpha_L2_j_3), .alpha_L2_j_4(alpha_L2_j_4), .alpha_L2_j_5(alpha_L2_j_5), .alpha_L2_j_6(alpha_L2_j_6), .alpha_L2_j_7(alpha_L2_j_7),
	.beta_L2(beta_L2),
	.alpha_L3_j_0(alpha_L3_j_0), .alpha_L3_j_1(alpha_L3_j_1), .alpha_L3_j_2(alpha_L3_j_2), .alpha_L3_j_3(alpha_L3_j_3), .alpha_L3_j_4(alpha_L3_j_4),
	.beta_L3(beta_L3),
	.SIGN_alpha_L1_j_0(SIGN_alpha_L1_j_0), .SIGN_alpha_L1_j_1(SIGN_alpha_L1_j_1), .SIGN_alpha_L1_j_2(SIGN_alpha_L1_j_2), .SIGN_alpha_L1_j_3(SIGN_alpha_L1_j_3), .SIGN_alpha_L1_j_4(SIGN_alpha_L1_j_4), .SIGN_alpha_L1_j_5(SIGN_alpha_L1_j_5), .SIGN_alpha_L1_j_6(SIGN_alpha_L1_j_6), .SIGN_alpha_L1_j_7(SIGN_alpha_L1_j_7), .SIGN_alpha_L1_j_8(SIGN_alpha_L1_j_8), .SIGN_alpha_L1_j_9(SIGN_alpha_L1_j_9), .SIGN_alpha_L1_j_10(SIGN_alpha_L1_j_10), .SIGN_alpha_L1_j_11(SIGN_alpha_L1_j_11), .SIGN_alpha_L1_j_12(SIGN_alpha_L1_j_12), .SIGN_alpha_L1_j_13(SIGN_alpha_L1_j_13), .SIGN_alpha_L1_j_14(SIGN_alpha_L1_j_14), .SIGN_alpha_L1_j_15(SIGN_alpha_L1_j_15), .SIGN_alpha_L1_j_16(SIGN_alpha_L1_j_16), .SIGN_alpha_L1_j_17(SIGN_alpha_L1_j_17), .SIGN_alpha_L1_j_18(SIGN_alpha_L1_j_18), .SIGN_alpha_L1_j_19(SIGN_alpha_L1_j_19), .SIGN_alpha_L1_j_20(SIGN_alpha_L1_j_20), .SIGN_alpha_L1_j_21(SIGN_alpha_L1_j_21), .SIGN_alpha_L1_j_22(SIGN_alpha_L1_j_22), .SIGN_alpha_L1_j_23(SIGN_alpha_L1_j_23), .SIGN_alpha_L1_j_24(SIGN_alpha_L1_j_24),
	.SIGN_beta_L1(SIGN_beta_L1),
	.SIGN_alpha_L2_j_0(SIGN_alpha_L2_j_0), .SIGN_alpha_L2_j_1(SIGN_alpha_L2_j_1), .SIGN_alpha_L2_j_2(SIGN_alpha_L2_j_2), .SIGN_alpha_L2_j_3(SIGN_alpha_L2_j_3), .SIGN_alpha_L2_j_4(SIGN_alpha_L2_j_4), .SIGN_alpha_L2_j_5(SIGN_alpha_L2_j_5), .SIGN_alpha_L2_j_6(SIGN_alpha_L2_j_6), .SIGN_alpha_L2_j_7(SIGN_alpha_L2_j_7),
	.SIGN_beta_L2(SIGN_beta_L2),
	.SIGN_alpha_L3_j_0(SIGN_alpha_L3_j_0), .SIGN_alpha_L3_j_1(SIGN_alpha_L3_j_1), .SIGN_alpha_L3_j_2(SIGN_alpha_L3_j_2), .SIGN_alpha_L3_j_3(SIGN_alpha_L3_j_3), .SIGN_alpha_L3_j_4(SIGN_alpha_L3_j_4),
	.SIGN_beta_L3(SIGN_beta_L3),
	.a_L0(a_L0_netPar0),
	.a_L1(a_L1_netPar0),
	.a_L2(a_L2_netPar0),
	.a_L3(a_L3_netPar0),
	.z_L0(z_L0_netPar0),
	.z_L1(z_L1_netPar0),
	.z_L2(z_L2_netPar0),
	.z_L3(z_L3_netPar0),
	.zp_L0(zp_L0_netPar0),
	.zp_L1(zp_L1_netPar0),
	.zp_L2(zp_L2_netPar0),
	.zp_L3(zp_L3_netPar0),
	.a_MEM_ACTIVE_L1(a_MEM_ACTIVE_L1_netPar0),
	.a_MEM_ACTIVE_L2(a_MEM_ACTIVE_L2_netPar0),
	.a_MEM_ACTIVE_L3(a_MEM_ACTIVE_L3_netPar0),
	
	.R_FP0(R0_ADDSUB_FP_netPar0), .R_FP1(R1_ADDSUB_FP_netPar0), .R_FP2(R2_ADDSUB_FP_netPar0), .R_FP3(R3_ADDSUB_FP_netPar0), .R_FP4(R4_ADDSUB_FP_netPar0), .R_FP5(R5_ADDSUB_FP_netPar0), .R_FP6(R6_ADDSUB_FP_netPar0), .R_FP7(R7_ADDSUB_FP_netPar0), .R_FP8(R8_ADDSUB_FP_netPar0), 
	.zeroCenterSource(zeroCenterSource_netPar0),
	.CLK(CLK),  .INIT(INIT), .CLK_TRAINING_flag(CLK_TRAINING_flag)
);

// Forward Propagation Module 1:
FWDPROP FWDPROP1(
	.alpha_L1_j_0(alpha_L1_j_0), .alpha_L1_j_1(alpha_L1_j_1), .alpha_L1_j_2(alpha_L1_j_2), .alpha_L1_j_3(alpha_L1_j_3), .alpha_L1_j_4(alpha_L1_j_4), .alpha_L1_j_5(alpha_L1_j_5), .alpha_L1_j_6(alpha_L1_j_6), .alpha_L1_j_7(alpha_L1_j_7), .alpha_L1_j_8(alpha_L1_j_8), .alpha_L1_j_9(alpha_L1_j_9), .alpha_L1_j_10(alpha_L1_j_10), .alpha_L1_j_11(alpha_L1_j_11), .alpha_L1_j_12(alpha_L1_j_12), .alpha_L1_j_13(alpha_L1_j_13), .alpha_L1_j_14(alpha_L1_j_14), .alpha_L1_j_15(alpha_L1_j_15), .alpha_L1_j_16(alpha_L1_j_16), .alpha_L1_j_17(alpha_L1_j_17), .alpha_L1_j_18(alpha_L1_j_18), .alpha_L1_j_19(alpha_L1_j_19), .alpha_L1_j_20(alpha_L1_j_20), .alpha_L1_j_21(alpha_L1_j_21), .alpha_L1_j_22(alpha_L1_j_22), .alpha_L1_j_23(alpha_L1_j_23), .alpha_L1_j_24(alpha_L1_j_24),
	.beta_L1(beta_L1),
	.alpha_L2_j_0(alpha_L2_j_0), .alpha_L2_j_1(alpha_L2_j_1), .alpha_L2_j_2(alpha_L2_j_2), .alpha_L2_j_3(alpha_L2_j_3), .alpha_L2_j_4(alpha_L2_j_4), .alpha_L2_j_5(alpha_L2_j_5), .alpha_L2_j_6(alpha_L2_j_6), .alpha_L2_j_7(alpha_L2_j_7),
	.beta_L2(beta_L2),
	.alpha_L3_j_0(alpha_L3_j_0), .alpha_L3_j_1(alpha_L3_j_1), .alpha_L3_j_2(alpha_L3_j_2), .alpha_L3_j_3(alpha_L3_j_3), .alpha_L3_j_4(alpha_L3_j_4),
	.beta_L3(beta_L3),
	.SIGN_alpha_L1_j_0(SIGN_alpha_L1_j_0), .SIGN_alpha_L1_j_1(SIGN_alpha_L1_j_1), .SIGN_alpha_L1_j_2(SIGN_alpha_L1_j_2), .SIGN_alpha_L1_j_3(SIGN_alpha_L1_j_3), .SIGN_alpha_L1_j_4(SIGN_alpha_L1_j_4), .SIGN_alpha_L1_j_5(SIGN_alpha_L1_j_5), .SIGN_alpha_L1_j_6(SIGN_alpha_L1_j_6), .SIGN_alpha_L1_j_7(SIGN_alpha_L1_j_7), .SIGN_alpha_L1_j_8(SIGN_alpha_L1_j_8), .SIGN_alpha_L1_j_9(SIGN_alpha_L1_j_9), .SIGN_alpha_L1_j_10(SIGN_alpha_L1_j_10), .SIGN_alpha_L1_j_11(SIGN_alpha_L1_j_11), .SIGN_alpha_L1_j_12(SIGN_alpha_L1_j_12), .SIGN_alpha_L1_j_13(SIGN_alpha_L1_j_13), .SIGN_alpha_L1_j_14(SIGN_alpha_L1_j_14), .SIGN_alpha_L1_j_15(SIGN_alpha_L1_j_15), .SIGN_alpha_L1_j_16(SIGN_alpha_L1_j_16), .SIGN_alpha_L1_j_17(SIGN_alpha_L1_j_17), .SIGN_alpha_L1_j_18(SIGN_alpha_L1_j_18), .SIGN_alpha_L1_j_19(SIGN_alpha_L1_j_19), .SIGN_alpha_L1_j_20(SIGN_alpha_L1_j_20), .SIGN_alpha_L1_j_21(SIGN_alpha_L1_j_21), .SIGN_alpha_L1_j_22(SIGN_alpha_L1_j_22), .SIGN_alpha_L1_j_23(SIGN_alpha_L1_j_23), .SIGN_alpha_L1_j_24(SIGN_alpha_L1_j_24),
	.SIGN_beta_L1(SIGN_beta_L1),
	.SIGN_alpha_L2_j_0(SIGN_alpha_L2_j_0), .SIGN_alpha_L2_j_1(SIGN_alpha_L2_j_1), .SIGN_alpha_L2_j_2(SIGN_alpha_L2_j_2), .SIGN_alpha_L2_j_3(SIGN_alpha_L2_j_3), .SIGN_alpha_L2_j_4(SIGN_alpha_L2_j_4), .SIGN_alpha_L2_j_5(SIGN_alpha_L2_j_5), .SIGN_alpha_L2_j_6(SIGN_alpha_L2_j_6), .SIGN_alpha_L2_j_7(SIGN_alpha_L2_j_7),
	.SIGN_beta_L2(SIGN_beta_L2),
	.SIGN_alpha_L3_j_0(SIGN_alpha_L3_j_0), .SIGN_alpha_L3_j_1(SIGN_alpha_L3_j_1), .SIGN_alpha_L3_j_2(SIGN_alpha_L3_j_2), .SIGN_alpha_L3_j_3(SIGN_alpha_L3_j_3), .SIGN_alpha_L3_j_4(SIGN_alpha_L3_j_4),
	.SIGN_beta_L3(SIGN_beta_L3),
	.a_L0(a_L0_netPar1),
	.a_L1(a_L1_netPar1),
	.a_L2(a_L2_netPar1),
	.a_L3(a_L3_netPar1),
	.z_L0(z_L0_netPar1),
	.z_L1(z_L1_netPar1),
	.z_L2(z_L2_netPar1),
	.z_L3(z_L3_netPar1),
	.zp_L0(zp_L0_netPar1),
	.zp_L1(zp_L1_netPar1),
	.zp_L2(zp_L2_netPar1),
	.zp_L3(zp_L3_netPar1),
	.a_MEM_ACTIVE_L1(a_MEM_ACTIVE_L1_netPar1),
	.a_MEM_ACTIVE_L2(a_MEM_ACTIVE_L2_netPar1),
	.a_MEM_ACTIVE_L3(a_MEM_ACTIVE_L3_netPar1),
	
	.R_FP0(R0_ADDSUB_FP_netPar1), .R_FP1(R1_ADDSUB_FP_netPar1), .R_FP2(R2_ADDSUB_FP_netPar1), .R_FP3(R3_ADDSUB_FP_netPar1), .R_FP4(R4_ADDSUB_FP_netPar1), .R_FP5(R5_ADDSUB_FP_netPar1), .R_FP6(R6_ADDSUB_FP_netPar1), .R_FP7(R7_ADDSUB_FP_netPar1), .R_FP8(R8_ADDSUB_FP_netPar1), 
	.zeroCenterSource(zeroCenterSource_netPar1),
	.CLK(CLK),  .INIT(INIT), .CLK_TRAINING_flag(CLK_TRAINING_flag)
);

// Forward Propagation Module 2:
FWDPROP FWDPROP2(
	.alpha_L1_j_0(alpha_L1_j_0), .alpha_L1_j_1(alpha_L1_j_1), .alpha_L1_j_2(alpha_L1_j_2), .alpha_L1_j_3(alpha_L1_j_3), .alpha_L1_j_4(alpha_L1_j_4), .alpha_L1_j_5(alpha_L1_j_5), .alpha_L1_j_6(alpha_L1_j_6), .alpha_L1_j_7(alpha_L1_j_7), .alpha_L1_j_8(alpha_L1_j_8), .alpha_L1_j_9(alpha_L1_j_9), .alpha_L1_j_10(alpha_L1_j_10), .alpha_L1_j_11(alpha_L1_j_11), .alpha_L1_j_12(alpha_L1_j_12), .alpha_L1_j_13(alpha_L1_j_13), .alpha_L1_j_14(alpha_L1_j_14), .alpha_L1_j_15(alpha_L1_j_15), .alpha_L1_j_16(alpha_L1_j_16), .alpha_L1_j_17(alpha_L1_j_17), .alpha_L1_j_18(alpha_L1_j_18), .alpha_L1_j_19(alpha_L1_j_19), .alpha_L1_j_20(alpha_L1_j_20), .alpha_L1_j_21(alpha_L1_j_21), .alpha_L1_j_22(alpha_L1_j_22), .alpha_L1_j_23(alpha_L1_j_23), .alpha_L1_j_24(alpha_L1_j_24),
	.beta_L1(beta_L1),
	.alpha_L2_j_0(alpha_L2_j_0), .alpha_L2_j_1(alpha_L2_j_1), .alpha_L2_j_2(alpha_L2_j_2), .alpha_L2_j_3(alpha_L2_j_3), .alpha_L2_j_4(alpha_L2_j_4), .alpha_L2_j_5(alpha_L2_j_5), .alpha_L2_j_6(alpha_L2_j_6), .alpha_L2_j_7(alpha_L2_j_7),
	.beta_L2(beta_L2),
	.alpha_L3_j_0(alpha_L3_j_0), .alpha_L3_j_1(alpha_L3_j_1), .alpha_L3_j_2(alpha_L3_j_2), .alpha_L3_j_3(alpha_L3_j_3), .alpha_L3_j_4(alpha_L3_j_4),
	.beta_L3(beta_L3),
	.SIGN_alpha_L1_j_0(SIGN_alpha_L1_j_0), .SIGN_alpha_L1_j_1(SIGN_alpha_L1_j_1), .SIGN_alpha_L1_j_2(SIGN_alpha_L1_j_2), .SIGN_alpha_L1_j_3(SIGN_alpha_L1_j_3), .SIGN_alpha_L1_j_4(SIGN_alpha_L1_j_4), .SIGN_alpha_L1_j_5(SIGN_alpha_L1_j_5), .SIGN_alpha_L1_j_6(SIGN_alpha_L1_j_6), .SIGN_alpha_L1_j_7(SIGN_alpha_L1_j_7), .SIGN_alpha_L1_j_8(SIGN_alpha_L1_j_8), .SIGN_alpha_L1_j_9(SIGN_alpha_L1_j_9), .SIGN_alpha_L1_j_10(SIGN_alpha_L1_j_10), .SIGN_alpha_L1_j_11(SIGN_alpha_L1_j_11), .SIGN_alpha_L1_j_12(SIGN_alpha_L1_j_12), .SIGN_alpha_L1_j_13(SIGN_alpha_L1_j_13), .SIGN_alpha_L1_j_14(SIGN_alpha_L1_j_14), .SIGN_alpha_L1_j_15(SIGN_alpha_L1_j_15), .SIGN_alpha_L1_j_16(SIGN_alpha_L1_j_16), .SIGN_alpha_L1_j_17(SIGN_alpha_L1_j_17), .SIGN_alpha_L1_j_18(SIGN_alpha_L1_j_18), .SIGN_alpha_L1_j_19(SIGN_alpha_L1_j_19), .SIGN_alpha_L1_j_20(SIGN_alpha_L1_j_20), .SIGN_alpha_L1_j_21(SIGN_alpha_L1_j_21), .SIGN_alpha_L1_j_22(SIGN_alpha_L1_j_22), .SIGN_alpha_L1_j_23(SIGN_alpha_L1_j_23), .SIGN_alpha_L1_j_24(SIGN_alpha_L1_j_24),
	.SIGN_beta_L1(SIGN_beta_L1),
	.SIGN_alpha_L2_j_0(SIGN_alpha_L2_j_0), .SIGN_alpha_L2_j_1(SIGN_alpha_L2_j_1), .SIGN_alpha_L2_j_2(SIGN_alpha_L2_j_2), .SIGN_alpha_L2_j_3(SIGN_alpha_L2_j_3), .SIGN_alpha_L2_j_4(SIGN_alpha_L2_j_4), .SIGN_alpha_L2_j_5(SIGN_alpha_L2_j_5), .SIGN_alpha_L2_j_6(SIGN_alpha_L2_j_6), .SIGN_alpha_L2_j_7(SIGN_alpha_L2_j_7),
	.SIGN_beta_L2(SIGN_beta_L2),
	.SIGN_alpha_L3_j_0(SIGN_alpha_L3_j_0), .SIGN_alpha_L3_j_1(SIGN_alpha_L3_j_1), .SIGN_alpha_L3_j_2(SIGN_alpha_L3_j_2), .SIGN_alpha_L3_j_3(SIGN_alpha_L3_j_3), .SIGN_alpha_L3_j_4(SIGN_alpha_L3_j_4),
	.SIGN_beta_L3(SIGN_beta_L3),
	.a_L0(a_L0_netPar2),
	.a_L1(a_L1_netPar2),
	.a_L2(a_L2_netPar2),
	.a_L3(a_L3_netPar2),
	.z_L0(z_L0_netPar2),
	.z_L1(z_L1_netPar2),
	.z_L2(z_L2_netPar2),
	.z_L3(z_L3_netPar2),
	.zp_L0(zp_L0_netPar2),
	.zp_L1(zp_L1_netPar2),
	.zp_L2(zp_L2_netPar2),
	.zp_L3(zp_L3_netPar2),
	.a_MEM_ACTIVE_L1(a_MEM_ACTIVE_L1_netPar2),
	.a_MEM_ACTIVE_L2(a_MEM_ACTIVE_L2_netPar2),
	.a_MEM_ACTIVE_L3(a_MEM_ACTIVE_L3_netPar2),
	
	.R_FP0(R0_ADDSUB_FP_netPar2), .R_FP1(R1_ADDSUB_FP_netPar2), .R_FP2(R2_ADDSUB_FP_netPar2), .R_FP3(R3_ADDSUB_FP_netPar2), .R_FP4(R4_ADDSUB_FP_netPar2), .R_FP5(R5_ADDSUB_FP_netPar2), .R_FP6(R6_ADDSUB_FP_netPar2), .R_FP7(R7_ADDSUB_FP_netPar2), .R_FP8(R8_ADDSUB_FP_netPar2), 
	.zeroCenterSource(zeroCenterSource_netPar2),
	.CLK(CLK),  .INIT(INIT), .CLK_TRAINING_flag(CLK_TRAINING_flag)
);

// Back Propagation Module 0 :
BCKDPROP BCKPROP0(
	.alpha_L1_j_0(alpha_L1_j_0), .alpha_L1_j_1(alpha_L1_j_1), .alpha_L1_j_2(alpha_L1_j_2), .alpha_L1_j_3(alpha_L1_j_3), .alpha_L1_j_4(alpha_L1_j_4), .alpha_L1_j_5(alpha_L1_j_5), .alpha_L1_j_6(alpha_L1_j_6), .alpha_L1_j_7(alpha_L1_j_7), .alpha_L1_j_8(alpha_L1_j_8), .alpha_L1_j_9(alpha_L1_j_9), .alpha_L1_j_10(alpha_L1_j_10), .alpha_L1_j_11(alpha_L1_j_11), .alpha_L1_j_12(alpha_L1_j_12), .alpha_L1_j_13(alpha_L1_j_13), .alpha_L1_j_14(alpha_L1_j_14), .alpha_L1_j_15(alpha_L1_j_15), .alpha_L1_j_16(alpha_L1_j_16), .alpha_L1_j_17(alpha_L1_j_17), .alpha_L1_j_18(alpha_L1_j_18), .alpha_L1_j_19(alpha_L1_j_19), .alpha_L1_j_20(alpha_L1_j_20), .alpha_L1_j_21(alpha_L1_j_21), .alpha_L1_j_22(alpha_L1_j_22), .alpha_L1_j_23(alpha_L1_j_23), .alpha_L1_j_24(alpha_L1_j_24),
	.beta_L1(beta_L1),
	.alpha_L2_j_0(alpha_L2_j_0), .alpha_L2_j_1(alpha_L2_j_1), .alpha_L2_j_2(alpha_L2_j_2), .alpha_L2_j_3(alpha_L2_j_3), .alpha_L2_j_4(alpha_L2_j_4), .alpha_L2_j_5(alpha_L2_j_5), .alpha_L2_j_6(alpha_L2_j_6), .alpha_L2_j_7(alpha_L2_j_7),
	.beta_L2(beta_L2),
	.alpha_L3_j_0(alpha_L3_j_0), .alpha_L3_j_1(alpha_L3_j_1), .alpha_L3_j_2(alpha_L3_j_2), .alpha_L3_j_3(alpha_L3_j_3), .alpha_L3_j_4(alpha_L3_j_4),
	.beta_L3(beta_L3),
	.SIGN_alpha_L1_j_0(SIGN_alpha_L1_j_0), .SIGN_alpha_L1_j_1(SIGN_alpha_L1_j_1), .SIGN_alpha_L1_j_2(SIGN_alpha_L1_j_2), .SIGN_alpha_L1_j_3(SIGN_alpha_L1_j_3), .SIGN_alpha_L1_j_4(SIGN_alpha_L1_j_4), .SIGN_alpha_L1_j_5(SIGN_alpha_L1_j_5), .SIGN_alpha_L1_j_6(SIGN_alpha_L1_j_6), .SIGN_alpha_L1_j_7(SIGN_alpha_L1_j_7), .SIGN_alpha_L1_j_8(SIGN_alpha_L1_j_8), .SIGN_alpha_L1_j_9(SIGN_alpha_L1_j_9), .SIGN_alpha_L1_j_10(SIGN_alpha_L1_j_10), .SIGN_alpha_L1_j_11(SIGN_alpha_L1_j_11), .SIGN_alpha_L1_j_12(SIGN_alpha_L1_j_12), .SIGN_alpha_L1_j_13(SIGN_alpha_L1_j_13), .SIGN_alpha_L1_j_14(SIGN_alpha_L1_j_14), .SIGN_alpha_L1_j_15(SIGN_alpha_L1_j_15), .SIGN_alpha_L1_j_16(SIGN_alpha_L1_j_16), .SIGN_alpha_L1_j_17(SIGN_alpha_L1_j_17), .SIGN_alpha_L1_j_18(SIGN_alpha_L1_j_18), .SIGN_alpha_L1_j_19(SIGN_alpha_L1_j_19), .SIGN_alpha_L1_j_20(SIGN_alpha_L1_j_20), .SIGN_alpha_L1_j_21(SIGN_alpha_L1_j_21), .SIGN_alpha_L1_j_22(SIGN_alpha_L1_j_22), .SIGN_alpha_L1_j_23(SIGN_alpha_L1_j_23), .SIGN_alpha_L1_j_24(SIGN_alpha_L1_j_24),
	.SIGN_beta_L1(SIGN_beta_L1),
	.SIGN_alpha_L2_j_0(SIGN_alpha_L2_j_0), .SIGN_alpha_L2_j_1(SIGN_alpha_L2_j_1), .SIGN_alpha_L2_j_2(SIGN_alpha_L2_j_2), .SIGN_alpha_L2_j_3(SIGN_alpha_L2_j_3), .SIGN_alpha_L2_j_4(SIGN_alpha_L2_j_4), .SIGN_alpha_L2_j_5(SIGN_alpha_L2_j_5), .SIGN_alpha_L2_j_6(SIGN_alpha_L2_j_6), .SIGN_alpha_L2_j_7(SIGN_alpha_L2_j_7),
	.SIGN_beta_L2(SIGN_beta_L2),
	.SIGN_alpha_L3_j_0(SIGN_alpha_L3_j_0), .SIGN_alpha_L3_j_1(SIGN_alpha_L3_j_1), .SIGN_alpha_L3_j_2(SIGN_alpha_L3_j_2), .SIGN_alpha_L3_j_3(SIGN_alpha_L3_j_3), .SIGN_alpha_L3_j_4(SIGN_alpha_L3_j_4),
	.SIGN_beta_L3(SIGN_beta_L3),
	.a_L0(a_L0_netPar0),
	.a_L1(a_L1_netPar0),
	.a_L2(a_L2_netPar0),
	.a_L3(a_L3_netPar0),
	.z_L0(z_L0_netPar0),
	.z_L1(z_L1_netPar0),
	.z_L2(z_L2_netPar0),
	.z_L3(z_L3_netPar0),
	.zp_L0(zp_L0_netPar0),
	.zp_L1(zp_L1_netPar0),
	.zp_L2(zp_L2_netPar0),
	.zp_L3(zp_L3_netPar0),
	.SIGN_L3(SIGN_L3_netPar0),
	.dalpha_L1_j_0(dalpha_L1_j_0_netPar0), .dalpha_L1_j_1(dalpha_L1_j_1_netPar0), .dalpha_L1_j_2(dalpha_L1_j_2_netPar0), .dalpha_L1_j_3(dalpha_L1_j_3_netPar0), .dalpha_L1_j_4(dalpha_L1_j_4_netPar0), .dalpha_L1_j_5(dalpha_L1_j_5_netPar0), .dalpha_L1_j_6(dalpha_L1_j_6_netPar0), .dalpha_L1_j_7(dalpha_L1_j_7_netPar0), .dalpha_L1_j_8(dalpha_L1_j_8_netPar0), .dalpha_L1_j_9(dalpha_L1_j_9_netPar0), .dalpha_L1_j_10(dalpha_L1_j_10_netPar0), .dalpha_L1_j_11(dalpha_L1_j_11_netPar0), .dalpha_L1_j_12(dalpha_L1_j_12_netPar0), .dalpha_L1_j_13(dalpha_L1_j_13_netPar0), .dalpha_L1_j_14(dalpha_L1_j_14_netPar0), .dalpha_L1_j_15(dalpha_L1_j_15_netPar0), .dalpha_L1_j_16(dalpha_L1_j_16_netPar0), .dalpha_L1_j_17(dalpha_L1_j_17_netPar0), .dalpha_L1_j_18(dalpha_L1_j_18_netPar0), .dalpha_L1_j_19(dalpha_L1_j_19_netPar0), .dalpha_L1_j_20(dalpha_L1_j_20_netPar0), .dalpha_L1_j_21(dalpha_L1_j_21_netPar0), .dalpha_L1_j_22(dalpha_L1_j_22_netPar0), .dalpha_L1_j_23(dalpha_L1_j_23_netPar0), .dalpha_L1_j_24(dalpha_L1_j_24_netPar0),
	.dbeta_L1(dbeta_L1_netPar0),
	.dalpha_L2_j_0(dalpha_L2_j_0_netPar0), .dalpha_L2_j_1(dalpha_L2_j_1_netPar0), .dalpha_L2_j_2(dalpha_L2_j_2_netPar0), .dalpha_L2_j_3(dalpha_L2_j_3_netPar0), .dalpha_L2_j_4(dalpha_L2_j_4_netPar0), .dalpha_L2_j_5(dalpha_L2_j_5_netPar0), .dalpha_L2_j_6(dalpha_L2_j_6_netPar0), .dalpha_L2_j_7(dalpha_L2_j_7_netPar0),
	.dbeta_L2(dbeta_L2_netPar0),
	.dalpha_L3_j_0(dalpha_L3_j_0_netPar0), .dalpha_L3_j_1(dalpha_L3_j_1_netPar0), .dalpha_L3_j_2(dalpha_L3_j_2_netPar0), .dalpha_L3_j_3(dalpha_L3_j_3_netPar0), .dalpha_L3_j_4(dalpha_L3_j_4_netPar0),
	.dbeta_L3(dbeta_L3_netPar0),
	.SIGN_dalpha_L1_j_0(SIGN_dalpha_L1_j_0_netPar0), .SIGN_dalpha_L1_j_1(SIGN_dalpha_L1_j_1_netPar0), .SIGN_dalpha_L1_j_2(SIGN_dalpha_L1_j_2_netPar0), .SIGN_dalpha_L1_j_3(SIGN_dalpha_L1_j_3_netPar0), .SIGN_dalpha_L1_j_4(SIGN_dalpha_L1_j_4_netPar0), .SIGN_dalpha_L1_j_5(SIGN_dalpha_L1_j_5_netPar0), .SIGN_dalpha_L1_j_6(SIGN_dalpha_L1_j_6_netPar0), .SIGN_dalpha_L1_j_7(SIGN_dalpha_L1_j_7_netPar0), .SIGN_dalpha_L1_j_8(SIGN_dalpha_L1_j_8_netPar0), .SIGN_dalpha_L1_j_9(SIGN_dalpha_L1_j_9_netPar0), .SIGN_dalpha_L1_j_10(SIGN_dalpha_L1_j_10_netPar0), .SIGN_dalpha_L1_j_11(SIGN_dalpha_L1_j_11_netPar0), .SIGN_dalpha_L1_j_12(SIGN_dalpha_L1_j_12_netPar0), .SIGN_dalpha_L1_j_13(SIGN_dalpha_L1_j_13_netPar0), .SIGN_dalpha_L1_j_14(SIGN_dalpha_L1_j_14_netPar0), .SIGN_dalpha_L1_j_15(SIGN_dalpha_L1_j_15_netPar0), .SIGN_dalpha_L1_j_16(SIGN_dalpha_L1_j_16_netPar0), .SIGN_dalpha_L1_j_17(SIGN_dalpha_L1_j_17_netPar0), .SIGN_dalpha_L1_j_18(SIGN_dalpha_L1_j_18_netPar0), .SIGN_dalpha_L1_j_19(SIGN_dalpha_L1_j_19_netPar0), .SIGN_dalpha_L1_j_20(SIGN_dalpha_L1_j_20_netPar0), .SIGN_dalpha_L1_j_21(SIGN_dalpha_L1_j_21_netPar0), .SIGN_dalpha_L1_j_22(SIGN_dalpha_L1_j_22_netPar0), .SIGN_dalpha_L1_j_23(SIGN_dalpha_L1_j_23_netPar0), .SIGN_dalpha_L1_j_24(SIGN_dalpha_L1_j_24_netPar0),
	.SIGN_dbeta_L1(SIGN_dbeta_L1_netPar0),
	.SIGN_dalpha_L2_j_0(SIGN_dalpha_L2_j_0_netPar0), .SIGN_dalpha_L2_j_1(SIGN_dalpha_L2_j_1_netPar0), .SIGN_dalpha_L2_j_2(SIGN_dalpha_L2_j_2_netPar0), .SIGN_dalpha_L2_j_3(SIGN_dalpha_L2_j_3_netPar0), .SIGN_dalpha_L2_j_4(SIGN_dalpha_L2_j_4_netPar0), .SIGN_dalpha_L2_j_5(SIGN_dalpha_L2_j_5_netPar0), .SIGN_dalpha_L2_j_6(SIGN_dalpha_L2_j_6_netPar0), .SIGN_dalpha_L2_j_7(SIGN_dalpha_L2_j_7_netPar0),
	.SIGN_dbeta_L2(SIGN_dbeta_L2_netPar0),
	.SIGN_dalpha_L3_j_0(SIGN_dalpha_L3_j_0_netPar0), .SIGN_dalpha_L3_j_1(SIGN_dalpha_L3_j_1_netPar0), .SIGN_dalpha_L3_j_2(SIGN_dalpha_L3_j_2_netPar0), .SIGN_dalpha_L3_j_3(SIGN_dalpha_L3_j_3_netPar0), .SIGN_dalpha_L3_j_4(SIGN_dalpha_L3_j_4_netPar0),
	.SIGN_dbeta_L3(SIGN_dbeta_L3_netPar0),
	.eps(eps_netPar0),
	.R_BP0(R0_ADDSUB_BP_netPar0), .R_BP1(R1_ADDSUB_BP_netPar0), .R_BP2(R2_ADDSUB_BP_netPar0), .R_BP3(R3_ADDSUB_BP_netPar0), .R_BP4(R4_ADDSUB_BP_netPar0), .R_BP5(R5_ADDSUB_BP_netPar0), .R_BP6(R6_ADDSUB_BP_netPar0), .R_BP7(R7_ADDSUB_BP_netPar0), .R_BP8(R8_ADDSUB_BP_netPar0), 
	.CLK(CLK), .BP_FRAME(INIT), .FP_FRAME(INIT), .INIT(INIT)
);

// Back Propagation Module 1 :
BCKDPROP BCKPROP1(
	.alpha_L1_j_0(alpha_L1_j_0), .alpha_L1_j_1(alpha_L1_j_1), .alpha_L1_j_2(alpha_L1_j_2), .alpha_L1_j_3(alpha_L1_j_3), .alpha_L1_j_4(alpha_L1_j_4), .alpha_L1_j_5(alpha_L1_j_5), .alpha_L1_j_6(alpha_L1_j_6), .alpha_L1_j_7(alpha_L1_j_7), .alpha_L1_j_8(alpha_L1_j_8), .alpha_L1_j_9(alpha_L1_j_9), .alpha_L1_j_10(alpha_L1_j_10), .alpha_L1_j_11(alpha_L1_j_11), .alpha_L1_j_12(alpha_L1_j_12), .alpha_L1_j_13(alpha_L1_j_13), .alpha_L1_j_14(alpha_L1_j_14), .alpha_L1_j_15(alpha_L1_j_15), .alpha_L1_j_16(alpha_L1_j_16), .alpha_L1_j_17(alpha_L1_j_17), .alpha_L1_j_18(alpha_L1_j_18), .alpha_L1_j_19(alpha_L1_j_19), .alpha_L1_j_20(alpha_L1_j_20), .alpha_L1_j_21(alpha_L1_j_21), .alpha_L1_j_22(alpha_L1_j_22), .alpha_L1_j_23(alpha_L1_j_23), .alpha_L1_j_24(alpha_L1_j_24),
	.beta_L1(beta_L1),
	.alpha_L2_j_0(alpha_L2_j_0), .alpha_L2_j_1(alpha_L2_j_1), .alpha_L2_j_2(alpha_L2_j_2), .alpha_L2_j_3(alpha_L2_j_3), .alpha_L2_j_4(alpha_L2_j_4), .alpha_L2_j_5(alpha_L2_j_5), .alpha_L2_j_6(alpha_L2_j_6), .alpha_L2_j_7(alpha_L2_j_7),
	.beta_L2(beta_L2),
	.alpha_L3_j_0(alpha_L3_j_0), .alpha_L3_j_1(alpha_L3_j_1), .alpha_L3_j_2(alpha_L3_j_2), .alpha_L3_j_3(alpha_L3_j_3), .alpha_L3_j_4(alpha_L3_j_4),
	.beta_L3(beta_L3),
	.SIGN_alpha_L1_j_0(SIGN_alpha_L1_j_0), .SIGN_alpha_L1_j_1(SIGN_alpha_L1_j_1), .SIGN_alpha_L1_j_2(SIGN_alpha_L1_j_2), .SIGN_alpha_L1_j_3(SIGN_alpha_L1_j_3), .SIGN_alpha_L1_j_4(SIGN_alpha_L1_j_4), .SIGN_alpha_L1_j_5(SIGN_alpha_L1_j_5), .SIGN_alpha_L1_j_6(SIGN_alpha_L1_j_6), .SIGN_alpha_L1_j_7(SIGN_alpha_L1_j_7), .SIGN_alpha_L1_j_8(SIGN_alpha_L1_j_8), .SIGN_alpha_L1_j_9(SIGN_alpha_L1_j_9), .SIGN_alpha_L1_j_10(SIGN_alpha_L1_j_10), .SIGN_alpha_L1_j_11(SIGN_alpha_L1_j_11), .SIGN_alpha_L1_j_12(SIGN_alpha_L1_j_12), .SIGN_alpha_L1_j_13(SIGN_alpha_L1_j_13), .SIGN_alpha_L1_j_14(SIGN_alpha_L1_j_14), .SIGN_alpha_L1_j_15(SIGN_alpha_L1_j_15), .SIGN_alpha_L1_j_16(SIGN_alpha_L1_j_16), .SIGN_alpha_L1_j_17(SIGN_alpha_L1_j_17), .SIGN_alpha_L1_j_18(SIGN_alpha_L1_j_18), .SIGN_alpha_L1_j_19(SIGN_alpha_L1_j_19), .SIGN_alpha_L1_j_20(SIGN_alpha_L1_j_20), .SIGN_alpha_L1_j_21(SIGN_alpha_L1_j_21), .SIGN_alpha_L1_j_22(SIGN_alpha_L1_j_22), .SIGN_alpha_L1_j_23(SIGN_alpha_L1_j_23), .SIGN_alpha_L1_j_24(SIGN_alpha_L1_j_24),
	.SIGN_beta_L1(SIGN_beta_L1),
	.SIGN_alpha_L2_j_0(SIGN_alpha_L2_j_0), .SIGN_alpha_L2_j_1(SIGN_alpha_L2_j_1), .SIGN_alpha_L2_j_2(SIGN_alpha_L2_j_2), .SIGN_alpha_L2_j_3(SIGN_alpha_L2_j_3), .SIGN_alpha_L2_j_4(SIGN_alpha_L2_j_4), .SIGN_alpha_L2_j_5(SIGN_alpha_L2_j_5), .SIGN_alpha_L2_j_6(SIGN_alpha_L2_j_6), .SIGN_alpha_L2_j_7(SIGN_alpha_L2_j_7),
	.SIGN_beta_L2(SIGN_beta_L2),
	.SIGN_alpha_L3_j_0(SIGN_alpha_L3_j_0), .SIGN_alpha_L3_j_1(SIGN_alpha_L3_j_1), .SIGN_alpha_L3_j_2(SIGN_alpha_L3_j_2), .SIGN_alpha_L3_j_3(SIGN_alpha_L3_j_3), .SIGN_alpha_L3_j_4(SIGN_alpha_L3_j_4),
	.SIGN_beta_L3(SIGN_beta_L3),
	.a_L0(a_L0_netPar1),
	.a_L1(a_L1_netPar1),
	.a_L2(a_L2_netPar1),
	.a_L3(a_L3_netPar1),
	.z_L0(z_L0_netPar1),
	.z_L1(z_L1_netPar1),
	.z_L2(z_L2_netPar1),
	.z_L3(z_L3_netPar1),
	.zp_L0(zp_L0_netPar1),
	.zp_L1(zp_L1_netPar1),
	.zp_L2(zp_L2_netPar1),
	.zp_L3(zp_L3_netPar1),
	.SIGN_L3(SIGN_L3_netPar1),
	.dalpha_L1_j_0(dalpha_L1_j_0_netPar1), .dalpha_L1_j_1(dalpha_L1_j_1_netPar1), .dalpha_L1_j_2(dalpha_L1_j_2_netPar1), .dalpha_L1_j_3(dalpha_L1_j_3_netPar1), .dalpha_L1_j_4(dalpha_L1_j_4_netPar1), .dalpha_L1_j_5(dalpha_L1_j_5_netPar1), .dalpha_L1_j_6(dalpha_L1_j_6_netPar1), .dalpha_L1_j_7(dalpha_L1_j_7_netPar1), .dalpha_L1_j_8(dalpha_L1_j_8_netPar1), .dalpha_L1_j_9(dalpha_L1_j_9_netPar1), .dalpha_L1_j_10(dalpha_L1_j_10_netPar1), .dalpha_L1_j_11(dalpha_L1_j_11_netPar1), .dalpha_L1_j_12(dalpha_L1_j_12_netPar1), .dalpha_L1_j_13(dalpha_L1_j_13_netPar1), .dalpha_L1_j_14(dalpha_L1_j_14_netPar1), .dalpha_L1_j_15(dalpha_L1_j_15_netPar1), .dalpha_L1_j_16(dalpha_L1_j_16_netPar1), .dalpha_L1_j_17(dalpha_L1_j_17_netPar1), .dalpha_L1_j_18(dalpha_L1_j_18_netPar1), .dalpha_L1_j_19(dalpha_L1_j_19_netPar1), .dalpha_L1_j_20(dalpha_L1_j_20_netPar1), .dalpha_L1_j_21(dalpha_L1_j_21_netPar1), .dalpha_L1_j_22(dalpha_L1_j_22_netPar1), .dalpha_L1_j_23(dalpha_L1_j_23_netPar1), .dalpha_L1_j_24(dalpha_L1_j_24_netPar1),
	.dbeta_L1(dbeta_L1_netPar1),
	.dalpha_L2_j_0(dalpha_L2_j_0_netPar1), .dalpha_L2_j_1(dalpha_L2_j_1_netPar1), .dalpha_L2_j_2(dalpha_L2_j_2_netPar1), .dalpha_L2_j_3(dalpha_L2_j_3_netPar1), .dalpha_L2_j_4(dalpha_L2_j_4_netPar1), .dalpha_L2_j_5(dalpha_L2_j_5_netPar1), .dalpha_L2_j_6(dalpha_L2_j_6_netPar1), .dalpha_L2_j_7(dalpha_L2_j_7_netPar1),
	.dbeta_L2(dbeta_L2_netPar1),
	.dalpha_L3_j_0(dalpha_L3_j_0_netPar1), .dalpha_L3_j_1(dalpha_L3_j_1_netPar1), .dalpha_L3_j_2(dalpha_L3_j_2_netPar1), .dalpha_L3_j_3(dalpha_L3_j_3_netPar1), .dalpha_L3_j_4(dalpha_L3_j_4_netPar1),
	.dbeta_L3(dbeta_L3_netPar1),
	.SIGN_dalpha_L1_j_0(SIGN_dalpha_L1_j_0_netPar1), .SIGN_dalpha_L1_j_1(SIGN_dalpha_L1_j_1_netPar1), .SIGN_dalpha_L1_j_2(SIGN_dalpha_L1_j_2_netPar1), .SIGN_dalpha_L1_j_3(SIGN_dalpha_L1_j_3_netPar1), .SIGN_dalpha_L1_j_4(SIGN_dalpha_L1_j_4_netPar1), .SIGN_dalpha_L1_j_5(SIGN_dalpha_L1_j_5_netPar1), .SIGN_dalpha_L1_j_6(SIGN_dalpha_L1_j_6_netPar1), .SIGN_dalpha_L1_j_7(SIGN_dalpha_L1_j_7_netPar1), .SIGN_dalpha_L1_j_8(SIGN_dalpha_L1_j_8_netPar1), .SIGN_dalpha_L1_j_9(SIGN_dalpha_L1_j_9_netPar1), .SIGN_dalpha_L1_j_10(SIGN_dalpha_L1_j_10_netPar1), .SIGN_dalpha_L1_j_11(SIGN_dalpha_L1_j_11_netPar1), .SIGN_dalpha_L1_j_12(SIGN_dalpha_L1_j_12_netPar1), .SIGN_dalpha_L1_j_13(SIGN_dalpha_L1_j_13_netPar1), .SIGN_dalpha_L1_j_14(SIGN_dalpha_L1_j_14_netPar1), .SIGN_dalpha_L1_j_15(SIGN_dalpha_L1_j_15_netPar1), .SIGN_dalpha_L1_j_16(SIGN_dalpha_L1_j_16_netPar1), .SIGN_dalpha_L1_j_17(SIGN_dalpha_L1_j_17_netPar1), .SIGN_dalpha_L1_j_18(SIGN_dalpha_L1_j_18_netPar1), .SIGN_dalpha_L1_j_19(SIGN_dalpha_L1_j_19_netPar1), .SIGN_dalpha_L1_j_20(SIGN_dalpha_L1_j_20_netPar1), .SIGN_dalpha_L1_j_21(SIGN_dalpha_L1_j_21_netPar1), .SIGN_dalpha_L1_j_22(SIGN_dalpha_L1_j_22_netPar1), .SIGN_dalpha_L1_j_23(SIGN_dalpha_L1_j_23_netPar1), .SIGN_dalpha_L1_j_24(SIGN_dalpha_L1_j_24_netPar1),
	.SIGN_dbeta_L1(SIGN_dbeta_L1_netPar1),
	.SIGN_dalpha_L2_j_0(SIGN_dalpha_L2_j_0_netPar1), .SIGN_dalpha_L2_j_1(SIGN_dalpha_L2_j_1_netPar1), .SIGN_dalpha_L2_j_2(SIGN_dalpha_L2_j_2_netPar1), .SIGN_dalpha_L2_j_3(SIGN_dalpha_L2_j_3_netPar1), .SIGN_dalpha_L2_j_4(SIGN_dalpha_L2_j_4_netPar1), .SIGN_dalpha_L2_j_5(SIGN_dalpha_L2_j_5_netPar1), .SIGN_dalpha_L2_j_6(SIGN_dalpha_L2_j_6_netPar1), .SIGN_dalpha_L2_j_7(SIGN_dalpha_L2_j_7_netPar1),
	.SIGN_dbeta_L2(SIGN_dbeta_L2_netPar1),
	.SIGN_dalpha_L3_j_0(SIGN_dalpha_L3_j_0_netPar1), .SIGN_dalpha_L3_j_1(SIGN_dalpha_L3_j_1_netPar1), .SIGN_dalpha_L3_j_2(SIGN_dalpha_L3_j_2_netPar1), .SIGN_dalpha_L3_j_3(SIGN_dalpha_L3_j_3_netPar1), .SIGN_dalpha_L3_j_4(SIGN_dalpha_L3_j_4_netPar1),
	.SIGN_dbeta_L3(SIGN_dbeta_L3_netPar1),
	.eps(eps_netPar1),
	.R_BP0(R0_ADDSUB_BP_netPar1), .R_BP1(R1_ADDSUB_BP_netPar1), .R_BP2(R2_ADDSUB_BP_netPar1), .R_BP3(R3_ADDSUB_BP_netPar1), .R_BP4(R4_ADDSUB_BP_netPar1), .R_BP5(R5_ADDSUB_BP_netPar1), .R_BP6(R6_ADDSUB_BP_netPar1), .R_BP7(R7_ADDSUB_BP_netPar1), .R_BP8(R8_ADDSUB_BP_netPar1), 
	.CLK(CLK), .BP_FRAME(INIT), .FP_FRAME(INIT), .INIT(INIT)
);

// Back Propagation Module 2 :
BCKDPROP BCKPROP2(
	.alpha_L1_j_0(alpha_L1_j_0), .alpha_L1_j_1(alpha_L1_j_1), .alpha_L1_j_2(alpha_L1_j_2), .alpha_L1_j_3(alpha_L1_j_3), .alpha_L1_j_4(alpha_L1_j_4), .alpha_L1_j_5(alpha_L1_j_5), .alpha_L1_j_6(alpha_L1_j_6), .alpha_L1_j_7(alpha_L1_j_7), .alpha_L1_j_8(alpha_L1_j_8), .alpha_L1_j_9(alpha_L1_j_9), .alpha_L1_j_10(alpha_L1_j_10), .alpha_L1_j_11(alpha_L1_j_11), .alpha_L1_j_12(alpha_L1_j_12), .alpha_L1_j_13(alpha_L1_j_13), .alpha_L1_j_14(alpha_L1_j_14), .alpha_L1_j_15(alpha_L1_j_15), .alpha_L1_j_16(alpha_L1_j_16), .alpha_L1_j_17(alpha_L1_j_17), .alpha_L1_j_18(alpha_L1_j_18), .alpha_L1_j_19(alpha_L1_j_19), .alpha_L1_j_20(alpha_L1_j_20), .alpha_L1_j_21(alpha_L1_j_21), .alpha_L1_j_22(alpha_L1_j_22), .alpha_L1_j_23(alpha_L1_j_23), .alpha_L1_j_24(alpha_L1_j_24),
	.beta_L1(beta_L1),
	.alpha_L2_j_0(alpha_L2_j_0), .alpha_L2_j_1(alpha_L2_j_1), .alpha_L2_j_2(alpha_L2_j_2), .alpha_L2_j_3(alpha_L2_j_3), .alpha_L2_j_4(alpha_L2_j_4), .alpha_L2_j_5(alpha_L2_j_5), .alpha_L2_j_6(alpha_L2_j_6), .alpha_L2_j_7(alpha_L2_j_7),
	.beta_L2(beta_L2),
	.alpha_L3_j_0(alpha_L3_j_0), .alpha_L3_j_1(alpha_L3_j_1), .alpha_L3_j_2(alpha_L3_j_2), .alpha_L3_j_3(alpha_L3_j_3), .alpha_L3_j_4(alpha_L3_j_4),
	.beta_L3(beta_L3),
	.SIGN_alpha_L1_j_0(SIGN_alpha_L1_j_0), .SIGN_alpha_L1_j_1(SIGN_alpha_L1_j_1), .SIGN_alpha_L1_j_2(SIGN_alpha_L1_j_2), .SIGN_alpha_L1_j_3(SIGN_alpha_L1_j_3), .SIGN_alpha_L1_j_4(SIGN_alpha_L1_j_4), .SIGN_alpha_L1_j_5(SIGN_alpha_L1_j_5), .SIGN_alpha_L1_j_6(SIGN_alpha_L1_j_6), .SIGN_alpha_L1_j_7(SIGN_alpha_L1_j_7), .SIGN_alpha_L1_j_8(SIGN_alpha_L1_j_8), .SIGN_alpha_L1_j_9(SIGN_alpha_L1_j_9), .SIGN_alpha_L1_j_10(SIGN_alpha_L1_j_10), .SIGN_alpha_L1_j_11(SIGN_alpha_L1_j_11), .SIGN_alpha_L1_j_12(SIGN_alpha_L1_j_12), .SIGN_alpha_L1_j_13(SIGN_alpha_L1_j_13), .SIGN_alpha_L1_j_14(SIGN_alpha_L1_j_14), .SIGN_alpha_L1_j_15(SIGN_alpha_L1_j_15), .SIGN_alpha_L1_j_16(SIGN_alpha_L1_j_16), .SIGN_alpha_L1_j_17(SIGN_alpha_L1_j_17), .SIGN_alpha_L1_j_18(SIGN_alpha_L1_j_18), .SIGN_alpha_L1_j_19(SIGN_alpha_L1_j_19), .SIGN_alpha_L1_j_20(SIGN_alpha_L1_j_20), .SIGN_alpha_L1_j_21(SIGN_alpha_L1_j_21), .SIGN_alpha_L1_j_22(SIGN_alpha_L1_j_22), .SIGN_alpha_L1_j_23(SIGN_alpha_L1_j_23), .SIGN_alpha_L1_j_24(SIGN_alpha_L1_j_24),
	.SIGN_beta_L1(SIGN_beta_L1),
	.SIGN_alpha_L2_j_0(SIGN_alpha_L2_j_0), .SIGN_alpha_L2_j_1(SIGN_alpha_L2_j_1), .SIGN_alpha_L2_j_2(SIGN_alpha_L2_j_2), .SIGN_alpha_L2_j_3(SIGN_alpha_L2_j_3), .SIGN_alpha_L2_j_4(SIGN_alpha_L2_j_4), .SIGN_alpha_L2_j_5(SIGN_alpha_L2_j_5), .SIGN_alpha_L2_j_6(SIGN_alpha_L2_j_6), .SIGN_alpha_L2_j_7(SIGN_alpha_L2_j_7),
	.SIGN_beta_L2(SIGN_beta_L2),
	.SIGN_alpha_L3_j_0(SIGN_alpha_L3_j_0), .SIGN_alpha_L3_j_1(SIGN_alpha_L3_j_1), .SIGN_alpha_L3_j_2(SIGN_alpha_L3_j_2), .SIGN_alpha_L3_j_3(SIGN_alpha_L3_j_3), .SIGN_alpha_L3_j_4(SIGN_alpha_L3_j_4),
	.SIGN_beta_L3(SIGN_beta_L3),
	.a_L0(a_L0_netPar2),
	.a_L1(a_L1_netPar2),
	.a_L2(a_L2_netPar2),
	.a_L3(a_L3_netPar2),
	.z_L0(z_L0_netPar2),
	.z_L1(z_L1_netPar2),
	.z_L2(z_L2_netPar2),
	.z_L3(z_L3_netPar2),
	.zp_L0(zp_L0_netPar2),
	.zp_L1(zp_L1_netPar2),
	.zp_L2(zp_L2_netPar2),
	.zp_L3(zp_L3_netPar2),
	.SIGN_L3(SIGN_L3_netPar2),
	.dalpha_L1_j_0(dalpha_L1_j_0_netPar2), .dalpha_L1_j_1(dalpha_L1_j_1_netPar2), .dalpha_L1_j_2(dalpha_L1_j_2_netPar2), .dalpha_L1_j_3(dalpha_L1_j_3_netPar2), .dalpha_L1_j_4(dalpha_L1_j_4_netPar2), .dalpha_L1_j_5(dalpha_L1_j_5_netPar2), .dalpha_L1_j_6(dalpha_L1_j_6_netPar2), .dalpha_L1_j_7(dalpha_L1_j_7_netPar2), .dalpha_L1_j_8(dalpha_L1_j_8_netPar2), .dalpha_L1_j_9(dalpha_L1_j_9_netPar2), .dalpha_L1_j_10(dalpha_L1_j_10_netPar2), .dalpha_L1_j_11(dalpha_L1_j_11_netPar2), .dalpha_L1_j_12(dalpha_L1_j_12_netPar2), .dalpha_L1_j_13(dalpha_L1_j_13_netPar2), .dalpha_L1_j_14(dalpha_L1_j_14_netPar2), .dalpha_L1_j_15(dalpha_L1_j_15_netPar2), .dalpha_L1_j_16(dalpha_L1_j_16_netPar2), .dalpha_L1_j_17(dalpha_L1_j_17_netPar2), .dalpha_L1_j_18(dalpha_L1_j_18_netPar2), .dalpha_L1_j_19(dalpha_L1_j_19_netPar2), .dalpha_L1_j_20(dalpha_L1_j_20_netPar2), .dalpha_L1_j_21(dalpha_L1_j_21_netPar2), .dalpha_L1_j_22(dalpha_L1_j_22_netPar2), .dalpha_L1_j_23(dalpha_L1_j_23_netPar2), .dalpha_L1_j_24(dalpha_L1_j_24_netPar2),
	.dbeta_L1(dbeta_L1_netPar2),
	.dalpha_L2_j_0(dalpha_L2_j_0_netPar2), .dalpha_L2_j_1(dalpha_L2_j_1_netPar2), .dalpha_L2_j_2(dalpha_L2_j_2_netPar2), .dalpha_L2_j_3(dalpha_L2_j_3_netPar2), .dalpha_L2_j_4(dalpha_L2_j_4_netPar2), .dalpha_L2_j_5(dalpha_L2_j_5_netPar2), .dalpha_L2_j_6(dalpha_L2_j_6_netPar2), .dalpha_L2_j_7(dalpha_L2_j_7_netPar2),
	.dbeta_L2(dbeta_L2_netPar2),
	.dalpha_L3_j_0(dalpha_L3_j_0_netPar2), .dalpha_L3_j_1(dalpha_L3_j_1_netPar2), .dalpha_L3_j_2(dalpha_L3_j_2_netPar2), .dalpha_L3_j_3(dalpha_L3_j_3_netPar2), .dalpha_L3_j_4(dalpha_L3_j_4_netPar2),
	.dbeta_L3(dbeta_L3_netPar2),
	.SIGN_dalpha_L1_j_0(SIGN_dalpha_L1_j_0_netPar2), .SIGN_dalpha_L1_j_1(SIGN_dalpha_L1_j_1_netPar2), .SIGN_dalpha_L1_j_2(SIGN_dalpha_L1_j_2_netPar2), .SIGN_dalpha_L1_j_3(SIGN_dalpha_L1_j_3_netPar2), .SIGN_dalpha_L1_j_4(SIGN_dalpha_L1_j_4_netPar2), .SIGN_dalpha_L1_j_5(SIGN_dalpha_L1_j_5_netPar2), .SIGN_dalpha_L1_j_6(SIGN_dalpha_L1_j_6_netPar2), .SIGN_dalpha_L1_j_7(SIGN_dalpha_L1_j_7_netPar2), .SIGN_dalpha_L1_j_8(SIGN_dalpha_L1_j_8_netPar2), .SIGN_dalpha_L1_j_9(SIGN_dalpha_L1_j_9_netPar2), .SIGN_dalpha_L1_j_10(SIGN_dalpha_L1_j_10_netPar2), .SIGN_dalpha_L1_j_11(SIGN_dalpha_L1_j_11_netPar2), .SIGN_dalpha_L1_j_12(SIGN_dalpha_L1_j_12_netPar2), .SIGN_dalpha_L1_j_13(SIGN_dalpha_L1_j_13_netPar2), .SIGN_dalpha_L1_j_14(SIGN_dalpha_L1_j_14_netPar2), .SIGN_dalpha_L1_j_15(SIGN_dalpha_L1_j_15_netPar2), .SIGN_dalpha_L1_j_16(SIGN_dalpha_L1_j_16_netPar2), .SIGN_dalpha_L1_j_17(SIGN_dalpha_L1_j_17_netPar2), .SIGN_dalpha_L1_j_18(SIGN_dalpha_L1_j_18_netPar2), .SIGN_dalpha_L1_j_19(SIGN_dalpha_L1_j_19_netPar2), .SIGN_dalpha_L1_j_20(SIGN_dalpha_L1_j_20_netPar2), .SIGN_dalpha_L1_j_21(SIGN_dalpha_L1_j_21_netPar2), .SIGN_dalpha_L1_j_22(SIGN_dalpha_L1_j_22_netPar2), .SIGN_dalpha_L1_j_23(SIGN_dalpha_L1_j_23_netPar2), .SIGN_dalpha_L1_j_24(SIGN_dalpha_L1_j_24_netPar2),
	.SIGN_dbeta_L1(SIGN_dbeta_L1_netPar2),
	.SIGN_dalpha_L2_j_0(SIGN_dalpha_L2_j_0_netPar2), .SIGN_dalpha_L2_j_1(SIGN_dalpha_L2_j_1_netPar2), .SIGN_dalpha_L2_j_2(SIGN_dalpha_L2_j_2_netPar2), .SIGN_dalpha_L2_j_3(SIGN_dalpha_L2_j_3_netPar2), .SIGN_dalpha_L2_j_4(SIGN_dalpha_L2_j_4_netPar2), .SIGN_dalpha_L2_j_5(SIGN_dalpha_L2_j_5_netPar2), .SIGN_dalpha_L2_j_6(SIGN_dalpha_L2_j_6_netPar2), .SIGN_dalpha_L2_j_7(SIGN_dalpha_L2_j_7_netPar2),
	.SIGN_dbeta_L2(SIGN_dbeta_L2_netPar2),
	.SIGN_dalpha_L3_j_0(SIGN_dalpha_L3_j_0_netPar2), .SIGN_dalpha_L3_j_1(SIGN_dalpha_L3_j_1_netPar2), .SIGN_dalpha_L3_j_2(SIGN_dalpha_L3_j_2_netPar2), .SIGN_dalpha_L3_j_3(SIGN_dalpha_L3_j_3_netPar2), .SIGN_dalpha_L3_j_4(SIGN_dalpha_L3_j_4_netPar2),
	.SIGN_dbeta_L3(SIGN_dbeta_L3_netPar2),
	.eps(eps_netPar2),
	.R_BP0(R0_ADDSUB_BP_netPar2), .R_BP1(R1_ADDSUB_BP_netPar2), .R_BP2(R2_ADDSUB_BP_netPar2), .R_BP3(R3_ADDSUB_BP_netPar2), .R_BP4(R4_ADDSUB_BP_netPar2), .R_BP5(R5_ADDSUB_BP_netPar2), .R_BP6(R6_ADDSUB_BP_netPar2), .R_BP7(R7_ADDSUB_BP_netPar2), .R_BP8(R8_ADDSUB_BP_netPar2), 
	.CLK(CLK), .BP_FRAME(INIT), .FP_FRAME(INIT), .INIT(INIT)
);

// Cost Function Module 0:
COSTMOD COSTMOD0(
	.Y(Y_netPar0),
	.a_out(a_L3_netPar0),
	.R0(R0_ADDSUB_error_netPar0), .R1(R1_ADDSUB_error_netPar0), .R2(R2_ADDSUB_error_netPar0), 
	.SIGN_L3(SIGN_L3_netPar0),
	.eps(eps_netPar0),
	.CLK(CLK), .CLK_TRAINING_flag(TRAINING_PRESET2), .INIT(INIT|FP_FRAME)
);

// Cost Function Module 1:
COSTMOD COSTMOD1(
	.Y(Y_netPar1),
	.a_out(a_L3_netPar1),
	.R0(R0_ADDSUB_error_netPar1), .R1(R1_ADDSUB_error_netPar1), .R2(R2_ADDSUB_error_netPar1), 
	.SIGN_L3(SIGN_L3_netPar1),
	.eps(eps_netPar1),
	.CLK(CLK), .CLK_TRAINING_flag(TRAINING_PRESET2), .INIT(INIT|FP_FRAME)
);

// Cost Function Module 2:
COSTMOD COSTMOD2(
	.Y(Y_netPar2),
	.a_out(a_L3_netPar2),
	.R0(R0_ADDSUB_error_netPar2), .R1(R1_ADDSUB_error_netPar2), .R2(R2_ADDSUB_error_netPar2), 
	.SIGN_L3(SIGN_L3_netPar2),
	.eps(eps_netPar2),
	.CLK(CLK), .CLK_TRAINING_flag(TRAINING_PRESET2), .INIT(INIT|FP_FRAME)
);

// Network parallelization gradient compounding:
NETPAR_GRADIENT NETPAR_GRADIENT0(
	.dalpha_L1_j_0_netPar0(dalpha_L1_j_0_netPar0), .dalpha_L1_j_1_netPar0(dalpha_L1_j_1_netPar0), .dalpha_L1_j_2_netPar0(dalpha_L1_j_2_netPar0), .dalpha_L1_j_3_netPar0(dalpha_L1_j_3_netPar0), .dalpha_L1_j_4_netPar0(dalpha_L1_j_4_netPar0), .dalpha_L1_j_5_netPar0(dalpha_L1_j_5_netPar0), .dalpha_L1_j_6_netPar0(dalpha_L1_j_6_netPar0), .dalpha_L1_j_7_netPar0(dalpha_L1_j_7_netPar0), .dalpha_L1_j_8_netPar0(dalpha_L1_j_8_netPar0), .dalpha_L1_j_9_netPar0(dalpha_L1_j_9_netPar0), .dalpha_L1_j_10_netPar0(dalpha_L1_j_10_netPar0), .dalpha_L1_j_11_netPar0(dalpha_L1_j_11_netPar0), .dalpha_L1_j_12_netPar0(dalpha_L1_j_12_netPar0), .dalpha_L1_j_13_netPar0(dalpha_L1_j_13_netPar0), .dalpha_L1_j_14_netPar0(dalpha_L1_j_14_netPar0), .dalpha_L1_j_15_netPar0(dalpha_L1_j_15_netPar0), .dalpha_L1_j_16_netPar0(dalpha_L1_j_16_netPar0), .dalpha_L1_j_17_netPar0(dalpha_L1_j_17_netPar0), .dalpha_L1_j_18_netPar0(dalpha_L1_j_18_netPar0), .dalpha_L1_j_19_netPar0(dalpha_L1_j_19_netPar0), .dalpha_L1_j_20_netPar0(dalpha_L1_j_20_netPar0), .dalpha_L1_j_21_netPar0(dalpha_L1_j_21_netPar0), .dalpha_L1_j_22_netPar0(dalpha_L1_j_22_netPar0), .dalpha_L1_j_23_netPar0(dalpha_L1_j_23_netPar0), .dalpha_L1_j_24_netPar0(dalpha_L1_j_24_netPar0),
	.dbeta_L1_netPar0(dbeta_L1_netPar0),
	.dalpha_L2_j_0_netPar0(dalpha_L2_j_0_netPar0), .dalpha_L2_j_1_netPar0(dalpha_L2_j_1_netPar0), .dalpha_L2_j_2_netPar0(dalpha_L2_j_2_netPar0), .dalpha_L2_j_3_netPar0(dalpha_L2_j_3_netPar0), .dalpha_L2_j_4_netPar0(dalpha_L2_j_4_netPar0), .dalpha_L2_j_5_netPar0(dalpha_L2_j_5_netPar0), .dalpha_L2_j_6_netPar0(dalpha_L2_j_6_netPar0), .dalpha_L2_j_7_netPar0(dalpha_L2_j_7_netPar0),
	.dbeta_L2_netPar0(dbeta_L2_netPar0),
	.dalpha_L3_j_0_netPar0(dalpha_L3_j_0_netPar0), .dalpha_L3_j_1_netPar0(dalpha_L3_j_1_netPar0), .dalpha_L3_j_2_netPar0(dalpha_L3_j_2_netPar0), .dalpha_L3_j_3_netPar0(dalpha_L3_j_3_netPar0), .dalpha_L3_j_4_netPar0(dalpha_L3_j_4_netPar0),
	.dbeta_L3_netPar0(dbeta_L3_netPar0),
	.SIGN_dalpha_L1_j_0_netPar0(SIGN_dalpha_L1_j_0_netPar0), .SIGN_dalpha_L1_j_1_netPar0(SIGN_dalpha_L1_j_1_netPar0), .SIGN_dalpha_L1_j_2_netPar0(SIGN_dalpha_L1_j_2_netPar0), .SIGN_dalpha_L1_j_3_netPar0(SIGN_dalpha_L1_j_3_netPar0), .SIGN_dalpha_L1_j_4_netPar0(SIGN_dalpha_L1_j_4_netPar0), .SIGN_dalpha_L1_j_5_netPar0(SIGN_dalpha_L1_j_5_netPar0), .SIGN_dalpha_L1_j_6_netPar0(SIGN_dalpha_L1_j_6_netPar0), .SIGN_dalpha_L1_j_7_netPar0(SIGN_dalpha_L1_j_7_netPar0), .SIGN_dalpha_L1_j_8_netPar0(SIGN_dalpha_L1_j_8_netPar0), .SIGN_dalpha_L1_j_9_netPar0(SIGN_dalpha_L1_j_9_netPar0), .SIGN_dalpha_L1_j_10_netPar0(SIGN_dalpha_L1_j_10_netPar0), .SIGN_dalpha_L1_j_11_netPar0(SIGN_dalpha_L1_j_11_netPar0), .SIGN_dalpha_L1_j_12_netPar0(SIGN_dalpha_L1_j_12_netPar0), .SIGN_dalpha_L1_j_13_netPar0(SIGN_dalpha_L1_j_13_netPar0), .SIGN_dalpha_L1_j_14_netPar0(SIGN_dalpha_L1_j_14_netPar0), .SIGN_dalpha_L1_j_15_netPar0(SIGN_dalpha_L1_j_15_netPar0), .SIGN_dalpha_L1_j_16_netPar0(SIGN_dalpha_L1_j_16_netPar0), .SIGN_dalpha_L1_j_17_netPar0(SIGN_dalpha_L1_j_17_netPar0), .SIGN_dalpha_L1_j_18_netPar0(SIGN_dalpha_L1_j_18_netPar0), .SIGN_dalpha_L1_j_19_netPar0(SIGN_dalpha_L1_j_19_netPar0), .SIGN_dalpha_L1_j_20_netPar0(SIGN_dalpha_L1_j_20_netPar0), .SIGN_dalpha_L1_j_21_netPar0(SIGN_dalpha_L1_j_21_netPar0), .SIGN_dalpha_L1_j_22_netPar0(SIGN_dalpha_L1_j_22_netPar0), .SIGN_dalpha_L1_j_23_netPar0(SIGN_dalpha_L1_j_23_netPar0), .SIGN_dalpha_L1_j_24_netPar0(SIGN_dalpha_L1_j_24_netPar0),
	.SIGN_dbeta_L1_netPar0(SIGN_dbeta_L1_netPar0),
	.SIGN_dalpha_L2_j_0_netPar0(SIGN_dalpha_L2_j_0_netPar0), .SIGN_dalpha_L2_j_1_netPar0(SIGN_dalpha_L2_j_1_netPar0), .SIGN_dalpha_L2_j_2_netPar0(SIGN_dalpha_L2_j_2_netPar0), .SIGN_dalpha_L2_j_3_netPar0(SIGN_dalpha_L2_j_3_netPar0), .SIGN_dalpha_L2_j_4_netPar0(SIGN_dalpha_L2_j_4_netPar0), .SIGN_dalpha_L2_j_5_netPar0(SIGN_dalpha_L2_j_5_netPar0), .SIGN_dalpha_L2_j_6_netPar0(SIGN_dalpha_L2_j_6_netPar0), .SIGN_dalpha_L2_j_7_netPar0(SIGN_dalpha_L2_j_7_netPar0),
	.SIGN_dbeta_L2_netPar0(SIGN_dbeta_L2_netPar0),
	.SIGN_dalpha_L3_j_0_netPar0(SIGN_dalpha_L3_j_0_netPar0), .SIGN_dalpha_L3_j_1_netPar0(SIGN_dalpha_L3_j_1_netPar0), .SIGN_dalpha_L3_j_2_netPar0(SIGN_dalpha_L3_j_2_netPar0), .SIGN_dalpha_L3_j_3_netPar0(SIGN_dalpha_L3_j_3_netPar0), .SIGN_dalpha_L3_j_4_netPar0(SIGN_dalpha_L3_j_4_netPar0),
	.SIGN_dbeta_L3_netPar0(SIGN_dbeta_L3_netPar0),
	.dalpha_L1_j_0_netPar1(dalpha_L1_j_0_netPar1), .dalpha_L1_j_1_netPar1(dalpha_L1_j_1_netPar1), .dalpha_L1_j_2_netPar1(dalpha_L1_j_2_netPar1), .dalpha_L1_j_3_netPar1(dalpha_L1_j_3_netPar1), .dalpha_L1_j_4_netPar1(dalpha_L1_j_4_netPar1), .dalpha_L1_j_5_netPar1(dalpha_L1_j_5_netPar1), .dalpha_L1_j_6_netPar1(dalpha_L1_j_6_netPar1), .dalpha_L1_j_7_netPar1(dalpha_L1_j_7_netPar1), .dalpha_L1_j_8_netPar1(dalpha_L1_j_8_netPar1), .dalpha_L1_j_9_netPar1(dalpha_L1_j_9_netPar1), .dalpha_L1_j_10_netPar1(dalpha_L1_j_10_netPar1), .dalpha_L1_j_11_netPar1(dalpha_L1_j_11_netPar1), .dalpha_L1_j_12_netPar1(dalpha_L1_j_12_netPar1), .dalpha_L1_j_13_netPar1(dalpha_L1_j_13_netPar1), .dalpha_L1_j_14_netPar1(dalpha_L1_j_14_netPar1), .dalpha_L1_j_15_netPar1(dalpha_L1_j_15_netPar1), .dalpha_L1_j_16_netPar1(dalpha_L1_j_16_netPar1), .dalpha_L1_j_17_netPar1(dalpha_L1_j_17_netPar1), .dalpha_L1_j_18_netPar1(dalpha_L1_j_18_netPar1), .dalpha_L1_j_19_netPar1(dalpha_L1_j_19_netPar1), .dalpha_L1_j_20_netPar1(dalpha_L1_j_20_netPar1), .dalpha_L1_j_21_netPar1(dalpha_L1_j_21_netPar1), .dalpha_L1_j_22_netPar1(dalpha_L1_j_22_netPar1), .dalpha_L1_j_23_netPar1(dalpha_L1_j_23_netPar1), .dalpha_L1_j_24_netPar1(dalpha_L1_j_24_netPar1),
	.dbeta_L1_netPar1(dbeta_L1_netPar1),
	.dalpha_L2_j_0_netPar1(dalpha_L2_j_0_netPar1), .dalpha_L2_j_1_netPar1(dalpha_L2_j_1_netPar1), .dalpha_L2_j_2_netPar1(dalpha_L2_j_2_netPar1), .dalpha_L2_j_3_netPar1(dalpha_L2_j_3_netPar1), .dalpha_L2_j_4_netPar1(dalpha_L2_j_4_netPar1), .dalpha_L2_j_5_netPar1(dalpha_L2_j_5_netPar1), .dalpha_L2_j_6_netPar1(dalpha_L2_j_6_netPar1), .dalpha_L2_j_7_netPar1(dalpha_L2_j_7_netPar1),
	.dbeta_L2_netPar1(dbeta_L2_netPar1),
	.dalpha_L3_j_0_netPar1(dalpha_L3_j_0_netPar1), .dalpha_L3_j_1_netPar1(dalpha_L3_j_1_netPar1), .dalpha_L3_j_2_netPar1(dalpha_L3_j_2_netPar1), .dalpha_L3_j_3_netPar1(dalpha_L3_j_3_netPar1), .dalpha_L3_j_4_netPar1(dalpha_L3_j_4_netPar1),
	.dbeta_L3_netPar1(dbeta_L3_netPar1),
	.SIGN_dalpha_L1_j_0_netPar1(SIGN_dalpha_L1_j_0_netPar1), .SIGN_dalpha_L1_j_1_netPar1(SIGN_dalpha_L1_j_1_netPar1), .SIGN_dalpha_L1_j_2_netPar1(SIGN_dalpha_L1_j_2_netPar1), .SIGN_dalpha_L1_j_3_netPar1(SIGN_dalpha_L1_j_3_netPar1), .SIGN_dalpha_L1_j_4_netPar1(SIGN_dalpha_L1_j_4_netPar1), .SIGN_dalpha_L1_j_5_netPar1(SIGN_dalpha_L1_j_5_netPar1), .SIGN_dalpha_L1_j_6_netPar1(SIGN_dalpha_L1_j_6_netPar1), .SIGN_dalpha_L1_j_7_netPar1(SIGN_dalpha_L1_j_7_netPar1), .SIGN_dalpha_L1_j_8_netPar1(SIGN_dalpha_L1_j_8_netPar1), .SIGN_dalpha_L1_j_9_netPar1(SIGN_dalpha_L1_j_9_netPar1), .SIGN_dalpha_L1_j_10_netPar1(SIGN_dalpha_L1_j_10_netPar1), .SIGN_dalpha_L1_j_11_netPar1(SIGN_dalpha_L1_j_11_netPar1), .SIGN_dalpha_L1_j_12_netPar1(SIGN_dalpha_L1_j_12_netPar1), .SIGN_dalpha_L1_j_13_netPar1(SIGN_dalpha_L1_j_13_netPar1), .SIGN_dalpha_L1_j_14_netPar1(SIGN_dalpha_L1_j_14_netPar1), .SIGN_dalpha_L1_j_15_netPar1(SIGN_dalpha_L1_j_15_netPar1), .SIGN_dalpha_L1_j_16_netPar1(SIGN_dalpha_L1_j_16_netPar1), .SIGN_dalpha_L1_j_17_netPar1(SIGN_dalpha_L1_j_17_netPar1), .SIGN_dalpha_L1_j_18_netPar1(SIGN_dalpha_L1_j_18_netPar1), .SIGN_dalpha_L1_j_19_netPar1(SIGN_dalpha_L1_j_19_netPar1), .SIGN_dalpha_L1_j_20_netPar1(SIGN_dalpha_L1_j_20_netPar1), .SIGN_dalpha_L1_j_21_netPar1(SIGN_dalpha_L1_j_21_netPar1), .SIGN_dalpha_L1_j_22_netPar1(SIGN_dalpha_L1_j_22_netPar1), .SIGN_dalpha_L1_j_23_netPar1(SIGN_dalpha_L1_j_23_netPar1), .SIGN_dalpha_L1_j_24_netPar1(SIGN_dalpha_L1_j_24_netPar1),
	.SIGN_dbeta_L1_netPar1(SIGN_dbeta_L1_netPar1),
	.SIGN_dalpha_L2_j_0_netPar1(SIGN_dalpha_L2_j_0_netPar1), .SIGN_dalpha_L2_j_1_netPar1(SIGN_dalpha_L2_j_1_netPar1), .SIGN_dalpha_L2_j_2_netPar1(SIGN_dalpha_L2_j_2_netPar1), .SIGN_dalpha_L2_j_3_netPar1(SIGN_dalpha_L2_j_3_netPar1), .SIGN_dalpha_L2_j_4_netPar1(SIGN_dalpha_L2_j_4_netPar1), .SIGN_dalpha_L2_j_5_netPar1(SIGN_dalpha_L2_j_5_netPar1), .SIGN_dalpha_L2_j_6_netPar1(SIGN_dalpha_L2_j_6_netPar1), .SIGN_dalpha_L2_j_7_netPar1(SIGN_dalpha_L2_j_7_netPar1),
	.SIGN_dbeta_L2_netPar1(SIGN_dbeta_L2_netPar1),
	.SIGN_dalpha_L3_j_0_netPar1(SIGN_dalpha_L3_j_0_netPar1), .SIGN_dalpha_L3_j_1_netPar1(SIGN_dalpha_L3_j_1_netPar1), .SIGN_dalpha_L3_j_2_netPar1(SIGN_dalpha_L3_j_2_netPar1), .SIGN_dalpha_L3_j_3_netPar1(SIGN_dalpha_L3_j_3_netPar1), .SIGN_dalpha_L3_j_4_netPar1(SIGN_dalpha_L3_j_4_netPar1),
	.SIGN_dbeta_L3_netPar1(SIGN_dbeta_L3_netPar1),
	.dalpha_L1_j_0_netPar2(dalpha_L1_j_0_netPar2), .dalpha_L1_j_1_netPar2(dalpha_L1_j_1_netPar2), .dalpha_L1_j_2_netPar2(dalpha_L1_j_2_netPar2), .dalpha_L1_j_3_netPar2(dalpha_L1_j_3_netPar2), .dalpha_L1_j_4_netPar2(dalpha_L1_j_4_netPar2), .dalpha_L1_j_5_netPar2(dalpha_L1_j_5_netPar2), .dalpha_L1_j_6_netPar2(dalpha_L1_j_6_netPar2), .dalpha_L1_j_7_netPar2(dalpha_L1_j_7_netPar2), .dalpha_L1_j_8_netPar2(dalpha_L1_j_8_netPar2), .dalpha_L1_j_9_netPar2(dalpha_L1_j_9_netPar2), .dalpha_L1_j_10_netPar2(dalpha_L1_j_10_netPar2), .dalpha_L1_j_11_netPar2(dalpha_L1_j_11_netPar2), .dalpha_L1_j_12_netPar2(dalpha_L1_j_12_netPar2), .dalpha_L1_j_13_netPar2(dalpha_L1_j_13_netPar2), .dalpha_L1_j_14_netPar2(dalpha_L1_j_14_netPar2), .dalpha_L1_j_15_netPar2(dalpha_L1_j_15_netPar2), .dalpha_L1_j_16_netPar2(dalpha_L1_j_16_netPar2), .dalpha_L1_j_17_netPar2(dalpha_L1_j_17_netPar2), .dalpha_L1_j_18_netPar2(dalpha_L1_j_18_netPar2), .dalpha_L1_j_19_netPar2(dalpha_L1_j_19_netPar2), .dalpha_L1_j_20_netPar2(dalpha_L1_j_20_netPar2), .dalpha_L1_j_21_netPar2(dalpha_L1_j_21_netPar2), .dalpha_L1_j_22_netPar2(dalpha_L1_j_22_netPar2), .dalpha_L1_j_23_netPar2(dalpha_L1_j_23_netPar2), .dalpha_L1_j_24_netPar2(dalpha_L1_j_24_netPar2),
	.dbeta_L1_netPar2(dbeta_L1_netPar2),
	.dalpha_L2_j_0_netPar2(dalpha_L2_j_0_netPar2), .dalpha_L2_j_1_netPar2(dalpha_L2_j_1_netPar2), .dalpha_L2_j_2_netPar2(dalpha_L2_j_2_netPar2), .dalpha_L2_j_3_netPar2(dalpha_L2_j_3_netPar2), .dalpha_L2_j_4_netPar2(dalpha_L2_j_4_netPar2), .dalpha_L2_j_5_netPar2(dalpha_L2_j_5_netPar2), .dalpha_L2_j_6_netPar2(dalpha_L2_j_6_netPar2), .dalpha_L2_j_7_netPar2(dalpha_L2_j_7_netPar2),
	.dbeta_L2_netPar2(dbeta_L2_netPar2),
	.dalpha_L3_j_0_netPar2(dalpha_L3_j_0_netPar2), .dalpha_L3_j_1_netPar2(dalpha_L3_j_1_netPar2), .dalpha_L3_j_2_netPar2(dalpha_L3_j_2_netPar2), .dalpha_L3_j_3_netPar2(dalpha_L3_j_3_netPar2), .dalpha_L3_j_4_netPar2(dalpha_L3_j_4_netPar2),
	.dbeta_L3_netPar2(dbeta_L3_netPar2),
	.SIGN_dalpha_L1_j_0_netPar2(SIGN_dalpha_L1_j_0_netPar2), .SIGN_dalpha_L1_j_1_netPar2(SIGN_dalpha_L1_j_1_netPar2), .SIGN_dalpha_L1_j_2_netPar2(SIGN_dalpha_L1_j_2_netPar2), .SIGN_dalpha_L1_j_3_netPar2(SIGN_dalpha_L1_j_3_netPar2), .SIGN_dalpha_L1_j_4_netPar2(SIGN_dalpha_L1_j_4_netPar2), .SIGN_dalpha_L1_j_5_netPar2(SIGN_dalpha_L1_j_5_netPar2), .SIGN_dalpha_L1_j_6_netPar2(SIGN_dalpha_L1_j_6_netPar2), .SIGN_dalpha_L1_j_7_netPar2(SIGN_dalpha_L1_j_7_netPar2), .SIGN_dalpha_L1_j_8_netPar2(SIGN_dalpha_L1_j_8_netPar2), .SIGN_dalpha_L1_j_9_netPar2(SIGN_dalpha_L1_j_9_netPar2), .SIGN_dalpha_L1_j_10_netPar2(SIGN_dalpha_L1_j_10_netPar2), .SIGN_dalpha_L1_j_11_netPar2(SIGN_dalpha_L1_j_11_netPar2), .SIGN_dalpha_L1_j_12_netPar2(SIGN_dalpha_L1_j_12_netPar2), .SIGN_dalpha_L1_j_13_netPar2(SIGN_dalpha_L1_j_13_netPar2), .SIGN_dalpha_L1_j_14_netPar2(SIGN_dalpha_L1_j_14_netPar2), .SIGN_dalpha_L1_j_15_netPar2(SIGN_dalpha_L1_j_15_netPar2), .SIGN_dalpha_L1_j_16_netPar2(SIGN_dalpha_L1_j_16_netPar2), .SIGN_dalpha_L1_j_17_netPar2(SIGN_dalpha_L1_j_17_netPar2), .SIGN_dalpha_L1_j_18_netPar2(SIGN_dalpha_L1_j_18_netPar2), .SIGN_dalpha_L1_j_19_netPar2(SIGN_dalpha_L1_j_19_netPar2), .SIGN_dalpha_L1_j_20_netPar2(SIGN_dalpha_L1_j_20_netPar2), .SIGN_dalpha_L1_j_21_netPar2(SIGN_dalpha_L1_j_21_netPar2), .SIGN_dalpha_L1_j_22_netPar2(SIGN_dalpha_L1_j_22_netPar2), .SIGN_dalpha_L1_j_23_netPar2(SIGN_dalpha_L1_j_23_netPar2), .SIGN_dalpha_L1_j_24_netPar2(SIGN_dalpha_L1_j_24_netPar2),
	.SIGN_dbeta_L1_netPar2(SIGN_dbeta_L1_netPar2),
	.SIGN_dalpha_L2_j_0_netPar2(SIGN_dalpha_L2_j_0_netPar2), .SIGN_dalpha_L2_j_1_netPar2(SIGN_dalpha_L2_j_1_netPar2), .SIGN_dalpha_L2_j_2_netPar2(SIGN_dalpha_L2_j_2_netPar2), .SIGN_dalpha_L2_j_3_netPar2(SIGN_dalpha_L2_j_3_netPar2), .SIGN_dalpha_L2_j_4_netPar2(SIGN_dalpha_L2_j_4_netPar2), .SIGN_dalpha_L2_j_5_netPar2(SIGN_dalpha_L2_j_5_netPar2), .SIGN_dalpha_L2_j_6_netPar2(SIGN_dalpha_L2_j_6_netPar2), .SIGN_dalpha_L2_j_7_netPar2(SIGN_dalpha_L2_j_7_netPar2),
	.SIGN_dbeta_L2_netPar2(SIGN_dbeta_L2_netPar2),
	.SIGN_dalpha_L3_j_0_netPar2(SIGN_dalpha_L3_j_0_netPar2), .SIGN_dalpha_L3_j_1_netPar2(SIGN_dalpha_L3_j_1_netPar2), .SIGN_dalpha_L3_j_2_netPar2(SIGN_dalpha_L3_j_2_netPar2), .SIGN_dalpha_L3_j_3_netPar2(SIGN_dalpha_L3_j_3_netPar2), .SIGN_dalpha_L3_j_4_netPar2(SIGN_dalpha_L3_j_4_netPar2),
	.SIGN_dbeta_L3_netPar2(SIGN_dbeta_L3_netPar2),
	.dalpha_L1_j_0(dalpha_L1_j_0), .dalpha_L1_j_1(dalpha_L1_j_1), .dalpha_L1_j_2(dalpha_L1_j_2), .dalpha_L1_j_3(dalpha_L1_j_3), .dalpha_L1_j_4(dalpha_L1_j_4), .dalpha_L1_j_5(dalpha_L1_j_5), .dalpha_L1_j_6(dalpha_L1_j_6), .dalpha_L1_j_7(dalpha_L1_j_7), .dalpha_L1_j_8(dalpha_L1_j_8), .dalpha_L1_j_9(dalpha_L1_j_9), .dalpha_L1_j_10(dalpha_L1_j_10), .dalpha_L1_j_11(dalpha_L1_j_11), .dalpha_L1_j_12(dalpha_L1_j_12), .dalpha_L1_j_13(dalpha_L1_j_13), .dalpha_L1_j_14(dalpha_L1_j_14), .dalpha_L1_j_15(dalpha_L1_j_15), .dalpha_L1_j_16(dalpha_L1_j_16), .dalpha_L1_j_17(dalpha_L1_j_17), .dalpha_L1_j_18(dalpha_L1_j_18), .dalpha_L1_j_19(dalpha_L1_j_19), .dalpha_L1_j_20(dalpha_L1_j_20), .dalpha_L1_j_21(dalpha_L1_j_21), .dalpha_L1_j_22(dalpha_L1_j_22), .dalpha_L1_j_23(dalpha_L1_j_23), .dalpha_L1_j_24(dalpha_L1_j_24),
	.dbeta_L1(dbeta_L1),
	.dalpha_L2_j_0(dalpha_L2_j_0), .dalpha_L2_j_1(dalpha_L2_j_1), .dalpha_L2_j_2(dalpha_L2_j_2), .dalpha_L2_j_3(dalpha_L2_j_3), .dalpha_L2_j_4(dalpha_L2_j_4), .dalpha_L2_j_5(dalpha_L2_j_5), .dalpha_L2_j_6(dalpha_L2_j_6), .dalpha_L2_j_7(dalpha_L2_j_7),
	.dbeta_L2(dbeta_L2),
	.dalpha_L3_j_0(dalpha_L3_j_0), .dalpha_L3_j_1(dalpha_L3_j_1), .dalpha_L3_j_2(dalpha_L3_j_2), .dalpha_L3_j_3(dalpha_L3_j_3), .dalpha_L3_j_4(dalpha_L3_j_4),
	.dbeta_L3(dbeta_L3),
	.SIGN_dalpha_L1_j_0(SIGN_dalpha_L1_j_0), .SIGN_dalpha_L1_j_1(SIGN_dalpha_L1_j_1), .SIGN_dalpha_L1_j_2(SIGN_dalpha_L1_j_2), .SIGN_dalpha_L1_j_3(SIGN_dalpha_L1_j_3), .SIGN_dalpha_L1_j_4(SIGN_dalpha_L1_j_4), .SIGN_dalpha_L1_j_5(SIGN_dalpha_L1_j_5), .SIGN_dalpha_L1_j_6(SIGN_dalpha_L1_j_6), .SIGN_dalpha_L1_j_7(SIGN_dalpha_L1_j_7), .SIGN_dalpha_L1_j_8(SIGN_dalpha_L1_j_8), .SIGN_dalpha_L1_j_9(SIGN_dalpha_L1_j_9), .SIGN_dalpha_L1_j_10(SIGN_dalpha_L1_j_10), .SIGN_dalpha_L1_j_11(SIGN_dalpha_L1_j_11), .SIGN_dalpha_L1_j_12(SIGN_dalpha_L1_j_12), .SIGN_dalpha_L1_j_13(SIGN_dalpha_L1_j_13), .SIGN_dalpha_L1_j_14(SIGN_dalpha_L1_j_14), .SIGN_dalpha_L1_j_15(SIGN_dalpha_L1_j_15), .SIGN_dalpha_L1_j_16(SIGN_dalpha_L1_j_16), .SIGN_dalpha_L1_j_17(SIGN_dalpha_L1_j_17), .SIGN_dalpha_L1_j_18(SIGN_dalpha_L1_j_18), .SIGN_dalpha_L1_j_19(SIGN_dalpha_L1_j_19), .SIGN_dalpha_L1_j_20(SIGN_dalpha_L1_j_20), .SIGN_dalpha_L1_j_21(SIGN_dalpha_L1_j_21), .SIGN_dalpha_L1_j_22(SIGN_dalpha_L1_j_22), .SIGN_dalpha_L1_j_23(SIGN_dalpha_L1_j_23), .SIGN_dalpha_L1_j_24(SIGN_dalpha_L1_j_24),
	.SIGN_dbeta_L1(SIGN_dbeta_L1),
	.SIGN_dalpha_L2_j_0(SIGN_dalpha_L2_j_0), .SIGN_dalpha_L2_j_1(SIGN_dalpha_L2_j_1), .SIGN_dalpha_L2_j_2(SIGN_dalpha_L2_j_2), .SIGN_dalpha_L2_j_3(SIGN_dalpha_L2_j_3), .SIGN_dalpha_L2_j_4(SIGN_dalpha_L2_j_4), .SIGN_dalpha_L2_j_5(SIGN_dalpha_L2_j_5), .SIGN_dalpha_L2_j_6(SIGN_dalpha_L2_j_6), .SIGN_dalpha_L2_j_7(SIGN_dalpha_L2_j_7),
	.SIGN_dbeta_L2(SIGN_dbeta_L2),
	.SIGN_dalpha_L3_j_0(SIGN_dalpha_L3_j_0), .SIGN_dalpha_L3_j_1(SIGN_dalpha_L3_j_1), .SIGN_dalpha_L3_j_2(SIGN_dalpha_L3_j_2), .SIGN_dalpha_L3_j_3(SIGN_dalpha_L3_j_3), .SIGN_dalpha_L3_j_4(SIGN_dalpha_L3_j_4),
	.SIGN_dbeta_L3(SIGN_dbeta_L3),
	.rc({R0_ADDSUB_NETPAR, R1_ADDSUB_NETPAR, R2_ADDSUB_NETPAR, R3_ADDSUB_NETPAR, R4_ADDSUB_NETPAR, R5_ADDSUB_NETPAR, R6_ADDSUB_NETPAR, R7_ADDSUB_NETPAR, R8_ADDSUB_NETPAR, R9_ADDSUB_NETPAR, R10_ADDSUB_NETPAR, R11_ADDSUB_NETPAR, R12_ADDSUB_NETPAR, R13_ADDSUB_NETPAR, R14_ADDSUB_NETPAR, R15_ADDSUB_NETPAR, R16_ADDSUB_NETPAR, R17_ADDSUB_NETPAR, R18_ADDSUB_NETPAR, R19_ADDSUB_NETPAR, R20_ADDSUB_NETPAR, R21_ADDSUB_NETPAR, R22_ADDSUB_NETPAR, R23_ADDSUB_NETPAR, R24_ADDSUB_NETPAR, R25_ADDSUB_NETPAR, R26_ADDSUB_NETPAR, R27_ADDSUB_NETPAR, R28_ADDSUB_NETPAR, R29_ADDSUB_NETPAR, R30_ADDSUB_NETPAR, R31_ADDSUB_NETPAR, R32_ADDSUB_NETPAR, R33_ADDSUB_NETPAR, R34_ADDSUB_NETPAR, R35_ADDSUB_NETPAR, R36_ADDSUB_NETPAR, R37_ADDSUB_NETPAR, R38_ADDSUB_NETPAR, R39_ADDSUB_NETPAR, R40_ADDSUB_NETPAR, R41_ADDSUB_NETPAR, R42_ADDSUB_NETPAR, R43_ADDSUB_NETPAR, R44_ADDSUB_NETPAR, R45_ADDSUB_NETPAR, R46_ADDSUB_NETPAR, R47_ADDSUB_NETPAR, R48_ADDSUB_NETPAR, R49_ADDSUB_NETPAR, R50_ADDSUB_NETPAR}),
	.CLK(CLK), .INIT(INIT)
);

// Parameters Module:
PARAMS_sim PARAMS0(
`include "PARAMS_portDefinitions.v"
	.TrainingActive(TrainingActive),
	.NNParamExp_CLK(ReadParams_clk), .NNParamExp_index(ReadWriteIndex), .NNParamExp_data(ParameterRead), 
	.CLK(CLK), .CLK_TRAINING_flag(CLK_TRAINING_flag), .TRAINING_CYCLE(CLK_TRAINING_flag), .BP_FRAME(BP_FRAME), .FP_FRAME(FP_FRAME), .UPDATE(pre_BP_FRAME), .INIT(INIT)
);

// Stochastic to Decimal Module:
DECC DECC0(
	.a_L1(a_L1_netPar1),
	.a_L2(a_L2_netPar1),
	.a_L3(a_L3_netPar1),
	.aD_L1_0(aD_L1_0), .aD_L1_1(aD_L1_1), .aD_L1_2(aD_L1_2), .aD_L1_3(aD_L1_3), .aD_L1_4(aD_L1_4), .aD_L1_5(aD_L1_5), .aD_L1_6(aD_L1_6), .aD_L1_7(aD_L1_7), .aD_L1_8(aD_L1_8), .aD_L1_9(aD_L1_9), .aD_L1_10(aD_L1_10), .aD_L1_11(aD_L1_11), .aD_L1_12(aD_L1_12), .aD_L1_13(aD_L1_13), .aD_L1_14(aD_L1_14), .aD_L1_15(aD_L1_15), .aD_L1_16(aD_L1_16), .aD_L1_17(aD_L1_17), .aD_L1_18(aD_L1_18), .aD_L1_19(aD_L1_19), .aD_L1_20(aD_L1_20), .aD_L1_21(aD_L1_21), .aD_L1_22(aD_L1_22), .aD_L1_23(aD_L1_23), .aD_L1_24(aD_L1_24),
	.aD_L2_0(aD_L2_0), .aD_L2_1(aD_L2_1), .aD_L2_2(aD_L2_2), .aD_L2_3(aD_L2_3), .aD_L2_4(aD_L2_4), .aD_L2_5(aD_L2_5), .aD_L2_6(aD_L2_6), .aD_L2_7(aD_L2_7),
	.aD_L3_0(aD_L3_0), .aD_L3_1(aD_L3_1), .aD_L3_2(aD_L3_2), .aD_L3_3(aD_L3_3), .aD_L3_4(aD_L3_4),
	
	.NodeOutputExp_clk(NodeOutputExp_clk),.NodeOutputExp_index(ReadWriteIndex),.NodeOutputExp_data(NodeOutputExp_data),
	.CLK(CLK), .BP_FRAME(BP_FRAME), .pre_BP_FRAME(pre_BP_FRAME), .FP_FRAME(FRAME_RESET_DELAYED), .pre_FP_FRAME(FRAME_RESET), .INIT(INIT)
);

endmodule
