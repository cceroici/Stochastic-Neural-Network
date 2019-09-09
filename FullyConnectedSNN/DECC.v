// Chris Ceroici 

module DECC(
	a_L1,
	a_L2,
	a_L3,
	aD_L1_0, aD_L1_1, aD_L1_2, aD_L1_3, aD_L1_4, aD_L1_5, aD_L1_6, aD_L1_7, aD_L1_8, aD_L1_9, aD_L1_10, aD_L1_11, aD_L1_12, aD_L1_13, aD_L1_14, aD_L1_15, aD_L1_16, aD_L1_17, aD_L1_18, aD_L1_19, aD_L1_20, aD_L1_21, aD_L1_22, aD_L1_23, aD_L1_24,
	aD_L2_0, aD_L2_1, aD_L2_2, aD_L2_3, aD_L2_4, aD_L2_5, aD_L2_6, aD_L2_7,
	aD_L3_0, aD_L3_1, aD_L3_2, aD_L3_3, aD_L3_4,
		NodeOutputExp_clk, NodeOutputExp_index, NodeOutputExp_data,
	CLK, BP_FRAME, pre_BP_FRAME, FP_FRAME, pre_FP_FRAME, INIT
);

parameter DP_in = 8;
parameter DP_out = 16;

input wire [25 - 1:0] a_L1;
input wire [8 - 1:0] a_L2;
input wire [5 - 1:0] a_L3;
input NodeOutputExp_clk;
input [15:0] NodeOutputExp_index;
input wire CLK, BP_FRAME, pre_BP_FRAME, FP_FRAME, pre_FP_FRAME, INIT;

// Outputs:
output reg [15:0] NodeOutputExp_data;

