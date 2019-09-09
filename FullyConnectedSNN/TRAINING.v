// Chris Ceroici

// Training set control 

module TRAINING(
	a_L1_netPar0,
	a_L2_netPar0,
	a_L3_netPar0,
	a_L1_netPar1,
	a_L2_netPar1,
	a_L3_netPar1,
	a_L1_netPar2,
	a_L2_netPar2,
	a_L3_netPar2,
	aD_L0_0_netPar0, aD_L0_1_netPar0, aD_L0_2_netPar0, aD_L0_3_netPar0, aD_L0_4_netPar0,
	aD_L0_0_netPar1, aD_L0_1_netPar1, aD_L0_2_netPar1, aD_L0_3_netPar1, aD_L0_4_netPar1,
	aD_L0_0_netPar2, aD_L0_1_netPar2, aD_L0_2_netPar2, aD_L0_3_netPar2, aD_L0_4_netPar2,
	YD0_netPar0, YD1_netPar0, YD2_netPar0, YD3_netPar0, YD4_netPar0,
	YD0_netPar1, YD1_netPar1, YD2_netPar1, YD3_netPar1, YD4_netPar1,
	YD0_netPar2, YD1_netPar2, YD2_netPar2, YD3_netPar2, YD4_netPar2,
	a_MEM_ACTIVE_L1_netPar0,
	a_MEM_ACTIVE_L2_netPar0,
	a_MEM_ACTIVE_L3_netPar0,
	a_MEM_ACTIVE_L1_netPar1,
	a_MEM_ACTIVE_L2_netPar1,
	a_MEM_ACTIVE_L3_netPar1,
	a_MEM_ACTIVE_L1_netPar2,
	a_MEM_ACTIVE_L2_netPar2,
	a_MEM_ACTIVE_L3_netPar2,
	
	TRAINING_SET_netPar0, TRAINING_SET_netPar1, TRAINING_SET_netPar2,
	TRAINING_SET_LIMIT,
	TrainingSetOutput_CLK, TrainingSetInput_CLK, TrainingSetOutput_index, TrainingSetInput_index,
	TrainingSetOutput_data, TrainingSetInput_data, WriteTrainingSet_index,
	TRAINING_SET_OVR, TRAINING_SET_OVR_EN,
	CLK, INIT, TRAINING_PRESET, TRAINING_PRESET2, CLK_TRAINING_flag, TRAINING_DURATION_cap,
	TRAINING_SET_CURRENT_netPar0, TRAINING_SET_CURRENT_netPar1, TRAINING_SET_CURRENT_netPar2
);

parameter MAX_TS = 20;
parameter DP_in = 8;
parameter DP_out = 16;

input wire [25 - 1:0] a_L1_netPar0;
input wire [8 - 1:0] a_L2_netPar0;
input wire [5 - 1:0] a_L3_netPar0;
input wire [25 - 1:0] a_L1_netPar1;
input wire [8 - 1:0] a_L2_netPar1;
input wire [5 - 1:0] a_L3_netPar1;
input wire [25 - 1:0] a_L1_netPar2;
input wire [8 - 1:0] a_L2_netPar2;
input wire [5 - 1:0] a_L3_netPar2;
input wire TrainingSetOutput_CLK, TrainingSetInput_CLK;
input wire [7:0] TRAINING_SET_LIMIT;
input wire [15:0] TrainingSetOutput_index, TrainingSetInput_index;
input wire [15:0] TrainingSetOutput_data;
input wire [15:0] TrainingSetInput_data;
input wire [7:0] WriteTrainingSet_index;
input wire [7:0] TRAINING_SET_OVR;
input wire TRAINING_SET_OVR_EN;
input wire [15:0] TRAINING_DURATION_cap;
input wire CLK, INIT;

