clc;
clear;
time_fine = 0:0.01:5;
vel_fine = 3*time_fine.^2 + 2*time_fine;
dist_trapz = trapz(time_fine,vel_fine);
syms tau
vel_sym = 3*tau^2 + 2*tau;
dist_exact = int(vel_sym,tau,0,5);
dist_exact = double(dist_exact);
fprintf('Distance with trapz = %.4f\n',dist_trapz);
fprintf('Exact distance = %.4f\n',dist_exact);
time_coarse = 0:0.5:5;
vel_coarse = 3*time_coarse.^2 + 2*time_coarse;
dist_coarse = trapz(time_coarse,vel_coarse);
abs_error = abs(dist_exact-dist_coarse);
fprintf('Error = %.4f\n',abs_error);
cum_dist = cumtrapz(time_fine,vel_fine);
idx_half = find(cum_dist >= dist_trapz/2,1);
fprintf('Half distance time = %.2f\n',time_fine(idx_half));