%%%% 실제 이부분만 그대로 사용
function volt = KalmanFilter(z)

% 변수 선언
persistent A H Q R
persistent x P
persistent firstRun

% 변수값 초기화
if isempty(firstRun)
    A = 1;
    H = 1;
    Q = 0;
    R = 4;
    x = 14;
    P = 6;

    firstRun = 1;
end

% 칼만 필터
xp = A*x;
Pp = A*P*A' + Q;
K = Pp*H'*inv(H*Pp*H' + R);
x = xp + K*(z-H*xp);
P = Pp - K*H*Pp;

volt = x;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%