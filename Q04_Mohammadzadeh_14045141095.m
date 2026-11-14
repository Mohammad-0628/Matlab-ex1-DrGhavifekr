clear;
clc;
%Question04
%Part A
data = [25.02, 24.00, 23.01, 22.08, 22.05, 25.04, 26.00, 26.01];

%Part B
Mean = mean(data);
Max = max(data);
Min = min(data);
Std = std(data);

fprintf('Mean : %.2f C\n',Mean);
fprintf('Max : %.2f C\n',Max);
fprintf('Min : %.2f C\n',Min);
fprintf('Std : %.2f C\n',Std);

%Part C
ekhtlaf = data - Mean;
fprintf('Ekhtelaf: \n');
fprintf('%.2f\n',ekhtlaf);
fprintf('\n');

%Part D
sorted_data = sort(data);
disp('Third sorted reading :');
disp(sorted_data(3));
