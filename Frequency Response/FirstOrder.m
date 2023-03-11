%Bode of First Order Block

0%For a zero at origin
subplot(121); sys = tf([1 10],[0 1]);bode(sys);grid on; % s+10/1
subplot(122); sys = tf([0 1],[1 10]);bode(sys);grid on; %1/S+10