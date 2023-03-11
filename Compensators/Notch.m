%Notch Filter
dur = 5;

s = tf('s');
%Uncompensated System
num0 = [46 184];
den1=[1 13.66 82.3 184];
den2 = [1 0 100];
den0=conv(den1,den2);
CG = tf(num0,den0);%Uncompensated Transfer Function

%Compensated System
num2 = [1 -1-10i]; %Make [1 -0.0001-10i] for better response. More closer it is
num3 = [1 -1+10i]; %,to Im axis, the better the response. 
num4 = conv(num2,num3);
num =conv(num0,num4); %Numerator with introduced Poles
den3 = [1 20 100]; % We can't just add zeros. We need to add 2 poles too
                   % ,if we are adding zeros. so (s+10)(s+10)=den3
                   
den = conv(den0,den3);

NG = tf(num,den); %With Notch Filter

%step(NG,dur)

subplot(211); step(CG,dur); ylabel('Without Notch'); grid on;
subplot(212); step(NG,dur); ylabel('With Notch'); grid on;








