x=[1 2 0 1];
subplot(3,1,1);stem(x);
title('signal x(t)');
y=[2 2 1 1];
subplot(3,1,2);stem(y);
title('signal h(t)');
z=conv(x,y);
subplot(3,1,3);stem(z);
title('convalved signal');
