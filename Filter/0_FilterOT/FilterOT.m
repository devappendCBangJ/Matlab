%{
% : 한줄 주석
% 삭제 : 한줄 주석 해제
Ctrl + R : 전체 주석
Ctrl + T : 전체 주석 해제
%{문장%} : 전체 주석
%{%{문장%}%} : 전체 주석 해제


제어 시스템 공학

다양한 로봇 제어 필터 : https://limitsinx.tistory.com/68?category=907684
책 추천 : 칼만 필터는 어렵지 않아

1. 제어 시스템 필터
	- 목적 : 노이즈 제거
	1) Average Filter(평균필터)
		(1) 특징 : 전체 평균값
            - 성능 : MovingAverageFilter보다 낮은 성능
		(2) 수식 : Average Filter = (1-a) * preAvg + a * new_value
            a = (data_count-1)/data_count
            센서값을 계속해서 받으므로 재귀하는 형태만이 유의미한 형태
		(3) 예시 : 
			[1,2,3,4,5]의 평균 * (5/6) + 6 * (1/6) = [1,2,3,4,5,6]의 평균
		(4) 예제 코드 : matlab_1_AverageFilter 참고
	2) Moving Average Filter(이동평균필터)
		(1) 특징 : 직전 입력값+현재 입력값 평균
            - 성능 : Average Filter보다 높은 성능
		(2) 수식 : avg = preAvg + (new_value - oldest_value) / using_data_count
		(3) 예시 : 
			입력 : [1,2,3,4,5]라는 input이 한개씩 차례대로
			출력 of Average Filter : [1 1.5 2 2.5 3] but 정답 : [1,2,3,4,5] >> 오차누적
			1 -> (1+2)/2 = 1.5 -> (1+2+3)/3 = 2 -> (1+2+3+4)/4 = 2.5 -> (1+2+3+4+5)/5 = 3
			출력 of Moving Average Filter : [1 1.5 2.5 3.5 4.5] and 정답 : [1,2,3,4,5]
			1 -> (1+2)/2 = 1.5 -> (2+3)/2 = 2.5 -> (3+4)/2 = 3.5 -> (4+5)/2 = 4.5
		(4) 예제 코드 : matlab_2_MovingAvgFilter 참고
    3) Low Pass Filter(저주파 통과필터) = LPF
        (1) 특징 : 직전 입력값+현재 입력값*(★가중치★) 가중치 고려 평균
            - 활용 : 주파수대역 소리 Noise 판단 및 제거 by 디지털 회로
            - 활용 : 신호처리, 영상처리
            - 디지털 회로 관점 : 캐패시터(C), 인덕터(L)로 구성
            - 기타 디지털 회로 구성 : RLC 조합으로 무수히 많은 필터 생성 가능
        (2) 수식 : Low Pass Filter = preAvg + a * (new_value - oldest_value) / using_data_count
            a = 원하는 가중치 설정
        (3) 예시 : 
            MovingAverageFilter에서 가중치만 곱해주는 부분만 변경
        (4) 예제 코드 : matlab_3_LowPassFilter 참고
    4) Kalman Filter(칼만 필터)
        (1) 특징
            - 개념 : 어떤 센싱값(z_k)를 진리값(Reference)로 삼고, 해당변수로 만들어진 상태방정식의 다른
            값들을 지속적으로 구하는 것
            - 활용 : 선형시스템
        (2) 수식
            [1] 초기값 x, P 선정 : 이전 스텝에서의 결과값 x, P대입 
                xp = A*x;
            [2] 추정값 x와 오차공분산 P 예측 : x대입 >> x, P예측
                Pp = A*P*A' + Q;
            [3] 칼만이득 K 계산 : P예측값 대입 >> K계산
                K = Pp*H'*inv(H*Pp*H' + R);
            [4] 추정값 x 계산 : x, P, K예측값 대입 + 측정값 z대입 >> x계산
                x = xp + K*(z-H*xp);
            [5] 오차공분산 P 계산 : P, K대입 >> P계산
                P = Pp - K*H*Pp;
            A, H, Q, R : 이미 정해진 값
            ex. 등속도 운동하는 물체의 위치 x(이동거리) 찾기
                x_k+1 = A * x_k + Q
                z_k = H * x_k + R
                    A : 상태공간방정식
                        - 과거와 현재사이의 물리적 수식을 행렬로 정리한 term by x의 변수간 관계
                        - 물리적/수학적 이해 필요
                        >> 가정 : x_k+1 = x_k (등속도 운동 하므로)
                        >> 결과 : [0] [현재위치;현재속도] = [1, dt;0, 1]*[과거위치;과거속도]
                        >> 결과 : [0] x_k+1 =  A * x_k

                        >> 현재위치 = 과거위치 + dt * 과거속도
                        >> 현재속도 = 과거속도
                    H : 상태방정식 by 센싱값 변환
                        - 어떤 센싱값(z_k)를 진리값(Reference)로 삼고, 해당변수로 만들어진 상태방정식의 다른
                        값들을 지속적으로 구함
                        >> 가정 : x_k+1 = x_k (등속도 운동 하므로)
                        >> 결과 : [0] z_k = H * x_k = [위치;속도]

                        >> 현재위치 = 과거위치 + dt * 과거속도
                        >> 현재속도 = 과거속도

                        >> z_k는 센싱값이므로 위치센서로 측정해서 칼만필터 연산하려면 H = [1 0]
                            속도센서로 측정해서 칼만필터 연산하려면 H = [0 1]

                    Q : 시스템 노이즈
                        - 심화 공부 : Signal Processing or Digital Commuication or Random Process 교과목에서 다루는 부분
                        - 대부분의 노이즈 = AWGN(Additional White Gaussian Noise) = 화이트 노이즈 = Gaussian distribution 형태
                        >> 결과 : [0] x_k+1 = A * x_k + Q
                            Q결정 by 사용자 경험
                    R : 센서 노이즈
                        - 심화 공부 : Signal Processing or Digital Commuication or Random Process 교과목에서 다루는 부분
                        - 대부분의 노이즈 = AWGN(Additional White Gaussian Noise) = 화이트 노이즈 = Gaussian distribution 형태
                        >> 결과 : [0] z_k = H * x_k + R
                            R결정 by 센서 사양서

                    P : 오차공분산
                        - 추정값과 실제값의 차이(오차)를 Gaussian distribution으로 그릴 때
                        분산값
                        >> 결과 : [5] P_k = P_k^ - K*H*P_k^
                        >> 결과 : [5] P_예상값 = P_추정값 - 상수*상수*P_추정값 = (1-상수)*P_추정값
                    K : 칼만이득
                        - R(센서 노이즈) 증가 >> Kalman gain 감소 >> 최종 추정값에서 센서에 대한
                        비중 감소
                        >> 원인 : [3] K = P*H*(H*P*H+R)^(-1) = PH/(HPH+R) 에서 R의 변화
                        >> 결과 : [3] K = P*H*(H*P*H+R)^(-1) = PH/(HPH+R) 에서 K의 변화
                        - Q(시스템 노이즈) 증가 >> Kalman gain 증가 >> 최종 추정값에서 센서에
                        대한 비중 증대(최종 추정값에서 시스템에 대한 비중 감소)
                        >> 원인 : [1] P_k = A * P_k-1 * A + Q에서 Q의 변화
                        >> 결과1 : [3] K = P*H*(H*P*H+R)^(-1) = PH/(HPH+R) 에서 K의 변화
                        >> 결과2 : [4] x_k = x^_k + K * (z_k - H * x^k) = (1-K) * x_k^ + K * z_k에서 x_k의 변화

        (3) 예시
        (4) 예제 코드 : matlab_4~6_Kalman_Filter 참고
%}