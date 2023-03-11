%Lead Compenstated Root Locus

dur = 2
num = [1 4];
den1 = [1 8.66], den2 = [1 2], den3 = [1 3];
den=conv(den1,conv(den2,den3));

CG = tf(num,den);

step(CG,dur)
rlocus(CG);
grid on;