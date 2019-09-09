// Chris Ceroici

// Burst Gate Cluster

module NN_BGCluster(IN,OUT,INIT_STATE,CLK,INIT);

parameter MEMSIZE = 16;
parameter Ngates = 3;

input IN;
input INIT_STATE;
input CLK, INIT;

output reg OUT = 1'b0;

wire [Ngates-1:0] OUTburst; 

reg CLK0,CLK1,CLK2;
reg [2:0] CLKcounter = 1'd0;


BURST BURST0(.IN(IN),.OUT(OUTburst[0]),.INIT_STATE(INIT_STATE),.CLK(CLK0),.INIT(INIT));
defparam BURST0.MEMSIZE = MEMSIZE;
BURST BURST1(.IN(IN),.OUT(OUTburst[1]),.INIT_STATE(INIT_STATE),.CLK(CLK1),.INIT(INIT));
defparam BURST1.MEMSIZE = MEMSIZE;
BURST BURST2(.IN(IN),.OUT(OUTburst[2]),.INIT_STATE(INIT_STATE),.CLK(CLK2),.INIT(INIT));
defparam BURST2.MEMSIZE = MEMSIZE;

always @(posedge CLK) begin
	if (CLKcounter > (Ngates-1)) CLKcounter <= 1'd0;
	else CLKcounter <= CLKcounter + 1'b1;
	
	if (CLKcounter == 2'd0) begin
		CLK0<=1'b1;
		CLK1<=1'b0;
		CLK2<=1'b0;
	end else if (CLKcounter == 2'd1) begin
		CLK0<=1'b0;
		CLK1<=1'b1;
		CLK2<=1'b0;
	end else if (CLKcounter == 2'd2) begin
		CLK0<=1'b0;
		CLK1<=1'b0;
		CLK2<=1'b1;
	end

end

always @(posedge CLK) begin
	if (INIT) OUT <= INIT_STATE;
	else if (OUTburst[0]&OUTburst[1]&OUTburst[2]) OUT <= 1'b1;
	else if (~OUTburst[0]&~OUTburst[1]&~OUTburst[2]) OUT <= 1'b0;
	else OUT <= OUT;
end




endmodule