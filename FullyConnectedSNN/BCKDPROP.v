// Chris Ceroici

// Neural Network Backward Propagation 

module BCKDPROP(
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
	SIGN_L3,
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
	eps,
	R_BP0, R_BP1, R_BP2, R_BP3, R_BP4, R_BP5, R_BP6, R_BP7, R_BP8,
	CLK,  BP_FRAME, FP_FRAME, INIT
);

parameter MEMSIZE = 6;
parameter DP_in = 8;
parameter DP_out = 16;

input wire CLK, BP_FRAME, FP_FRAME, INIT;
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
input wire [25 - 1:0] a_L1;
input wire [8 - 1:0] a_L2;
input wire [5 - 1:0] a_L3;
input wire [5 - 1:0] z_L0;
input wire [25 - 1:0] z_L1;
input wire [8 - 1:0] z_L2;
input wire [5 - 1:0] z_L3;
input wire [5 - 1:0] zp_L0;
input wire [25 - 1:0] zp_L1;
input wire [8 - 1:0] zp_L2;
input wire [5 - 1:0] zp_L3;
input wire [5-1:0] SIGN_L3;
input wire [5-1:0] eps;
input wire [7:0] R_BP0, R_BP1, R_BP2, R_BP3, R_BP4, R_BP5, R_BP6, R_BP7, R_BP8;

output wire [5 - 1:0] dalpha_L1_j_0, dalpha_L1_j_1, dalpha_L1_j_2, dalpha_L1_j_3, dalpha_L1_j_4, dalpha_L1_j_5, dalpha_L1_j_6, dalpha_L1_j_7, dalpha_L1_j_8, dalpha_L1_j_9, dalpha_L1_j_10, dalpha_L1_j_11, dalpha_L1_j_12, dalpha_L1_j_13, dalpha_L1_j_14, dalpha_L1_j_15, dalpha_L1_j_16, dalpha_L1_j_17, dalpha_L1_j_18, dalpha_L1_j_19, dalpha_L1_j_20, dalpha_L1_j_21, dalpha_L1_j_22, dalpha_L1_j_23, dalpha_L1_j_24;
output wire [25 - 1:0] dbeta_L1;
output wire [25 - 1:0] dalpha_L2_j_0, dalpha_L2_j_1, dalpha_L2_j_2, dalpha_L2_j_3, dalpha_L2_j_4, dalpha_L2_j_5, dalpha_L2_j_6, dalpha_L2_j_7;
output wire [8 - 1:0] dbeta_L2;
output wire [8 - 1:0] dalpha_L3_j_0, dalpha_L3_j_1, dalpha_L3_j_2, dalpha_L3_j_3, dalpha_L3_j_4;
output wire [5 - 1:0] dbeta_L3;
output wire [5 - 1:0] SIGN_dalpha_L1_j_0, SIGN_dalpha_L1_j_1, SIGN_dalpha_L1_j_2, SIGN_dalpha_L1_j_3, SIGN_dalpha_L1_j_4, SIGN_dalpha_L1_j_5, SIGN_dalpha_L1_j_6, SIGN_dalpha_L1_j_7, SIGN_dalpha_L1_j_8, SIGN_dalpha_L1_j_9, SIGN_dalpha_L1_j_10, SIGN_dalpha_L1_j_11, SIGN_dalpha_L1_j_12, SIGN_dalpha_L1_j_13, SIGN_dalpha_L1_j_14, SIGN_dalpha_L1_j_15, SIGN_dalpha_L1_j_16, SIGN_dalpha_L1_j_17, SIGN_dalpha_L1_j_18, SIGN_dalpha_L1_j_19, SIGN_dalpha_L1_j_20, SIGN_dalpha_L1_j_21, SIGN_dalpha_L1_j_22, SIGN_dalpha_L1_j_23, SIGN_dalpha_L1_j_24;
output wire [25 - 1:0] SIGN_dbeta_L1;
output wire [25 - 1:0] SIGN_dalpha_L2_j_0, SIGN_dalpha_L2_j_1, SIGN_dalpha_L2_j_2, SIGN_dalpha_L2_j_3, SIGN_dalpha_L2_j_4, SIGN_dalpha_L2_j_5, SIGN_dalpha_L2_j_6, SIGN_dalpha_L2_j_7;
output wire [8 - 1:0] SIGN_dbeta_L2;
output wire [8 - 1:0] SIGN_dalpha_L3_j_0, SIGN_dalpha_L3_j_1, SIGN_dalpha_L3_j_2, SIGN_dalpha_L3_j_3, SIGN_dalpha_L3_j_4;
output wire [5 - 1:0] SIGN_dbeta_L3;
wire [25 - 1:0] delta_L1;
wire [8 - 1:0] delta_L2;
wire [5 - 1:0] delta_L3;
wire [5-1:0] dbeta_L3_n;
wire [8-1:0] dbeta_L2_n;
wire [25-1:0] dbeta_L1_n;

