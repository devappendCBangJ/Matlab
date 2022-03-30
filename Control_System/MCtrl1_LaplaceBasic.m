%% Polynomials

p=poly([-2 1 5])
R=roots(p)
x=-3:0.1:6;
y=p(1)*x.^3+p(2)*x.^2+p(3)*x+p(4);
plot(x,y)
grid
%% Laplace Transform
% Syms s t %defines s and t as symbolic variable

clear all;
syms s a t

y1=laplace(exp(t)) 
y2=laplace(exp(-t))
y3=laplace(sin(a*t))
y4=laplace(dirac(t),t,s)
y5=laplace(dirac(t-3),t,s)
y6=laplace(heaviside(t))
y7=laplace(heaviside(t-1))
%% Inverse Laplace Transform
% ilaplace(F,s,t): computes Inverse Laplace transform of F on the complex variable 
% s and returns it as a function of the time, t.

ilaplace(a/(s^2+a^2),s,t)
%% Laplace Transform in MIMO
%%
clear all;
A=[1,1;0,1];
syms s t;
Q=expm(A*t) %computes the matrix exponential of M.
G=laplace(Q,t,s)
%% Partial Fraction
%%
clear all;
syms s y
Y=(s+2)*(s+4)/(s*(s+1)*(s+3))
partfrac(Y)
y=ilaplace(Y)
ezplot(y, [0 10 0 3])
%% ODE solution w/ Laplace TF
%%
clear all;
syms s y
Y=2/((s+2)*(s+1)*(s+4))
partfrac(Y)
ysol=ilaplace(Y)
ezplot(ysol, [0 10])

syms s y(t)
Dy = diff(y(t),t)
DDy = diff(y(t),t,2)
LHS=laplace(DDy+5*Dy+4*y,t,s)