clc; clear all; close all;
x=[1 2 -1 3];
nx=-2:1;
h=[3 -2 1 4];
ny=0:3;
w=randn(1,length(h));
y=h+w;
hh=fliplr(y);
Nx=length(x);
Ny=length(y);
N1y=Nx+Ny-1;
newx=[x zeros(1,N1y-Nx)];
newh=[hh zeros(1,N1y-Ny)];
for n=0:N1y-1
    sum=0;
    for k=0:n
      sum=sum+newx(k+1)*newh(n-k+1);
    end
    y2(n+1)=sum;
end
n1=min(nx)+min(ny):max(nx)+max(ny);
figure;
subplot(3,1,1);
stem(nx,x);
title('x(n)');
subplot(3,1,2);
stem(ny,y);
title('h(n)');
subplot(3,1,3);
stem(n1,y2);
xlabel('time====>'); ylabel('Amplitude===>');
title('y(n)');

