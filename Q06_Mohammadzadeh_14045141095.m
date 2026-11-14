clear;
clc;

% Q6
% Part A
A = [120 80 45; 200 60 30; 90 140 75];
p = [35000; 80000; 120000];
res_A = A * p;
fprintf('Part A result:\n');
fprintf('%.2f\n', res_A);

% Part B
res_B = A .* p;
disp('Part B result:');
disp(res_B);

% Part C
A_prime = A';

% Part D
total_items = A * ones(3,1);
disp('Total items per branch:');
disp(total_items);