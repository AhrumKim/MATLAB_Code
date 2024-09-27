clear all  % 작업 공간의 모든 변수를 제거
close all  % 열린 모든 figure 창을 닫음
clc  % 커맨드 창을 정리

% AccelForward와 AccelLateral 데이터를 사용해 플롯을 그리는 루프
for i = 1:size(AccelForward, 1)  % AccelForward 벡터의 모든 요소에 대해 반복
    % 현재 시점의 AccelForward와 AccelLateral 값 플롯 (빨간색 다이아몬드)
    plot(AccelForward(i), AccelLateral(i), 'rd')  
    
    % X축과 Y축 범위 설정
    xlim([-5 5])  % X축 범위 [-5, 5]로 설정
    ylim([-5 5])  % Y축 범위 [-5, 5]로 설정
    
    drawnow  % 각 반복에서 플롯을 즉시 업데이트하여 실시간 그래프 표시
end