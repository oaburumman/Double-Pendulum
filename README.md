# Double-Pendulum

In this assignment,we study the evolution of a double pendulum.The state of the confguration at any time *t* is given by the angles θ<sub>1</sub>(*t*) and θ<sub>2</sub>(*t*), see figure below.

![image](https://github.com/oaburumman/Double-Pendulum/blob/main/Double_Pendulum.png)

The MATLAB utility `pendplot.m` can be used to visualize the double pendulum in any configuration. Here is an example of how to use it,to animate the motion θ<sub>1</sub>(*t*) = 2sin*t*, θ<sub>2</sub>(*t*) = sin(2*t*) `for t = 0:0.01:10, pendplot(2*sin(t), sin(2*t)); end`. This motion was of course just made up and does not correspond to a true, physical motion. Now we will solve for the actual evolution of the pendulum for various initial conditions!

<br /> `function ydot = fpend(y)` evaluates f(y). The current state of the pendulum can then be described by the vector y=(θ1,θ2,ω1,ω2),and the first order system can be written as ̇y=f(y).

<br /> `fpend.m` implements a fourth-order Runge-Kutta method that integrates the system ̇y=f(y) from t= 0 to t= 100 with step size h= 0.05. For each case,the function θ<sub>2</sub>(*t*) is plotted versus time. Cases 3 and 4 demonstrate the *initial value sensitivity* of the system, namely, that a small perturbation can lead to drastically different solutions.
<br /> Running Case 1 in problem 2 with the five step sizes h= 0.05/2(k−1), k= 1, 2, 3, 4, and h= 0.001. We compute the value of θ<sub>2</sub>(*t*) for each step size. After considering the last result the exact solution, and plot the four errors as a function of h in a loglog-plot.
