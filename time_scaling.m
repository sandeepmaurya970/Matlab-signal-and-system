t=0:0.05:pi;
y1=sin(t);
y2=sin(2*t);
y3=sin(3*t);
figure;
plot(t,y1,'0',t,y2,'-',t,y3);grid;
Xlabel('time');
Ylabel('Time scaling for sinosidal signal');