// Chris Ceroici
// August 10, 2013
//
// Cascading or gates

module M_OR_CARRY #(parameter N = 3, N_CARRY = 2) (EN,IN,OUT,CARRY);

input [N-1:0] IN;
input EN;

output OUT;
output [N_CARRY-1:0] CARRY; 

wire OUT_temp;
wire [N-3:0] Temp;
wire [7:0] N_HIGH;

M_SIDEADD #(.N_inputs(N),.NB_out(8)) SIDEADD_CARRY(.EN(EN),.IN(IN),.OUT(N_HIGH));

or Ustart (Temp[0],IN[0],IN[1]);		// generate cascading XOR gates
genvar n;
generate 
	case (N)
		1: begin
				assign OUT_temp = IN[0];
		   end
		2: begin
				or U_single(OUT_temp,IN[0],IN[1]);
		   end
		default: begin
					assign OUT_temp = Temp[N-3]|IN[N-1];
					for (n=0; n<(N-3);n=n+1) begin : COR1 
						or U (Temp[n+1],Temp[n],IN[n+2]);
					end
				end
	endcase
endgenerate


assign OUT = (EN) ? OUT_temp : 1'b0;

generate 
	for (n=0; n<N_CARRY;n=n+1) begin : CARRY_THRESH 
		assign CARRY[n] = N_HIGH>n+1;
	end
endgenerate


endmodule