% % : 한줄 주석
% % 삭제 : 한줄 주석 해제
% Ctrl + R : 전체 주석
% Ctrl + T : 전체 주석 해제
% %{문장%} : 전체 주석
% %{%{문장%}%} : 전체 주석 해제

% 제어 시스템 공학
% 
% 다양한 로봇 제어 필터 : https://limitsinx.tistory.com/68?category=907684
% 책 추천 : 칼만 필터는 어렵지 않아
% 
% 1. 제어 시스템 필터
% 	- 목적 : 노이즈 제거
% 	1) Average Filter(평균필터)
% 		(1) 특징 : 전체 평균값
%           - MovingAverageFilter보다 낮은 성능
% 		(2) 수식 : Average Filter = (1-a) * preAvg + a * new_value
%           - a = (data_count-1)/data_count
% 			- 센서값을 계속해서 받으므로 재귀하는 형태만이 유의미한 형태
% 		(3) 예시 : 
% 			[1,2,3,4,5]의 평균 * (5/6) + 6 * (1/6) = [1,2,3,4,5,6]의 평균
% 		(4) 예제 코드 : matlab_1_AverageFilter 참고
% 	2) Moving Average Filter(이동평균필터)
% 		(1) 특징 : 직전 입력값+현재 입력값 평균
%           - Average Filter보다 높은 성능
% 		(2) 수식 : avg = preAvg + (new_value - oldest_value) / using_data_count
% 		(3) 예시 : 
% 			입력 : [1,2,3,4,5]라는 input이 한개씩 차례대로
% 			출력 of Average Filter : [1 1.5 2 2.5 3] but 정답 : [1,2,3,4,5] >> 오차누적
% 			1 -> (1+2)/2 = 1.5 -> (1+2+3)/3 = 2 -> (1+2+3+4)/4 = 2.5 -> (1+2+3+4+5)/5 = 3
% 			출력 of Moving Average Filter : [1 1.5 2.5 3.5 4.5] and 정답 : [1,2,3,4,5]
% 			1 -> (1+2)/2 = 1.5 -> (2+3)/2 = 2.5 -> (3+4)/2 = 3.5 -> (4+5)/2 = 4.5
% 		(4) 예제 코드 : matlab_2_MovingAvgFilter 참고
%   3) Low Pass Filter(저주파 통과필터) = LPF
%       (1) 특징 : 직전 입력값+현재 입력값*(★가중치★) 가중치 고려 평균
%           - 활용 : 주파수대역 소리 Noise 판단 및 제거 by 디지털 회로
%           - 활용 : 신호처리, 영상처리
%           - 디지털 회로 관점 : 캐패시터(C), 인덕터(L)로 구성
%           - 기타 디지털 회로 구성 : RLC 조합으로 무수히 많은 필터 생성 가능
%       (2) 수식 : Low Pass Filter = preAvg + a * (new_value - oldest_value) / using_data_count
%           - a = 원하는 가중치 설정
%       (3) 예시 : 
%           MovingAverageFilter에서 가중치만 곱해주는 부분만 변경