clear all

% 시간 샘플
dt = 1;
t=0:dt:100;
Nsamples = length(t);

% 배열 샘플
avgsaved = zeros(Nsamples, 1);
xmsaved = zeros(Nsamples, 1);

%%%%% 실제 이부분만 그대로 사용
% 센서값 읽기, 필터 적용
for k=1:Nsamples
    xm = getvolt(); % 센서값 읽기
    avg = avgfilter(xm); % 평균 필터

    xmsaved(k) = xm; % 센서값 배열 저장
    avgsaved(k) = avg; % 평균 필터값 배열 저장
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 그래프 시각화
figure
plot(t, xmsaved, 'r:*')
hold on
plot(t,avgsaved,'o-')
legend('measured','average')