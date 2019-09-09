// Chris Ceroici
// August 10, 2013
//
// Cascading MUX add gates

module M_MUX_ADD #(parameter N=3) (EN,CLK,IN,OUT);

input CLK;
input [N-1:0] IN;
input EN;

output OUT; 

wire OUT_temp;
wire [N-3:0] Temp;

or Ustart (Temp[0],IN[0],IN[1]);		// generate cascading XOR gates
genvar n;
generate 
	case (N)
		1: begin
				assign OUT_temp = IN[0];
		   end
		2: begin
				MUX_ADD MUX_ADD_SINGLE(.CLK(CLK),.EN(EN),.IN(IN),.OUT(OUT_temp));
		   end
		default: begin
					MUX_ADD MUX_ADD_end(.CLK(CLK),.EN(EN),.IN({Temp[N-3],IN[N-1]}),.OUT(OUT_temp));
					for (n=0; n<(N-3);n=n+1) begin : COR1 
						MUX_ADD  U (.CLK(CLK),.EN(EN),.IN({Temp[n],IN[n+2]}),.OUT(Temp[n+1]));
					end
					/*
					assign OUT_temp = Temp[N-3]|IN[N-1];
					for (n=0; n<(N-3);n=n+1) begin : COR1 
						or U (Temp[n+1],Temp[n],IN[n+2]);
					end
					*/
				end
	endcase
endgenerate


assign OUT = (EN) ? OUT_temp : 1'b0;


endmodule