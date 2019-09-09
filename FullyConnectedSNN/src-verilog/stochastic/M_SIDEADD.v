// Chris Ceroici
// November 16, 2016
//
// N-input Hamming sum/sideways addition

module M_SIDEADD #(parameter N_inputs = 3, NB_out = 3) (EN,IN,OUT);

//parameter N_inputs = 3;
//parameter NB_out = 8;

input EN;
input [N_inputs -1:0] IN;

output [NB_out-1:0] OUT;

wire [NB_out-1:0] OUT_temp;
wire [NB_out-1:0] temp [N_inputs-1:0];

genvar n;
generate 
	case (N_inputs)
		1: begin
				assign OUT_temp = IN[0];
		   end
		2: begin
				assign OUT_temp = IN[0] + IN[1];
		   end
		default: begin
					assign temp[0] = IN[0];
					assign OUT_temp = temp[N_inputs-1][NB_out-1:0];
					for (n=1; n<(N_inputs);n=n+1) begin : TempAdd
						assign temp[n][NB_out-1:0] =  temp[n-1][NB_out-1:0] + IN[n];
					end
				end
	endcase
endgenerate


assign OUT = (EN) ? OUT_temp : 1'b0;



endmodule