clc  % 커맨드 창을 정리
close all  % 모든 열린 figure 창을 닫음

% 1에서 30씩 증가하며 28000까지 반복
for i = 1:30:28000

    % 차량을 그리기 위한 함수 호출 (기본 위치에서)
    draw_veh(0, 0, -pi/2, 2, 4.5, 'k', 1);

    % 각 차량의 위치에 따라 draw_veh 함수 호출
    draw_veh(PosX01(i), PosY01(i), -pi/2, 2, 4.5, 'k', 1);
    draw_veh(PosX02(i), PosY02(i), -pi/2, 2, 4.5, 'k', 1);  % PosY02로 수정
    draw_veh(PosX03(i), PosY03(i), -pi/2, 2, 4.5, 'k', 1);  % PosY03로 수정
    draw_veh(PosX04(i), PosY04(i), -pi/2, 2, 4.5, 'k', 1);  % PosY04로 수정
    draw_veh(PosX05(i), PosY05(i), -pi/2, 2, 4.5, 'k', 1);  % PosY05로 수정
    draw_veh(PosX06(i), PosY06(i), -pi/2, 2, 4.5, 'k', 1);  % PosY06로 수정
    draw_veh(PosX07(i), PosY07(i), -pi/2, 2, 4.5, 'k', 1);  % PosY07로 수정
    draw_veh(PosX08(i), PosY08(i), -pi/2, 2, 4.5, 'k', 1);  % PosY08로 수정

    % 도로 경계를 그리기 위한 명령어
    hold on  % 기존 플롯을 유지
    plot([0 20], [0 10],'m--')  % 위쪽 도로 경계선
    plot([0 20], [0 -10],'m--')  % 아래쪽 도로 경계선

    % X축, Y축 제한 설정
    xlim([0 60])
    ylim([-10 10])

    % 그리드 및 기타 플롯 설정
    grid on

    hold off  % 플롯 종료
    drawnow  % 현재 상태를 즉시 그림
end

