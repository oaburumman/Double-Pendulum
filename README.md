# Double-Pendulum

In this assignment,we study the evolution of a double pendulum.The state of the confguration at any time *t* is given by the angles θ<sub>1</sub>*t* and θ<sub>2</sub>*t*, see figure below.

![image](https://github.com/oaburumman/Double-Pendulum/blob/main/Double_Pendulum.png)

The MATLAB utility `pendplot.m` can be used to visualize the double pendulum in any configuration. Here is an example of how to use it,to animate the motion θ<sub>1</sub>(*t*) = 2sin*t*, θ<sub>2</sub>(*t*) = sin(2*t*) `for *t* = 0:0.01:10, pendplot(2*sin(t), sin(2*t)); end`. This motion was of course just made up and does not correspond to a true, physical motion. Now we will solve for the actual evolution of the pendulum for various initial conditions!
