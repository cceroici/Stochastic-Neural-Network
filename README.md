
# Hardware-Based Stochastic Neural Network Framework
Fully Hardware-Based Stochastic Neural Network

This project demonstrates fully hardware-based neural networks which perform calculations entirely through stochastic signal processing. The code in this project is mainly written in Verilog HDL with tcl macros to be used for ModelSim simulations. However, the code can be easily adapted for FPGA implementations. 

These fully-stochastic networks operate with the principle of simultaneous forward- and back-propagation, similar to analog or neuromorphic networks.

**Note: For the high-level code used for generating the necessary HDL for an arbitrary dense/CNN/RNN/GAN model, see [this repository](https://github.com/cceroici/Stochastic-FPGA-Neural-Network-HDL-Generator)**

**Stochastic Fully-Connected Network With Parallel Training**

This project demonstrates a fully-connected network operating on a sample set of training inputs. The network consists of several parallel networks performing training on multiple training inputs and optimizing a single set of parameters.

**Stochastic Convolutional Network**

Coming soon.

**Stochastic Recurrent Network**

Coming soon.

**Stochastic Adverserial Generative Network**

Coming soon.
