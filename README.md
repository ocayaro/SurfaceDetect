# SurfaceDetect

(c) ocaya, r.o.
Department of Physics
University of the Free State, South Africa

SurfaceDetect implements a collection of VBA tools to generate VMD trajectory file, to detect vibrating surfaces and to calculate surface energy. This repository was created to augment a MethodsX (Elsevier) article that I am working on. It is intended to provide real data with the advanced VBA macro that implements the functionality stated above. 

The included SurfaceDetect-demo.xlsm file is preloaded with an example VSV output based on an actual simulation using 2281 atoms of copper (Cu), in 0.5 simulation steps over a simulation time of 1095. This corresponds to (109.5x2281 0.5) = 499539 lines in the Microsoft Excel speadsheet into which it is loaded. Roughly, this corresponds to about 24 MB of data. This is to keep it within the limits of file upload into Github. The limitation of MS Excel is also apparent in this example. That is, since MS Excel only supports a maximum of 1048576 lines per spreadsheet workbook, proceeding in 0.5 simulation steps for 2281 atoms permits a maximum simulation time of (1048576x0.5/2281) = 229.85. That is, if the 0.5 step represents 14.875 femtoseconds on the scaling used for Cu atoms, then the maximum simulation time is 229.8x14.875 = 3.419 picoseconds. 
