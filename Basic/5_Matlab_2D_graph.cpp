// ○ 2차원 그래프
	// ● 그래프 종류
		// 선형축 표준 그래프
		// 로그 그래프

		// 극좌표 그래프
		// 막대그래프
		// 계단그래프

		// 3차원 윤곽 표면 그래프
		// 망 그래프
	// ● 그래프 구성 요소
		// 1. 그래프 제목
		// 2. 그래프 ( + 축, 행벡터, 열벡터 등)
		// 3. x축 라벨  
		// 4. y축 라벨
		// 5. 텍스트 라벨
		// 6. 범례 ♣
		// 7. 마커 ♣

	// ●  그래프 그리기 순서
		// 1. 단일 그래프
			// plot(x, y)
			// plot(x, y, 'Line Specifiers')
			// plot(x, y, 'Line Specifiers', 'PropertyName', 'PropertyValue', ...)
				// (1) x : x좌표값 행벡터 ♣
				// (2) y : y좌표값 행벡터 ♣
				// (3) Line Specifiers
					// - 선 종류
						// 실선 : -
						// 파선 : --
						// 점선 : : ♣
						// 일점쇄선 : -. ♣
					// - 선 색깔(색 지정자)
						// red : r
						// green : g
						// blue : b
						// cyan : c ♣
						// magenta : m ♣
						// yellow : y
						// black : k ♣
						// white : w
					// - marker 모양
						// 더하기 : +
						// 원 : o
						// x : x
						// 별 : *
						// 점 : .
						// ▲▼◀▶ : ^v<> ♣
						// ■ : s ♣
						// ◆ : d ♣

					// >> 여러개의 지정자 순서 상관없이 'b:^' 이렇게 막 표시 ♣
				// (4) PropertyName, PropertyValue
					// - 선 두께 ♣
						// 'LineWidth', 두께
					// - marker 크기 ♣
						// 'MarkerSize', 크기
					// - marker 테두리색 ♣
						// 'MarkerEdgeColor', '색깔 지정자'
					// - marker 배경색 ♣
						// 'MarkerFaceColor', '색깔 지정자'
			// fplot('함수 식', [xmin, xmax, ymin, ymax...], 'Line Specifiers') ♣
				// (1) 함수식 : x^2*2-3과 같은 함수식(원소끼리 연산하는 식 안써도 됨)
				// (2) limits : 정의역, 치역 범위
				// (3) Line Specifiers : 선 종류, 선 색깔, marker 모양
		// 1. 단일 로그 그래프
			// loglog(x, y)
			// loglog(x, y, 'Line Specifiers')
			// loglog(x, y, 'Line Specifiers', 'PropertyName', 'PropertyValue', ...)
		// 2. 다중 그래프
			// plot(x1, y1, 'Line Specifiers1', 'PropertyName1', 'PropertyValue1', x2, y2, 'Line Specifiers2', 'PropertyName2', 'PropertyValue2', ...)
			// hold on
		// 2. 다중 로그 그래프
			// loglog(x1, y1, 'Line Specifiers1', 'PropertyName1', 'PropertyValue1', x2, y2, 'Line Specifiers2', 'PropertyName2', 'PropertyValue2', ...)
			// hold on
		// 3. 그래프 형식 지정 ♣♣♣♣♣♣♣♣♣♣♣♣♣
			// - Matlab 형식지정 명령어
				// (1) 그래프 제목 : title('텍스트')
				// (2) 그래프 축 ♣
					// 범위 지정 : axis([xmin xmax ymin ymax])
					// 크기 지정 : axis([tight or normal or equal])
				// (3) x축 라벨 : xlabel('텍스트')
				// (4) y축 라벨 : ylabel('텍스트')
				// (5) 텍스트 라벨 ♣♣
					// 마우스 위치 : gtext('텍스트')
					// (x, y) 위치 : text(x, y, '텍스트')
				// (6) 범례 : legend('텍스트1', '텍스트2', ..., pos = -1 or 0 or 1 or 2 or 3 or 4) ♣♣
					// pos : 범례 위치
					// 우측 경계선 밖 : pos = -1
					// 우측 경계선 안 : pos = 0
					// 우측 상단 경계선 안 : pos = 1
					// 좌측 상단 경계선 안 : pos = 2
					// 좌측 하단 경계선 안 : pos = 3
					// 우측 하단 경계선 안 : pos = 4
				// (7) 격자 : grid on ♣
				// (8) 마우스 좌표 추출 : [x, y] = ginput(n) ♣♣
					// n : 읽을 점의 개수
				// (9) 관심영역 지정 : xlim([xmin xmax]) ♣
			// - Plot >> Figure Window창 >> Plot Editor ♣
				
		// 4. 텍스트 형식 지정 in title, gtext, text, xlabel, ylabel, legend	 
			// - 텍스트 형식 by 문자열 in title, gtext, text, xlabel, ylabel, legend ♣
				// \bf : 볼드체
				// \it : 이탤릭체
				// \rm : 보통체
				// \fontname{폰트이름} : 폰트이름
				// \fontsize{폰트 크기} : 폰트 크기
				// \color{폰트 색깔} : 폰트 색깔

				// 그리스 소문자
					// \alpha : 알파
					// \beta : 베타
					// \gamma : 감마
					// \theta : 세타
					// \pi : 파이
					// \sigma : 시그마

				// 그리스 대문자
					// \Phi : 파이
					// \Delta : 델타
					// \Gamma : 감마
					// \Lambda : 람다
					// \Omega : 오메가
					// \Sigma : 시그마

			// >> 여러개의 지정자 순서 상관없이 '\fontname{휴먼옛체}\rm감쇠 1자유도 진동' 이렇게 막 표시 ♣

			// - 텍스트 형식 by 속성인자 in title, gtext, text, xlabel, ylabel, legend ♣
				// 'Rotation', 각도 : 회전
				// 'FontAngle', 'normal or italic' : 이탤릭체
				// 'FontName', '폰트 이름' : 폰트 이름
				// 'FontSize', 폰트 크기 : 폰트 크기
				// 'FontWeight', 'light or normal or bold' : 폰트 굵기
				// 'Color', '색 지정자' : 폰트 색깔
				// 'BackGroundColor', '색 지정자' : 배경색
				// 'EdgeColor', '색 지정자' : 글상자 테두리 색
				// 'LineWidth', 글상자 굵기 : 글상자 테두리선 굵기

			// >> text(x, y, '텍스트 문자열', 'PropertyName', 'PropertyValue') 이렇게 표시 ♣
		// 5. 그래프 붙여넣기 : Plot >> Figure Window창 >> Edit >> CopyFigure >> 다른 곳에 붙여넣기 ♣
			// - 그래프 내보내기
			// - 그래프 피크점 추출