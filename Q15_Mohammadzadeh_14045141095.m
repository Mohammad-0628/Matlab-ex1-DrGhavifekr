clc
clear

disp(c2k([0 25 100]))

disp(norm3([3 4]))
disp(norm3([1 2 2]))

[P, S] = powerCalc(220, 5, 0.9);
fprintf('P = %.2f W, S = %.2f VA\n', P, S);