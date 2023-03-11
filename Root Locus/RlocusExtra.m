s = tf('s');
sys = (s + 7)/(s*(s + 5)*(s + 15)*(s + 20));
rlocus(sys)
axis([-22 3 -15 15])

%we can use the command sgrid(Zeta,Wn) 
%to plot lines of constant damping ratio and natural frequency.

Zeta = 0.7;
Wn = 1.8;
sgrid(Zeta,Wn)
[k,poles] = rlocfind(sys)  % Find poles and zeros at specific locations

