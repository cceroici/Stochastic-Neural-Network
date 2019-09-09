// Chris Ceroici
// August 12 2013
//
// 16 bit LFSR
// Primitive Polynomial: 1+x2+x3+x5+x16
// 
module LFSR16_FullTap(TRIG,RESET,OUT0,OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7,OUT8,OUT9,OUT10,OUT11,OUT12,OUT13,OUT14,OUT15,SEED);

input TRIG, RESET; // TRIG: shift registers trigger
input [15:0] SEED;

output [7:0] OUT0,OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7,OUT8,OUT9,OUT10,OUT11,OUT12,OUT13,OUT14,OUT15;

reg [15:0] D = 16'd0 /* synthesis preserve */;
wire [2:0] Q /* synthesis keep */;

assign OUT0[7:0] = {D[7:0]};
assign OUT1[7:0] = {D[8:1]};
assign OUT2[7:0] = {D[9:2]};
assign OUT3[7:0] = {D[10:3]};
assign OUT4[7:0] = {D[11:4]};
assign OUT5[7:0] = {D[12:5]};
assign OUT6[7:0] = {D[13:6]};
assign OUT7[7:0] = {D[14:7]};
assign OUT8[7:0] = {D[15:8]};
assign OUT9[7:0] = {D[15:9],D[0]};
assign OUT10[7:0] = {D[15:10],D[1:0]};
assign OUT11[7:0] = {D[15:11],D[2:0]};
assign OUT12[7:0] = {D[15:12],D[3:0]};
assign OUT13[7:0] = {D[15:13],D[4:0]};
assign OUT14[7:0] = {D[15:14],D[5:0]};
assign OUT15[7:0] = {D[15],D[6:0]};

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