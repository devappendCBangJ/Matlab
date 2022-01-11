function [p]=Polyfit_14()
x = [0. 1.2 1.9 3.1]
y = [-1.8 0.1 1.2 2.3]
p = polyfit(x,y,1)
py = p(1) * x + p(2)
plot(x, py, ':')
hold on
plot(x,y, 'o')
hold off