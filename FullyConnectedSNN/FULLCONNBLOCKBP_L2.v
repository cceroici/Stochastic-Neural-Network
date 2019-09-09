// Chris Ceroici

// Fully Connected Backpropagation Layer 2 

module FULLCONNBLOCKBP_L2(
	alpha_j_0, alpha_j_1, alpha_j_2, alpha_j_3, alpha_j_4,
	SIGN_alpha_j_0, SIGN_alpha_j_1, SIGN_alpha_j_2, SIGN_alpha_j_3, SIGN_alpha_j_4,
	z,
	zp,
	delta_in,
	SIGN_delta_in,
	delta_out,
	SIGN_delta_out,
	R_BPsource,
	CLK, INIT
);

input wire [8-1:0] alpha_j_0, alpha_j_1, alpha_j_2, alpha_j_3, alpha_j_4;
input wire [8-1:0] SIGN_alpha_j_0, SIGN_alpha_j_1, SIGN_alpha_j_2, SIGN_alpha_j_3, SIGN_alpha_j_4;
input wire [8-1:0] z;
input wire [8-1:0] zp;
input wire [5-1:0] delta_in;
input wire [5-1:0] SIGN_delta_in;
input wire R_BPsource;
input wire CLK, INIT;

output wire [8-1:0] delta_out;
output wire [8-1:0] SIGN_delta_out;

wire [8-1:0] R_BP;

SS_RERANDOMIZER RERANDOMIZER0(.CLK(CLK), .INIT(INIT), .IN(R_BPsource), .OUT(R_BP));
defparam RERANDOMIZER0.N = 8;

NN_DELTABP_POLAR DELTABP_0(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[0]),.z(z[0]),.zp(zp[0]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_4[0], alpha_j_3[0], alpha_j_2[0], alpha_j_1[0], alpha_j_0[0]}), .SIGN_alpha({SIGN_alpha_j_4[0], SIGN_alpha_j_3[0], SIGN_alpha_j_2[0], SIGN_alpha_j_1[0], SIGN_alpha_j_0[0]}), .delta_out(delta_out[0]), .SIGN_out(SIGN_delta_out[0]));
NN_DELTABP_POLAR DELTABP_1(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[1]),.z(z[1]),.zp(zp[1]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_4[1], alpha_j_3[1], alpha_j_2[1], alpha_j_1[1], alpha_j_0[1]}), .SIGN_alpha({SIGN_alpha_j_4[1], SIGN_alpha_j_3[1], SIGN_alpha_j_2[1], SIGN_alpha_j_1[1], SIGN_alpha_j_0[1]}), .delta_out(delta_out[1]), .SIGN_out(SIGN_delta_out[1]));
NN_DELTABP_POLAR DELTABP_2(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[2]),.z(z[2]),.zp(zp[2]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_4[2], alpha_j_3[2], alpha_j_2[2], alpha_j_1[2], alpha_j_0[2]}), .SIGN_alpha({SIGN_alpha_j_4[2], SIGN_alpha_j_3[2], SIGN_alpha_j_2[2], SIGN_alpha_j_1[2], SIGN_alpha_j_0[2]}), .delta_out(delta_out[2]), .SIGN_out(SIGN_delta_out[2]));
NN_DELTABP_POLAR DELTABP_3(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[3]),.z(z[3]),.zp(zp[3]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_4[3], alpha_j_3[3], alpha_j_2[3], alpha_j_1[3], alpha_j_0[3]}), .SIGN_alpha({SIGN_alpha_j_4[3], SIGN_alpha_j_3[3], SIGN_alpha_j_2[3], SIGN_alpha_j_1[3], SIGN_alpha_j_0[3]}), .delta_out(delta_out[3]), .SIGN_out(SIGN_delta_out[3]));
NN_DELTABP_POLAR DELTABP_4(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[4]),.z(z[4]),.zp(zp[4]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_4[4], alpha_j_3[4], alpha_j_2[4], alpha_j_1[4], alpha_j_0[4]}), .SIGN_alpha({SIGN_alpha_j_4[4], SIGN_alpha_j_3[4], SIGN_alpha_j_2[4], SIGN_alpha_j_1[4], SIGN_alpha_j_0[4]}), .delta_out(delta_out[4]), .SIGN_out(SIGN_delta_out[4]));
NN_DELTABP_POLAR DELTABP_5(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[5]),.z(z[5]),.zp(zp[5]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_4[5], alpha_j_3[5], alpha_j_2[5], alpha_j_1[5], alpha_j_0[5]}), .SIGN_alpha({SIGN_alpha_j_4[5], SIGN_alpha_j_3[5], SIGN_alpha_j_2[5], SIGN_alpha_j_1[5], SIGN_alpha_j_0[5]}), .delta_out(delta_out[5]), .SIGN_out(SIGN_delta_out[5]));
NN_DELTABP_POLAR DELTABP_6(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[6]),.z(z[6]),.zp(zp[6]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_4[6], alpha_j_3[6], alpha_j_2[6], alpha_j_1[6], alpha_j_0[6]}), .SIGN_alpha({SIGN_alpha_j_4[6], SIGN_alpha_j_3[6], SIGN_alpha_j_2[6], SIGN_alpha_j_1[6], SIGN_alpha_j_0[6]}), .delta_out(delta_out[6]), .SIGN_out(SIGN_delta_out[6]));
NN_DELTABP_POLAR DELTABP_7(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[7]),.z(z[7]),.zp(zp[7]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_4[7], alpha_j_3[7], alpha_j_2[7], alpha_j_1[7], alpha_j_0[7]}), .SIGN_alpha({SIGN_alpha_j_4[7], SIGN_alpha_j_3[7], SIGN_alpha_j_2[7], SIGN_alpha_j_1[7], SIGN_alpha_j_0[7]}), .delta_out(delta_out[7]), .SIGN_out(SIGN_delta_out[7]));
defparam DELTABP_0.N = 5;
defparam DELTABP_1.N = 5;
defparam DELTABP_2.N = 5;
defparam DELTABP_3.N = 5;
defparam DELTABP_4.N = 5;
defparam DELTABP_5.N = 5;
defparam DELTABP_6.N = 5;
defparam DELTABP_7.N = 5;

endmodule