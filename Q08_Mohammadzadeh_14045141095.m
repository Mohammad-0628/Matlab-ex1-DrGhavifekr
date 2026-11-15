clear
clc
coeffs = [-5 40 0];
x_vals = [0, 2, 4, 6];
disp(polyval(coeffs, x_vals));
fprintf('\n\n');
disp(roots(coeffs));
fprintf('\n\n');
disp(conv([5 0], [-1 8]));
fprintf('\n\n');
disp(polyval(coeffs, 4));