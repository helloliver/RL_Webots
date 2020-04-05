# RL_Webots
Example to show how to use Deep Reinforcement Learning with Webots. This project was developed under Linux. While it should be possible to use it with other operating systems, this was not tested. 

The code presented in this repository was adapted from a semester project at the [Distributed Intelligent Systems and Algorithms Laboratory (DISAL)](https://www.epfl.ch/labs/disal/). A summary of the project can be found [here](https://disalw3.epfl.ch/teaching/student_projects/ay_2019-20/ws/DISAL-SP133_summary.pdf). The part presented here is about **Deep Reinforcement Learning**, leveraging **Policy Gradient** to train a fully connected, feed forward network to solve a simple **obstacle avoidance task** on a **continuous action space**. 

The project was entirely implemented in C++ and relies on [libtorch](https://pytorch.org/cppdocs/), [PyTorch](https://pytorch.org/)'s C++ API. 

## Install
Download [PyTorch's C++ API](https://pytorch.org/). Choose following options: 
- Build: Stable
- OS: Linux
- Package: LibTorch
- Language: C++
- CUDA: None

and click on the second link (cxx11 ABI, 87.4M). Extract the zip file wherever you like on your computer. You must edit the file `libraries/networks/vpg_network/build.sh` by modifying its fourth line: 
```bash
cmake -DCMAKE_PREFIX_PATH=/path/to/libtorch .. # -> Change it to point to your libtorch folder
```

Open up a terminal, go to the project folder and run the following commands to build the project: 
```bash
source env.sh
./build_project.sh
```