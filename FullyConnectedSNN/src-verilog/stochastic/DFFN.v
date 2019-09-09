// Chris Ceroici
// July 14 2013

// D Flip Flop
/*
       |------------|
	   |		    Q |------>
---->| D            |
       |   CLK ~Q |------>
       |-----^-----|
               |
*/
module DFFN(CLK,D,Q);

parameter N = 1;

input [N-1:0] D;
input CLK;
output [N-1:0] Q;

reg [N-1:0] hold=1'b0;
reg [N-1:0] Dtemp=1'b0;

assign Q = Dtemp;

always @(posedge CLK) begin
	//hold <= D; 
	//Dtemp <= #0 hold;
	Dtemp <= D;
end

endmodule
