// Chris Ceroici

// Fully Connected Backpropagation Layer 1 

module FULLCONNBLOCKBP_L1(
	alpha_j_0, alpha_j_1, alpha_j_2, alpha_j_3, alpha_j_4, alpha_j_5, alpha_j_6, alpha_j_7,
	SIGN_alpha_j_0, SIGN_alpha_j_1, SIGN_alpha_j_2, SIGN_alpha_j_3, SIGN_alpha_j_4, SIGN_alpha_j_5, SIGN_alpha_j_6, SIGN_alpha_j_7,
	z,
	zp,
	delta_in,
	SIGN_delta_in,
	delta_out,
	SIGN_delta_out,
	R_BPsource,
	CLK, INIT
);

input wire [25-1:0] alpha_j_0, alpha_j_1, alpha_j_2, alpha_j_3, alpha_j_4, alpha_j_5, alpha_j_6, alpha_j_7;
input wire [25-1:0] SIGN_alpha_j_0, SIGN_alpha_j_1, SIGN_alpha_j_2, SIGN_alpha_j_3, SIGN_alpha_j_4, SIGN_alpha_j_5, SIGN_alpha_j_6, SIGN_alpha_j_7;
input wire [25-1:0] z;
input wire [25-1:0] zp;
input wire [8-1:0] delta_in;
input wire [8-1:0] SIGN_delta_in;
input wire R_BPsource;
input wire CLK, INIT;

output wire [25-1:0] delta_out;
output wire [25-1:0] SIGN_delta_out;

wire [25-1:0] R_BP;

SS_RERANDOMIZER RERANDOMIZER0(.CLK(CLK), .INIT(INIT), .IN(R_BPsource), .OUT(R_BP));
defparam RERANDOMIZER0.N = 25;

