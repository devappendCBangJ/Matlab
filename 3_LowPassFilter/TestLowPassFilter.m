clear all

% 배열 샘플
Nsamples = 100;
Xsaved = zeros(Nsamples, 1);
Xmsaved = zeros(Nsamples, 1);

% 시간 샘플
dt = 1;
t = 0:dt:Nsamples*dt - dt;

%%%%% 실제 이부분만 그대로 사용
% 센서값 읽기, 필터 적용
for k = 1:Nsamples
    xm = getvolt_LowPassFilter();
    x = LowPassFilter(xm);

    Xmsaved(k) = xm;
    Xsaved(k) = x;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 그래프 시각화
figure
plot(t, Xmsaved, 'r.');
hold on
plot(t, Xsaved, 'b');
legend('Measured', 'LowPassFilter');