// Chris Ceroici

// Fully Connected Layer 1 

module FULLCONNBLOCK_L1(
	a_input,
	a_MEM_ACTIVE,
	alpha_j_0, alpha_j_1, alpha_j_2, alpha_j_3, alpha_j_4, alpha_j_5, alpha_j_6, alpha_j_7, alpha_j_8, alpha_j_9, alpha_j_10, alpha_j_11, alpha_j_12, alpha_j_13, alpha_j_14, alpha_j_15, alpha_j_16, alpha_j_17, alpha_j_18, alpha_j_19, alpha_j_20, alpha_j_21, alpha_j_22, alpha_j_23, alpha_j_24,
	beta,
	SIGN_alpha_j_0, SIGN_alpha_j_1, SIGN_alpha_j_2, SIGN_alpha_j_3, SIGN_alpha_j_4, SIGN_alpha_j_5, SIGN_alpha_j_6, SIGN_alpha_j_7, SIGN_alpha_j_8, SIGN_alpha_j_9, SIGN_alpha_j_10, SIGN_alpha_j_11, SIGN_alpha_j_12, SIGN_alpha_j_13, SIGN_alpha_j_14, SIGN_alpha_j_15, SIGN_alpha_j_16, SIGN_alpha_j_17, SIGN_alpha_j_18, SIGN_alpha_j_19, SIGN_alpha_j_20, SIGN_alpha_j_21, SIGN_alpha_j_22, SIGN_alpha_j_23, SIGN_alpha_j_24,
	SIGN_beta,
	z,
	zp,
	a_out,
	R_FPsource, zeroCenterSource,
	CLK, INIT, CLK_TRAINING_flag
);

parameter MEMSIZE = 3;
parameter DP_in = 8;
parameter DP_out = 16;

input wire [5 - 1:0] a_input;
input wire [25-1:0] a_MEM_ACTIVE;
input wire [5-1:0] alpha_j_0, alpha_j_1, alpha_j_2, alpha_j_3, alpha_j_4, alpha_j_5, alpha_j_6, alpha_j_7, alpha_j_8, alpha_j_9, alpha_j_10, alpha_j_11, alpha_j_12, alpha_j_13, alpha_j_14, alpha_j_15, alpha_j_16, alpha_j_17, alpha_j_18, alpha_j_19, alpha_j_20, alpha_j_21, alpha_j_22, alpha_j_23, alpha_j_24;
input wire [25-1:0] beta;
input wire [5-1:0] SIGN_alpha_j_0, SIGN_alpha_j_1, SIGN_alpha_j_2, SIGN_alpha_j_3, SIGN_alpha_j_4, SIGN_alpha_j_5, SIGN_alpha_j_6, SIGN_alpha_j_7, SIGN_alpha_j_8, SIGN_alpha_j_9, SIGN_alpha_j_10, SIGN_alpha_j_11, SIGN_alpha_j_12, SIGN_alpha_j_13, SIGN_alpha_j_14, SIGN_alpha_j_15, SIGN_alpha_j_16, SIGN_alpha_j_17, SIGN_alpha_j_18, SIGN_alpha_j_19, SIGN_alpha_j_20, SIGN_alpha_j_21, SIGN_alpha_j_22, SIGN_alpha_j_23, SIGN_alpha_j_24;
input wire [25-1:0] SIGN_beta;
input wire R_FPsource, zeroCenterSource;
input wire CLK, INIT, CLK_TRAINING_flag;

output wire [25-1:0] z;
output wire [25-1:0] zp;
output wire [25-1:0] a_out;

wire [25-1:0] zeroCenter, R_FP;
SS_RERANDOMIZER RERANDOMIZER_zC(.CLK(CLK), .INIT(INIT), .IN(zeroCenterSource), .OUT(zeroCenter));
defparam RERANDOMIZER_zC.N = 25; 
SS_RERANDOMIZER RERANDOMIZER_FP(.CLK(CLK), .INIT(INIT), .IN(R_FPsource), .OUT(R_FP));
defparam RERANDOMIZER_FP.N = 25; 

