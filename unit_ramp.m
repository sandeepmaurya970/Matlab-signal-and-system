clc;
close all;
n=10;
s=1;
t=0:n-1;
plot(t,s*t);
xlabel('Time ');
ylabel('Amplitude');
title('Ramp Signal');