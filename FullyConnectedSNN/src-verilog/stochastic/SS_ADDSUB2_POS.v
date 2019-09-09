
// Chris Ceroici
// Perform stochastic arithmetic for N inputs
// requires SIGN input for each input argument

// Output only positive sum

module SS_ADDSUB2_POS(CLK,INIT,IN,SIGN,OUT);

parameter N = 2;
parameter DIFFCOUNTER_SIZE = 2;

input CLK,INIT;
input [N-1:0] IN,SIGN;

output OUT;

wire INPUT_SUM_pos, INPUT_SUM_neg;
//wire SIGN_out;
wire OUTPUT_pos, OUT;
wire COUNT_ACTIVE;

reg [DIFFCOUNTER_SIZE-1:0] DIFFCOUNT = 1'd0;
reg DIFFCOUNT_SIGN = 1'd0;

reg [DIFFCOUNTER_SIZE-1:0] DIFFCOUNT_LIMIT = 1'd0-1'd1;

wire [N-1:0] N_INPUTS_pos;
wire [N-1:0] N_INPUTS_neg;

//assign N_INPUTS_pos = {1'b0,IN[0]&(~SIGN[0])} + {1'b0,IN[1]&(~SIGN[1])};
//assign N_INPUTS_neg = {1'b0,IN[0]&(SIGN[0])} + {1'b0,IN[1]&(SIGN[1])};

//wire EQUAL, INPUT_SIGN;

//assign EQUAL = (N_INPUTS_pos==N_INPUTS_neg);

//assign INPUT_SIGN = N_INPUTS_neg>=N_INPUTS_pos;

/*
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
*/
/* 
always @(posedge CLK) begin

	if (INPUT_pos_any&(!INPUT_neg_any)&(DIFFCOUNT==1'd0)) begin // cross neg->positive
		DIFFCOUNT_SIGN = 1'b0;
		DIFFCOUNT <= DIFFCOUNT + 1'd1; 
	end else if (INPUT_pos_any&(!INPUT_neg_any)&(DIFFCOUNT!=DIFFCOUNT_LIMIT)&(!DIFFCOUNT_SIGN)) begin // positive  increment
		DIFFCOUNT <= DIFFCOUNT + 1'd1; 
	end else if (INPUT_pos_any&(!INPUT_neg_any)&(DIFFCOUNT_SIGN)) begin // positive decrement
		DIFFCOUNT <= DIFFCOUNT - 1'd1; 
	end else if (INPUT_neg_any&(!INPUT_pos_any)&(DIFFCOUNT==1'd0)) begin // cross pos -> negative
		DIFFCOUNT_SIGN = 1'b1;
		DIFFCOUNT <= DIFFCOUNT + 1'd1; 
	end else if (INPUT_neg_any&(!INPUT_pos_any)&(DIFFCOUNT!=DIFFCOUNT_LIMIT)&(DIFFCOUNT_SIGN)) begin // negative increment
		DIFFCOUNT <= DIFFCOUNT + 1'd1; 
	end else if (INPUT_neg_any&(!INPUT_pos_any)&(!DIFFCOUNT_SIGN)) begin // negative decrement
		DIFFCOUNT <= DIFFCOUNT - 1'd1; 
	end else DIFFCOUNT <= DIFFCOUNT;

end */

//assign SIGN_out = DIFFCOUNT_SIGN;

assign INPUT_SUM_pos = (IN[0]&(~SIGN[0]))|(IN[1]&(~SIGN[1]));
assign INPUT_SUM_neg = (IN[0]&(SIGN[0]))|(IN[1]&(SIGN[1]));

assign OUTPUT_pos = INPUT_SUM_pos&(~INPUT_SUM_neg);
//assign OUTPUT_neg = INPUT_SUM_neg&(~INPUT_SUM_pos);

assign OUT = OUTPUT_pos;

endmodule