
module NN_ReLU(z, SIGN_z, a, CLK, INIT);

input CLK, INIT;
input z, SIGN_z;

output a;

assign a = (SIGN_z) ? 1'b0 : z;


endmodule