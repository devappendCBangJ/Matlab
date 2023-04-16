
// polyval(p, x값) : n차 p 다항식. 특정 x >> y값 추출
	// - p : n차 p 다항식의 계수 행벡터
// roots(p) : y = 0. n차 p 다항식 >> 근 추출 ♣
// fzero(equation, 0) : 삼각, 초월함수의 근 추출 ♣
// poly(x) : y = 0. 근 >> n차 p 다항식 추출 ♣
// polyfit(x, y, n) : (x, y)점들 >> n차 p다항식 계수 추출 ♣
// fminbnd(equation, xlb, xub) : f함수. xlb <= x <= xub에서 극솟값 >> x값들 추출 ♣

// 그래프 작도
// plot(x, y, '+', x2, y2) : (x, y)점들 '+'로 표시. (x2, y2)점들 선 그래프
// ezplot(equation, [xlb, xub]) : xlb <= x <= xub 에서 f함수 선 그래프 ♣
// ezplot(equation, [xlb, xub, ylb, yub]) : xlb <= x <= xub, ylb <= y <= yub 에서 f함수 선 그래프 ♣
// linspace(xlb, xub, n) 
// subplot(NMK) : N행 M열 K번째에 빈공간 생성 ♣
// polar(th, r) : 극좌표 그래프 ♣
// bar(x, y) : 막대 그래프 ♣
// stairs(x, y) : 계단 그래프 ♣
// stem(x, y) : 막대 그래프 + 끝점 표시 ♣
// plot3(x, y, z) : 3차원 그래프 ♣
// xlabel('xlabel명') : xlabel명
// ylabel('ylabel명') : ylabel명
// zlabel('zlabel명') : zlabel명
// grid : 2차원 눈금

// meshgrid : 3차원 눈금 ♣
// surf : 3차원 표면 그래프 ♣
// contour : 3차원 등고선 그래프 ♣
// mesh : 3차원 매쉬 그래프 ♣

// 심볼릭
// expand(equation) : 함수 전개 ♣
// factor(equation) : 인수 분해 ♣

// simulink