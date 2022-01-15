clear all

% 시간 샘플
dt = 1;
t = 0:dt:100;

% 배열 샘플
Nsamples = length(t);
Xsaved = zeros(Nsamples, 1);
Zsaved = zeros(Nsamples, 1);

%%%%% 실제 이부분만 그대로 사용
% 센서값 읽기, 필터 적용
for k=1:Nsamples
    z = getvolt();
    volt = KalmanFilter(z);

    Xsaved(k) = volt;
    Zsaved(k) = z;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 그래프 시각화
figure
plot(t, Zsaved, 'r:*');
hold on
plot(t, Xsaved, 'bo-');
legend('Measured', 'KalmanFilter');