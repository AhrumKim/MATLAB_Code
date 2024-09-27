clear all;  % 작업 공간의 모든 변수를 제거
close all;  % 열린 모든 figure 창을 닫음
clc  % 커맨드 창을 정리

% 데이터 파일 로드
load testset3.mat  % 'testset3.mat' 파일을 불러옴

% PosLon 벡터에서 0이 아닌 첫 번째 값의 인덱스 찾기
idx_ini = find(PosLon ~=0, 1 );  % 0이 아닌 첫 번째 인덱스 찾기
% PosLon 벡터의 마지막 인덱스 가져오기
idx_end = size(PosLon,1);  % PosLon의 길이를 사용해 마지막 인덱스 구하기

% for 루프: 차선 및 차량 움직임을 시뮬레이션
for i = idx_ini:10:idx_end
    % 첫 번째 subplot: 차선과 차량 위치 시각화
    subplot(2,2,1:2)  % 첫 번째 subplot (2x2 그리드에서 첫 번째와 두 번째 subplot 병합)
    % 차량 경로 그리기 (위도 vs 경도)
    plot(PosLon(idx_ini:idx_end), PosLat(idx_ini:idx_end))  % 전체 경로 플롯
    hold on  % 그래프 유지
    grid on  % 그리드 표시
    % 현재 위치 플롯 (검은색 다이아몬드 모양)
    plot(PosLon(i), PosLat(i), 'kd')  
    hold off  % 그래프 추가 끝
    drawnow  % 그래프 즉시 업데이트

    % 두 번째 subplot: 가속도와 차량의 상태를 시각화
    subplot(2,2,3)  % 세 번째 subplot
    % 원을 그리기 위한 각도 및 좌표 설정
    angles = linspace(0, 2*pi, 720);  % 0에서 2*pi까지 720개의 점으로 원 그리기
    radius = 1.5;  % 원의 반지름 설정
    xCenter = 0;  % 원의 중심 X좌표
    yCenter = 0;  % 원의 중심 Y좌표
    x = radius * cos(angles) + xCenter;  % 원의 X좌표 계산
    y = radius * sin(angles) + yCenter;  % 원의 Y좌표 계산
    % 원 그리기 (파란색 실선, 두께 2)
    plot(x, y, 'b-', 'LineWidth', 2);
    % 원의 중심에 교차점 플롯 (검은색 '+' 표시)
    hold on;
    plot(xCenter, yCenter, 'k+', 'LineWidth', 2, 'MarkerSize', 16);
    grid on;  % 그리드 표시
    axis equal;  % X축과 Y축을 동일한 비율로 설정
    xlabel('X', 'FontSize', 16);  % X축 라벨 설정
    ylabel('Y', 'FontSize', 16);  % Y축 라벨 설정
    % 현재 가속도 상태 플롯 (빨간색 다이아몬드)
    plot(AccelForward(i), AccelLateral(i), 'rd')
    % X축 및 Y축 범위 설정
    xlim([-5 5])  % X축 범위 설정
    ylim([-5 5])  % Y축 범위 설정
    hold off  % 그래프 추가 끝
    drawnow  % 그래프 즉시 업데이트

    % 세 번째 subplot: YAW_RATE 시각화
    subplot(2,2,4)  % 네 번째 subplot
    % 전체 YAW_RATE 데이터 플롯 (파란색 실선)
    plot(YAW_RATE(idx_ini:idx_end), 'b')  
    hold on;
    % 현재 YAW_RATE 데이터 플롯 (녹색 원)
    plot(i, YAW_RATE(i), 'go')  
    grid on;  % 그리드 표시
    hold off  % 그래프 추가 끝
    drawnow  % 그래프 즉시 업데이트
end