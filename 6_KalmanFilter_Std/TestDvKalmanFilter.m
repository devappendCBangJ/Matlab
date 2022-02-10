clear all

% 시간 샘플
dt = 0.1;
t = 0:dt:10;

% 배열 샘플
Nsamples = length(t);
Xsaved = zeros(Nsamples, 2);
Zsaved = zeros(Nsamples, 1);
real_velocity = zeros(Nsamples, 1);

%%%%% 실제 이부분만 그대로 사용
% 센서값 읽기, 필터 적용
for k=1:Nsamples
    [A, B] = getPos();
    z = A;
    
    [pos, vel] = DvKalmanFilter(z);

    Xsaved(k, :) = [pos vel];
    Zsaved(k) = z;
    real_velocity(k) = B;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 그래프 시각화
figure
subplot(211)
plot(t, Zsaved(:,1), 'r.');
hold on
plot(t, Xsaved(:,1), 'b');
legend('Measured_Position', 'DvKalmanFilter_Position');
subplot(212)
plot(t, real_velocity(:,1), 'r.');
hold on
plot(t, Xsaved(:,2), 'b');
legend('Measured_Position', 'DvKalmanFilter_Position');