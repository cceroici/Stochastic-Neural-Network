
// With dynamic resistance

module NN_SMOOTHGRAD_POLAR(CLK, CLK_TRAINING_flag, INIT, IN_SS, SIGN, OUT, SIGN_out, RESISTANCE, TransitionChange_TRIG, OUT_INIT, SIGN_OUT_INIT, EN);

parameter N = 8; // decimal output size
parameter N_RESISTANCE = 9;

input CLK, CLK_TRAINING_flag, INIT, EN;
input IN_SS, SIGN;
input [N-1:0] OUT_INIT;
input SIGN_OUT_INIT;
input [N_RESISTANCE-1:0] RESISTANCE;
//input [N_RESISTANCE -1:0] RESISTANCE_MAX;

output  reg [N-1:0] OUT = 0;
output reg SIGN_out = 1'b0;

output wire TransitionChange_TRIG;

reg [N-1:0] MaxVal_reg = 1'd0-1'd1;
//reg [3-1:0] MaxVal_flag = 1'd0 - 1'd1;
reg [N_RESISTANCE-1:0] flag_counter = 1'b0;
//reg [N_RESISTANCE-1:0] flag_neg = 1'b0;

//reg [N_RESISTANCE-1:0] RESISTANCE_MAX = 1'd0 - 1'd1;
//reg [N_RESISTANCE-1:0] RESISTANCE_MAX = 8'd100;

reg Transition = 1'd0; // sign of current flag saturation (direction parameter has moved)
reg lastTransition = 1'd0; // sign of last flag saturation (direction parameter has moved)
reg Transition_TRIG = 1'b0;

//wire Transition_neg;
//wire RESISTANCE_NOTATMAX, RESISTANCE_NOTATZERO;
wire OUT_ATMAX, OUT_ATMAX_neg, OUT_ATMAX_pos, OUT_ATZERO;
wire SIGNS_EQUAL;
wire flag_ATRESISTANCE;

//assign Transition_neg = ~Transition;

assign OUT_ATMAX = (OUT==MaxVal_reg);
assign OUT_ATMAX_neg = (OUT==MaxVal_reg)&(SIGN_out==1'b1);
assign OUT_ATMAX_pos = (OUT==MaxVal_reg)&(SIGN_out==1'b0);
assign OUT_ATZERO = (OUT==1'b0);
assign SIGNS_EQUAL = (SIGN==SIGN_out);
assign flag_ATRESISTANCE = (flag_counter>=RESISTANCE);
//assign flag_neg_ATRESISTANCE = (flag_neg>=RESISTANCE);

/*
assign RESISTANCE_NOTATMAX = ~(RESISTANCE==RESISTANCE_MAX);
assign RESISTANCE_NOTATZERO = ~(RESISTANCE==1'd0);

always @(posedge INIT or posedge Transition_TRIG) begin
	if (INIT) begin
		RESISTANCE <= RESISTANCE;
		lastTransition <= 1'b0;
	end else if ((Transition!=lastTransition)&RESISTANCE_NOTATMAX) begin
		RESISTANCE <= RESISTANCE+1'b1;
		lastTransition <= Transition;
	end 
end
*/

assign TransitionChange_TRIG = Transition_TRIG&(Transition!=lastTransition);


/*
condition:
flag_pos_ATRESISTANCE
flag_neg_ATRESISTANCE
OUT_ATZERO
*/

always @(posedge INIT or posedge CLK) begin
	
 	if (INIT) begin
		OUT <= OUT_INIT;
		SIGN_out <= SIGN_OUT_INIT;
		flag_counter <= 1'b0;

	end else if (~EN) begin
		OUT <= OUT;
		SIGN_out <= SIGN_out;
		flag_counter <= flag_counter;

	end else if (!IN_SS) begin // input zero
		OUT <= OUT;
		SIGN_out <= SIGN_out;
		flag_counter <= flag_counter;
		
	end else if (flag_ATRESISTANCE&OUT_ATZERO) begin
		OUT <= 1'b1;
		SIGN_out <= SIGN;
		flag_counter <= 1'b0;
	
	end else if (flag_ATRESISTANCE) begin
		OUT <= OUT + ((SIGNS_EQUAL==1'b1)&(~OUT_ATMAX)) - (SIGNS_EQUAL==1'b0);
		SIGN_out <= SIGN_out;
		flag_counter <= 1'b0;
		
	end else if (~flag_ATRESISTANCE) begin
		OUT <= OUT;
		SIGN_out <= SIGN_out;
		flag_counter <= flag_counter + 1'b1;

	// Default:	
	end else begin
		OUT <= OUT; // Input Positive/Negative: parameter at upper/lower limit -> do nothing	
		SIGN_out <= SIGN_out;

	end
	
	
end

endmodule