output wire [25 - 1:0] a_MEM_ACTIVE_L1_netPar0;
output wire [8 - 1:0] a_MEM_ACTIVE_L2_netPar0;
output wire [5 - 1:0] a_MEM_ACTIVE_L3_netPar0;
output wire [25 - 1:0] a_MEM_ACTIVE_L1_netPar1;
output wire [8 - 1:0] a_MEM_ACTIVE_L2_netPar1;
output wire [5 - 1:0] a_MEM_ACTIVE_L3_netPar1;
output wire [25 - 1:0] a_MEM_ACTIVE_L1_netPar2;
output wire [8 - 1:0] a_MEM_ACTIVE_L2_netPar2;
output wire [5 - 1:0] a_MEM_ACTIVE_L3_netPar2;
output reg [DP_in - 1:0] aD_L0_0_netPar0, aD_L0_1_netPar0, aD_L0_2_netPar0, aD_L0_3_netPar0, aD_L0_4_netPar0;
output reg [DP_out - 1:0] YD0_netPar0, YD1_netPar0, YD2_netPar0, YD3_netPar0, YD4_netPar0;
output reg [DP_in - 1:0] aD_L0_0_netPar1, aD_L0_1_netPar1, aD_L0_2_netPar1, aD_L0_3_netPar1, aD_L0_4_netPar1;
output reg [DP_out - 1:0] YD0_netPar1, YD1_netPar1, YD2_netPar1, YD3_netPar1, YD4_netPar1;
output reg [DP_in - 1:0] aD_L0_0_netPar2, aD_L0_1_netPar2, aD_L0_2_netPar2, aD_L0_3_netPar2, aD_L0_4_netPar2;
output reg [DP_out - 1:0] YD0_netPar2, YD1_netPar2, YD2_netPar2, YD3_netPar2, YD4_netPar2;
output wire [7:0] TRAINING_SET_netPar0, TRAINING_SET_netPar1, TRAINING_SET_netPar2;
output reg TRAINING_PRESET, TRAINING_PRESET2, CLK_TRAINING_flag; 

reg[15:0] CLK_TRAINING_COUNT = 1'd0;
reg CLK_TRAINING = 1'd0;
output reg[7:0] TRAINING_SET_CURRENT_netPar0, TRAINING_SET_CURRENT_netPar1, TRAINING_SET_CURRENT_netPar2;
(* ram_style = "distributed" *) reg [25-1:0] a_MEM_L1_netPar0 [MAX_TS-1:0]; 
(* ram_style = "distributed" *) reg [8-1:0] a_MEM_L2_netPar0 [MAX_TS-1:0]; 
(* ram_style = "distributed" *) reg [5-1:0] a_MEM_L3_netPar0 [MAX_TS-1:0]; 
(* ram_style = "distributed" *) reg [25-1:0] a_MEM_L1_netPar1 [MAX_TS-1:0]; 
(* ram_style = "distributed" *) reg [8-1:0] a_MEM_L2_netPar1 [MAX_TS-1:0]; 
(* ram_style = "distributed" *) reg [5-1:0] a_MEM_L3_netPar1 [MAX_TS-1:0]; 
(* ram_style = "distributed" *) reg [25-1:0] a_MEM_L1_netPar2 [MAX_TS-1:0]; 
(* ram_style = "distributed" *) reg [8-1:0] a_MEM_L2_netPar2 [MAX_TS-1:0]; 
(* ram_style = "distributed" *) reg [5-1:0] a_MEM_L3_netPar2 [MAX_TS-1:0]; 

(* ram_style = "distributed" *) reg [DP_in-1:0] TS_aD_L0_0 [MAX_TS-1:0];
(* ram_style = "distributed" *) reg [DP_in-1:0] TS_aD_L0_1 [MAX_TS-1:0];
(* ram_style = "distributed" *) reg [DP_in-1:0] TS_aD_L0_2 [MAX_TS-1:0];
(* ram_style = "distributed" *) reg [DP_in-1:0] TS_aD_L0_3 [MAX_TS-1:0];
(* ram_style = "distributed" *) reg [DP_in-1:0] TS_aD_L0_4 [MAX_TS-1:0];
(* ram_style = "distributed" *) reg [DP_out-1:0] TS_YD0 [MAX_TS-1:0];
(* ram_style = "distributed" *) reg [DP_out-1:0] TS_YD1 [MAX_TS-1:0];
(* ram_style = "distributed" *) reg [DP_out-1:0] TS_YD2 [MAX_TS-1:0];
(* ram_style = "distributed" *) reg [DP_out-1:0] TS_YD3 [MAX_TS-1:0];
(* ram_style = "distributed" *) reg [DP_out-1:0] TS_YD4 [MAX_TS-1:0];

//Training Set Rotation:

