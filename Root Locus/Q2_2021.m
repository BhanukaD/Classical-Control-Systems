%2021 Root-Locus

dur = 8;
s = tf('s');
Gs=(s+3)/(s^3+5*s^2+14*s+2); %Open Loop

Gc=(s+3)/(s^3+5*s^2+25.2*s+35.6); %Closed Loop

Gdcg = (11.8667*(s+3))/(s^3+5*s^2+25.2*s+35.6);

%subplot(131); step(Gs);grid on; title('Open Loop'); 
%subplot(132); step(Gc);grid on; title('Closed Loop');
%subplot(133); step(Gdcg);grid on; title('DCG Rectified System');
step(Gdcg,dur)


%rlocus(G);
grid on; 