// Chris Ceroici
// August 12 2013
//
// 16 bit LFSR
// Primitive Polynomial: 1+x2+x3+x5+x16
// 
module LFSR16(TRIG,RESET,OUT1,OUT2,SEED);

input TRIG, RESET; // TRIG: shift registers trigger
input [15:0] SEED;

output [7:0] OUT1,OUT2;

reg [15:0] D = 16'd0 /* synthesis preserve */;
wire [2:0] Q /* synthesis keep */;

assign OUT1[7:0] = {D[0],D[14],D[2],D[13],D[4],D[10],D[6],D[9]};
assign OUT2[7:0] = {D[8],D[15],D[6],D[12],D[4],D[11],D[3],D[1]};

xor U1(Q[0],D[15],D[4]);
xor U2(Q[1],Q[0],D[2]);
xor U3(Q[2],Q[1],D[1]);

//assign Q[0] = D[15]^D[4];
//assign Q[1] = D[2]^Q[0];
//assign Q[2] = D[1]&Q[1];

wire [15:0] Dtemp;

/*
always @(posedge TRIG) begin
	D[15:0] <= #3 {D[14:0],Q[2]};
end
*/

always @(posedge TRIG or posedge RESET) begin
	if (RESET) D <= SEED;
	else D[15:0] <= #3 {D[14:0],Q[2]};
end

endmodule