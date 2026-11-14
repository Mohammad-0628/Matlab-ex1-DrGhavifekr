clear;
clc;

% Q5
% Part A
A = 10 * rand(4);
disp('Matrix A:');
disp(A);

% Part B
[max_r, max_c] = find(A == max(A(:)));
[min_r, min_c] = find(A == min(A(:)));

% Part C
temp = A(max_r(1), max_c(1));
A(max_r(1), max_c(1)) = A(min_r(1), min_c(1));
A(min_r(1), min_c(1)) = temp;
disp('New Matrix:');
disp(A);

% Part D
col_means = mean(A);
disp('Column means:');
disp(col_means);