always @(posedge CLK) begin
	if (INIT) begin
		CLK_TRAINING_flag <= 1'b0;
		CLK_TRAINING_COUNT <= 1'b0;
	end
	if (CLK_TRAINING_COUNT >= TRAINING_DURATION_cap) begin
		CLK_TRAINING_flag <= 1'b1;
		CLK_TRAINING_COUNT <= 1'd0;
	end else begin
		CLK_TRAINING_COUNT <= CLK_TRAINING_COUNT + 1'b1;
		CLK_TRAINING_flag <= 1'b0;
	end
	if (CLK_TRAINING_COUNT == (TRAINING_DURATION_cap-1'd1)) TRAINING_PRESET <= 1'b1;
	else TRAINING_PRESET <= 1'b0;
	if (CLK_TRAINING_COUNT == (TRAINING_DURATION_cap-4'd2)) TRAINING_PRESET2 <= 1'b1;
	else TRAINING_PRESET2 <= 1'b0;
end

always @(posedge TRAINING_PRESET) TRAINING_SET_CURRENT_netPar0 <= TRAINING_SET_netPar0;
always @(posedge TRAINING_PRESET) TRAINING_SET_CURRENT_netPar1 <= TRAINING_SET_netPar1;
always @(posedge TRAINING_PRESET) TRAINING_SET_CURRENT_netPar2 <= TRAINING_SET_netPar2;

wire [7:0] TRAINING_SET_temp_netPar0;
wire [7:0] dummy0;
LFSR_LIMIT16 LFSR_Training_netPar0(.TRIG(TRAINING_PRESET),.RESET(INIT),.LIMIT(TRAINING_SET_LIMIT),.OUT1(TRAINING_SET_temp_netPar0),.OUT2(dummy0),.SEED(16'd56161));
assign TRAINING_SET_netPar0 = (TRAINING_SET_OVR_EN) ? TRAINING_SET_OVR : TRAINING_SET_temp_netPar0;
wire [7:0] TRAINING_SET_temp_netPar1;
wire [7:0] dummy1;
LFSR_LIMIT16 LFSR_Training_netPar1(.TRIG(TRAINING_PRESET),.RESET(INIT),.LIMIT(TRAINING_SET_LIMIT),.OUT1(TRAINING_SET_temp_netPar1),.OUT2(dummy1),.SEED(16'd28626));
assign TRAINING_SET_netPar1 = (TRAINING_SET_OVR_EN) ? TRAINING_SET_OVR : TRAINING_SET_temp_netPar1;
wire [7:0] TRAINING_SET_temp_netPar2;
wire [7:0] dummy2;
LFSR_LIMIT16 LFSR_Training_netPar2(.TRIG(TRAINING_PRESET),.RESET(INIT),.LIMIT(TRAINING_SET_LIMIT),.OUT1(TRAINING_SET_temp_netPar2),.OUT2(dummy2),.SEED(16'd14923));
assign TRAINING_SET_netPar2 = (TRAINING_SET_OVR_EN) ? TRAINING_SET_OVR : TRAINING_SET_temp_netPar2;

assign a_MEM_ACTIVE_L1_netPar0[0] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][0];
assign a_MEM_ACTIVE_L1_netPar0[1] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][1];
assign a_MEM_ACTIVE_L1_netPar0[2] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][2];
assign a_MEM_ACTIVE_L1_netPar0[3] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][3];
assign a_MEM_ACTIVE_L1_netPar0[4] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][4];
assign a_MEM_ACTIVE_L1_netPar0[5] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][5];
assign a_MEM_ACTIVE_L1_netPar0[6] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][6];
assign a_MEM_ACTIVE_L1_netPar0[7] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][7];
assign a_MEM_ACTIVE_L1_netPar0[8] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][8];
assign a_MEM_ACTIVE_L1_netPar0[9] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][9];
assign a_MEM_ACTIVE_L1_netPar0[10] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][10];
assign a_MEM_ACTIVE_L1_netPar0[11] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][11];
assign a_MEM_ACTIVE_L1_netPar0[12] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][12];
assign a_MEM_ACTIVE_L1_netPar0[13] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][13];
assign a_MEM_ACTIVE_L1_netPar0[14] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][14];
assign a_MEM_ACTIVE_L1_netPar0[15] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][15];
assign a_MEM_ACTIVE_L1_netPar0[16] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][16];
assign a_MEM_ACTIVE_L1_netPar0[17] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][17];
assign a_MEM_ACTIVE_L1_netPar0[18] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][18];
assign a_MEM_ACTIVE_L1_netPar0[19] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][19];
assign a_MEM_ACTIVE_L1_netPar0[20] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][20];
assign a_MEM_ACTIVE_L1_netPar0[21] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][21];
assign a_MEM_ACTIVE_L1_netPar0[22] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][22];
assign a_MEM_ACTIVE_L1_netPar0[23] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][23];
assign a_MEM_ACTIVE_L1_netPar0[24] = a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][24];
assign a_MEM_ACTIVE_L2_netPar0[0] = a_MEM_L2_netPar0[TRAINING_SET_CURRENT_netPar0][0];
assign a_MEM_ACTIVE_L2_netPar0[1] = a_MEM_L2_netPar0[TRAINING_SET_CURRENT_netPar0][1];
assign a_MEM_ACTIVE_L2_netPar0[2] = a_MEM_L2_netPar0[TRAINING_SET_CURRENT_netPar0][2];
assign a_MEM_ACTIVE_L2_netPar0[3] = a_MEM_L2_netPar0[TRAINING_SET_CURRENT_netPar0][3];
assign a_MEM_ACTIVE_L2_netPar0[4] = a_MEM_L2_netPar0[TRAINING_SET_CURRENT_netPar0][4];
assign a_MEM_ACTIVE_L2_netPar0[5] = a_MEM_L2_netPar0[TRAINING_SET_CURRENT_netPar0][5];
assign a_MEM_ACTIVE_L2_netPar0[6] = a_MEM_L2_netPar0[TRAINING_SET_CURRENT_netPar0][6];
assign a_MEM_ACTIVE_L2_netPar0[7] = a_MEM_L2_netPar0[TRAINING_SET_CURRENT_netPar0][7];
assign a_MEM_ACTIVE_L3_netPar0[0] = a_MEM_L3_netPar0[TRAINING_SET_CURRENT_netPar0][0];
assign a_MEM_ACTIVE_L3_netPar0[1] = a_MEM_L3_netPar0[TRAINING_SET_CURRENT_netPar0][1];
assign a_MEM_ACTIVE_L3_netPar0[2] = a_MEM_L3_netPar0[TRAINING_SET_CURRENT_netPar0][2];
assign a_MEM_ACTIVE_L3_netPar0[3] = a_MEM_L3_netPar0[TRAINING_SET_CURRENT_netPar0][3];
assign a_MEM_ACTIVE_L3_netPar0[4] = a_MEM_L3_netPar0[TRAINING_SET_CURRENT_netPar0][4];
assign a_MEM_ACTIVE_L1_netPar1[0] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][0];
assign a_MEM_ACTIVE_L1_netPar1[1] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][1];
assign a_MEM_ACTIVE_L1_netPar1[2] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][2];
assign a_MEM_ACTIVE_L1_netPar1[3] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][3];
assign a_MEM_ACTIVE_L1_netPar1[4] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][4];
assign a_MEM_ACTIVE_L1_netPar1[5] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][5];
assign a_MEM_ACTIVE_L1_netPar1[6] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][6];
assign a_MEM_ACTIVE_L1_netPar1[7] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][7];
assign a_MEM_ACTIVE_L1_netPar1[8] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][8];
assign a_MEM_ACTIVE_L1_netPar1[9] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][9];
assign a_MEM_ACTIVE_L1_netPar1[10] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][10];
assign a_MEM_ACTIVE_L1_netPar1[11] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][11];
assign a_MEM_ACTIVE_L1_netPar1[12] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][12];
assign a_MEM_ACTIVE_L1_netPar1[13] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][13];
assign a_MEM_ACTIVE_L1_netPar1[14] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][14];
assign a_MEM_ACTIVE_L1_netPar1[15] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][15];
assign a_MEM_ACTIVE_L1_netPar1[16] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][16];
assign a_MEM_ACTIVE_L1_netPar1[17] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][17];
assign a_MEM_ACTIVE_L1_netPar1[18] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][18];
assign a_MEM_ACTIVE_L1_netPar1[19] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][19];
assign a_MEM_ACTIVE_L1_netPar1[20] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][20];
assign a_MEM_ACTIVE_L1_netPar1[21] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][21];
assign a_MEM_ACTIVE_L1_netPar1[22] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][22];
assign a_MEM_ACTIVE_L1_netPar1[23] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][23];
assign a_MEM_ACTIVE_L1_netPar1[24] = a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][24];
assign a_MEM_ACTIVE_L2_netPar1[0] = a_MEM_L2_netPar1[TRAINING_SET_CURRENT_netPar1][0];
assign a_MEM_ACTIVE_L2_netPar1[1] = a_MEM_L2_netPar1[TRAINING_SET_CURRENT_netPar1][1];
assign a_MEM_ACTIVE_L2_netPar1[2] = a_MEM_L2_netPar1[TRAINING_SET_CURRENT_netPar1][2];
assign a_MEM_ACTIVE_L2_netPar1[3] = a_MEM_L2_netPar1[TRAINING_SET_CURRENT_netPar1][3];
assign a_MEM_ACTIVE_L2_netPar1[4] = a_MEM_L2_netPar1[TRAINING_SET_CURRENT_netPar1][4];
assign a_MEM_ACTIVE_L2_netPar1[5] = a_MEM_L2_netPar1[TRAINING_SET_CURRENT_netPar1][5];
assign a_MEM_ACTIVE_L2_netPar1[6] = a_MEM_L2_netPar1[TRAINING_SET_CURRENT_netPar1][6];
assign a_MEM_ACTIVE_L2_netPar1[7] = a_MEM_L2_netPar1[TRAINING_SET_CURRENT_netPar1][7];
assign a_MEM_ACTIVE_L3_netPar1[0] = a_MEM_L3_netPar1[TRAINING_SET_CURRENT_netPar1][0];
assign a_MEM_ACTIVE_L3_netPar1[1] = a_MEM_L3_netPar1[TRAINING_SET_CURRENT_netPar1][1];
assign a_MEM_ACTIVE_L3_netPar1[2] = a_MEM_L3_netPar1[TRAINING_SET_CURRENT_netPar1][2];
assign a_MEM_ACTIVE_L3_netPar1[3] = a_MEM_L3_netPar1[TRAINING_SET_CURRENT_netPar1][3];
assign a_MEM_ACTIVE_L3_netPar1[4] = a_MEM_L3_netPar1[TRAINING_SET_CURRENT_netPar1][4];
assign a_MEM_ACTIVE_L1_netPar2[0] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][0];
assign a_MEM_ACTIVE_L1_netPar2[1] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][1];
assign a_MEM_ACTIVE_L1_netPar2[2] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][2];
assign a_MEM_ACTIVE_L1_netPar2[3] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][3];
assign a_MEM_ACTIVE_L1_netPar2[4] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][4];
assign a_MEM_ACTIVE_L1_netPar2[5] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][5];
assign a_MEM_ACTIVE_L1_netPar2[6] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][6];
assign a_MEM_ACTIVE_L1_netPar2[7] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][7];
assign a_MEM_ACTIVE_L1_netPar2[8] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][8];
assign a_MEM_ACTIVE_L1_netPar2[9] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][9];
assign a_MEM_ACTIVE_L1_netPar2[10] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][10];
assign a_MEM_ACTIVE_L1_netPar2[11] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][11];
assign a_MEM_ACTIVE_L1_netPar2[12] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][12];
assign a_MEM_ACTIVE_L1_netPar2[13] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][13];
assign a_MEM_ACTIVE_L1_netPar2[14] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][14];
assign a_MEM_ACTIVE_L1_netPar2[15] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][15];
assign a_MEM_ACTIVE_L1_netPar2[16] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][16];
assign a_MEM_ACTIVE_L1_netPar2[17] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][17];
assign a_MEM_ACTIVE_L1_netPar2[18] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][18];
assign a_MEM_ACTIVE_L1_netPar2[19] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][19];
assign a_MEM_ACTIVE_L1_netPar2[20] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][20];
assign a_MEM_ACTIVE_L1_netPar2[21] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][21];
assign a_MEM_ACTIVE_L1_netPar2[22] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][22];
assign a_MEM_ACTIVE_L1_netPar2[23] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][23];
assign a_MEM_ACTIVE_L1_netPar2[24] = a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][24];
assign a_MEM_ACTIVE_L2_netPar2[0] = a_MEM_L2_netPar2[TRAINING_SET_CURRENT_netPar2][0];
assign a_MEM_ACTIVE_L2_netPar2[1] = a_MEM_L2_netPar2[TRAINING_SET_CURRENT_netPar2][1];
assign a_MEM_ACTIVE_L2_netPar2[2] = a_MEM_L2_netPar2[TRAINING_SET_CURRENT_netPar2][2];
assign a_MEM_ACTIVE_L2_netPar2[3] = a_MEM_L2_netPar2[TRAINING_SET_CURRENT_netPar2][3];
assign a_MEM_ACTIVE_L2_netPar2[4] = a_MEM_L2_netPar2[TRAINING_SET_CURRENT_netPar2][4];
assign a_MEM_ACTIVE_L2_netPar2[5] = a_MEM_L2_netPar2[TRAINING_SET_CURRENT_netPar2][5];
assign a_MEM_ACTIVE_L2_netPar2[6] = a_MEM_L2_netPar2[TRAINING_SET_CURRENT_netPar2][6];
assign a_MEM_ACTIVE_L2_netPar2[7] = a_MEM_L2_netPar2[TRAINING_SET_CURRENT_netPar2][7];
assign a_MEM_ACTIVE_L3_netPar2[0] = a_MEM_L3_netPar2[TRAINING_SET_CURRENT_netPar2][0];
assign a_MEM_ACTIVE_L3_netPar2[1] = a_MEM_L3_netPar2[TRAINING_SET_CURRENT_netPar2][1];
assign a_MEM_ACTIVE_L3_netPar2[2] = a_MEM_L3_netPar2[TRAINING_SET_CURRENT_netPar2][2];
assign a_MEM_ACTIVE_L3_netPar2[3] = a_MEM_L3_netPar2[TRAINING_SET_CURRENT_netPar2][3];
assign a_MEM_ACTIVE_L3_netPar2[4] = a_MEM_L3_netPar2[TRAINING_SET_CURRENT_netPar2][4];

