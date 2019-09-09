// Chris Ceroici

// Cost function calculation 

module COSTMOD(
	Y,
	SIGN_L3,
	eps,
	a_out,
	R0, R1, R2,
	CLK, CLK_TRAINING_flag,  INIT
);

parameter DP_in = 8;
parameter DP_out = 16;
parameter SUPPRESS_TIME = 8;

input wire CLK, CLK_TRAINING_flag, INIT;
input wire [5-1:0] Y;
input wire [5-1:0] a_out;
input wire [7:0] R0, R1, R2;
output wire [5-1:0] SIGN_L3;
output wire [5-1:0] eps;

wire [5-1:0] R_condition;
wire [5 - 1:0] eps_temp;
reg [8-1:0] SUPPRESS_COUNTER = 1'd0;

// Cost Evaluation:

SS_RERANDOMIZER RERANDOMIZER0(.CLK(CLK), .INIT(INIT), .IN(R0[0]), .OUT(R_condition));
defparam RERANDOMIZER0.N = 5;

SS_ADDSUB2 ADDSUB0(.CLK(CLK),.INIT(INIT|CLK_TRAINING_flag),.IN({Y[0],a_out[0]}),.SIGN({1'b0,1'b1}),.OUT(eps_temp[0]),.R_condition(R_condition[0]),.SIGN_out(SIGN_L3[0]));
SS_ADDSUB2 ADDSUB1(.CLK(CLK),.INIT(INIT|CLK_TRAINING_flag),.IN({Y[1],a_out[1]}),.SIGN({1'b0,1'b1}),.OUT(eps_temp[1]),.R_condition(R_condition[1]),.SIGN_out(SIGN_L3[1]));
SS_ADDSUB2 ADDSUB2(.CLK(CLK),.INIT(INIT|CLK_TRAINING_flag),.IN({Y[2],a_out[2]}),.SIGN({1'b0,1'b1}),.OUT(eps_temp[2]),.R_condition(R_condition[2]),.SIGN_out(SIGN_L3[2]));
SS_ADDSUB2 ADDSUB3(.CLK(CLK),.INIT(INIT|CLK_TRAINING_flag),.IN({Y[3],a_out[3]}),.SIGN({1'b0,1'b1}),.OUT(eps_temp[3]),.R_condition(R_condition[3]),.SIGN_out(SIGN_L3[3]));
SS_ADDSUB2 ADDSUB4(.CLK(CLK),.INIT(INIT|CLK_TRAINING_flag),.IN({Y[4],a_out[4]}),.SIGN({1'b0,1'b1}),.OUT(eps_temp[4]),.R_condition(R_condition[4]),.SIGN_out(SIGN_L3[4]));
defparam ADDSUB0.N = 2;
defparam ADDSUB1.N = 2;
defparam ADDSUB2.N = 2;
defparam ADDSUB3.N = 2;
defparam ADDSUB4.N = 2;


always @(posedge CLK or posedge CLK_TRAINING_flag or posedge INIT) begin
	if (CLK_TRAINING_flag | INIT) SUPPRESS_COUNTER <= 1'b0;
	else if (SUPPRESS_COUNTER <= SUPPRESS_TIME) SUPPRESS_COUNTER <= SUPPRESS_COUNTER + 1'b1;
	else SUPPRESS_COUNTER <= SUPPRESS_COUNTER;
end

assign eps = (SUPPRESS_COUNTER>SUPPRESS_TIME) ? eps_temp : 3'b000;


endmodule
