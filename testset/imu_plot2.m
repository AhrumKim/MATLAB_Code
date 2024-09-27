clear all  % 작업 공간의 모든 변수를 제거
close all  % 열린 모든 figure 창을 닫음
clc  % 커맨드 창을 정리

% 원을 그리기 위한 각도 설정
angles = linspace(0, 2*pi, 720);  % 0에서 2*pi까지 720개의 점으로 원을 그리기 위한 각도 생성
radius = 1.5;  % 원의 반지름 설정
xCenter = 0;  % 원의 중심 X좌표
yCenter = 0;  % 원의 중심 Y좌표

% 원의 X, Y 좌표 계산
x = radius * cos(angles) + xCenter;  % X좌표 계산
y = radius * sin(angles) + yCenter;  % Y좌표 계산

% 원 그리기 (파란색 실선, 두께 2)
plot(x, y, 'b-', 'LineWidth', 2);

% 원의 중심에 교차점 플롯 (검은색 '+' 표시, 크기 16)
hold on;  % 현재 그래프 유지
plot(xCenter, yCenter, 'k+', 'LineWidth', 2, 'MarkerSize', 16);

grid on;  % 그리드 표시
axis equal;  % X축과 Y축을 동일한 비율로 설정
xlabel('X', 'FontSize', 16);  % X축 라벨 설정
ylabel('Y', 'FontSize', 16);  % Y축 라벨 설정;