function Scatter_18()
x = 0.5*randn(1, 100)+0.1
y =0.2*randn(1, 100)-0.3
plot(x, y,'bo', mean(x), mean(y), 'ro')
axis([-3 3 -3 3])
title('방재훈')
xlabel('x축')
ylabel('y축')
grid on