integer k = 0;
always @(posedge TRAINING_PRESET2 or posedge INIT) begin
	if (INIT) begin
		for (k = 0; k < MAX_TS; k = k + 1)
		begin
			a_MEM_L1_netPar0[k][24:0] = 0;
			a_MEM_L2_netPar0[k][7:0] = 0;
			a_MEM_L3_netPar0[k][4:0] = 0;
			a_MEM_L1_netPar1[k][24:0] = 0;
			a_MEM_L2_netPar1[k][7:0] = 0;
			a_MEM_L3_netPar1[k][4:0] = 0;
			a_MEM_L1_netPar2[k][24:0] = 0;
			a_MEM_L2_netPar2[k][7:0] = 0;
			a_MEM_L3_netPar2[k][4:0] = 0;
			
		end
	end else begin
		a_MEM_L1_netPar0[TRAINING_SET_CURRENT_netPar0][24:0] = a_L1_netPar0; 
		a_MEM_L2_netPar0[TRAINING_SET_CURRENT_netPar0][7:0] = a_L2_netPar0; 
		a_MEM_L3_netPar0[TRAINING_SET_CURRENT_netPar0][4:0] = a_L3_netPar0; 
		a_MEM_L1_netPar1[TRAINING_SET_CURRENT_netPar1][24:0] = a_L1_netPar1; 
		a_MEM_L2_netPar1[TRAINING_SET_CURRENT_netPar1][7:0] = a_L2_netPar1; 
		a_MEM_L3_netPar1[TRAINING_SET_CURRENT_netPar1][4:0] = a_L3_netPar1; 
		a_MEM_L1_netPar2[TRAINING_SET_CURRENT_netPar2][24:0] = a_L1_netPar2; 
		a_MEM_L2_netPar2[TRAINING_SET_CURRENT_netPar2][7:0] = a_L2_netPar2; 
		a_MEM_L3_netPar2[TRAINING_SET_CURRENT_netPar2][4:0] = a_L3_netPar2; 
		
	end
