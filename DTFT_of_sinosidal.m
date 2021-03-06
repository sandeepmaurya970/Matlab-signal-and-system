clc; clear all; close all;
n=0:100;
x=cos(pi*n/4);
k=-300:300;
w=(pi/100)*k;
X=x*(exp(-j*pi/100)).^(n'*k);
magX=abs(X);
figure;
subplot(2,1,1);
stem(n,x);
axis([0 100 -1.5 1.5]);
xlabel('n');
ylabel('x');
title('SINUSOIDAL SIGNAL X(n)');
subplot(2,1,2);
plot(w/pi,magX);
xlabel('FREQUENCY IN pi UNIT');
ylabel('--MAGNITUDE--');
title('DTFT OF SIGNAL');