%Bode plot of a Zero and a Pole

%For a zero at origin
subplot(121); sys = tf([1 0],[0 1]);bode(sys);grid on; % s/1
subplot(122); sys = tf([0 1],[1 0]);bode(sys);grid on;