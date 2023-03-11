s = tf('s');
G=(s+5)*(s+6)/((s^3+14*s^2+13*s+2)*(s^2+13*s+2));

[gainP1,phaseP1] = bode(G,0.1) %Calculating phase and gain at 0.1 rad/s
[gain1,phase1] = bode(G,1) %Calculating phase and gain at 1 rad/s
[gain10,phase10] = bode(G,10) %Calculating phase and gain at 10 rad/s

subplot(121); bode(G);grid on;
subplot(122); margin(G);grid on; % GM and PM you get from the plot is accuarate
[Gm,Pm,Wcg,Wcp] = margin(G)
Gain_for_10BW = 1/gain10