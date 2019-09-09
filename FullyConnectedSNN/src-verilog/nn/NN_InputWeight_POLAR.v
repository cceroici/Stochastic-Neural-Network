


module NN_InputWeight_POLAR(a,alpha,SIGN_alpha,zp_pos,zp_neg);


input a,alpha,SIGN_alpha;

output zp_pos,zp_neg;

wire zp;

assign zp = a&alpha;

assign zp_pos = (SIGN_alpha) ? 1'b0 : zp;

assign zp_neg = (SIGN_alpha) ? zp : 1'b0;


endmodule