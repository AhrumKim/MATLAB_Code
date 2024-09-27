clear all
close all
clc

load testset3.mat

idx_ini = min(find(PosLon~=0));
idx_end = min(find(PosLon~=0));

%idx = min(find(PosLon~=0));

%plot(PosLon(idx:end),PosLat(idx:end))

plot(PosLon(min(find(PosLon~=0)):end),PosLat(min(find(PosLon~=0)):end))

hold on
grid on

for i = idx_ini:idx_end
    plot(PosLon(i),PosLat(i),'kd')
    hold off
    drawnow
end
%idx_ini = min(find(PosLon~=0));
%idx_end = size(PosLon,1);
%for i=idx_ini:10:idx_end
  %  plot(PosLon(idx_ini:idx_end) ...
  % ,PosLat(idx_ini:idx_end))
  % hold on
  % grid on
  % plot(PosLon(i),PosLat(i),'kd')

  %  hold off
  %  drawnow
%end
