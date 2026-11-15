clc;
clear;
time_vec = 0:0.5:20;
pos = 60*(1-exp(-time_vec/5));
vel_diff = diff(pos)/0.5;
vel_grad = gradient(pos,0.5);
fprintf('Length of diff = %d\n',length(vel_diff));
fprintf('Length of gradient = %d\n',length(vel_grad));
syms t_sym
pos_sym = 60*(1-exp(-t_sym/5));
vel_sym = diff(pos_sym,t_sym);
vel_at_5 = double(subs(vel_sym,t_sym,5));
disp(vel_at_5);
max_vel = max(vel_grad);
disp(max_vel);
accel = gradient(vel_grad,0.5);
fprintf('Velocity at t=10 = %.4f\n',vel_grad(21));
fprintf('Acceleration at t=10 = %.4f\n',accel(21));