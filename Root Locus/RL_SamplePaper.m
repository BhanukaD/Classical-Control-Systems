%Root Locus of 1 + KH(s)G(s) = 0, H(s) = 1

%Plant Open Loop Transfer Function

G= tf([1 14 48],[1 3 2]);

%G= tf([a2 a1 a0],[b2 b1 b0]);

%num = [1]; den = conv([1 0],conv([1 3],[1 6 20]));
%G = tf(num,den); 

%Draw Root Locus
G
rlocus(G);
grid on; 