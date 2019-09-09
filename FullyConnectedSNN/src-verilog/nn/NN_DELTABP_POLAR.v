

// Chris Ceroici
// Back Propogate Delta calculation


module NN_DELTABP_POLAR(CLK,INIT,R_condition,delta,SIGN_delta,SIGN_alpha,alpha,delta_out,SIGN_out,z,zp);

parameter N = 3; // Number of Nodes in next layer

input CLK,INIT;
input [N-1:0] delta, SIGN_delta, alpha, SIGN_alpha;
input z,zp;
input R_condition;

output delta_out;
output SIGN_out;

wire [N-1:0] SIGN;

wire delta_out_temp;

wire zp; // z burst gate derivative w.r.t. input z

assign SIGN = SIGN_delta^SIGN_alpha;

/*
SS_ADDSUB ADDSUB0(.CLK(CLK),.INIT(INIT),.IN(delta&alpha),.SIGN(SIGN),.R_condition(R_condition),.OUT(delta_out_temp),.SIGN_out(SIGN_out));
defparam ADDSUB0.N = N;
defparam ADDSUB0.DIFFCOUNTER_SIZE = 1;
defparam ADDSUB0.DIFFCOUNT_LOWERLIM = 0;
*/

/*
SS_ADDSUB ADDSUB0(.CLK(CLK),.INIT(INIT),.IN(delta&alpha),.SIGN(SIGN),.R_condition(R_condition),.OUT(delta_out_temp),.SIGN_out(SIGN_out));
defparam ADDSUB0.N = N;
defparam ADDSUB0.DIFFCOUNTER_SIZE = 1;
*/

SS_ADDSUB_CARRY_N #(.N(N), .N_CARRY(2), .DIFFCOUNTER_SIZE(1)) ADDSUB0(.CLK(CLK),.INIT(INIT),.IN(delta&alpha),.SIGN(SIGN),.R_condition(R_condition),.OUT(delta_out_temp),.SIGN_out(SIGN_out));


//NN_BGPRIME BGPRIME0(.z(z),.zp(zp),.CLK(CLK),.INIT(INIT));

assign delta_out = delta_out_temp&zp;
//assign delta_out = delta_out_temp;

endmodule