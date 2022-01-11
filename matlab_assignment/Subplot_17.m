t=[-3:0.01:3]
f1=4*t.^2.*sin(2*t)-1
f2=t.^2.*sin(t.^2)

subplot(211)
plot(t,f1)
title('FistFuction f1(t)')
xlabel('time(t)')
ylabel('f1(t)')
grid on
axis([-3, 3, -40, 40])

subplot(212)
plot(t,f2,'r-')
title('SecondFunction f2(t)')
xlabel('time(t)')
ylabel('f2(t)')
grid on
axis([-3, 3, -5, 10])