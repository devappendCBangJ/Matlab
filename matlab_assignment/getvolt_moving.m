%%%%% 실제 센서값 받는 코드로 바꾸기
function z = getvolt_moving()

% 변수 선언
persistent temp

% 변수값 초기화 : 함수가 불러질때마다 초기화 시키면 안되니까 플래그 필요
if isempty(temp)
    temp = 1;
end

% 랜덤 센서값
w = 0+randn(1,1);
z = temp + w;
temp = temp + 1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%