end

always @(posedge TRAINING_PRESET or posedge INIT) begin
	if (INIT) begin
		aD_L0_0_netPar0 <= TS_aD_L0_0[0][DP_in-1:0];
		aD_L0_1_netPar0 <= TS_aD_L0_1[0][DP_in-1:0];
		aD_L0_2_netPar0 <= TS_aD_L0_2[0][DP_in-1:0];
		aD_L0_3_netPar0 <= TS_aD_L0_3[0][DP_in-1:0];
		aD_L0_4_netPar0 <= TS_aD_L0_4[0][DP_in-1:0];
		YD0_netPar0 <= TS_YD0[0][DP_out-1:0];
		YD1_netPar0 <= TS_YD1[0][DP_out-1:0];
		YD2_netPar0 <= TS_YD2[0][DP_out-1:0];
		YD3_netPar0 <= TS_YD3[0][DP_out-1:0];
		YD4_netPar0 <= TS_YD4[0][DP_out-1:0];
	end else begin
		aD_L0_0_netPar0 <= TS_aD_L0_0[TRAINING_SET_netPar0][DP_in-1:0];
		aD_L0_1_netPar0 <= TS_aD_L0_1[TRAINING_SET_netPar0][DP_in-1:0];
		aD_L0_2_netPar0 <= TS_aD_L0_2[TRAINING_SET_netPar0][DP_in-1:0];
		aD_L0_3_netPar0 <= TS_aD_L0_3[TRAINING_SET_netPar0][DP_in-1:0];
		aD_L0_4_netPar0 <= TS_aD_L0_4[TRAINING_SET_netPar0][DP_in-1:0];
		YD0_netPar0 <= TS_YD0[TRAINING_SET_netPar0][DP_out-1:0];
		YD1_netPar0 <= TS_YD1[TRAINING_SET_netPar0][DP_out-1:0];
		YD2_netPar0 <= TS_YD2[TRAINING_SET_netPar0][DP_out-1:0];
		YD3_netPar0 <= TS_YD3[TRAINING_SET_netPar0][DP_out-1:0];
		YD4_netPar0 <= TS_YD4[TRAINING_SET_netPar0][DP_out-1:0];
	end
