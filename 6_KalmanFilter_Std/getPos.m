%%%%% 실제 센서값 받는 코드로 바꾸기
function [A, B] = getPos()

% 변수 선언
persistent Velp Posp

% 변수값 초기화
if isempty(Posp)
    Posp = 0;
    Velp = 80;
end

% 랜덤 센서값
dt = 0.1;

w = 0+5*randn;
v = 0+5*randn;

z = Posp + Velp*dt + v;
A = z;

Posp = z - v;
Velp = 80 + w;
B = Velp;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%