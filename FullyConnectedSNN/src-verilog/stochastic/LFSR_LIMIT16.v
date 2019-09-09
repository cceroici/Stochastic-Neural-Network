// Chris Ceroici
// Feb 2 2016
//
// 16 bit output-limited LFSR
// Primitive Polynomial: 1+x2+x3+x5+x16
// 
module LFSR_LIMIT16(
	TRIG,RESET,
	LIMIT,
	OUT1,OUT2,
	SEED
);

input TRIG, RESET;
input [15:0] SEED;
input [7:0] LIMIT;

output [7:0] OUT1, OUT2;

wire [7:0] OUT1_full, OUT2_full;
wire [15:0] OUT1_scaled, OUT2_scaled;


LFSR16 LFSR_base(.TRIG(TRIG),.RESET(RESET),.OUT1(OUT1_full),.OUT2(OUT2_full),.SEED(SEED));

assign OUT1_scaled = OUT1_full * LIMIT;
assign OUT2_scaled = OUT2_full * LIMIT;

assign OUT1 = OUT1_scaled[15:8];
assign OUT2 = OUT2_scaled[15:8];

endmodule