end

always @(posedge TRAINING_PRESET or posedge INIT) begin
	if (INIT) begin
		aD_L0_0_netPar1 <= TS_aD_L0_0[0][DP_in-1:0];
		aD_L0_1_netPar1 <= TS_aD_L0_1[0][DP_in-1:0];
		aD_L0_2_netPar1 <= TS_aD_L0_2[0][DP_in-1:0];
		aD_L0_3_netPar1 <= TS_aD_L0_3[0][DP_in-1:0];
		aD_L0_4_netPar1 <= TS_aD_L0_4[0][DP_in-1:0];
		YD0_netPar1 <= TS_YD0[0][DP_out-1:0];
		YD1_netPar1 <= TS_YD1[0][DP_out-1:0];
		YD2_netPar1 <= TS_YD2[0][DP_out-1:0];
		YD3_netPar1 <= TS_YD3[0][DP_out-1:0];
		YD4_netPar1 <= TS_YD4[0][DP_out-1:0];
	end else begin
		aD_L0_0_netPar1 <= TS_aD_L0_0[TRAINING_SET_netPar1][DP_in-1:0];
		aD_L0_1_netPar1 <= TS_aD_L0_1[TRAINING_SET_netPar1][DP_in-1:0];
		aD_L0_2_netPar1 <= TS_aD_L0_2[TRAINING_SET_netPar1][DP_in-1:0];
		aD_L0_3_netPar1 <= TS_aD_L0_3[TRAINING_SET_netPar1][DP_in-1:0];
		aD_L0_4_netPar1 <= TS_aD_L0_4[TRAINING_SET_netPar1][DP_in-1:0];
		YD0_netPar1 <= TS_YD0[TRAINING_SET_netPar1][DP_out-1:0];
		YD1_netPar1 <= TS_YD1[TRAINING_SET_netPar1][DP_out-1:0];
		YD2_netPar1 <= TS_YD2[TRAINING_SET_netPar1][DP_out-1:0];
		YD3_netPar1 <= TS_YD3[TRAINING_SET_netPar1][DP_out-1:0];
		YD4_netPar1 <= TS_YD4[TRAINING_SET_netPar1][DP_out-1:0];
	end
