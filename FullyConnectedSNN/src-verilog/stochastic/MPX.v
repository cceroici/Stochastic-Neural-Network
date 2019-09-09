// N bit decimal multiplexor

module MPX(EN,SEL,D,Q);
// EN   --> Enable
// SEL --> Nsel-bit address for output selection
// D    --> input N-bit vector
// Q    --> selected output 
parameter N = 2; // number of inputs
parameter Nsel = 8; // number of selection bits
input EN;
input [Nsel-1:0] SEL;
input [N-1:0] D;

output Q;

assign Q = (EN) ? D[SEL] : 1'b0;

endmodule