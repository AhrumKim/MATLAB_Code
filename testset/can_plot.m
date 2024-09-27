clear all
close all
clc

%c0 = LaneMarkPosition_Lh_ME;
%c1 = LaneMarkPosition_Lh_ME;
%c2 = LaneMarkPosition_Lh_ME;
%c3 = LaneMarkPosition_Lh_ME;

% 차선 마커의 데이터 정의 (왼쪽과 오른쪽 차선)
c0_l = LaneMarkPosition_Lh_ME;       % 왼쪽 차선 위치
c1_l = LaneMarkHeadAngle_Lh_ME;      % 왼쪽 차선 기울기
c2_l = LaneMarkModelA_Lh_ME;         % 왼쪽 차선의 2차 모델 계수
c3_l = LaneMarkModelDerivA_Lh_ME;    % 왼쪽 차선의 3차 모델 파생 계수
c0_r = LaneMarkPosition_Rh_ME;       % 오른쪽 차선 위치
c1_r = LaneMarkHeadAngle_Rh_ME;      % 오른쪽 차선 기울기
c2_r = LaneMarkModelA_Rh_ME;         % 오른쪽 차선의 2차 모델 계수
c3_r = LaneMarkModelDerivA_Rh_ME;    % 오른쪽 차선의 3차 모델 파생 계수

x_temp = 0:0.1:60;  % X축 범위 설정 (0에서 60까지 0.1 간격)

%subplot(411)
%plot(c0)
%hold on
%subplot(412)
%plot(c1)
%subplot(413)
%plot(c2)
%subplot(414)

%plot(c3)

% for 루프: 차선 마커 및 차량 위치 시뮬레이션
for i = 1:10:28000
    subplot(211)  % 첫 번째 subplot 설정 (차선 및 차량 시각화)

    % 왼쪽 차선의 Y값 계산 (3차 모델 사용)
    y_temp_l = c0_l(i)*ones(size(x_temp)) + c1_l(i)*x_temp + c2_l(i)*x_temp.^2 + c3_l(i)*x_temp.^3;
    % 오른쪽 차선의 Y값 계산 (3차 모델 사용)
    y_temp_r = c0_r(i)*ones(size(x_temp)) + c1_r(i)*x_temp + c2_r(i)*x_temp.^2 + c3_r(i)*x_temp.^3;

    % 왼쪽 차선을 빨간색으로 플롯
    plot(x_temp, -y_temp_l,'r')
    hold on  % 다음 그래프를 현재 그래프에 추가
    % 오른쪽 차선을 파란색으로 플롯
    plot(x_temp, -y_temp_r,'b')
    hold on
    grid on  % 그리드 표시

    % 차량 그리기 함수 호출 (0,0 위치, 각도 -pi/2, 폭 2, 길이 4.5)
    draw_veh(0,0,-pi/2,2,4.5,'r',1);
    
    % X축과 Y축 범위 설정
    xlim([0 20])  % X축 범위: 0에서 20
    ylim([-10 10])  % Y축 범위: -10에서 10
    
    hold off  % 더 이상 그래프 추가하지 않음
    drawnow  % 즉시 그래프 업데이트

    % 두 번째 subplot 설정 (차선 중앙선 시각화)
    subplot(212)
    % 차선 중앙선 플롯 (왼쪽과 오른쪽 차선 위치 평균)
    plot((c0_r+ c0_l)/2)
    hold on
    grid on  % 그리드 표시
    % 현재 시점에서 중앙선에 빨간 별표 표시
    plot(i, (c0_r(i) + c0_l(i))/2, 'r*')
    hold off
end
    

