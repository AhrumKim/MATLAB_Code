clear all; 
close all; 
clc;

% 데이터를 불러옵니다.
load testset3.mat

% 새로운 그림을 엽니다.
figure;

% 첫 번째 subplot: 위치 그래프
subplot(2, 2, 1); % 2행 2열 중 첫 번째 위치
plot(PosLon, PosLat); % 경도(PosLon)와 위도(PosLat)를 플로팅
title('Position Plot'); % 제목 추가
xlabel('Longitude'); % X축 레이블
ylabel('Latitude'); % Y축 레이블
grid on; % 격자 추가

% 두 번째 subplot: 속도 그래프
subplot(2, 2, 2); % 2행 2열 중 두 번째 위치
plot(AccelForward, 'b'); % 전방 가속도 플로팅
hold on; % 그래프를 겹쳐서 표시하기 위해 hold on
plot(AccelLateral, 'r'); % 측면 가속도 플로팅
title('Acceleration Plot'); % 제목 추가
xlabel('Sample Index'); % X축 레이블
ylabel('Acceleration'); % Y축 레이블
legend('Forward', 'Lateral'); % 범례 추가
grid on; % 격자 추가

% 세 번째 subplot: YAW_RATE 그래프
subplot(2, 2, 3); % 2행 2열 중 세 번째 위치
plot(YAW_RATE, 'g'); % YAW_RATE 플로팅
title('Yaw Rate Plot'); % 제목 추가
xlabel('Sample Index'); % X축 레이블
ylabel('Yaw Rate'); % Y축 레이블
grid on; % 격자 추가

% 네 번째 subplot: 원을 그리는 서브플롯
subplot(2, 2, 4); % 2행 2열 중 네 번째 위치
angles = linspace(0, 2*pi, 720); % 720 포인트로 원을 그리기 위한 각도 설정
radius = 1.5; % 반지름
xCenter = 0; % 원의 중심 X좌표
yCenter = 0; % 원의 중심 Y좌표
x = radius * cos(angles) + xCenter; % X 좌표 계산
y = radius * sin(angles) + yCenter; % Y 좌표 계산
plot(x, y, 'b-', 'LineWidth', 2); % 원을 파란 선으로 그리기
hold on; % 그래프를 겹쳐서 표시하기 위해 hold on
plot(xCenter, yCenter, 'k+', 'LineWidth', 2, 'MarkerSize', 16); % 원의 중심 표시
grid on; % 격자 추가
axis equal; % X축과 Y축 비율을 동일하게 설정
title('Circle Plot'); % 제목 추가
xlabel('X'); % X축 레이블
ylabel('Y'); % Y축 레이블

% 모든 subplot을 화면에 띄운 후, 화면 업데이트
drawnow