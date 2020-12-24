function ydot = fpend(y)
%Set up the ydot vector as instruction says: y = (θ1, θ2, ω1, ω2) 
%Set up angular velocities of w1 and w2 as well
th1 = y(1);
th2 = y(2);
w1 = y(3);
w2 = y(4);
%Remember theta1' = w1 = y(3)
%likewise for the second
theta1deriv = w1;
theta2deriv = w2;
w1th1 = (-3*sin(th1)-sin(th1 - 2*th2) - 2*sin(th1-th2) * ...
(w2^2 + w1^2*cos(th1-th2)))/(3-cos(2*th1-2*th2));
w2th2 = 2*sin(th1-th2) *(2*w1^2 +2*cos(th1) + w2^2 *cos(th1-th2))/...
(3-cos(2*th1-2*th2));
%Put it all together
ydot = [theta1deriv,theta2deriv,w1th1,w2th2];
end
%Part2
%test_cases = [1, 1, 0, 0; pi, 0, 0, 10^-10; 2, 2, 0, 0; 2, 2 + 10^-3, 0,0];
h = 0.05;
nsteps = round(100/h);
tcount = h *(0:nsteps)';

for k = 1:4
    th1 = test_cases(k,1);
    th2 = test_cases(k,2);
    w1 = test_cases(k, 3);
    w2 = test_cases(k,4);
    y = [th1, th2, w1, w2];
    
    y_array = [y; zeros(nsteps,4)];
%     subplot(2, 2, [1,2,3,4])
    %Now implement Rk4 method
    for i = 1:100
      k1 = h*fpend(y);
      k2 = h*fpend(y+k1/2);
      k3 = h*fpend(y+k2/2);
      k4 = h*fpend(y+k3);
      y = y+ (k1 +2*k2 +2*k3 +k4)/6;
      y_array(i+1, :) = y;
      pendplot(y(1), y(2));
    end
end
end

