disp('sinosidal signal genration');
N=input('Enter no. of sample');
n=0:0.1:N;
x=sin(n);
figure,stem(n,x);
xlabel('sample');
ylabel('amplitude');
title('sinsidal signal');
