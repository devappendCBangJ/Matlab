// ○ 배열
	// ● 배열의 수학 연산
		// 1. 배열의 덧셈, 뺄셈, 스칼라 곱
			// A + B
			// A - B
			// 스칼라 * C : 스칼라곱 >> 각각 원소에 곱 ♣
			// C + 스칼라 : 스칼라 덧셈 >> 각각 원소에 덧셈 ♣
			// C - 스칼라 : 스칼라 뺄셈 >> 각각 원소에 뺄셈 ♣
		// 2. 배열의 곱셈
			// A * B
		// 3. 배열의 나눗셈
			// 1) 행렬 왼쪽 나눗셈
				// Ax = b의 해 구하기
					// 1) 역행렬 : x = inv(A) * b = A^-1 * b
					// 2) 왼쪽 나눗셈 \(가우스 소거법) : x = A\b

				// - 이때 x, b : 열벡터 ♣
			// 2) 행렬 오른쪽 나눗셈
				// xC = d의 해 구하기
					// 1) 역행렬 : x = d * inv(C) = d * C^-1
					// 2) 오른쪽 나눗셈 /(가우스 소거법) : x = d/C

				// - 이때 x, d : 행벡터 ♣
		// 4.  단위 행렬
			// I = eye(n)
			// >> AI = A
			// >> IA = A
		// 5. 역행렬
			// B = inv(A)
			// B = A^-1
			// >> A * B = I
			// >> A * A^-1 = I
		// 6. 행렬식
			// det(A)
		// 7. 과소 결정 연립방정식 ♣
			// 방정식 rank 개수 < 미지수 n 개수 >> 무한한 해
			// Ax = b의 근사해 구하기
				// - 의사역행렬 pseudo-inverse A+ = A' * (A * A')^-1 이용 ♣
				// - 의사역행렬 함수 pinv(A) 이용 ♣ 
				// x = A' * (A * A')^-1 * b
				// x = A' * inv(A * A') * b
				// x= pinv(A) * b
				// >> PA = A' * (A * A')^-1
				// >> x = PA * b

			// 감소행 사다리꼴 : Ax = b를 Cx = d로 변형 ♣♣
				// 1) rref([A b])
		// 8. 과잉 결정 연립방정식 ♣
			// 미지수 n 개수 < 방정식 rank 개수
			// Ax = b의 근사해 구하기
				// - 의사역행렬 pseudo-inverse A+ = (A' * A)^-1 * A' 이용 ♣
				// - 왼쪽 나눗셈 \(가우스소거법) ♣
				// x = (A' * A)^-1 * A' * b
				// x = inv(A' * A) * A' * b
				// x = A \ b
				// >> PA = (A' * A)^-1 * A'
				// >> x = PA * b
		// 9. 원소별 연산
			// A.*B : 원소별 곱셈
			// A./B : 원소별 오른쪽 나눗셈
			// A.\B : 원소별 왼쪽 나눗셈
			// A.^B : 원소별 거듭제곱

			// - .연산자 ♣
		// 10. 내장함수 배열 사용 : 원소별 연산 ♣
			// mean(A) : 평균값 ♣
			// median(A) : 중앙값
				// - 짝수 갯수 >> 중간값 2개 평균
			// sum(A) : 합산
			// sum(sum(A)) : 행렬 총 원소 합산
			// C = max(A) : 최대값
			// C = max(max(A)) : 행렬 총 원소 최대값
			// [d, n] = max(A) : 최대값, 최대값의 위치 ♣♣
			// C = min(A) : 최소값
			// C = min(min(A)) : 행렬 총 원소 최소값
			// [d, n] = min(A) : 최소값, 최소값의 위치 ♣♣
			// std(A) : 표준편차 ♣♣
			// rem(a, b) : a을 b로 나눈 나머지 ♣♣

			// det(A) : 정방행렬 A의 행렬식
			// dot(A, B) : 내적
				// - 행과 열 구분 x
			// cross(A, B) : 외적
			// inv(A) : 역행렬

			// sort(A) : 오름차순 분류
			// sort(A, 'descend') : 내림차순 분류
			// reshape(A, m, n) : rxs matrix A 행렬을 mxn 행렬로 변화 ♣
				// - 단, rxs = mxn 곱이 같아야함 ♣
			// diag(A) : A벡터 >> ◆ 대각행렬로 출력 ◆ ♣♣♣♣♣♣♣♣♣♣
			// diag(A) : A행렬의 대각선 원소 >>  ◆ 열벡터 출력 ◆ ♣♣♣♣♣♣♣♣♣♣
			// find(A) : A벡터에서 0아닌 주소 반환 ♣
			// [r, c, v] = find(A) : A행렬에서 0아닌 행, 열, 실제값 반환 ♣♣
				// - find(A > 100)와 같은 조건 연산도 가능 >> 이 때는 논리값 반환 ♣

			// - 벡터 : 해당 열에 대해 실행 >> ◆ 스칼라 출력 ◆
			// - 배열 : 각 열마다 실행 >> ◆ 행벡터 출력 ◆

			// rand : 0 ~ 1 실수. 난수 한개 ♣
			// rand(1, n) : 0 ~ 1 실수. 1xn 난수 행벡터
			// rand(n ,1) : 0 ~ 1 실수. nx1 난수 열벡터
			// rand(n) : 0 ~ 1 실수. nxn 난수 행렬 ♣
			// rand(m, n) : 0 ~ 1 실수. mxn 난수 행렬 ♣
			// (b-a)*rand+a : a ~ b 정수. 난수 한개 ♣
			// round((n-1)*rand+1) : 1 ~ n 정수. 난수 한개 ♣

			// randperm(n) : 1 ~ n 정수. 1xn 난수 행벡터 무작위 순서 전부 출력 ♣♣
			// randn(m, n) : 평균 0, 표준편차 1 정규분포. mxn 난수 행렬 ♣♣
			// round(a*randn(m, n)+b) : 평균 b, 표준편차 a 정규분포. mxn 난수 행렬 ♣♣

			// randi(imax) : 1 ~ imax 정수. 난수 한개 ♣♣
			// randi(imax, n) : 1 ~ imax 정수. nxn 난수 행렬 ♣♣♣
			// randi(imax, m, n) : 1 ~ imax 정수. mxn 난수 행렬 ♣♣♣
			// randi([imin, imax], m, n) : 1 ~ imax 정수. mxn 난수 행렬 ♣♣♣
		// 11. 그래프 작도 함수
			// plot(X, Y) : 그래프 작도
			// errorbar(X, Y, 'b*-', 'MarkerSize', 마커 사이즈값, 'LineWidth', 선 너비값)
			// grid : 매쉬 생성

		// 1. 데이터 가져오기 ♣
			// 1) matlab 명령어
				// variable = xlsread('filename') : filename + 첫 번째 시트 + 모든 데이터
				// variable = xlsread('filename', ['range']) : filename + 첫 번째 시트 + 지정 데이터
				// variable = xlsread('filename', ['sheet_name'], ['range']) : filename + 지정 시트 + 지정 데이터
				// - filename : 확장자 생략 가능
				// - range : 엑셀의 범위 기호 사용
			// 2) 데이터 가져오기 마법사
				// 상단 홈 >> 데이터 가져오기(메모장, 엑셀 등...)
		// 2. 데이터 내보내기 ♣
			// 1) matlab 명령어
				// - 파일 수동 생성하기
				// xlswrite('filename' variable_name) : filename + 첫 번째 시트 + 모든 데이터
				// xlswrite('filename', variable_name, ['range']) : filename + 첫 번째 시트 + 지정 데이터
				// xlswrite('filename', variable_name, ['sheet_name'], ['range']) : filename + 지정 시트 + 지정 데이터

// diag(대각 행렬), 원소 추출 시 A(:) : 열벡터 출력 ♣
// 나머지 : 행벡터 출력 ♣

// [d, n] = max(A) : 최대값, 최대값의 위치 ♣
// [d, n] = min(A) : 최소값, 최소값의 위치 ♣
// [r, c, v] = find(A) : A행렬에서 0아닌 행, 열, 값 반환 ♣

// (x, y) 위치 : text(x, y, '텍스트')
// 마우스 좌표 추출 : [x, y] = ginput(n) ♣♣
	// n : 읽을 점의 개수
// 범례 : legend('텍스트1', '텍스트2', ..., pos = -1 or 0 or 1 or 2 or 3 or 4) ♣♣

// randi(imax) : 1 ~ imax 정수. 난수 한개 ♣
// randi(imax, n) : 1 ~ imax 정수. nxn 난수 행렬 ♣
// randi(imax, m, n) : 1 ~ imax 정수. mxn 난수 행렬 ♣