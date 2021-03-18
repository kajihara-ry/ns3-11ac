# 11ac Multi-BSS Simulator 

It contains a network simulator for research (PIMRC paper).

Location of script used for simulation
→./ns3/src/wifi-he/src

used script "PIMRC_sim.sh"

reference simulator:https://github.com/nsnam/ns-3-dev-git

[ns-3 installation procedure(Ubuntu 16.04)]

1. Clone this branch.

2. Build ns-3 under the 'ns-3-dev-11ax' folder.

   command : ./waf configure --enable-examples --enable-tests --build-profile=optimized

3. Compile ns-3.

   command : ./waf
   
4. After compiling ns-3, it will be possible to run simulations.
