# README

This repository consists of code related to implementing scheduling strategies on a physical setup involving multiple plants, controllers, and the scheduler connected via a CAN bus.

A scheduling strategy is generated using code from [this repo](https://github.com/asamant/masters-thesis-sched-strat) and stored in a JSON file. This file is loaded in LabVIEW and parsed using LabVIEW's JSON API to scheduling transmission of control actions over the CAN network.

Mainly, the following parts are covered by the code:

- Simulated plants: Two continuous-time LTI plant models are created and deployed on two NI-PXI 8880 controllers, one for each.
- Scheduler: A scheduler block is programmed and deployed on a third NI-PXI 8880 controller.
- Controllers: Feedback controllers for closing the loop over the network are programmed as blocks in LabVIEW and deployed on the same machine as the scheduler's.
- CAN operations: NI-XNET APIs are used for transferring data over the CAN network connecting all the machines involved.

## Plant simulation

Continuous-time LTI plant models are created using the appropriate blocks in Simulink, with a predefined [solver step time](https://www.mathworks.com/help/simulink/ug/choose-a-solver.html).

Simulink Coder and NI Veristand Model Framework are used to generate DLLs from these Simulink models - these DLLs can be loaded in LabVIEW using the Model Interface Toolkit and run as black boxes with inputs and outputs defined according to the Simulink models' *inports* and *outports*.

In short, after loading the plant DLL in LabVIEW by specifying its path, the user can provide inputs to the plant via an input array, and make the model "tick" (i.e. compute as though run once in Simulink) to get the output of the computation. Running in a continuous loop in LabVIEW simulates a continuous run of the model in Simulink.

See [this](https://forums.ni.com/t5/Example-Code/Running-Compiled-Simulink-Models-in-LabVIEW-and-in-VeriStand/ta-p/3889270) and [this](https://www.ni.com/tutorial/13066/en/) for reference.

The code for this part is located in the `plant-simul` directory.

## CAN operations

[NI-XNET](https://www.ni.com/en-us/innovations/white-papers/09/ni-xnet-can--lin--and-flexray-platform-overview.html) is a platform for communication using various protocols. In this thesis, it is used for communication via the CAN protocol.

We use [NI-8512](https://www.ni.com/en-us/support/model.pxi-8512.html) CAN interface controllers for communication between the PXI machines by reading from/writing to the CAN bus used for connections. A CAN database needs to be loaded in the machines for correct interpretation of CAN frames, and the corresponding FIBEX database file `CAN_database.xml` is used.

## LabVIEW project

All VI files are included in a single LabVIEW project (in the `lv-project` directory). 
[Note: *LabVIEW 2016 was used for the project so compatibility with different versions may not be guaranteed.*]

The VI files are broadly categorized by functionality:

- CAN read/write operations  
- Online state space region determination (this requires precomputed matrices. See [this repo's](https://github.com/asamant/masters-thesis-sched-strat) traffic_models directory)  
- Scheduling  
- Data logging  
- Simulated plant loops  

## Steps

1. Copy the plant simulaton DLLs and paste them in the root directories of the NI controllers on which to run them. (For instance, to test one plant, copy `plant1_start_2_3.dll` and paste it in the root of the NI controller's file system. Run the `Plant1.vi` file to see the state trajectories of the plant without any feedback control.)
2. Run the `sample_script.py` file (from the [scheduling strategies generation repo](https://github.com/asamant/masters-thesis-sched-strat)) to generate JSON files for (i) region determination matrices and (ii) scheduling strategy matrices. Transfer these files to the root directory of the NI PXI-8880 controller in which `Main-loop.vi` is located. String values corresponding to the paths of the JSON files may need to be updated in the VI.
3. Deploy the plant VIs (`Plant1.vi` and `Plant2.vi`) on the controllers.
4. Run the `Main-loop.vi` file. The state trajectories for both plants after applying scheduled event-triggered control can be observed. Optionally, after the run is complete, data can be logged into a spreadsheet.