// Chris Ceroici
// August 10, 2013
//
// Cascading xor gates

module M_XOR #(parameter N = 3) (EN,IN,OUT);

input [N-1:0] IN;
input EN;

output OUT; 

wire OUT_temp;
wire [N-3:0] Temp;

xor Ustart (Temp[0],IN[0],IN[1]);		// generate cascading XOR gates
genvar n;
generate 
	case (N)
		1: begin
				assign OUT_temp = IN[0];
		   end
		2: begin
				xor U_single(OUT_temp,IN[0],IN[1]);
		   end
		default: begin
					assign OUT_temp = Temp[N-3]|IN[N-1];
					for (n=0; n<(N-3);n=n+1) begin : COR1 
						xor U (Temp[n+1],Temp[n],IN[n+2]);
					end
				end
	endcase
endgenerate


assign OUT = (EN) ? OUT_temp : 1'b0;


endmodule