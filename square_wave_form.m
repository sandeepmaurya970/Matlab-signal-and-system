clc;clear all;close all;
N=120;n=0:N-1;f=50;ts=1/600;
x=sin(2*pi*f*n*ts);
%sine function%
t=-5*pi:pi/50:5*pi;
sincpulse=sin(t)./t;
%square wave%
tt=0:0.0001:0.0625;t1=1:626;
y=square(2*pi*50*tt);
figure;subplot(3,1,1);
plot(n,y);
title('sine wave');
subplot(3,1,2);
plot(t,sincpulse);
title('sine function');
subplot(3,1,3);
plot(t1,y);
axis([0 625 -1.5 1.5]);
xlable('time-->');
ylable('amplitude');
title ('square waveform');