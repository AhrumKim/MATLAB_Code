% Voltage Divider
% the program calculates the voltage across each resistor
%in a circuit that has resistors connected in series.
clear all;
close all;
clc;

Vs=input('Please enter the source voltage ');
Rn=input('Enter the values of the resistors as elements in a row vector(use[])\n');

N=length(Rn);
Req=sum(Rn);

vn=Rn.*Vs/Req; %vector
ii=Vs/Req; % scalar

Pn=(ii)^2*Rn;
ptotal=Vs*ii;

disp('')
disp('Resistance Voltage Power')
disp(' (Ohms)    (Volts)     (Watts)')
disp('')
for i=1:N
    fprintf('%f  %f %f\n',Rn(i),vn(i),Pn(i));
end
disp('')

fprintf('The currnet in the circuit is %f Amps\n',ii);
fprintf('\nThe totoal power dissipated in the circuit is %f watts.\n', ptotal);

figure;
subplot(1,2,1);
bar(Rn, vn);
title('voltage across the resistor');
subplot(1,2,2);
pie(Rn, Pn);
title('Power dissipated in each resistor');

% 전압 분배기(Voltage Divider)
% 이 프로그램은 직렬로 연결된 회로에서 각 저항기(resistor)에서의 전압을 계산합니다.
clear all;  % 모든 변수 초기화
close all;  % 모든 창 닫기
clc;        % 커맨드 윈도우 정리

% 사용자로부터 입력을 받음
Vs = input('Please enter the source voltage ');  % 공급 전압을 입력받음
Rn = input('Enter the values of the resistors as elements in a row vector(use[])\n');  % 저항 값들을 행 벡터로 입력받음

% 저항기 개수 및 등가 저항 계산
N = length(Rn);  % 저항기의 개수를 계산
Req = sum(Rn);   % 모든 저항기의 합(등가 저항)

% 각 저항기에서의 전압과 회로의 총 전류 계산
vn = Rn .* Vs / Req;  % 각 저항기에서의 전압 계산 (벡터)
ii = Vs / Req;        % 회로의 총 전류 계산 (스칼라)

% 각 저항기에서 소모되는 전력과 총 전력 계산
Pn = (ii)^2 * Rn;     % 각 저항기에서 소모되는 전력 계산
ptotal = Vs * ii;     % 회로에서 소모되는 총 전력 계산

% 계산된 저항, 전압, 전력 출력
disp('')
disp('Resistance Voltage Power')  % 출력할 헤더
disp(' (Ohms)    (Volts)     (Watts)')
disp('')
for i = 1:N  % 각 저항기에 대해 출력
    fprintf('%f  %f %f\n', Rn(i), vn(i), Pn(i));
end
disp('')

% 회로의 총 전류와 총 소모 전력 출력
fprintf('The current in the circuit is %f Amps\n', ii);
fprintf('\nThe total power dissipated in the circuit is %f watts.\n', ptotal);

% 전압과 전력의 시각화
figure;  % 새로운 그림 창 생성
subplot(1,2,1);  % 1행 2열로 그래프 분할, 첫 번째 그래프
bar(Rn, vn);  % 막대 그래프로 각 저항기에서의 전압을 표시
title('Voltage across the resistor');  % 그래프 제목

subplot(1,2,2);  % 두 번째 그래프
pie(Rn, Pn);  % 파이 차트로 각 저항기에서 소모되는 전력을 표시
title('Power dissipated in each resistor');  % 그래프 제목