NN_NODE_BGPOLAR NODE_0(.a(a_input), .alpha(alpha_j_0), .beta(beta[0]), .SIGN_alpha(SIGN_alpha_j_0), .SIGN_beta(SIGN_beta[0]), .z(z[0]), .d(zeroCenter[0]), .r(R_FP[0]), .a_out(a_out[0]), .INIT_STATE(a_MEM_ACTIVE[0]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 0
NN_NODE_BGPOLAR NODE_1(.a(a_input), .alpha(alpha_j_1), .beta(beta[1]), .SIGN_alpha(SIGN_alpha_j_1), .SIGN_beta(SIGN_beta[1]), .z(z[1]), .d(zeroCenter[1]), .r(R_FP[1]), .a_out(a_out[1]), .INIT_STATE(a_MEM_ACTIVE[1]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 1
NN_NODE_BGPOLAR NODE_2(.a(a_input), .alpha(alpha_j_2), .beta(beta[2]), .SIGN_alpha(SIGN_alpha_j_2), .SIGN_beta(SIGN_beta[2]), .z(z[2]), .d(zeroCenter[2]), .r(R_FP[2]), .a_out(a_out[2]), .INIT_STATE(a_MEM_ACTIVE[2]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 2
NN_NODE_BGPOLAR NODE_3(.a(a_input), .alpha(alpha_j_3), .beta(beta[3]), .SIGN_alpha(SIGN_alpha_j_3), .SIGN_beta(SIGN_beta[3]), .z(z[3]), .d(zeroCenter[3]), .r(R_FP[3]), .a_out(a_out[3]), .INIT_STATE(a_MEM_ACTIVE[3]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 3
NN_NODE_BGPOLAR NODE_4(.a(a_input), .alpha(alpha_j_4), .beta(beta[4]), .SIGN_alpha(SIGN_alpha_j_4), .SIGN_beta(SIGN_beta[4]), .z(z[4]), .d(zeroCenter[4]), .r(R_FP[4]), .a_out(a_out[4]), .INIT_STATE(a_MEM_ACTIVE[4]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 4
NN_NODE_BGPOLAR NODE_5(.a(a_input), .alpha(alpha_j_5), .beta(beta[5]), .SIGN_alpha(SIGN_alpha_j_5), .SIGN_beta(SIGN_beta[5]), .z(z[5]), .d(zeroCenter[5]), .r(R_FP[5]), .a_out(a_out[5]), .INIT_STATE(a_MEM_ACTIVE[5]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 5
NN_NODE_BGPOLAR NODE_6(.a(a_input), .alpha(alpha_j_6), .beta(beta[6]), .SIGN_alpha(SIGN_alpha_j_6), .SIGN_beta(SIGN_beta[6]), .z(z[6]), .d(zeroCenter[6]), .r(R_FP[6]), .a_out(a_out[6]), .INIT_STATE(a_MEM_ACTIVE[6]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 6
NN_NODE_BGPOLAR NODE_7(.a(a_input), .alpha(alpha_j_7), .beta(beta[7]), .SIGN_alpha(SIGN_alpha_j_7), .SIGN_beta(SIGN_beta[7]), .z(z[7]), .d(zeroCenter[7]), .r(R_FP[7]), .a_out(a_out[7]), .INIT_STATE(a_MEM_ACTIVE[7]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 7
NN_NODE_BGPOLAR NODE_8(.a(a_input), .alpha(alpha_j_8), .beta(beta[8]), .SIGN_alpha(SIGN_alpha_j_8), .SIGN_beta(SIGN_beta[8]), .z(z[8]), .d(zeroCenter[8]), .r(R_FP[8]), .a_out(a_out[8]), .INIT_STATE(a_MEM_ACTIVE[8]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 8
NN_NODE_BGPOLAR NODE_9(.a(a_input), .alpha(alpha_j_9), .beta(beta[9]), .SIGN_alpha(SIGN_alpha_j_9), .SIGN_beta(SIGN_beta[9]), .z(z[9]), .d(zeroCenter[9]), .r(R_FP[9]), .a_out(a_out[9]), .INIT_STATE(a_MEM_ACTIVE[9]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 9
NN_NODE_BGPOLAR NODE_10(.a(a_input), .alpha(alpha_j_10), .beta(beta[10]), .SIGN_alpha(SIGN_alpha_j_10), .SIGN_beta(SIGN_beta[10]), .z(z[10]), .d(zeroCenter[10]), .r(R_FP[10]), .a_out(a_out[10]), .INIT_STATE(a_MEM_ACTIVE[10]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 10
NN_NODE_BGPOLAR NODE_11(.a(a_input), .alpha(alpha_j_11), .beta(beta[11]), .SIGN_alpha(SIGN_alpha_j_11), .SIGN_beta(SIGN_beta[11]), .z(z[11]), .d(zeroCenter[11]), .r(R_FP[11]), .a_out(a_out[11]), .INIT_STATE(a_MEM_ACTIVE[11]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 11
NN_NODE_BGPOLAR NODE_12(.a(a_input), .alpha(alpha_j_12), .beta(beta[12]), .SIGN_alpha(SIGN_alpha_j_12), .SIGN_beta(SIGN_beta[12]), .z(z[12]), .d(zeroCenter[12]), .r(R_FP[12]), .a_out(a_out[12]), .INIT_STATE(a_MEM_ACTIVE[12]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 12
NN_NODE_BGPOLAR NODE_13(.a(a_input), .alpha(alpha_j_13), .beta(beta[13]), .SIGN_alpha(SIGN_alpha_j_13), .SIGN_beta(SIGN_beta[13]), .z(z[13]), .d(zeroCenter[13]), .r(R_FP[13]), .a_out(a_out[13]), .INIT_STATE(a_MEM_ACTIVE[13]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 13
NN_NODE_BGPOLAR NODE_14(.a(a_input), .alpha(alpha_j_14), .beta(beta[14]), .SIGN_alpha(SIGN_alpha_j_14), .SIGN_beta(SIGN_beta[14]), .z(z[14]), .d(zeroCenter[14]), .r(R_FP[14]), .a_out(a_out[14]), .INIT_STATE(a_MEM_ACTIVE[14]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 14
NN_NODE_BGPOLAR NODE_15(.a(a_input), .alpha(alpha_j_15), .beta(beta[15]), .SIGN_alpha(SIGN_alpha_j_15), .SIGN_beta(SIGN_beta[15]), .z(z[15]), .d(zeroCenter[15]), .r(R_FP[15]), .a_out(a_out[15]), .INIT_STATE(a_MEM_ACTIVE[15]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 15
NN_NODE_BGPOLAR NODE_16(.a(a_input), .alpha(alpha_j_16), .beta(beta[16]), .SIGN_alpha(SIGN_alpha_j_16), .SIGN_beta(SIGN_beta[16]), .z(z[16]), .d(zeroCenter[16]), .r(R_FP[16]), .a_out(a_out[16]), .INIT_STATE(a_MEM_ACTIVE[16]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 16
NN_NODE_BGPOLAR NODE_17(.a(a_input), .alpha(alpha_j_17), .beta(beta[17]), .SIGN_alpha(SIGN_alpha_j_17), .SIGN_beta(SIGN_beta[17]), .z(z[17]), .d(zeroCenter[17]), .r(R_FP[17]), .a_out(a_out[17]), .INIT_STATE(a_MEM_ACTIVE[17]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 17
NN_NODE_BGPOLAR NODE_18(.a(a_input), .alpha(alpha_j_18), .beta(beta[18]), .SIGN_alpha(SIGN_alpha_j_18), .SIGN_beta(SIGN_beta[18]), .z(z[18]), .d(zeroCenter[18]), .r(R_FP[18]), .a_out(a_out[18]), .INIT_STATE(a_MEM_ACTIVE[18]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 18
NN_NODE_BGPOLAR NODE_19(.a(a_input), .alpha(alpha_j_19), .beta(beta[19]), .SIGN_alpha(SIGN_alpha_j_19), .SIGN_beta(SIGN_beta[19]), .z(z[19]), .d(zeroCenter[19]), .r(R_FP[19]), .a_out(a_out[19]), .INIT_STATE(a_MEM_ACTIVE[19]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 19
NN_NODE_BGPOLAR NODE_20(.a(a_input), .alpha(alpha_j_20), .beta(beta[20]), .SIGN_alpha(SIGN_alpha_j_20), .SIGN_beta(SIGN_beta[20]), .z(z[20]), .d(zeroCenter[20]), .r(R_FP[20]), .a_out(a_out[20]), .INIT_STATE(a_MEM_ACTIVE[20]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 20
NN_NODE_BGPOLAR NODE_21(.a(a_input), .alpha(alpha_j_21), .beta(beta[21]), .SIGN_alpha(SIGN_alpha_j_21), .SIGN_beta(SIGN_beta[21]), .z(z[21]), .d(zeroCenter[21]), .r(R_FP[21]), .a_out(a_out[21]), .INIT_STATE(a_MEM_ACTIVE[21]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 21
NN_NODE_BGPOLAR NODE_22(.a(a_input), .alpha(alpha_j_22), .beta(beta[22]), .SIGN_alpha(SIGN_alpha_j_22), .SIGN_beta(SIGN_beta[22]), .z(z[22]), .d(zeroCenter[22]), .r(R_FP[22]), .a_out(a_out[22]), .INIT_STATE(a_MEM_ACTIVE[22]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 22
NN_NODE_BGPOLAR NODE_23(.a(a_input), .alpha(alpha_j_23), .beta(beta[23]), .SIGN_alpha(SIGN_alpha_j_23), .SIGN_beta(SIGN_beta[23]), .z(z[23]), .d(zeroCenter[23]), .r(R_FP[23]), .a_out(a_out[23]), .INIT_STATE(a_MEM_ACTIVE[23]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 23
NN_NODE_BGPOLAR NODE_24(.a(a_input), .alpha(alpha_j_24), .beta(beta[24]), .SIGN_alpha(SIGN_alpha_j_24), .SIGN_beta(SIGN_beta[24]), .z(z[24]), .d(zeroCenter[24]), .r(R_FP[24]), .a_out(a_out[24]), .INIT_STATE(a_MEM_ACTIVE[24]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 1 node 24
defparam NODE_0.N = 5;
defparam NODE_0.MEMSIZE = MEMSIZE;
defparam NODE_1.N = 5;
defparam NODE_1.MEMSIZE = MEMSIZE;
defparam NODE_2.N = 5;
defparam NODE_2.MEMSIZE = MEMSIZE;
defparam NODE_3.N = 5;
defparam NODE_3.MEMSIZE = MEMSIZE;
defparam NODE_4.N = 5;
defparam NODE_4.MEMSIZE = MEMSIZE;
defparam NODE_5.N = 5;
defparam NODE_5.MEMSIZE = MEMSIZE;
defparam NODE_6.N = 5;
defparam NODE_6.MEMSIZE = MEMSIZE;
defparam NODE_7.N = 5;
defparam NODE_7.MEMSIZE = MEMSIZE;
defparam NODE_8.N = 5;
defparam NODE_8.MEMSIZE = MEMSIZE;
defparam NODE_9.N = 5;
defparam NODE_9.MEMSIZE = MEMSIZE;
defparam NODE_10.N = 5;
defparam NODE_10.MEMSIZE = MEMSIZE;
defparam NODE_11.N = 5;
defparam NODE_11.MEMSIZE = MEMSIZE;
defparam NODE_12.N = 5;
defparam NODE_12.MEMSIZE = MEMSIZE;
defparam NODE_13.N = 5;
defparam NODE_13.MEMSIZE = MEMSIZE;
defparam NODE_14.N = 5;
defparam NODE_14.MEMSIZE = MEMSIZE;
defparam NODE_15.N = 5;
defparam NODE_15.MEMSIZE = MEMSIZE;
defparam NODE_16.N = 5;
defparam NODE_16.MEMSIZE = MEMSIZE;
defparam NODE_17.N = 5;
defparam NODE_17.MEMSIZE = MEMSIZE;
defparam NODE_18.N = 5;
defparam NODE_18.MEMSIZE = MEMSIZE;
defparam NODE_19.N = 5;
defparam NODE_19.MEMSIZE = MEMSIZE;
defparam NODE_20.N = 5;
defparam NODE_20.MEMSIZE = MEMSIZE;
defparam NODE_21.N = 5;
defparam NODE_21.MEMSIZE = MEMSIZE;
defparam NODE_22.N = 5;
defparam NODE_22.MEMSIZE = MEMSIZE;
defparam NODE_23.N = 5;
defparam NODE_23.MEMSIZE = MEMSIZE;
defparam NODE_24.N = 5;
defparam NODE_24.MEMSIZE = MEMSIZE;

NN_BGPRIME BGPRIME_0(.z(z[0]), .zp(zp[0]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_1(.z(z[1]), .zp(zp[1]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_2(.z(z[2]), .zp(zp[2]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_3(.z(z[3]), .zp(zp[3]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_4(.z(z[4]), .zp(zp[4]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_5(.z(z[5]), .zp(zp[5]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_6(.z(z[6]), .zp(zp[6]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_7(.z(z[7]), .zp(zp[7]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_8(.z(z[8]), .zp(zp[8]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_9(.z(z[9]), .zp(zp[9]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_10(.z(z[10]), .zp(zp[10]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_11(.z(z[11]), .zp(zp[11]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_12(.z(z[12]), .zp(zp[12]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_13(.z(z[13]), .zp(zp[13]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_14(.z(z[14]), .zp(zp[14]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_15(.z(z[15]), .zp(zp[15]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_16(.z(z[16]), .zp(zp[16]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_17(.z(z[17]), .zp(zp[17]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_18(.z(z[18]), .zp(zp[18]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_19(.z(z[19]), .zp(zp[19]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_20(.z(z[20]), .zp(zp[20]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_21(.z(z[21]), .zp(zp[21]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_22(.z(z[22]), .zp(zp[22]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_23(.z(z[23]), .zp(zp[23]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_24(.z(z[24]), .zp(zp[24]), .CLK(CLK), .INIT(INIT));

endmodule