wire [25 - 1:0] SIGN_L1;
wire [8 - 1:0] SIGN_L2;


// Backwards Evaluation:

NN_DNODE DNODE_L3_0(.delta(delta_L3[0]), .atj(a_L2), .zk(z_L3[0]), .dalpha(dalpha_L3_j_0), .dbeta(dbeta_L3[0]), .CLK(CLK), .INIT(BP_FRAME)); // layer 3 node 0
NN_DNODE DNODE_L3_1(.delta(delta_L3[1]), .atj(a_L2), .zk(z_L3[1]), .dalpha(dalpha_L3_j_1), .dbeta(dbeta_L3[1]), .CLK(CLK), .INIT(BP_FRAME)); // layer 3 node 1
NN_DNODE DNODE_L3_2(.delta(delta_L3[2]), .atj(a_L2), .zk(z_L3[2]), .dalpha(dalpha_L3_j_2), .dbeta(dbeta_L3[2]), .CLK(CLK), .INIT(BP_FRAME)); // layer 3 node 2
NN_DNODE DNODE_L3_3(.delta(delta_L3[3]), .atj(a_L2), .zk(z_L3[3]), .dalpha(dalpha_L3_j_3), .dbeta(dbeta_L3[3]), .CLK(CLK), .INIT(BP_FRAME)); // layer 3 node 3
NN_DNODE DNODE_L3_4(.delta(delta_L3[4]), .atj(a_L2), .zk(z_L3[4]), .dalpha(dalpha_L3_j_4), .dbeta(dbeta_L3[4]), .CLK(CLK), .INIT(BP_FRAME)); // layer 3 node 4
defparam DNODE_L3_0.NN = 8;
defparam DNODE_L3_0.MEMSIZE = MEMSIZE;
defparam DNODE_L3_1.NN = 8;
defparam DNODE_L3_1.MEMSIZE = MEMSIZE;
defparam DNODE_L3_2.NN = 8;
defparam DNODE_L3_2.MEMSIZE = MEMSIZE;
defparam DNODE_L3_3.NN = 8;
defparam DNODE_L3_3.MEMSIZE = MEMSIZE;
defparam DNODE_L3_4.NN = 8;
defparam DNODE_L3_4.MEMSIZE = MEMSIZE;

assign SIGN_dalpha_L3_j_0 = {SIGN_L3[0], SIGN_L3[0], SIGN_L3[0], SIGN_L3[0], SIGN_L3[0], SIGN_L3[0], SIGN_L3[0], SIGN_L3[0]};
assign SIGN_dalpha_L3_j_1 = {SIGN_L3[1], SIGN_L3[1], SIGN_L3[1], SIGN_L3[1], SIGN_L3[1], SIGN_L3[1], SIGN_L3[1], SIGN_L3[1]};
assign SIGN_dalpha_L3_j_2 = {SIGN_L3[2], SIGN_L3[2], SIGN_L3[2], SIGN_L3[2], SIGN_L3[2], SIGN_L3[2], SIGN_L3[2], SIGN_L3[2]};
assign SIGN_dalpha_L3_j_3 = {SIGN_L3[3], SIGN_L3[3], SIGN_L3[3], SIGN_L3[3], SIGN_L3[3], SIGN_L3[3], SIGN_L3[3], SIGN_L3[3]};
assign SIGN_dalpha_L3_j_4 = {SIGN_L3[4], SIGN_L3[4], SIGN_L3[4], SIGN_L3[4], SIGN_L3[4], SIGN_L3[4], SIGN_L3[4], SIGN_L3[4]};
assign SIGN_dbeta_L3 = SIGN_L3;

