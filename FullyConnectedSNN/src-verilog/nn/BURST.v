// Chris Ceroici

// Burst Gate Operator

module BURST(IN,OUT,INIT_STATE,CLK,INIT);

parameter MEMSIZE = 6;

input IN;
input INIT_STATE;
input CLK, INIT;

output reg OUT;

reg MODE = 1'b1; // output mode

reg [MEMSIZE-1:0] MEM = 1'b0;

wire MEMsig1,MEMsig0;

M_AND AND0(.EN(1'b1),.IN(~MEM),.OUT(MEMsig0));
defparam AND0.N = MEMSIZE;
//and u0(MEMsig0,~MEM[0],~MEM[1]);

M_AND AND1(.EN(1'b1),.IN(MEM),.OUT(MEMsig1));
defparam AND1.N = MEMSIZE;

always @(posedge INIT or posedge CLK) begin
	if (INIT) begin 
		OUT <= INIT_STATE;
		MODE <= INIT_STATE;
		MEM <= INIT_STATE;
	end
	else if ((MODE==1'b1)&(IN==1'b1)) begin // Mode 1: '1' input, no change
		OUT <= 1'b1;
		MODE <= MODE;
		MEM <= {MEM[MEMSIZE-2:0],IN};
	end 
	else if ((MODE==1'b0)&(IN==1'b0)) begin // Mode 0: '0' input, no change
		OUT <= 1'b0;
		MODE <= MODE;
		MEM <= {MEM[MEMSIZE-2:0],IN};
	end
	else if ((MODE==1'b1)&(IN==1'b0)&(MEMsig0==1'b0)) begin // Mode 1: no mode switch
		OUT <= 1'b1;
		MODE <= MODE;
		MEM <= {MEM[MEMSIZE-2:0],IN};
	end
	else if ((MODE==1'b0)&(IN==1'b1)&(MEMsig1==1'b0)) begin // Mode 0: no mode switch
		OUT <= 1'b0;
		MODE <= MODE;
		MEM <= {MEM[MEMSIZE-2:0],IN};
	end
	else if ((MODE==1'b1)&(IN==1'b0)&(MEMsig0==1'b1)) begin // Mode 1 -> Mode 0
		OUT <= 1'b0;
		MODE <= 1'b0;
		MEM <= {MEM[MEMSIZE-2:0],IN};
	end
	else if ((MODE==1'b0)&(IN==1'b1)&(MEMsig1==1'b1)) begin // Mode 0 -> Mode 1
		OUT <= 1'b1;
		MODE <= 1'b1;
		MEM <= {MEM[MEMSIZE-2:0],IN};
	end

	
end






endmodule