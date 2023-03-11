%RLC Circuit


R = 100; 

C = 100*10^-6; %uF
L = 500*10^-3; %mH df5

dur = 0.5;

a = L;
b = R*L*C; 
d = R; 

sysRLC= tf([a 0],[b d a]);
sysRLC

bode(sysRLC)
%step(sysRLC,dur); grid on; 
%step(sysRLC,dur); ylabel('Response [V0]'); grid on;
%subplot(211); step(sysRLC,dur); ylabel('Response [V0]'); grid on;
%subplot(212); rlocus(sysRLC,dur); grid on;