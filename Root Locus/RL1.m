%Root Locus of 1 + KH(s)G(s) = 0, H(s) = 1

%Plant Open Loop Transfer Function
num = [1]; den = conv([1 0],conv([1 3],[1 6 20]));
G = tf(num,den); 

%Draw Root Locus

rlocus(G);
grid on; 
