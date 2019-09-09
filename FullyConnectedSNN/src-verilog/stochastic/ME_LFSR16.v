// Chris Ceroici
// August 12 2013
//
// 16 bit LFSR
// Primitive Polynomial: 1+x2+x3+x5+x16
// 
module ME_LFSR16(TRIG,RESET,IN0,IN1,IN2,IN3,OUT0,OUT1,OUT2,OUT3,SEED);

input TRIG, RESET; // TRIG: shift registers trigger
input [15:0] SEED;
input [7:0] IN0,IN1,IN2,IN3;

output [7:0] OUT0,OUT1,OUT2,OUT3;


//wire [7:0] OUTtemp0,OUTtemp1,OUTtemp2,OUTtemp3;
reg [7:0] OUTtemp0 = 1'd0,OUTtemp1 = 1'd0,OUTtemp2 = 1'd0,OUTtemp3 = 1'd0;
wire [2:0] Q /* synthesis keep */;
wire [3:0] mut0,mut1,mut2,mut3;

reg [15:0] D = 16'd0 /* synthesis preserve */;

// Note: Combinational loops here. Better to use:
/*
always @(posedge INIT) begin
 OUT0 = ... ;
.
.
.
end
*/

always @(posedge TRIG) begin
	OUTtemp0 = ((mut0[3] | (OUT0>8'd240))&(~(OUT0<8'd15))) ? (IN0 - {mut0[2],mut0[1],mut0[0],1'd1}) : (IN0 + {mut0[2],mut0[1],mut0[0],1'd1});
	OUTtemp1 = ((mut1[3] | (OUT1>8'd240))&(~(OUT1<8'd15))) ? (IN1 - {mut1[2],mut1[1],mut1[0],1'd1}) : (IN1 + {mut1[2],mut1[1],mut1[0],1'd1});
	OUTtemp2 = ((mut2[3] | (OUT2>8'd240))&(~(OUT2<8'd15))) ? (IN2 - {mut2[2],mut2[1],mut2[0],1'd1}) : (IN2 + {mut2[2],mut2[1],mut2[0],1'd1});
	OUTtemp3 = ((mut3[3] | (OUT3>8'd240))&(~(OUT3<8'd15))) ? (IN3 - {mut3[2],mut3[1],mut3[0],1'd1}) : (IN3 + {mut3[2],mut3[1],mut3[0],1'd1});
end

//wire [7:0] T0,T1,T2,T3;

//assign T0 = ((mut0[3] | (OUT0>8'd240))&(~(OUT0<8'd15))) ? (1'd0 - {mut0[2],mut0[1],mut0[0],1'd1}) : ({mut0[2],mut0[1],mut0[0],1'd1});
//assign T1 = ((mut1[3] | (OUT1>8'd240))&(~(OUT1<8'd15))) ? (1'd0 - {mut1[2],mut1[1],mut1[0],1'd1}) : ({mut1[2],mut1[1],mut1[0],1'd1});
//assign T2 = ((mut2[3] | (OUT2>8'd240))&(~(OUT2<8'd15))) ? (1'd0 - {mut2[2],mut2[1],mut2[0],1'd1}) : ({mut2[2],mut2[1],mut2[0],1'd1});
//assign T3 = ((mut3[3] | (OUT3>8'd240))&(~(OUT3<8'd15))) ? (1'd0 - {mut3[2],mut3[1],mut3[0],1'd1}) : ({mut3[2],mut3[1],mut3[0],1'd1});

/*
assign #1 OUTtemp0 = ((mut0[3] | (OUT0>8'd247))&(~(OUT0<8'd7))) ? (IN0 - {mut0[2],mut0[1],mut0[0]}) : (IN0 + {mut0[2],mut0[1],mut0[0]});
assign #1 OUTtemp1 = ((mut1[3] | (OUT1>8'd247))&(~(OUT1<8'd7))) ? (IN1 - {mut1[2],mut1[1],mut1[0]}) : (IN1 + {mut1[2],mut1[1],mut1[0]});
assign #1 OUTtemp2 = ((mut2[3] | (OUT2>8'd247))&(~(OUT2<8'd7))) ? (IN2 - {mut2[2],mut2[1],mut2[0]}) : (IN2 + {mut2[2],mut2[1],mut2[0]});
assign #1 OUTtemp3 = ((mut3[3] | (OUT3>8'd247))&(~(OUT3<8'd7))) ? (IN3 - {mut3[2],mut3[1],mut3[0]}) : (IN3 + {mut3[2],mut3[1],mut3[0]});
*/
assign #1 OUT0 = (RESET) ? 8'd100 : OUTtemp0;
assign #1 OUT1 = (RESET) ? 8'd100 : OUTtemp1;
assign #1 OUT2 = (RESET) ? 8'd100 : OUTtemp2;
assign #1 OUT3 = (RESET) ? 8'd100 : OUTtemp3;



assign mut0[3:0] = {D[0],D[15],D[2],D[13]};
assign mut1[3:0] = {D[4],D[11],D[6],D[9]};
assign mut2[3:0] = {D[8],D[14],D[7],D[12]};
assign mut3[3:0] = {D[5],D[10],D[3],D[1]};

xor U1(Q[0],D[15],D[4]);
xor U2(Q[1],Q[0],D[2]);
xor U3(Q[2],Q[1],D[1]);

//assign Q[0] = D[15]^D[4];
//assign Q[1] = D[2]^Q[0];
//assign Q[2] = D[1]&Q[1];



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