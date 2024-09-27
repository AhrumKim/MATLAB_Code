clear all  % 작업 공간의 모든 변수를 제거
close all  % 열린 모든 figure 창을 닫음
clc  % 커맨드 창을 정리

% 'testset2.mat' 파일 로드
load testset2.mat  % 'testset2.mat' 파일에 저장된 데이터를 불러옴

% PosLat과 PosLon 데이터를 이용해 경로를 플롯
plot(PosLat, PosLon)  % 위도(PosLat)와 경도(PosLon)를 그래프에 플롯

% plot(PosLat, PosLat)  % 위도(PosLat)를 X축과 Y축 모두에 사용하여 플롯 (주석 처리됨)