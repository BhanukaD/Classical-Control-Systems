L = 0.1;
R = 5;
n = 15;
dur = 0.3;

kt = 0.022;
kb = 0.02;

jeq = 0.00005;
beq = 0.002;

b2 = L*jeq;
b1 = L*beq+R*jeq;
b0 = R*beq+kb*kt;
a0 = kt/n;

Psys=tf ([a0] , [b2 b1 b0 0]);
subplot(311); step(Psys, dur); ylabel('Joint Position [rad]'); grid on;

Vsys=tf ([a0] , [b2 b1 b0]);
subplot(312); step(Vsys, dur); ylabel('Joint Velocity [rad/s]'); grid on; xlabel('Time [s]');

Asys=tf ([a0 0] , [b2 b1 b0]);
subplot(313); step(Asys, dur); ylabel('Joint acceleration [rad/s*s]'); grid on; xlabel('Time [s]');