NN_DELTABP_POLAR DELTABP_0(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[0]),.z(z[0]),.zp(zp[0]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[0], alpha_j_6[0], alpha_j_5[0], alpha_j_4[0], alpha_j_3[0], alpha_j_2[0], alpha_j_1[0], alpha_j_0[0]}), .SIGN_alpha({SIGN_alpha_j_7[0], SIGN_alpha_j_6[0], SIGN_alpha_j_5[0], SIGN_alpha_j_4[0], SIGN_alpha_j_3[0], SIGN_alpha_j_2[0], SIGN_alpha_j_1[0], SIGN_alpha_j_0[0]}), .delta_out(delta_out[0]), .SIGN_out(SIGN_delta_out[0]));
NN_DELTABP_POLAR DELTABP_1(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[1]),.z(z[1]),.zp(zp[1]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[1], alpha_j_6[1], alpha_j_5[1], alpha_j_4[1], alpha_j_3[1], alpha_j_2[1], alpha_j_1[1], alpha_j_0[1]}), .SIGN_alpha({SIGN_alpha_j_7[1], SIGN_alpha_j_6[1], SIGN_alpha_j_5[1], SIGN_alpha_j_4[1], SIGN_alpha_j_3[1], SIGN_alpha_j_2[1], SIGN_alpha_j_1[1], SIGN_alpha_j_0[1]}), .delta_out(delta_out[1]), .SIGN_out(SIGN_delta_out[1]));
NN_DELTABP_POLAR DELTABP_2(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[2]),.z(z[2]),.zp(zp[2]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[2], alpha_j_6[2], alpha_j_5[2], alpha_j_4[2], alpha_j_3[2], alpha_j_2[2], alpha_j_1[2], alpha_j_0[2]}), .SIGN_alpha({SIGN_alpha_j_7[2], SIGN_alpha_j_6[2], SIGN_alpha_j_5[2], SIGN_alpha_j_4[2], SIGN_alpha_j_3[2], SIGN_alpha_j_2[2], SIGN_alpha_j_1[2], SIGN_alpha_j_0[2]}), .delta_out(delta_out[2]), .SIGN_out(SIGN_delta_out[2]));
NN_DELTABP_POLAR DELTABP_3(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[3]),.z(z[3]),.zp(zp[3]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[3], alpha_j_6[3], alpha_j_5[3], alpha_j_4[3], alpha_j_3[3], alpha_j_2[3], alpha_j_1[3], alpha_j_0[3]}), .SIGN_alpha({SIGN_alpha_j_7[3], SIGN_alpha_j_6[3], SIGN_alpha_j_5[3], SIGN_alpha_j_4[3], SIGN_alpha_j_3[3], SIGN_alpha_j_2[3], SIGN_alpha_j_1[3], SIGN_alpha_j_0[3]}), .delta_out(delta_out[3]), .SIGN_out(SIGN_delta_out[3]));
NN_DELTABP_POLAR DELTABP_4(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[4]),.z(z[4]),.zp(zp[4]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[4], alpha_j_6[4], alpha_j_5[4], alpha_j_4[4], alpha_j_3[4], alpha_j_2[4], alpha_j_1[4], alpha_j_0[4]}), .SIGN_alpha({SIGN_alpha_j_7[4], SIGN_alpha_j_6[4], SIGN_alpha_j_5[4], SIGN_alpha_j_4[4], SIGN_alpha_j_3[4], SIGN_alpha_j_2[4], SIGN_alpha_j_1[4], SIGN_alpha_j_0[4]}), .delta_out(delta_out[4]), .SIGN_out(SIGN_delta_out[4]));
NN_DELTABP_POLAR DELTABP_5(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[5]),.z(z[5]),.zp(zp[5]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[5], alpha_j_6[5], alpha_j_5[5], alpha_j_4[5], alpha_j_3[5], alpha_j_2[5], alpha_j_1[5], alpha_j_0[5]}), .SIGN_alpha({SIGN_alpha_j_7[5], SIGN_alpha_j_6[5], SIGN_alpha_j_5[5], SIGN_alpha_j_4[5], SIGN_alpha_j_3[5], SIGN_alpha_j_2[5], SIGN_alpha_j_1[5], SIGN_alpha_j_0[5]}), .delta_out(delta_out[5]), .SIGN_out(SIGN_delta_out[5]));
NN_DELTABP_POLAR DELTABP_6(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[6]),.z(z[6]),.zp(zp[6]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[6], alpha_j_6[6], alpha_j_5[6], alpha_j_4[6], alpha_j_3[6], alpha_j_2[6], alpha_j_1[6], alpha_j_0[6]}), .SIGN_alpha({SIGN_alpha_j_7[6], SIGN_alpha_j_6[6], SIGN_alpha_j_5[6], SIGN_alpha_j_4[6], SIGN_alpha_j_3[6], SIGN_alpha_j_2[6], SIGN_alpha_j_1[6], SIGN_alpha_j_0[6]}), .delta_out(delta_out[6]), .SIGN_out(SIGN_delta_out[6]));
NN_DELTABP_POLAR DELTABP_7(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[7]),.z(z[7]),.zp(zp[7]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[7], alpha_j_6[7], alpha_j_5[7], alpha_j_4[7], alpha_j_3[7], alpha_j_2[7], alpha_j_1[7], alpha_j_0[7]}), .SIGN_alpha({SIGN_alpha_j_7[7], SIGN_alpha_j_6[7], SIGN_alpha_j_5[7], SIGN_alpha_j_4[7], SIGN_alpha_j_3[7], SIGN_alpha_j_2[7], SIGN_alpha_j_1[7], SIGN_alpha_j_0[7]}), .delta_out(delta_out[7]), .SIGN_out(SIGN_delta_out[7]));
NN_DELTABP_POLAR DELTABP_8(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[8]),.z(z[8]),.zp(zp[8]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[8], alpha_j_6[8], alpha_j_5[8], alpha_j_4[8], alpha_j_3[8], alpha_j_2[8], alpha_j_1[8], alpha_j_0[8]}), .SIGN_alpha({SIGN_alpha_j_7[8], SIGN_alpha_j_6[8], SIGN_alpha_j_5[8], SIGN_alpha_j_4[8], SIGN_alpha_j_3[8], SIGN_alpha_j_2[8], SIGN_alpha_j_1[8], SIGN_alpha_j_0[8]}), .delta_out(delta_out[8]), .SIGN_out(SIGN_delta_out[8]));
NN_DELTABP_POLAR DELTABP_9(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[9]),.z(z[9]),.zp(zp[9]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[9], alpha_j_6[9], alpha_j_5[9], alpha_j_4[9], alpha_j_3[9], alpha_j_2[9], alpha_j_1[9], alpha_j_0[9]}), .SIGN_alpha({SIGN_alpha_j_7[9], SIGN_alpha_j_6[9], SIGN_alpha_j_5[9], SIGN_alpha_j_4[9], SIGN_alpha_j_3[9], SIGN_alpha_j_2[9], SIGN_alpha_j_1[9], SIGN_alpha_j_0[9]}), .delta_out(delta_out[9]), .SIGN_out(SIGN_delta_out[9]));
NN_DELTABP_POLAR DELTABP_10(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[10]),.z(z[10]),.zp(zp[10]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[10], alpha_j_6[10], alpha_j_5[10], alpha_j_4[10], alpha_j_3[10], alpha_j_2[10], alpha_j_1[10], alpha_j_0[10]}), .SIGN_alpha({SIGN_alpha_j_7[10], SIGN_alpha_j_6[10], SIGN_alpha_j_5[10], SIGN_alpha_j_4[10], SIGN_alpha_j_3[10], SIGN_alpha_j_2[10], SIGN_alpha_j_1[10], SIGN_alpha_j_0[10]}), .delta_out(delta_out[10]), .SIGN_out(SIGN_delta_out[10]));
NN_DELTABP_POLAR DELTABP_11(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[11]),.z(z[11]),.zp(zp[11]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[11], alpha_j_6[11], alpha_j_5[11], alpha_j_4[11], alpha_j_3[11], alpha_j_2[11], alpha_j_1[11], alpha_j_0[11]}), .SIGN_alpha({SIGN_alpha_j_7[11], SIGN_alpha_j_6[11], SIGN_alpha_j_5[11], SIGN_alpha_j_4[11], SIGN_alpha_j_3[11], SIGN_alpha_j_2[11], SIGN_alpha_j_1[11], SIGN_alpha_j_0[11]}), .delta_out(delta_out[11]), .SIGN_out(SIGN_delta_out[11]));
NN_DELTABP_POLAR DELTABP_12(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[12]),.z(z[12]),.zp(zp[12]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[12], alpha_j_6[12], alpha_j_5[12], alpha_j_4[12], alpha_j_3[12], alpha_j_2[12], alpha_j_1[12], alpha_j_0[12]}), .SIGN_alpha({SIGN_alpha_j_7[12], SIGN_alpha_j_6[12], SIGN_alpha_j_5[12], SIGN_alpha_j_4[12], SIGN_alpha_j_3[12], SIGN_alpha_j_2[12], SIGN_alpha_j_1[12], SIGN_alpha_j_0[12]}), .delta_out(delta_out[12]), .SIGN_out(SIGN_delta_out[12]));
NN_DELTABP_POLAR DELTABP_13(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[13]),.z(z[13]),.zp(zp[13]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[13], alpha_j_6[13], alpha_j_5[13], alpha_j_4[13], alpha_j_3[13], alpha_j_2[13], alpha_j_1[13], alpha_j_0[13]}), .SIGN_alpha({SIGN_alpha_j_7[13], SIGN_alpha_j_6[13], SIGN_alpha_j_5[13], SIGN_alpha_j_4[13], SIGN_alpha_j_3[13], SIGN_alpha_j_2[13], SIGN_alpha_j_1[13], SIGN_alpha_j_0[13]}), .delta_out(delta_out[13]), .SIGN_out(SIGN_delta_out[13]));
NN_DELTABP_POLAR DELTABP_14(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[14]),.z(z[14]),.zp(zp[14]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[14], alpha_j_6[14], alpha_j_5[14], alpha_j_4[14], alpha_j_3[14], alpha_j_2[14], alpha_j_1[14], alpha_j_0[14]}), .SIGN_alpha({SIGN_alpha_j_7[14], SIGN_alpha_j_6[14], SIGN_alpha_j_5[14], SIGN_alpha_j_4[14], SIGN_alpha_j_3[14], SIGN_alpha_j_2[14], SIGN_alpha_j_1[14], SIGN_alpha_j_0[14]}), .delta_out(delta_out[14]), .SIGN_out(SIGN_delta_out[14]));
NN_DELTABP_POLAR DELTABP_15(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[15]),.z(z[15]),.zp(zp[15]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[15], alpha_j_6[15], alpha_j_5[15], alpha_j_4[15], alpha_j_3[15], alpha_j_2[15], alpha_j_1[15], alpha_j_0[15]}), .SIGN_alpha({SIGN_alpha_j_7[15], SIGN_alpha_j_6[15], SIGN_alpha_j_5[15], SIGN_alpha_j_4[15], SIGN_alpha_j_3[15], SIGN_alpha_j_2[15], SIGN_alpha_j_1[15], SIGN_alpha_j_0[15]}), .delta_out(delta_out[15]), .SIGN_out(SIGN_delta_out[15]));
NN_DELTABP_POLAR DELTABP_16(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[16]),.z(z[16]),.zp(zp[16]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[16], alpha_j_6[16], alpha_j_5[16], alpha_j_4[16], alpha_j_3[16], alpha_j_2[16], alpha_j_1[16], alpha_j_0[16]}), .SIGN_alpha({SIGN_alpha_j_7[16], SIGN_alpha_j_6[16], SIGN_alpha_j_5[16], SIGN_alpha_j_4[16], SIGN_alpha_j_3[16], SIGN_alpha_j_2[16], SIGN_alpha_j_1[16], SIGN_alpha_j_0[16]}), .delta_out(delta_out[16]), .SIGN_out(SIGN_delta_out[16]));
NN_DELTABP_POLAR DELTABP_17(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[17]),.z(z[17]),.zp(zp[17]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[17], alpha_j_6[17], alpha_j_5[17], alpha_j_4[17], alpha_j_3[17], alpha_j_2[17], alpha_j_1[17], alpha_j_0[17]}), .SIGN_alpha({SIGN_alpha_j_7[17], SIGN_alpha_j_6[17], SIGN_alpha_j_5[17], SIGN_alpha_j_4[17], SIGN_alpha_j_3[17], SIGN_alpha_j_2[17], SIGN_alpha_j_1[17], SIGN_alpha_j_0[17]}), .delta_out(delta_out[17]), .SIGN_out(SIGN_delta_out[17]));
NN_DELTABP_POLAR DELTABP_18(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[18]),.z(z[18]),.zp(zp[18]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[18], alpha_j_6[18], alpha_j_5[18], alpha_j_4[18], alpha_j_3[18], alpha_j_2[18], alpha_j_1[18], alpha_j_0[18]}), .SIGN_alpha({SIGN_alpha_j_7[18], SIGN_alpha_j_6[18], SIGN_alpha_j_5[18], SIGN_alpha_j_4[18], SIGN_alpha_j_3[18], SIGN_alpha_j_2[18], SIGN_alpha_j_1[18], SIGN_alpha_j_0[18]}), .delta_out(delta_out[18]), .SIGN_out(SIGN_delta_out[18]));
NN_DELTABP_POLAR DELTABP_19(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[19]),.z(z[19]),.zp(zp[19]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[19], alpha_j_6[19], alpha_j_5[19], alpha_j_4[19], alpha_j_3[19], alpha_j_2[19], alpha_j_1[19], alpha_j_0[19]}), .SIGN_alpha({SIGN_alpha_j_7[19], SIGN_alpha_j_6[19], SIGN_alpha_j_5[19], SIGN_alpha_j_4[19], SIGN_alpha_j_3[19], SIGN_alpha_j_2[19], SIGN_alpha_j_1[19], SIGN_alpha_j_0[19]}), .delta_out(delta_out[19]), .SIGN_out(SIGN_delta_out[19]));
NN_DELTABP_POLAR DELTABP_20(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[20]),.z(z[20]),.zp(zp[20]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[20], alpha_j_6[20], alpha_j_5[20], alpha_j_4[20], alpha_j_3[20], alpha_j_2[20], alpha_j_1[20], alpha_j_0[20]}), .SIGN_alpha({SIGN_alpha_j_7[20], SIGN_alpha_j_6[20], SIGN_alpha_j_5[20], SIGN_alpha_j_4[20], SIGN_alpha_j_3[20], SIGN_alpha_j_2[20], SIGN_alpha_j_1[20], SIGN_alpha_j_0[20]}), .delta_out(delta_out[20]), .SIGN_out(SIGN_delta_out[20]));
NN_DELTABP_POLAR DELTABP_21(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[21]),.z(z[21]),.zp(zp[21]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[21], alpha_j_6[21], alpha_j_5[21], alpha_j_4[21], alpha_j_3[21], alpha_j_2[21], alpha_j_1[21], alpha_j_0[21]}), .SIGN_alpha({SIGN_alpha_j_7[21], SIGN_alpha_j_6[21], SIGN_alpha_j_5[21], SIGN_alpha_j_4[21], SIGN_alpha_j_3[21], SIGN_alpha_j_2[21], SIGN_alpha_j_1[21], SIGN_alpha_j_0[21]}), .delta_out(delta_out[21]), .SIGN_out(SIGN_delta_out[21]));
NN_DELTABP_POLAR DELTABP_22(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[22]),.z(z[22]),.zp(zp[22]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[22], alpha_j_6[22], alpha_j_5[22], alpha_j_4[22], alpha_j_3[22], alpha_j_2[22], alpha_j_1[22], alpha_j_0[22]}), .SIGN_alpha({SIGN_alpha_j_7[22], SIGN_alpha_j_6[22], SIGN_alpha_j_5[22], SIGN_alpha_j_4[22], SIGN_alpha_j_3[22], SIGN_alpha_j_2[22], SIGN_alpha_j_1[22], SIGN_alpha_j_0[22]}), .delta_out(delta_out[22]), .SIGN_out(SIGN_delta_out[22]));
NN_DELTABP_POLAR DELTABP_23(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[23]),.z(z[23]),.zp(zp[23]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[23], alpha_j_6[23], alpha_j_5[23], alpha_j_4[23], alpha_j_3[23], alpha_j_2[23], alpha_j_1[23], alpha_j_0[23]}), .SIGN_alpha({SIGN_alpha_j_7[23], SIGN_alpha_j_6[23], SIGN_alpha_j_5[23], SIGN_alpha_j_4[23], SIGN_alpha_j_3[23], SIGN_alpha_j_2[23], SIGN_alpha_j_1[23], SIGN_alpha_j_0[23]}), .delta_out(delta_out[23]), .SIGN_out(SIGN_delta_out[23]));
NN_DELTABP_POLAR DELTABP_24(.CLK(CLK),.INIT(INIT),.R_condition(R_BP[24]),.z(z[24]),.zp(zp[24]),.delta(delta_in),.SIGN_delta(SIGN_delta_in), .alpha({alpha_j_7[24], alpha_j_6[24], alpha_j_5[24], alpha_j_4[24], alpha_j_3[24], alpha_j_2[24], alpha_j_1[24], alpha_j_0[24]}), .SIGN_alpha({SIGN_alpha_j_7[24], SIGN_alpha_j_6[24], SIGN_alpha_j_5[24], SIGN_alpha_j_4[24], SIGN_alpha_j_3[24], SIGN_alpha_j_2[24], SIGN_alpha_j_1[24], SIGN_alpha_j_0[24]}), .delta_out(delta_out[24]), .SIGN_out(SIGN_delta_out[24]));
defparam DELTABP_0.N = 8;
defparam DELTABP_1.N = 8;
defparam DELTABP_2.N = 8;
defparam DELTABP_3.N = 8;
defparam DELTABP_4.N = 8;
defparam DELTABP_5.N = 8;
defparam DELTABP_6.N = 8;
defparam DELTABP_7.N = 8;
defparam DELTABP_8.N = 8;
defparam DELTABP_9.N = 8;
defparam DELTABP_10.N = 8;
defparam DELTABP_11.N = 8;
defparam DELTABP_12.N = 8;
defparam DELTABP_13.N = 8;
defparam DELTABP_14.N = 8;
defparam DELTABP_15.N = 8;
defparam DELTABP_16.N = 8;
defparam DELTABP_17.N = 8;
defparam DELTABP_18.N = 8;
defparam DELTABP_19.N = 8;
defparam DELTABP_20.N = 8;
defparam DELTABP_21.N = 8;
defparam DELTABP_22.N = 8;
defparam DELTABP_23.N = 8;
defparam DELTABP_24.N = 8;

endmodule