end

always @(posedge TRAINING_PRESET or posedge INIT) begin
	if (INIT) begin
		aD_L0_0_netPar2 <= TS_aD_L0_0[0][DP_in-1:0];
		aD_L0_1_netPar2 <= TS_aD_L0_1[0][DP_in-1:0];
		aD_L0_2_netPar2 <= TS_aD_L0_2[0][DP_in-1:0];
		aD_L0_3_netPar2 <= TS_aD_L0_3[0][DP_in-1:0];
		aD_L0_4_netPar2 <= TS_aD_L0_4[0][DP_in-1:0];
		YD0_netPar2 <= TS_YD0[0][DP_out-1:0];
		YD1_netPar2 <= TS_YD1[0][DP_out-1:0];
		YD2_netPar2 <= TS_YD2[0][DP_out-1:0];
		YD3_netPar2 <= TS_YD3[0][DP_out-1:0];
		YD4_netPar2 <= TS_YD4[0][DP_out-1:0];
	end else begin
		aD_L0_0_netPar2 <= TS_aD_L0_0[TRAINING_SET_netPar2][DP_in-1:0];
		aD_L0_1_netPar2 <= TS_aD_L0_1[TRAINING_SET_netPar2][DP_in-1:0];
		aD_L0_2_netPar2 <= TS_aD_L0_2[TRAINING_SET_netPar2][DP_in-1:0];
		aD_L0_3_netPar2 <= TS_aD_L0_3[TRAINING_SET_netPar2][DP_in-1:0];
		aD_L0_4_netPar2 <= TS_aD_L0_4[TRAINING_SET_netPar2][DP_in-1:0];
		YD0_netPar2 <= TS_YD0[TRAINING_SET_netPar2][DP_out-1:0];
		YD1_netPar2 <= TS_YD1[TRAINING_SET_netPar2][DP_out-1:0];
		YD2_netPar2 <= TS_YD2[TRAINING_SET_netPar2][DP_out-1:0];
		YD3_netPar2 <= TS_YD3[TRAINING_SET_netPar2][DP_out-1:0];
		YD4_netPar2 <= TS_YD4[TRAINING_SET_netPar2][DP_out-1:0];
	end
end

