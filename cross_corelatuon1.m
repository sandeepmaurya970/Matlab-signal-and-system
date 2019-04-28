clc; clear all; close all;
x=[3 11 7 0 -1 4 2];
nx=-3:3;
xn2=[3 11 7 0 -1 4 2];
ny=nx+2;
w=randn(1,length(xn2));
y=xn2+w;
yy=fliplr(y);
Nx=length(x);
Ny=length(y);
Nxy=Nx+Ny-1;
newx=[x zeros(1,Nxy-Nx)];
newh=[yy zeros(1,Nxy-Ny)];
for n=0:Nxy-1
    sum=0;
    for k=0:n
      sum=sum+newx(k+1)*newh(n-k+1);
    end
    rxy(n+1)=sum;
end
nxy=min(nx)+min(ny):max(nx)+max(ny);
figure;
subplot(3,1,1);
stem(nx,x);
title('x(n)');
subplot(3,1,2);
stem(ny,y);
title('h(n)');
subplot(3,1,3);
stem(nxy,rxy);
xlabel('time====>'); ylabel('Amplitude===>');
title('y(n)');