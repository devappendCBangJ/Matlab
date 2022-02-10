%%%% 실제 이부분만 그대로 사용
function [pos, vel] = DvKalmanFilter(z)

% 변수 선언
persistent A H Q R
persistent x P
persistent firstRun

% 변수값 초기화
if isempty(firstRun)
    dt = 0.1;

    A = [1 dt; 0 1]; % 어캐 설정?
    H = [1 0]; % 어캐 설정?
    Q = [1 0; 0 3]; % 어캐 설정?
    R = 10; % 어캐 설정?
    x = [0 20]'; % 초기 위치 0m, 초기 속도 20m/s 가정
    P = 5*eye(2); % 초기값 어캐 설정?

    firstRun = 1;
end

% 칼만 필터
xp = A*x;
Pp = A*P*A' + Q;
K = Pp*H'*inv(H*Pp*H' + R);
x = xp + K*(z-H*xp);
P = Pp - K*H*Pp;

pos = x(1);
vel = x(2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%