always @(posedge INIT or posedge TrainingSetOutput_CLK) begin
	if (INIT) begin
		TS_YD0[0][DP_out-1:0] = 16'd65535;
		TS_YD1[0][DP_out-1:0] = 16'd0; 
		TS_YD2[0][DP_out-1:0] = 16'd0; 
		TS_YD3[0][DP_out-1:0] = 16'd0; 
		TS_YD4[0][DP_out-1:0] = 16'd0; 

		TS_YD0[1][DP_out-1:0] = 16'd0; 
		TS_YD1[1][DP_out-1:0] = 16'd65535;
		TS_YD2[1][DP_out-1:0] = 16'd0; 
		TS_YD3[1][DP_out-1:0] = 16'd0; 
		TS_YD4[1][DP_out-1:0] = 16'd0; 

		TS_YD0[2][DP_out-1:0] = 16'd0; 
		TS_YD1[2][DP_out-1:0] = 16'd0; 
		TS_YD2[2][DP_out-1:0] = 16'd65535;
		TS_YD3[2][DP_out-1:0] = 16'd0; 
		TS_YD4[2][DP_out-1:0] = 16'd0; 

		TS_YD0[3][DP_out-1:0] = 16'd0; 
		TS_YD1[3][DP_out-1:0] = 16'd0; 
		TS_YD2[3][DP_out-1:0] = 16'd0; 
		TS_YD3[3][DP_out-1:0] = 16'd65535;
		TS_YD4[3][DP_out-1:0] = 16'd0; 

		TS_YD0[4][DP_out-1:0] = 16'd0; 
		TS_YD1[4][DP_out-1:0] = 16'd0; 
		TS_YD2[4][DP_out-1:0] = 16'd0; 
		TS_YD3[4][DP_out-1:0] = 16'd0; 
		TS_YD4[4][DP_out-1:0] = 16'd65535;

	end
	else if (TrainingSetOutput_index == 16'd0) TS_YD0[0][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd1) TS_YD1[0][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd2) TS_YD2[0][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd3) TS_YD3[0][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd4) TS_YD4[0][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd5) TS_YD0[1][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd6) TS_YD1[1][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd7) TS_YD2[1][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd8) TS_YD3[1][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd9) TS_YD4[1][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd10) TS_YD0[2][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd11) TS_YD1[2][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd12) TS_YD2[2][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd13) TS_YD3[2][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd14) TS_YD4[2][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd15) TS_YD0[3][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd16) TS_YD1[3][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd17) TS_YD2[3][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd18) TS_YD3[3][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd19) TS_YD4[3][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd20) TS_YD0[4][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd21) TS_YD1[4][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd22) TS_YD2[4][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd23) TS_YD3[4][DP_out-1:0] = TrainingSetOutput_data;
	else if (TrainingSetOutput_index == 16'd24) TS_YD4[4][DP_out-1:0] = TrainingSetOutput_data;
	
end

always @(posedge INIT or posedge TrainingSetInput_CLK) begin
	if (INIT) begin
		TS_aD_L0_0[0][DP_in-1:0] = 8'd255;
		TS_aD_L0_1[0][DP_in-1:0] = 8'd0;
		TS_aD_L0_2[0][DP_in-1:0] = 8'd0;
		TS_aD_L0_3[0][DP_in-1:0] = 8'd0;
		TS_aD_L0_4[0][DP_in-1:0] = 8'd0;

		TS_aD_L0_0[1][DP_in-1:0] = 8'd0;
		TS_aD_L0_1[1][DP_in-1:0] = 8'd255;
		TS_aD_L0_2[1][DP_in-1:0] = 8'd0;
		TS_aD_L0_3[1][DP_in-1:0] = 8'd0;
		TS_aD_L0_4[1][DP_in-1:0] = 8'd0;

		TS_aD_L0_0[2][DP_in-1:0] = 8'd0;
		TS_aD_L0_1[2][DP_in-1:0] = 8'd0;
		TS_aD_L0_2[2][DP_in-1:0] = 8'd255;
		TS_aD_L0_3[2][DP_in-1:0] = 8'd0;
		TS_aD_L0_4[2][DP_in-1:0] = 8'd0;

		TS_aD_L0_0[3][DP_in-1:0] = 8'd0;
		TS_aD_L0_1[3][DP_in-1:0] = 8'd0;
		TS_aD_L0_2[3][DP_in-1:0] = 8'd0;
		TS_aD_L0_3[3][DP_in-1:0] = 8'd255;
		TS_aD_L0_4[3][DP_in-1:0] = 8'd0;

		TS_aD_L0_0[4][DP_in-1:0] = 8'd0;
		TS_aD_L0_1[4][DP_in-1:0] = 8'd0;
		TS_aD_L0_2[4][DP_in-1:0] = 8'd0;
		TS_aD_L0_3[4][DP_in-1:0] = 8'd0;
		TS_aD_L0_4[4][DP_in-1:0] = 8'd255;

	end
	else if (TrainingSetInput_index == 16'd0) TS_aD_L0_0[WriteTrainingSet_index][DP_in-1:0] = TrainingSetInput_data;
	else if (TrainingSetInput_index == 16'd1) TS_aD_L0_1[WriteTrainingSet_index][DP_in-1:0] = TrainingSetInput_data;
	else if (TrainingSetInput_index == 16'd2) TS_aD_L0_2[WriteTrainingSet_index][DP_in-1:0] = TrainingSetInput_data;
	else if (TrainingSetInput_index == 16'd3) TS_aD_L0_3[WriteTrainingSet_index][DP_in-1:0] = TrainingSetInput_data;
	else if (TrainingSetInput_index == 16'd4) TS_aD_L0_4[WriteTrainingSet_index][DP_in-1:0] = TrainingSetInput_data;
	
end

endmodule
