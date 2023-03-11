%2019 Sample Q4

num = conv([1 5],[1 6]);
den = conv([1 14 13 2],[1 13 2]);

G = tf(num,den);

[gain,phase]=bode(sys,10)
[Gm,Pm,wcg,wcp] = margin(G)

bode(G); grid on;
