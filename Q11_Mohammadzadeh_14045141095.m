clear
clc

syms t x
f = (1 - cos(t)) / t^2;
limit_a = limit(f, t, 0);
disp(limit_a);

g = (2*t + 1) / (t - 3);
limit_b = limit(g, t, inf);
disp(limit_b)

h = 1 / x;
limit_left = limit(h, x, 0, 'left');
limit_right = limit(h, x, 0, 'right');
disp(limit_left)
disp(limit_right)