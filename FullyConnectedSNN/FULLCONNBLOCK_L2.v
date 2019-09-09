// Chris Ceroici

// Fully Connected Layer 2 

module FULLCONNBLOCK_L2(
	a_input,
	a_MEM_ACTIVE,
	alpha_j_0, alpha_j_1, alpha_j_2, alpha_j_3, alpha_j_4, alpha_j_5, alpha_j_6, alpha_j_7,
	beta,
	SIGN_alpha_j_0, SIGN_alpha_j_1, SIGN_alpha_j_2, SIGN_alpha_j_3, SIGN_alpha_j_4, SIGN_alpha_j_5, SIGN_alpha_j_6, SIGN_alpha_j_7,
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

input wire [25 - 1:0] a_input;
input wire [8-1:0] a_MEM_ACTIVE;
input wire [25-1:0] alpha_j_0, alpha_j_1, alpha_j_2, alpha_j_3, alpha_j_4, alpha_j_5, alpha_j_6, alpha_j_7;
input wire [8-1:0] beta;
input wire [25-1:0] SIGN_alpha_j_0, SIGN_alpha_j_1, SIGN_alpha_j_2, SIGN_alpha_j_3, SIGN_alpha_j_4, SIGN_alpha_j_5, SIGN_alpha_j_6, SIGN_alpha_j_7;
input wire [8-1:0] SIGN_beta;
input wire R_FPsource, zeroCenterSource;
input wire CLK, INIT, CLK_TRAINING_flag;

output wire [8-1:0] z;
output wire [8-1:0] zp;
output wire [8-1:0] a_out;

wire [8-1:0] zeroCenter, R_FP;
SS_RERANDOMIZER RERANDOMIZER_zC(.CLK(CLK), .INIT(INIT), .IN(zeroCenterSource), .OUT(zeroCenter));
defparam RERANDOMIZER_zC.N = 8; 
SS_RERANDOMIZER RERANDOMIZER_FP(.CLK(CLK), .INIT(INIT), .IN(R_FPsource), .OUT(R_FP));
defparam RERANDOMIZER_FP.N = 8; 

NN_NODE_BGPOLAR NODE_0(.a(a_input), .alpha(alpha_j_0), .beta(beta[0]), .SIGN_alpha(SIGN_alpha_j_0), .SIGN_beta(SIGN_beta[0]), .z(z[0]), .d(zeroCenter[0]), .r(R_FP[0]), .a_out(a_out[0]), .INIT_STATE(a_MEM_ACTIVE[0]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 2 node 0
NN_NODE_BGPOLAR NODE_1(.a(a_input), .alpha(alpha_j_1), .beta(beta[1]), .SIGN_alpha(SIGN_alpha_j_1), .SIGN_beta(SIGN_beta[1]), .z(z[1]), .d(zeroCenter[1]), .r(R_FP[1]), .a_out(a_out[1]), .INIT_STATE(a_MEM_ACTIVE[1]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 2 node 1
NN_NODE_BGPOLAR NODE_2(.a(a_input), .alpha(alpha_j_2), .beta(beta[2]), .SIGN_alpha(SIGN_alpha_j_2), .SIGN_beta(SIGN_beta[2]), .z(z[2]), .d(zeroCenter[2]), .r(R_FP[2]), .a_out(a_out[2]), .INIT_STATE(a_MEM_ACTIVE[2]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 2 node 2
NN_NODE_BGPOLAR NODE_3(.a(a_input), .alpha(alpha_j_3), .beta(beta[3]), .SIGN_alpha(SIGN_alpha_j_3), .SIGN_beta(SIGN_beta[3]), .z(z[3]), .d(zeroCenter[3]), .r(R_FP[3]), .a_out(a_out[3]), .INIT_STATE(a_MEM_ACTIVE[3]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 2 node 3
NN_NODE_BGPOLAR NODE_4(.a(a_input), .alpha(alpha_j_4), .beta(beta[4]), .SIGN_alpha(SIGN_alpha_j_4), .SIGN_beta(SIGN_beta[4]), .z(z[4]), .d(zeroCenter[4]), .r(R_FP[4]), .a_out(a_out[4]), .INIT_STATE(a_MEM_ACTIVE[4]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 2 node 4
NN_NODE_BGPOLAR NODE_5(.a(a_input), .alpha(alpha_j_5), .beta(beta[5]), .SIGN_alpha(SIGN_alpha_j_5), .SIGN_beta(SIGN_beta[5]), .z(z[5]), .d(zeroCenter[5]), .r(R_FP[5]), .a_out(a_out[5]), .INIT_STATE(a_MEM_ACTIVE[5]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 2 node 5
NN_NODE_BGPOLAR NODE_6(.a(a_input), .alpha(alpha_j_6), .beta(beta[6]), .SIGN_alpha(SIGN_alpha_j_6), .SIGN_beta(SIGN_beta[6]), .z(z[6]), .d(zeroCenter[6]), .r(R_FP[6]), .a_out(a_out[6]), .INIT_STATE(a_MEM_ACTIVE[6]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 2 node 6
NN_NODE_BGPOLAR NODE_7(.a(a_input), .alpha(alpha_j_7), .beta(beta[7]), .SIGN_alpha(SIGN_alpha_j_7), .SIGN_beta(SIGN_beta[7]), .z(z[7]), .d(zeroCenter[7]), .r(R_FP[7]), .a_out(a_out[7]), .INIT_STATE(a_MEM_ACTIVE[7]), .CLK(CLK), .INIT(INIT | CLK_TRAINING_flag)); // layer 2 node 7
defparam NODE_0.N = 25;
defparam NODE_0.MEMSIZE = MEMSIZE;
defparam NODE_1.N = 25;
defparam NODE_1.MEMSIZE = MEMSIZE;
defparam NODE_2.N = 25;
defparam NODE_2.MEMSIZE = MEMSIZE;
defparam NODE_3.N = 25;
defparam NODE_3.MEMSIZE = MEMSIZE;
defparam NODE_4.N = 25;
defparam NODE_4.MEMSIZE = MEMSIZE;
defparam NODE_5.N = 25;
defparam NODE_5.MEMSIZE = MEMSIZE;
defparam NODE_6.N = 25;
defparam NODE_6.MEMSIZE = MEMSIZE;
defparam NODE_7.N = 25;
defparam NODE_7.MEMSIZE = MEMSIZE;

NN_BGPRIME BGPRIME_0(.z(z[0]), .zp(zp[0]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_1(.z(z[1]), .zp(zp[1]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_2(.z(z[2]), .zp(zp[2]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_3(.z(z[3]), .zp(zp[3]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_4(.z(z[4]), .zp(zp[4]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_5(.z(z[5]), .zp(zp[5]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_6(.z(z[6]), .zp(zp[6]), .CLK(CLK), .INIT(INIT));
NN_BGPRIME BGPRIME_7(.z(z[7]), .zp(zp[7]), .CLK(CLK), .INIT(INIT));

endmodule
