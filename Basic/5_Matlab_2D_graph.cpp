// �� 2���� �׷���
	// �� �׷��� ����
		// ������ ǥ�� �׷���
		// �α� �׷���

		// ����ǥ �׷���
		// ����׷���
		// ��ܱ׷���

		// 3���� ���� ǥ�� �׷���
		// �� �׷���
	// �� �׷��� ���� ���
		// 1. �׷��� ����
		// 2. �׷��� ( + ��, �຤��, ������ ��)
		// 3. x�� ��  
		// 4. y�� ��
		// 5. �ؽ�Ʈ ��
		// 6. ���� ��
		// 7. ��Ŀ ��

	// ��  �׷��� �׸��� ����
		// 1. ���� �׷���
			// plot(x, y)
			// plot(x, y, 'Line Specifiers')
			// plot(x, y, 'Line Specifiers', 'PropertyName', 'PropertyValue', ...)
				// (1) x : x��ǥ�� �຤�� ��
				// (2) y : y��ǥ�� �຤�� ��
				// (3) Line Specifiers
					// - �� ����
						// �Ǽ� : -
						// �ļ� : --
						// ���� : : ��
						// �����⼱ : -. ��
					// - �� ����(�� ������)
						// red : r
						// green : g
						// blue : b
						// cyan : c ��
						// magenta : m ��
						// yellow : y
						// black : k ��
						// white : w
					// - marker ���
						// ���ϱ� : +
						// �� : o
						// x : x
						// �� : *
						// �� : .
						// ��墸�� : ^v<> ��
						// �� : s ��
						// �� : d ��

					// >> �������� ������ ���� ������� 'b:^' �̷��� �� ǥ�� ��
				// (4) PropertyName, PropertyValue
					// - �� �β� ��
						// 'LineWidth', �β�
					// - marker ũ�� ��
						// 'MarkerSize', ũ��
					// - marker �׵θ��� ��
						// 'MarkerEdgeColor', '���� ������'
					// - marker ���� ��
						// 'MarkerFaceColor', '���� ������'
			// fplot('�Լ� ��', [xmin, xmax, ymin, ymax...], 'Line Specifiers') ��
				// (1) �Լ��� : x^2*2-3�� ���� �Լ���(���ҳ��� �����ϴ� �� �Ƚᵵ ��)
				// (2) limits : ���ǿ�, ġ�� ����
				// (3) Line Specifiers : �� ����, �� ����, marker ���
		// 1. ���� �α� �׷���
			// loglog(x, y)
			// loglog(x, y, 'Line Specifiers')
			// loglog(x, y, 'Line Specifiers', 'PropertyName', 'PropertyValue', ...)
		// 2. ���� �׷���
			// plot(x1, y1, 'Line Specifiers1', 'PropertyName1', 'PropertyValue1', x2, y2, 'Line Specifiers2', 'PropertyName2', 'PropertyValue2', ...)
			// hold on
		// 2. ���� �α� �׷���
			// loglog(x1, y1, 'Line Specifiers1', 'PropertyName1', 'PropertyValue1', x2, y2, 'Line Specifiers2', 'PropertyName2', 'PropertyValue2', ...)
			// hold on
		// 3. �׷��� ���� ���� ��������������������������
			// - Matlab �������� ��ɾ�
				// (1) �׷��� ���� : title('�ؽ�Ʈ')
				// (2) �׷��� �� ��
					// ���� ���� : axis([xmin xmax ymin ymax])
					// ũ�� ���� : axis([tight or normal or equal])
				// (3) x�� �� : xlabel('�ؽ�Ʈ')
				// (4) y�� �� : ylabel('�ؽ�Ʈ')
				// (5) �ؽ�Ʈ �� ����
					// ���콺 ��ġ : gtext('�ؽ�Ʈ')
					// (x, y) ��ġ : text(x, y, '�ؽ�Ʈ')
				// (6) ���� : legend('�ؽ�Ʈ1', '�ؽ�Ʈ2', ..., pos = -1 or 0 or 1 or 2 or 3 or 4) ����
					// pos : ���� ��ġ
					// ���� ��輱 �� : pos = -1
					// ���� ��輱 �� : pos = 0
					// ���� ��� ��輱 �� : pos = 1
					// ���� ��� ��輱 �� : pos = 2
					// ���� �ϴ� ��輱 �� : pos = 3
					// ���� �ϴ� ��輱 �� : pos = 4
				// (7) ���� : grid on ��
				// (8) ���콺 ��ǥ ���� : [x, y] = ginput(n) ����
					// n : ���� ���� ����
				// (9) ���ɿ��� ���� : xlim([xmin xmax]) ��
			// - Plot >> Figure Windowâ >> Plot Editor ��
				
		// 4. �ؽ�Ʈ ���� ���� in title, gtext, text, xlabel, ylabel, legend	 
			// - �ؽ�Ʈ ���� by ���ڿ� in title, gtext, text, xlabel, ylabel, legend ��
				// \bf : ����ü
				// \it : ���Ÿ�ü
				// \rm : ����ü
				// \fontname{��Ʈ�̸�} : ��Ʈ�̸�
				// \fontsize{��Ʈ ũ��} : ��Ʈ ũ��
				// \color{��Ʈ ����} : ��Ʈ ����

				// �׸��� �ҹ���
					// \alpha : ����
					// \beta : ��Ÿ
					// \gamma : ����
					// \theta : ��Ÿ
					// \pi : ����
					// \sigma : �ñ׸�

				// �׸��� �빮��
					// \Phi : ����
					// \Delta : ��Ÿ
					// \Gamma : ����
					// \Lambda : ����
					// \Omega : ���ް�
					// \Sigma : �ñ׸�

			// >> �������� ������ ���� ������� '\fontname{�޸տ�ü}\rm���� 1������ ����' �̷��� �� ǥ�� ��

			// - �ؽ�Ʈ ���� by �Ӽ����� in title, gtext, text, xlabel, ylabel, legend ��
				// 'Rotation', ���� : ȸ��
				// 'FontAngle', 'normal or italic' : ���Ÿ�ü
				// 'FontName', '��Ʈ �̸�' : ��Ʈ �̸�
				// 'FontSize', ��Ʈ ũ�� : ��Ʈ ũ��
				// 'FontWeight', 'light or normal or bold' : ��Ʈ ����
				// 'Color', '�� ������' : ��Ʈ ����
				// 'BackGroundColor', '�� ������' : ����
				// 'EdgeColor', '�� ������' : �ۻ��� �׵θ� ��
				// 'LineWidth', �ۻ��� ���� : �ۻ��� �׵θ��� ����

			// >> text(x, y, '�ؽ�Ʈ ���ڿ�', 'PropertyName', 'PropertyValue') �̷��� ǥ�� ��
		// 5. �׷��� �ٿ��ֱ� : Plot >> Figure Windowâ >> Edit >> CopyFigure >> �ٸ� ���� �ٿ��ֱ� ��
			// - �׷��� ��������
			// - �׷��� ��ũ�� ����