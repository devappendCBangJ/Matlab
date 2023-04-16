% persistent 변수명 : 영속 변수
    % 특징 : 선언한 함수에 대한 로컬 변수. 변수 값은 함수 호출 간 메모리에 유지

%%%% 실제 이부분만 그대로 사용
function avg = avgfilter(x) % 출력값 = 함수명(인자)

% 변수 선언
persistent preavg k
persistent firstrun

% 변수값 초기화 : 함수가 불러질때마다 초기화 시키면 안되니까 플래그 필요 ♣
if isempty(firstrun) % isempty(배열) : 배열이 비어있는가?
    preavg=0;
    k=1;

    firstrun=1;
end

% 평균 필터 ♣
alpha = (k-1)/k;
avg = alpha * preavg + (1-alpha) * x;
    % alpha = (k-1)/k;

preavg = avg;
k = k+1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%