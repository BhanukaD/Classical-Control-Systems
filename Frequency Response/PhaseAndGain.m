%Phase Margin and Gain Margin

%System Transfer Function
num = conv([1 5],[1 6]);
den = conv([1 14 13 2],[1 10 2]);
sys = tf(num,den);

%Bode plots
%calculates gain and phase at 5 rad/s
[gain,phase]=bode(sys,5)
bode(sys); grid on;