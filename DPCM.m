%% DPCM
clc;
close all; 
clear all; 
%% defines
x = [1,2,3,4,5,6,7,8,9];%x-Eingang Analysefilter
delta = 2; %%Stufenhöhe 
x_sz = numel(x);
x_p = zeros(1,x_sz);%x-schätz
d = zeros(1,x_sz);%d=x+x_p
u = zeros(1,x_sz);%
y = zeros(1,x_sz);%y-Ausgang Analysefilter
%% n=1
x_p(1) = 0;
d(1) = x(1)-x_p(1);
if d(1)>=0 
    u(1) = delta;
else
    u(1) = -delta;
end
y(1) = x(1);
%% n>1
for i=2:x_sz
    x_p(i) = y(i-1);
    d(i) = x(i)-x_p(i);
    switch d(i)
        case d(i)*(d(i)>=0)
            u(i) = delta;
        case d(i)*(d(i)<0) 
            u(i) = -delta; 
    end
    y(i) = u(i) + x_p(i);
end
%% plot
figure(1);
stairs((1:x_sz),x);
hold on; 
stairs((1:x_sz),y);
grid on; 
legend("x(n)","y(n)");
xlabel("n");
title("DPCM");