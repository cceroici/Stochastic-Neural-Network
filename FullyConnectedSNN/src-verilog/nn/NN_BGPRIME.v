// Chris Ceroici

// Burst Gate Derivative

module NN_BGPRIME(z,zp,CLK,INIT);

parameter MEMSIZE = 6;

input z;
input CLK, INIT;

output wire zp;

reg zp_temp = 1'b0;
reg [MEMSIZE-1:0] MEM = 1'b0;

wire [4-1:0] MEM_SUM;
//wire n_ss;
//wire [7:0] R;

M_SIDEADD SIDEADD0(.EN(1'b1),.IN(MEM),.OUT(MEM_SUM));
defparam SIDEADD0.N_inputs = MEMSIZE;
defparam SIDEADD0.NB_out = 4;

always @(posedge INIT or posedge CLK) begin

	if (INIT) begin 
		zp_temp <= 1'b0;
		MEM <= 1'b0;
	end
	else if (MEM_SUM<8'd3) begin
		//zp_temp <= z&MEM[MEMSIZE-2]&MEM[MEMSIZE-3];
		zp_temp <= 1'b0;
		MEM <= {MEM[MEMSIZE-2:0],z};
	end
	else if (MEM_SUM>8'd5) begin
		//zp_temp <= z&(~MEM[MEMSIZE-2])&(~MEM[MEMSIZE-3]);
		zp_temp <= 1'b0;
		MEM <= {MEM[MEMSIZE-2:0],z};
	end
	else begin // if (MEMSIZE==8'd4) begin
		zp_temp <= 1'b1;
		MEM <= {MEM[MEMSIZE-2:0],z};
	end
		
end

//wire [7:0] junk0;

//LFSR16 LFSR0(.TRIG(CLK),.RESET(INIT),.OUT1(junk0),.OUT2(R),.SEED(16'd9391));

//DEC2STCH DS0(.CLK(CLK),.D(n),.LFSR(R),.S(n_ss));

//JK_FF JK0(.J(zp_temp), .K(n_ss), .CLK(CLK), .Q(zp), .RESET(INIT));

assign zp = zp_temp;

endmodule