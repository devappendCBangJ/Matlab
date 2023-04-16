%%%% 실제 이부분만 그대로 사용
function avg = MovAvgFilter(x)

% 변수 선언
persistent preAvg n xbuf
persistent firstRun

% 변수값 초기화
if isempty(firstRun)
    n=5; % 평균으로 취하는 데이터 갯수 n개
    xbuf = x*ones(n+1,1); % 평균으로 취하는 데이터 갯수 n개 + 다음으로 취할 데이터 1개 공간

    preAvg = x;

    firstRun = 1;
end

% 데이터 업데이트(6개 공간 활용)
for m=1:n
    xbuf(m) = xbuf(m+1);
end
    % 예를들면, [1,2,3,4,5,6,7]이 차례대로들어오는 경우,
    % [1,2,3,4,5] -> [2,3,4,5,6] -> [3,4,5,6,7] .... 이런식으로 5개씩 잘라서 움직이며 저장
xbuf(n+1) = x;

% 평균 이동 필터
avg = preAvg + (x - xbuf(1)) / n;
    % 예를 들어 [1,2,3,4,5] -> [2,3,4,5,6] -> ... 차례대로 변경될 경우
    % 필터적인 관점에서 보면, 5개중 중간에 3개인 2,3,4는 그대로 있고, 첫번째 값(1)이 빠져나가고 새로운값이 1개(6) 추가되는 형태
    % 이것이 x(새로운값) , xbuf(1)(첫번째값)에 대응되어, Moving Average의 평균인 avg를 구해주는 코드

preAvg = avg;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%