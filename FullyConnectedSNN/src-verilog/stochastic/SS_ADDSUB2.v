
// Chris Ceroici
// Perform stochastic arithmetic for N inputs
// requires SIGN input for each input argument

module SS_ADDSUB2(CLK,INIT,IN,SIGN,R_condition,OUT,SIGN_out);

parameter N = 2;
parameter DIFFCOUNTER_SIZE = 2;
parameter DIFFCOUNT_MIN = 1;

input CLK,INIT;
input [N-1:0] IN,SIGN;
input R_condition;

output OUT,SIGN_out;

wire INPUT_SUM_pos, INPUT_SUM_neg;
wire OUTPUT_pos, OUTPUT_neg, OUT;
wire COUNT_ACTIVE;

reg [DIFFCOUNTER_SIZE-1:0] DIFFCOUNT = 1'd0;
reg DIFFCOUNT_SIGN = 1'd0;

reg [DIFFCOUNTER_SIZE-1:0] DIFFCOUNT_LIMIT = 1'd0-1'd1;

wire [N-1:0] N_INPUTS_pos;
wire [N-1:0] N_INPUTS_neg;

assign N_INPUTS_pos = {1'b0,IN[0]&(~SIGN[0])} + {1'b0,IN[1]&(~SIGN[1])};
assign N_INPUTS_neg = {1'b0,IN[0]&(SIGN[0])} + {1'b0,IN[1]&(SIGN[1])};

wire EQUAL, INPUT_SIGN;

assign EQUAL = (N_INPUTS_pos==N_INPUTS_neg);

assign INPUT_SIGN = (R_condition) ?  (N_INPUTS_neg>=N_INPUTS_pos) : (N_INPUTS_neg>N_INPUTS_pos);

always @(posedge CLK) begin

	if (INIT) begin
		DIFFCOUNT_SIGN = DIFFCOUNT_SIGN;
		DIFFCOUNT <= 1'b0;
	end else if (EQUAL) DIFFCOUNT <= DIFFCOUNT;
	else if ((!INPUT_SIGN)&(DIFFCOUNT_SIGN)&(DIFFCOUNT<N_INPUTS_pos)) begin // +ve input, currently -ve, cross: -ve -> +ve
		DIFFCOUNT_SIGN = 1'b0;
		DIFFCOUNT <= N_INPUTS_pos; 
	end else if ((!INPUT_SIGN)&(DIFFCOUNT<(DIFFCOUNT_LIMIT-N_INPUTS_pos))&(!DIFFCOUNT_SIGN)) begin // +ve input, currently +ve, stay as positive and increment
			DIFFCOUNT <= DIFFCOUNT + N_INPUTS_pos; 
	end else if ((!INPUT_SIGN)&(DIFFCOUNT_SIGN)) begin // +ve input, currently -ve, stay -ve and decrement
			DIFFCOUNT <= DIFFCOUNT - N_INPUTS_pos; 
	end else if ((INPUT_SIGN)&(!DIFFCOUNT_SIGN)&(DIFFCOUNT<N_INPUTS_neg)) begin // -ve input, currently +ve, cross: +ve -> -ve
		DIFFCOUNT_SIGN = 1'b1;
		DIFFCOUNT <= N_INPUTS_neg; 
	end else if ((INPUT_SIGN)&(DIFFCOUNT<(DIFFCOUNT_LIMIT-N_INPUTS_neg))&(DIFFCOUNT_SIGN)) begin // -ve input, currently -ve, stay as negative and increment
			DIFFCOUNT <= DIFFCOUNT + N_INPUTS_neg; 
	end else if ((INPUT_SIGN)&(!DIFFCOUNT_SIGN)) begin // -ve input, currently +ve, stay +ve and decrement
			DIFFCOUNT <= DIFFCOUNT - N_INPUTS_neg; 
	end else DIFFCOUNT <= DIFFCOUNT;
	
end


assign SIGN_out = DIFFCOUNT_SIGN;

assign INPUT_SUM_pos = (IN[0]&(~SIGN[0]))|(IN[1]&(~SIGN[1]));
assign INPUT_SUM_neg = (IN[0]&(SIGN[0]))|(IN[1]&(SIGN[1]));

assign OUTPUT_pos = INPUT_SUM_pos&(~INPUT_SUM_neg);
assign OUTPUT_neg = INPUT_SUM_neg&(~INPUT_SUM_pos);

//assign OUTPUT_pos = INPUT_SUM_pos&(~INPUT_SUM_neg)&(DIFFCOUNT>DIFFCOUNT_MIN);
//assign OUTPUT_neg = INPUT_SUM_neg&(~INPUT_SUM_pos)&(DIFFCOUNT>DIFFCOUNT_MIN);

assign OUT_temp = (SIGN_out) ? (OUTPUT_neg) : (OUTPUT_pos);

assign OUT = (DIFFCOUNT > (DIFFCOUNT_MIN)) ? OUT_temp : 1'b0;

endmodule