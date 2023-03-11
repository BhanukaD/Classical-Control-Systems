s = tf('s');
G=142.603*(s+2)/(s^3+12*s^2+15*s+20);

Gc = (s+7.386)/(s+13.538); % Compensator

[gain10,phaseP1] = bode(G,10)

Gain_for_10BW = 1/gain10


%bode(Gc)

subplot(121); bode(G);grid on;
subplot(122); margin(G);grid on; % GM and PM you get from the plot is accuarate
[Gm,Pm,Wcg,Wcp] = margin(G)

[gainGc,phaseGc] = bode(Gc,10) % For Compensator Gain