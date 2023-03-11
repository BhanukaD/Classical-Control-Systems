%Bode for Second Order Block

zeta = 0.1;
omegan = 10;

%For a pair of zeros
subplot(121);
sys=tf([1 2*zeta*omegan omegan^2],[1]);
bode(sys);
grid on; hold on;

%For a pair of holes
subplot(122);
sys=tf([1],[1 2*zeta*omegan omegan^2]);
bode(sys);
grid on; hold on;