output wire [DP_out - 1:0] aD_L1_0, aD_L1_1, aD_L1_2, aD_L1_3, aD_L1_4, aD_L1_5, aD_L1_6, aD_L1_7, aD_L1_8, aD_L1_9, aD_L1_10, aD_L1_11, aD_L1_12, aD_L1_13, aD_L1_14, aD_L1_15, aD_L1_16, aD_L1_17, aD_L1_18, aD_L1_19, aD_L1_20, aD_L1_21, aD_L1_22, aD_L1_23, aD_L1_24;
output wire [DP_out - 1:0] aD_L2_0, aD_L2_1, aD_L2_2, aD_L2_3, aD_L2_4, aD_L2_5, aD_L2_6, aD_L2_7;
output wire [DP_out - 1:0] aD_L3_0, aD_L3_1, aD_L3_2, aD_L3_3, aD_L3_4;
MEAN MEANa_L1_0(.in(a_L1[0]), .out(aD_L1_0), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_1(.in(a_L1[1]), .out(aD_L1_1), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_2(.in(a_L1[2]), .out(aD_L1_2), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_3(.in(a_L1[3]), .out(aD_L1_3), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_4(.in(a_L1[4]), .out(aD_L1_4), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_5(.in(a_L1[5]), .out(aD_L1_5), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_6(.in(a_L1[6]), .out(aD_L1_6), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_7(.in(a_L1[7]), .out(aD_L1_7), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_8(.in(a_L1[8]), .out(aD_L1_8), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_9(.in(a_L1[9]), .out(aD_L1_9), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_10(.in(a_L1[10]), .out(aD_L1_10), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_11(.in(a_L1[11]), .out(aD_L1_11), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_12(.in(a_L1[12]), .out(aD_L1_12), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_13(.in(a_L1[13]), .out(aD_L1_13), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_14(.in(a_L1[14]), .out(aD_L1_14), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_15(.in(a_L1[15]), .out(aD_L1_15), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_16(.in(a_L1[16]), .out(aD_L1_16), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_17(.in(a_L1[17]), .out(aD_L1_17), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_18(.in(a_L1[18]), .out(aD_L1_18), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_19(.in(a_L1[19]), .out(aD_L1_19), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_20(.in(a_L1[20]), .out(aD_L1_20), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_21(.in(a_L1[21]), .out(aD_L1_21), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_22(.in(a_L1[22]), .out(aD_L1_22), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_23(.in(a_L1[23]), .out(aD_L1_23), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L1_24(.in(a_L1[24]), .out(aD_L1_24), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
defparam MEANa_L1_0.N_Count = DP_out;
defparam MEANa_L1_1.N_Count = DP_out;
defparam MEANa_L1_2.N_Count = DP_out;
defparam MEANa_L1_3.N_Count = DP_out;
defparam MEANa_L1_4.N_Count = DP_out;
defparam MEANa_L1_5.N_Count = DP_out;
defparam MEANa_L1_6.N_Count = DP_out;
defparam MEANa_L1_7.N_Count = DP_out;
defparam MEANa_L1_8.N_Count = DP_out;
defparam MEANa_L1_9.N_Count = DP_out;
defparam MEANa_L1_10.N_Count = DP_out;
defparam MEANa_L1_11.N_Count = DP_out;
defparam MEANa_L1_12.N_Count = DP_out;
defparam MEANa_L1_13.N_Count = DP_out;
defparam MEANa_L1_14.N_Count = DP_out;
defparam MEANa_L1_15.N_Count = DP_out;
defparam MEANa_L1_16.N_Count = DP_out;
defparam MEANa_L1_17.N_Count = DP_out;
defparam MEANa_L1_18.N_Count = DP_out;
defparam MEANa_L1_19.N_Count = DP_out;
defparam MEANa_L1_20.N_Count = DP_out;
defparam MEANa_L1_21.N_Count = DP_out;
defparam MEANa_L1_22.N_Count = DP_out;
defparam MEANa_L1_23.N_Count = DP_out;
defparam MEANa_L1_24.N_Count = DP_out;

MEAN MEANa_L2_0(.in(a_L2[0]), .out(aD_L2_0), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L2_1(.in(a_L2[1]), .out(aD_L2_1), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L2_2(.in(a_L2[2]), .out(aD_L2_2), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L2_3(.in(a_L2[3]), .out(aD_L2_3), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L2_4(.in(a_L2[4]), .out(aD_L2_4), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L2_5(.in(a_L2[5]), .out(aD_L2_5), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L2_6(.in(a_L2[6]), .out(aD_L2_6), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L2_7(.in(a_L2[7]), .out(aD_L2_7), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
defparam MEANa_L2_0.N_Count = DP_out;
defparam MEANa_L2_1.N_Count = DP_out;
defparam MEANa_L2_2.N_Count = DP_out;
defparam MEANa_L2_3.N_Count = DP_out;
defparam MEANa_L2_4.N_Count = DP_out;
defparam MEANa_L2_5.N_Count = DP_out;
defparam MEANa_L2_6.N_Count = DP_out;
defparam MEANa_L2_7.N_Count = DP_out;

MEAN MEANa_L3_0(.in(a_L3[0]), .out(aD_L3_0), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L3_1(.in(a_L3[1]), .out(aD_L3_1), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L3_2(.in(a_L3[2]), .out(aD_L3_2), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L3_3(.in(a_L3[3]), .out(aD_L3_3), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
MEAN MEANa_L3_4(.in(a_L3[4]), .out(aD_L3_4), .START(16'd0),.RESET(FP_FRAME),.CLK(CLK),.INIT(INIT),.ENABLE(1'b1), .preRESET(pre_FP_FRAME));
defparam MEANa_L3_0.N_Count = DP_out;
defparam MEANa_L3_1.N_Count = DP_out;
defparam MEANa_L3_2.N_Count = DP_out;
defparam MEANa_L3_3.N_Count = DP_out;
defparam MEANa_L3_4.N_Count = DP_out;

always @(posedge NodeOutputExp_clk) begin
	case (NodeOutputExp_index)
		16'd0: NodeOutputExp_data = aD_L1_0;
		16'd1: NodeOutputExp_data = aD_L1_1;
		16'd2: NodeOutputExp_data = aD_L1_2;
		16'd3: NodeOutputExp_data = aD_L1_3;
		16'd4: NodeOutputExp_data = aD_L1_4;
		16'd5: NodeOutputExp_data = aD_L1_5;
		16'd6: NodeOutputExp_data = aD_L1_6;
		16'd7: NodeOutputExp_data = aD_L1_7;
		16'd8: NodeOutputExp_data = aD_L1_8;
		16'd9: NodeOutputExp_data = aD_L1_9;
		16'd10: NodeOutputExp_data = aD_L1_10;
		16'd11: NodeOutputExp_data = aD_L1_11;
		16'd12: NodeOutputExp_data = aD_L1_12;
		16'd13: NodeOutputExp_data = aD_L1_13;
		16'd14: NodeOutputExp_data = aD_L1_14;
		16'd15: NodeOutputExp_data = aD_L1_15;
		16'd16: NodeOutputExp_data = aD_L1_16;
		16'd17: NodeOutputExp_data = aD_L1_17;
		16'd18: NodeOutputExp_data = aD_L1_18;
		16'd19: NodeOutputExp_data = aD_L1_19;
		16'd20: NodeOutputExp_data = aD_L1_20;
		16'd21: NodeOutputExp_data = aD_L1_21;
		16'd22: NodeOutputExp_data = aD_L1_22;
		16'd23: NodeOutputExp_data = aD_L1_23;
		16'd24: NodeOutputExp_data = aD_L1_24;
		16'd25: NodeOutputExp_data = aD_L2_0;
		16'd26: NodeOutputExp_data = aD_L2_1;
		16'd27: NodeOutputExp_data = aD_L2_2;
		16'd28: NodeOutputExp_data = aD_L2_3;
		16'd29: NodeOutputExp_data = aD_L2_4;
		16'd30: NodeOutputExp_data = aD_L2_5;
		16'd31: NodeOutputExp_data = aD_L2_6;
		16'd32: NodeOutputExp_data = aD_L2_7;
		16'd33: NodeOutputExp_data = aD_L3_0;
		16'd34: NodeOutputExp_data = aD_L3_1;
		16'd35: NodeOutputExp_data = aD_L3_2;
		16'd36: NodeOutputExp_data = aD_L3_3;
		16'd37: NodeOutputExp_data = aD_L3_4;
		default: NodeOutputExp_data = 1'b0;
	
	endcase
end


endmodule
