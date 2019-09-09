

// Chris Ceroici 5/2/2017

// Use a shift register to rerandomize a single signal in time

module SS_RERANDOMIZER(CLK,INIT,IN,OUT);

parameter N = 3; // Buffer length

input CLK, INIT;

input IN;

output reg [N-1:0] OUT = 1'b0;

always @(posedge CLK or posedge INIT) begin

	if (INIT) OUT <= 1'b0;
	else OUT <= {OUT[N-2:0],IN};

end

endmodule
