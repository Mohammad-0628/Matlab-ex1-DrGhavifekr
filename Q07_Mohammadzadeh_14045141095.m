clear; clc;
time = [0 1 2 5 10];
v_charge = 12 * (1 - exp(-time / 2));
fprintf('Voltage = %f\n\n', v_charge);
t_target = -2 * log(0.05);
disp(t_target);
v_discharge = 12 * exp(-time / 2);
fprintf('Voltage = %f \n\n', v_discharge);
fprintf('Voltage 10s = %f', 12 * exp(-10 / 2));