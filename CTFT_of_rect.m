clc; clear all; close all;
syms t omega
x=2;
expw=exp(-j*omega*t);
z=int(x*expw,omega,-2,2);
z=simplify(z);
figure(1);
subplot(2,1,1);
ezplot('2',[-2 2]);
subplot(2,1,2);
ezplot(z);