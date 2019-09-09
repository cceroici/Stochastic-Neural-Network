
// Chris Ceroici 5/1/2017
// Apply offset to z prior to burst gate


module NN_ZOFFSET(CLK,INIT,z,SIGN_z,d,zd);

input CLK,INIT;

input z, SIGN_z, d;

output zd;


//LFSR16 LFSR0(.TRIG(CLK),.RESET(INIT),.OUT1(R1),.OUT2(R2),.SEED(16'd13441));

//DEC2STCH DS0(.CLK(CLK),.INIT(INIT),.D(8'd128),.LFSR(R1),.S(d));

SS_ADDSUB2_POS ADDSUB0(.CLK(CLK), .INIT(INIT), .IN({z,d}), .SIGN({SIGN_z,1'b0}), .OUT(zd));



endmodule