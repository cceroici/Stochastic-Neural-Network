// Chris Ceroici
// August 10, 2013
//
// MUX add gate

module MUX_ADD(CLK,EN,IN,OUT);

input CLK;
input [1:0] IN;
input EN;

output OUT; 

wire OUT_temp;

wire sel, sel_new;
wire cond;

M_XOR #(.N(3)) XOR_cond(.EN(EN),.IN({IN,sel}),.OUT(sel_new));

DFFN DFFN_hold(.CLK(CLK),.D(sel_new),.Q(sel));
defparam DFFN_hold.N = 1;

MPX MPX_single(.EN(EN),.SEL(sel),.D(IN),.Q(OUT_temp));
defparam MPX_single.N = 2;
defparam MPX_single.Nsel = 1;

assign OUT = (EN) ? OUT_temp : 1'b0;


endmodule