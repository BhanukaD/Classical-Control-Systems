R=400;
C=1.25*10^-6;
L = 800*10^-3; 

dur = 0.2;

a = R; b = L; c = L*R*C;

sys=tf ([a] , [c b a]);

rlocus(sys);grid on;

%step(sys,dur);

