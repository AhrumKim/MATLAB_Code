
% 8.2 그래프에 텍스트 넣기 y=2xsin^2(x)(단, -5<=x<=5)
x=linspace(-5,5);
y=2.*x.*sin(x).^2;
plot(x,y,'linewidth',2)
title('y=2xsin^2(x)(단, -5<=x<=5)')
axis tight


% 8.2.5 문자열의 형식 지정하기
% 다음에 주어진 함수의 그래프를 그리고 gtext함수를 이용하여 문자열 x^2cos(x)를 폰트의 크기는 20, 볼트체, 45도
% 기울여 출력하여라.
% y=|x^2cos(x)|(단, -5<=x<=5)
x=linspace(-5,5);
y=abs(x.^2.*cos(x));
plot(x,y,'o-')
gtext('x^2cos(x)', 'rotation',45,'fontsize',20, 'fontweight','bold')

