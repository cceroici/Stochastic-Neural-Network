vlog TOPsim.v RNE.v SEED.v STOCH.v BCKDPROP.v FWDPROP.v COSTMOD.v DECC.v TRAINING.v NETPAR_GRADIENT.v PARAMS_sim.v FULLCONNBLOCK_L3.v FULLCONNBLOCK_L2.v FULLCONNBLOCK_L1.v FULLCONNBLOCKBP_L2.v FULLCONNBLOCKBP_L1.v -y src-verilog/nn/ +libext+.v -y src-verilog/stochastic/ +libext+.v
vsim TOP -novopt
vsim TOP -novopt

do wave_NNGeneric.do

run 10ms