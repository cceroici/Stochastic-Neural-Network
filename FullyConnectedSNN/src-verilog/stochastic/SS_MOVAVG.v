

// Moving average of stochastic stream

module SS_MOVAVG(IN,AVG,CLK,INIT);


parameter W = 1000;
parameter N = 16;
parameter F_sampling = 5;

input IN;
input CLK, INIT;

output [N-1:0] AVG;

reg [W-1:0] BUFFER = 1'b0 - 1'b1;
reg [7:0] sampleCOUNTER = 8'd0;

always @(posedge CLK) begin
	if (sampleCOUNTER<F_sampling) begin
		sampleCOUNTER <= sampleCOUNTER + 1'b1;
		BUFFER <= BUFFER;
	end else begin
		sampleCOUNTER <= 1'b0;
		BUFFER <= {IN,BUFFER[W-1:1]};
	end

end


M_SIDEADD SIDEADD0(.EN(1'b1),.IN(BUFFER),.OUT(AVG));
defparam SIDEADD0.N_inputs = W;
defparam SIDEADD0.NB_out = N;


endmodule



