// Calculate statistical mean of input stochastic sequence. Output N-bit mean at counter edge


module MEAN(in,out,START,RESET,CLK,INIT,ENABLE,preRESET);

parameter N = 8; // output mean precision
parameter N_Count = 8;

input CLK, INIT, ENABLE;
input in; // input stochastic sequence
input [N_Count-1:0] START; // output initialization
input RESET,preRESET; // Store new value and reset SUM

//output [N-1:0] outshift; // output (bit shifted)

//output reg [N_Count-1:0] out = 1'd0; // output sum (latched)
output reg [N_Count-1:0] out = 1'd0; // output sum (latched)

reg [N_Count-1:0] SUM = 1'd0; // output sum
//reg RESETflag = 1'b1 /* synthesis keep */;

//wire [N_Count-1:0] SUM_wire;

//assign out  = SUM;
//assign SUM_wire = SUM+in;

//reg [N_Count-1:0] BACKUP_LATCH = 1'd0 /* synthesis noprune */; // possibly reuse reg out
//wire GLITCH;
//assign GLITCH = ((BACKUP_LATCH>(SUM+1'b1))&(~RESET)) ? 1'b1 : 1'b0 /* synthesis keep */;


always @(posedge CLK or posedge RESET or posedge preRESET or posedge INIT) begin
	if (INIT) begin
		//out = {START,2'b00};
		out <= START;
		//RESETflag <= 1'd0;
	end
	else if (RESET) begin
		//BACKUP_LATCH <=1'd0;
		//SUM <= 1'd0;
		SUM <= 5'd0;
		out <= out;
	end
	else if (preRESET) begin
		SUM <= SUM;
		out <= SUM;
	end
	else if (ENABLE) begin
		//BACKUP_LATCH <= SUM;
		//SUM <= SUM_wire;
		SUM<= SUM+in;
		out <= out;
	end else begin
		SUM<= SUM;
	end
end

/* always @(posedge CLK) begin

	case (in) 
		1'd0 : SUM = SUM;
		1'd1 : SUM = SUM + 1'b1;
		default : 
	endcase
	
	if (RESET) */



endmodule