NN_DNODE DNODE_L2_0(.delta(delta_L2[0]), .atj(a_L1), .zk(z_L2[0]), .dalpha(dalpha_L2_j_0), .dbeta(dbeta_L2[0]), .CLK(CLK), .INIT(BP_FRAME)); // layer 2 node 0
NN_DNODE DNODE_L2_1(.delta(delta_L2[1]), .atj(a_L1), .zk(z_L2[1]), .dalpha(dalpha_L2_j_1), .dbeta(dbeta_L2[1]), .CLK(CLK), .INIT(BP_FRAME)); // layer 2 node 1
NN_DNODE DNODE_L2_2(.delta(delta_L2[2]), .atj(a_L1), .zk(z_L2[2]), .dalpha(dalpha_L2_j_2), .dbeta(dbeta_L2[2]), .CLK(CLK), .INIT(BP_FRAME)); // layer 2 node 2
NN_DNODE DNODE_L2_3(.delta(delta_L2[3]), .atj(a_L1), .zk(z_L2[3]), .dalpha(dalpha_L2_j_3), .dbeta(dbeta_L2[3]), .CLK(CLK), .INIT(BP_FRAME)); // layer 2 node 3
NN_DNODE DNODE_L2_4(.delta(delta_L2[4]), .atj(a_L1), .zk(z_L2[4]), .dalpha(dalpha_L2_j_4), .dbeta(dbeta_L2[4]), .CLK(CLK), .INIT(BP_FRAME)); // layer 2 node 4
NN_DNODE DNODE_L2_5(.delta(delta_L2[5]), .atj(a_L1), .zk(z_L2[5]), .dalpha(dalpha_L2_j_5), .dbeta(dbeta_L2[5]), .CLK(CLK), .INIT(BP_FRAME)); // layer 2 node 5
NN_DNODE DNODE_L2_6(.delta(delta_L2[6]), .atj(a_L1), .zk(z_L2[6]), .dalpha(dalpha_L2_j_6), .dbeta(dbeta_L2[6]), .CLK(CLK), .INIT(BP_FRAME)); // layer 2 node 6
NN_DNODE DNODE_L2_7(.delta(delta_L2[7]), .atj(a_L1), .zk(z_L2[7]), .dalpha(dalpha_L2_j_7), .dbeta(dbeta_L2[7]), .CLK(CLK), .INIT(BP_FRAME)); // layer 2 node 7
defparam DNODE_L2_0.NN = 25;
defparam DNODE_L2_0.MEMSIZE = MEMSIZE;
defparam DNODE_L2_1.NN = 25;
defparam DNODE_L2_1.MEMSIZE = MEMSIZE;
defparam DNODE_L2_2.NN = 25;
defparam DNODE_L2_2.MEMSIZE = MEMSIZE;
defparam DNODE_L2_3.NN = 25;
defparam DNODE_L2_3.MEMSIZE = MEMSIZE;
defparam DNODE_L2_4.NN = 25;
defparam DNODE_L2_4.MEMSIZE = MEMSIZE;
defparam DNODE_L2_5.NN = 25;
defparam DNODE_L2_5.MEMSIZE = MEMSIZE;
defparam DNODE_L2_6.NN = 25;
defparam DNODE_L2_6.MEMSIZE = MEMSIZE;
defparam DNODE_L2_7.NN = 25;
defparam DNODE_L2_7.MEMSIZE = MEMSIZE;

assign SIGN_dalpha_L2_j_0 = {SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0], SIGN_L2[0]};
assign SIGN_dalpha_L2_j_1 = {SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1], SIGN_L2[1]};
assign SIGN_dalpha_L2_j_2 = {SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2], SIGN_L2[2]};
assign SIGN_dalpha_L2_j_3 = {SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3], SIGN_L2[3]};
assign SIGN_dalpha_L2_j_4 = {SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4], SIGN_L2[4]};
assign SIGN_dalpha_L2_j_5 = {SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5], SIGN_L2[5]};
assign SIGN_dalpha_L2_j_6 = {SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6], SIGN_L2[6]};
assign SIGN_dalpha_L2_j_7 = {SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7], SIGN_L2[7]};
assign SIGN_dbeta_L2 = SIGN_L2;

