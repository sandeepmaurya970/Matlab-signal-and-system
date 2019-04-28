clc; clear all; close all;
syms a b t
x1t=t*exp(-a*t);
x2t=sin(a*t)+cos(b*t);
X1s=laplace(x1t);
X2s=laplace(x2t);
X2s=simplify(X2s);
disp(X1s);
disp(X2s);