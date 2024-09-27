clear all
close all
clc
for i =1 :size(AccelForward, 1)
    plot(AccelForward(i), AccelLateral(i), 'rd')
    xlim([-5 5])
    ylim([-5 5])
    drawnow
end