NN_DNODE DNODE_L1_0(.delta(delta_L1[0]), .atj(a_L0), .zk(z_L1[0]), .dalpha(dalpha_L1_j_0), .dbeta(dbeta_L1[0]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 0
NN_DNODE DNODE_L1_1(.delta(delta_L1[1]), .atj(a_L0), .zk(z_L1[1]), .dalpha(dalpha_L1_j_1), .dbeta(dbeta_L1[1]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 1
NN_DNODE DNODE_L1_2(.delta(delta_L1[2]), .atj(a_L0), .zk(z_L1[2]), .dalpha(dalpha_L1_j_2), .dbeta(dbeta_L1[2]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 2
NN_DNODE DNODE_L1_3(.delta(delta_L1[3]), .atj(a_L0), .zk(z_L1[3]), .dalpha(dalpha_L1_j_3), .dbeta(dbeta_L1[3]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 3
NN_DNODE DNODE_L1_4(.delta(delta_L1[4]), .atj(a_L0), .zk(z_L1[4]), .dalpha(dalpha_L1_j_4), .dbeta(dbeta_L1[4]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 4
NN_DNODE DNODE_L1_5(.delta(delta_L1[5]), .atj(a_L0), .zk(z_L1[5]), .dalpha(dalpha_L1_j_5), .dbeta(dbeta_L1[5]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 5
NN_DNODE DNODE_L1_6(.delta(delta_L1[6]), .atj(a_L0), .zk(z_L1[6]), .dalpha(dalpha_L1_j_6), .dbeta(dbeta_L1[6]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 6
NN_DNODE DNODE_L1_7(.delta(delta_L1[7]), .atj(a_L0), .zk(z_L1[7]), .dalpha(dalpha_L1_j_7), .dbeta(dbeta_L1[7]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 7
NN_DNODE DNODE_L1_8(.delta(delta_L1[8]), .atj(a_L0), .zk(z_L1[8]), .dalpha(dalpha_L1_j_8), .dbeta(dbeta_L1[8]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 8
NN_DNODE DNODE_L1_9(.delta(delta_L1[9]), .atj(a_L0), .zk(z_L1[9]), .dalpha(dalpha_L1_j_9), .dbeta(dbeta_L1[9]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 9
NN_DNODE DNODE_L1_10(.delta(delta_L1[10]), .atj(a_L0), .zk(z_L1[10]), .dalpha(dalpha_L1_j_10), .dbeta(dbeta_L1[10]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 10
NN_DNODE DNODE_L1_11(.delta(delta_L1[11]), .atj(a_L0), .zk(z_L1[11]), .dalpha(dalpha_L1_j_11), .dbeta(dbeta_L1[11]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 11
NN_DNODE DNODE_L1_12(.delta(delta_L1[12]), .atj(a_L0), .zk(z_L1[12]), .dalpha(dalpha_L1_j_12), .dbeta(dbeta_L1[12]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 12
NN_DNODE DNODE_L1_13(.delta(delta_L1[13]), .atj(a_L0), .zk(z_L1[13]), .dalpha(dalpha_L1_j_13), .dbeta(dbeta_L1[13]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 13
NN_DNODE DNODE_L1_14(.delta(delta_L1[14]), .atj(a_L0), .zk(z_L1[14]), .dalpha(dalpha_L1_j_14), .dbeta(dbeta_L1[14]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 14
NN_DNODE DNODE_L1_15(.delta(delta_L1[15]), .atj(a_L0), .zk(z_L1[15]), .dalpha(dalpha_L1_j_15), .dbeta(dbeta_L1[15]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 15
NN_DNODE DNODE_L1_16(.delta(delta_L1[16]), .atj(a_L0), .zk(z_L1[16]), .dalpha(dalpha_L1_j_16), .dbeta(dbeta_L1[16]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 16
NN_DNODE DNODE_L1_17(.delta(delta_L1[17]), .atj(a_L0), .zk(z_L1[17]), .dalpha(dalpha_L1_j_17), .dbeta(dbeta_L1[17]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 17
NN_DNODE DNODE_L1_18(.delta(delta_L1[18]), .atj(a_L0), .zk(z_L1[18]), .dalpha(dalpha_L1_j_18), .dbeta(dbeta_L1[18]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 18
NN_DNODE DNODE_L1_19(.delta(delta_L1[19]), .atj(a_L0), .zk(z_L1[19]), .dalpha(dalpha_L1_j_19), .dbeta(dbeta_L1[19]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 19
NN_DNODE DNODE_L1_20(.delta(delta_L1[20]), .atj(a_L0), .zk(z_L1[20]), .dalpha(dalpha_L1_j_20), .dbeta(dbeta_L1[20]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 20
NN_DNODE DNODE_L1_21(.delta(delta_L1[21]), .atj(a_L0), .zk(z_L1[21]), .dalpha(dalpha_L1_j_21), .dbeta(dbeta_L1[21]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 21
NN_DNODE DNODE_L1_22(.delta(delta_L1[22]), .atj(a_L0), .zk(z_L1[22]), .dalpha(dalpha_L1_j_22), .dbeta(dbeta_L1[22]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 22
NN_DNODE DNODE_L1_23(.delta(delta_L1[23]), .atj(a_L0), .zk(z_L1[23]), .dalpha(dalpha_L1_j_23), .dbeta(dbeta_L1[23]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 23
NN_DNODE DNODE_L1_24(.delta(delta_L1[24]), .atj(a_L0), .zk(z_L1[24]), .dalpha(dalpha_L1_j_24), .dbeta(dbeta_L1[24]), .CLK(CLK), .INIT(BP_FRAME)); // layer 1 node 24
defparam DNODE_L1_0.NN = 5;
defparam DNODE_L1_0.MEMSIZE = MEMSIZE;
defparam DNODE_L1_1.NN = 5;
defparam DNODE_L1_1.MEMSIZE = MEMSIZE;
defparam DNODE_L1_2.NN = 5;
defparam DNODE_L1_2.MEMSIZE = MEMSIZE;
defparam DNODE_L1_3.NN = 5;
defparam DNODE_L1_3.MEMSIZE = MEMSIZE;
defparam DNODE_L1_4.NN = 5;
defparam DNODE_L1_4.MEMSIZE = MEMSIZE;
defparam DNODE_L1_5.NN = 5;
defparam DNODE_L1_5.MEMSIZE = MEMSIZE;
defparam DNODE_L1_6.NN = 5;
defparam DNODE_L1_6.MEMSIZE = MEMSIZE;
defparam DNODE_L1_7.NN = 5;
defparam DNODE_L1_7.MEMSIZE = MEMSIZE;
defparam DNODE_L1_8.NN = 5;
defparam DNODE_L1_8.MEMSIZE = MEMSIZE;
defparam DNODE_L1_9.NN = 5;
defparam DNODE_L1_9.MEMSIZE = MEMSIZE;
defparam DNODE_L1_10.NN = 5;
defparam DNODE_L1_10.MEMSIZE = MEMSIZE;
defparam DNODE_L1_11.NN = 5;
defparam DNODE_L1_11.MEMSIZE = MEMSIZE;
defparam DNODE_L1_12.NN = 5;
defparam DNODE_L1_12.MEMSIZE = MEMSIZE;
defparam DNODE_L1_13.NN = 5;
defparam DNODE_L1_13.MEMSIZE = MEMSIZE;
defparam DNODE_L1_14.NN = 5;
defparam DNODE_L1_14.MEMSIZE = MEMSIZE;
defparam DNODE_L1_15.NN = 5;
defparam DNODE_L1_15.MEMSIZE = MEMSIZE;
defparam DNODE_L1_16.NN = 5;
defparam DNODE_L1_16.MEMSIZE = MEMSIZE;
defparam DNODE_L1_17.NN = 5;
defparam DNODE_L1_17.MEMSIZE = MEMSIZE;
defparam DNODE_L1_18.NN = 5;
defparam DNODE_L1_18.MEMSIZE = MEMSIZE;
defparam DNODE_L1_19.NN = 5;
defparam DNODE_L1_19.MEMSIZE = MEMSIZE;
defparam DNODE_L1_20.NN = 5;
defparam DNODE_L1_20.MEMSIZE = MEMSIZE;
defparam DNODE_L1_21.NN = 5;
defparam DNODE_L1_21.MEMSIZE = MEMSIZE;
defparam DNODE_L1_22.NN = 5;
defparam DNODE_L1_22.MEMSIZE = MEMSIZE;
defparam DNODE_L1_23.NN = 5;
defparam DNODE_L1_23.MEMSIZE = MEMSIZE;
defparam DNODE_L1_24.NN = 5;
defparam DNODE_L1_24.MEMSIZE = MEMSIZE;

assign SIGN_dalpha_L1_j_0 = {SIGN_L1[0], SIGN_L1[0], SIGN_L1[0], SIGN_L1[0], SIGN_L1[0]};
assign SIGN_dalpha_L1_j_1 = {SIGN_L1[1], SIGN_L1[1], SIGN_L1[1], SIGN_L1[1], SIGN_L1[1]};
assign SIGN_dalpha_L1_j_2 = {SIGN_L1[2], SIGN_L1[2], SIGN_L1[2], SIGN_L1[2], SIGN_L1[2]};
assign SIGN_dalpha_L1_j_3 = {SIGN_L1[3], SIGN_L1[3], SIGN_L1[3], SIGN_L1[3], SIGN_L1[3]};
assign SIGN_dalpha_L1_j_4 = {SIGN_L1[4], SIGN_L1[4], SIGN_L1[4], SIGN_L1[4], SIGN_L1[4]};
assign SIGN_dalpha_L1_j_5 = {SIGN_L1[5], SIGN_L1[5], SIGN_L1[5], SIGN_L1[5], SIGN_L1[5]};
assign SIGN_dalpha_L1_j_6 = {SIGN_L1[6], SIGN_L1[6], SIGN_L1[6], SIGN_L1[6], SIGN_L1[6]};
assign SIGN_dalpha_L1_j_7 = {SIGN_L1[7], SIGN_L1[7], SIGN_L1[7], SIGN_L1[7], SIGN_L1[7]};
assign SIGN_dalpha_L1_j_8 = {SIGN_L1[8], SIGN_L1[8], SIGN_L1[8], SIGN_L1[8], SIGN_L1[8]};
assign SIGN_dalpha_L1_j_9 = {SIGN_L1[9], SIGN_L1[9], SIGN_L1[9], SIGN_L1[9], SIGN_L1[9]};
assign SIGN_dalpha_L1_j_10 = {SIGN_L1[10], SIGN_L1[10], SIGN_L1[10], SIGN_L1[10], SIGN_L1[10]};
assign SIGN_dalpha_L1_j_11 = {SIGN_L1[11], SIGN_L1[11], SIGN_L1[11], SIGN_L1[11], SIGN_L1[11]};
assign SIGN_dalpha_L1_j_12 = {SIGN_L1[12], SIGN_L1[12], SIGN_L1[12], SIGN_L1[12], SIGN_L1[12]};
assign SIGN_dalpha_L1_j_13 = {SIGN_L1[13], SIGN_L1[13], SIGN_L1[13], SIGN_L1[13], SIGN_L1[13]};
assign SIGN_dalpha_L1_j_14 = {SIGN_L1[14], SIGN_L1[14], SIGN_L1[14], SIGN_L1[14], SIGN_L1[14]};
assign SIGN_dalpha_L1_j_15 = {SIGN_L1[15], SIGN_L1[15], SIGN_L1[15], SIGN_L1[15], SIGN_L1[15]};
assign SIGN_dalpha_L1_j_16 = {SIGN_L1[16], SIGN_L1[16], SIGN_L1[16], SIGN_L1[16], SIGN_L1[16]};
assign SIGN_dalpha_L1_j_17 = {SIGN_L1[17], SIGN_L1[17], SIGN_L1[17], SIGN_L1[17], SIGN_L1[17]};
assign SIGN_dalpha_L1_j_18 = {SIGN_L1[18], SIGN_L1[18], SIGN_L1[18], SIGN_L1[18], SIGN_L1[18]};
assign SIGN_dalpha_L1_j_19 = {SIGN_L1[19], SIGN_L1[19], SIGN_L1[19], SIGN_L1[19], SIGN_L1[19]};
assign SIGN_dalpha_L1_j_20 = {SIGN_L1[20], SIGN_L1[20], SIGN_L1[20], SIGN_L1[20], SIGN_L1[20]};
assign SIGN_dalpha_L1_j_21 = {SIGN_L1[21], SIGN_L1[21], SIGN_L1[21], SIGN_L1[21], SIGN_L1[21]};
assign SIGN_dalpha_L1_j_22 = {SIGN_L1[22], SIGN_L1[22], SIGN_L1[22], SIGN_L1[22], SIGN_L1[22]};
assign SIGN_dalpha_L1_j_23 = {SIGN_L1[23], SIGN_L1[23], SIGN_L1[23], SIGN_L1[23], SIGN_L1[23]};
assign SIGN_dalpha_L1_j_24 = {SIGN_L1[24], SIGN_L1[24], SIGN_L1[24], SIGN_L1[24], SIGN_L1[24]};
assign SIGN_dbeta_L1 = SIGN_L1;


// Backpropagation:

assign delta_L3[0] = eps[0] & (zp_L3[0]);
assign delta_L3[1] = eps[1] & (zp_L3[1]);
assign delta_L3[2] = eps[2] & (zp_L3[2]);
assign delta_L3[3] = eps[3] & (zp_L3[3]);
assign delta_L3[4] = eps[4] & (zp_L3[4]);

FULLCONNBLOCKBP_L2 FULLCONNBLOCKBP_L2_0(
	.alpha_j_0(alpha_L3_j_0), .alpha_j_1(alpha_L3_j_1), .alpha_j_2(alpha_L3_j_2), .alpha_j_3(alpha_L3_j_3), .alpha_j_4(alpha_L3_j_4), 
	.SIGN_alpha_j_0(SIGN_alpha_L3_j_0), .SIGN_alpha_j_1(SIGN_alpha_L3_j_1), .SIGN_alpha_j_2(SIGN_alpha_L3_j_2), .SIGN_alpha_j_3(SIGN_alpha_L3_j_3), .SIGN_alpha_j_4(SIGN_alpha_L3_j_4), 
	.z(z_L2),
	.zp(zp_L2),
	.delta_in(delta_L3),
	.SIGN_delta_in(SIGN_L3),
	.delta_out(delta_L2),
	.SIGN_delta_out(SIGN_L2),
	.R_BPsource(R_BP0[2]),
	.CLK(CLK), .INIT(INIT)
);

FULLCONNBLOCKBP_L1 FULLCONNBLOCKBP_L1_0(
	.alpha_j_0(alpha_L2_j_0), .alpha_j_1(alpha_L2_j_1), .alpha_j_2(alpha_L2_j_2), .alpha_j_3(alpha_L2_j_3), .alpha_j_4(alpha_L2_j_4), .alpha_j_5(alpha_L2_j_5), .alpha_j_6(alpha_L2_j_6), .alpha_j_7(alpha_L2_j_7), 
	.SIGN_alpha_j_0(SIGN_alpha_L2_j_0), .SIGN_alpha_j_1(SIGN_alpha_L2_j_1), .SIGN_alpha_j_2(SIGN_alpha_L2_j_2), .SIGN_alpha_j_3(SIGN_alpha_L2_j_3), .SIGN_alpha_j_4(SIGN_alpha_L2_j_4), .SIGN_alpha_j_5(SIGN_alpha_L2_j_5), .SIGN_alpha_j_6(SIGN_alpha_L2_j_6), .SIGN_alpha_j_7(SIGN_alpha_L2_j_7), 
	.z(z_L1),
	.zp(zp_L1),
	.delta_in(delta_L2),
	.SIGN_delta_in(SIGN_L2),
	.delta_out(delta_L1),
	.SIGN_delta_out(SIGN_L1),
	.R_BPsource(R_BP0[1]),
	.CLK(CLK), .INIT(INIT)
);


endmodule
