
// Chris Ceroici
// Perform stochastic arithmetic for N inputs
// requires SIGN input for each input argument

module SS_ADDSUB(CLK,INIT,IN,SIGN,R_condition,OUT,SIGN_out);

parameter N = 6;
//parameter DIFFCOUNTER_SIZE = 5;
//parameter DIFFCOUNT_LOWERLIM = 4;
parameter DIFFCOUNTER_SIZE = 1;
parameter DIFFCOUNT_LOWERLIM = 0;

input CLK,INIT;
input [N-1:0] IN,SIGN;
input R_condition;

output OUT,SIGN_out;

wire INPUT_SUM_pos, INPUT_SUM_neg;
wire OUTPUT_pos, OUTPUT_neg, OUT;
//wire COUNT_ACTIVE;

reg [DIFFCOUNTER_SIZE-1:0] DIFFCOUNT = 1'd0;
reg DIFFCOUNT_SIGN = 1'd0;

reg [DIFFCOUNTER_SIZE-1:0] DIFFCOUNT_LIMIT = 1'd0-1'd1;

wire [N-1:0] N_INPUTS_pos;
wire [N-1:0] N_INPUTS_neg;


M_SIDEADD #(.N_inputs(N), .NB_out(N)) SIDEADDpos(.EN(1'b1),.IN(IN&(~SIGN)),.OUT(N_INPUTS_pos));
M_SIDEADD #(.N_inputs(N), .NB_out(N)) SIDEADDneg(.EN(1'b1),.IN(IN&(SIGN)),.OUT(N_INPUTS_neg));
//defparam SIDEADDpos.N_inputs = N;
//defparam SIDEADDpos.NB_out = N;
//defparam SIDEADDneg.N_inputs = N;
//defparam SIDEADDneg.NB_out = N;

wire EQUAL, INPUT_SIGN;

assign EQUAL = (N_INPUTS_pos==N_INPUTS_neg);

assign INPUT_SIGN = (R_condition) ?  (N_INPUTS_neg>=N_INPUTS_pos) : (N_INPUTS_neg>N_INPUTS_pos);

always @(posedge CLK or posedge INIT) begin

	if (INIT) begin
		DIFFCOUNT_SIGN = 1'b0; 
		//DIFFCOUNT_SIGN = DIFFCOUNT_SIGN;
		DIFFCOUNT <= 1'b0;
	end else if (EQUAL) DIFFCOUNT <= DIFFCOUNT;
	else if ((!INPUT_SIGN)&(DIFFCOUNT_SIGN)&(DIFFCOUNT<N_INPUTS_pos)) begin // +ve input, currently -ve, cross: -ve -> +ve
		DIFFCOUNT_SIGN = 1'b0;
		DIFFCOUNT <= N_INPUTS_pos; 
	// NOTE: If DIFFCOUNT = 1, (DIFFCOUNT<(DIFFCOUNT_LIMIT-N_INPUTS_pos) will never be satisfied when only a single input is 1. 
	end else if ((!INPUT_SIGN)&(DIFFCOUNT<(DIFFCOUNT_LIMIT-N_INPUTS_pos))&(!DIFFCOUNT_SIGN)) begin // +ve input, currently +ve, stay as positive and increment
			DIFFCOUNT <= DIFFCOUNT + N_INPUTS_pos; 
	end else if ((!INPUT_SIGN)&(DIFFCOUNT_SIGN)) begin // +ve input, currently -ve, stay -ve and decrement
			DIFFCOUNT <= DIFFCOUNT - N_INPUTS_pos; 
	end else if ((INPUT_SIGN)&(!DIFFCOUNT_SIGN)&(DIFFCOUNT<N_INPUTS_neg)) begin // -ve input, currently +ve, cross: +ve -> -ve
		DIFFCOUNT_SIGN = 1'b1;
		DIFFCOUNT <= N_INPUTS_neg; 
	end else if ((INPUT_SIGN)&(DIFFCOUNT<(DIFFCOUNT_LIMIT-N_INPUTS_neg))&(DIFFCOUNT_SIGN)) begin // -ve input, currently +ve, cross: +ve -> -ve
			DIFFCOUNT <= DIFFCOUNT + N_INPUTS_neg; 
	end else if ((INPUT_SIGN)&(!DIFFCOUNT_SIGN)) begin // -ve input, currently +ve, stay +ve and decrement
			DIFFCOUNT <= DIFFCOUNT - N_INPUTS_neg; 
	end else DIFFCOUNT <= DIFFCOUNT;

end

assign SIGN_out = DIFFCOUNT_SIGN;

M_OR OR_pos(1'b1,IN&(~SIGN),INPUT_SUM_pos);
defparam OR_pos.N = N;

M_OR OR_neg(1'b1,IN&(SIGN),INPUT_SUM_neg);
defparam OR_neg.N = N;

assign OUTPUT_pos = INPUT_SUM_pos&(~INPUT_SUM_neg);
assign OUTPUT_neg = INPUT_SUM_neg&(~INPUT_SUM_pos);

assign OUT_temp = (SIGN_out) ? (OUTPUT_neg) : (OUTPUT_pos);

//assign OUT  = (DIFFCOUNT > (DIFFCOUNT_LIMIT-2'd2)) ? OUT_temp : 1'b0;
assign OUT  = (DIFFCOUNT > (DIFFCOUNT_LOWERLIM)) ? OUT_temp : 1'b0;

endmodule