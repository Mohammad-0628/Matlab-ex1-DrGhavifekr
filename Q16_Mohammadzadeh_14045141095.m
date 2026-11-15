clc;
clear;
t = 0:0.1:5;

P1 = sin(t).*cos(t).^2./(t.^2+1);
P2 = sqrt(t.^3).*exp(2);

figure;
plot(t,P1,'b','LineWidth',2);
hold on;
plot(t,P2,'r','LineWidth',1.5);
legend('y1','y2');
title('y1 and y2');
xlabel('t');
ylabel('y');
grid on;
hold off;

x = -2:0.05:2;

f = sin(x).^2+sinh(x).^2;
Z = cos(x).^2+cosh(x).^2;
k = x.^2+2*x.*sin(x);

figure;

subplot(3,1,1);
plot(x,f);
title('f(x)');

subplot(3,1,2);
plot(x,Z);
title('Z(x)');

subplot(3,1,3);
plot(x,k);
title('k(x)');

t = 0:0.001:2;
s = sin(2*pi*3*t);

figure;

subplot(2,1,1);
plot(t,s);
title('Continuous Carrier Signal');
xlabel('t');
ylabel('s(t)');
grid on;

t2 = 0:0.1:2;
s2 = sin(2*pi*3*t2);

subplot(2,1,2);
stem(t2,s2);
title('Sampled Carrier Signal');
xlabel('t');
ylabel('s(t)');
grid on;