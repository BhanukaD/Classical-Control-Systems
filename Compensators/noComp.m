s = tf('s');
dur = 4;
%G = (1)/conv([1 2] [1 3]);
num = [1]; den = conv([1 2],[1 3]);
G = tf(num,den);

step(G,dur)
%rlocus(G)