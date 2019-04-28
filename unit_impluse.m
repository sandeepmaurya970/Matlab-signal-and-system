disp('sinosidal signal genration');
N=input('Enter no. of sample');
n=-N:1:N;
x=[zeros(1,N),1,zeros(1,N)];
figure,stem(n,x);
xlabel('sample');
ylabel('amplitude');
title('unit impluse signal');
