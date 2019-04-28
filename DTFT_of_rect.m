clc; clear all; close all;
n=-2:2;
x=ones(1,5);
k=-400:400;
w=(pi/100)*k;
X=x*(exp(-j*pi/100)).^(n'*k);
magX=abs(X);
figure;
subplot(2,1,1);
stem(-8:8,[zeros(1,6) x zeros(1,6)]);
xlabel('n');
ylabel('x');
title('RECTANGULAR SIGNAL X(n)');
subplot(2,1,2);
plot(w/pi,magX);
xlabel('FREQUENCY IN pi UNIT');
ylabel('--MAGNITUDE--');
title('DTFT OF SIGNAL');