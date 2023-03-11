%Servo Controller 

%G(s) = 3(s+3)/(s+4)(s^2+3s+20)

s = tf('s');
numG = 129*3*[1 3];
denG = conv([1 4],[1 3 20]);

G= tf(numG,denG);

bode(G); grid on;
[gainG, phaseG] = bode(G,20) %Gain and phase at 20 rad/s


