function [a, b]=Polyfit_13(x, y)
p = polyfit(x,y,1)
a = p(1), b = p(2)