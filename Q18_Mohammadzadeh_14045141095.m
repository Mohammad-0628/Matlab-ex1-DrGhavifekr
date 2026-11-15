clc;
clear;

num = input('Enter num: ');

if num <= 0
    error('num must be positive');
end

guess = num;
iter = 0;

while true
    nextGuess = (guess + num/guess)/2;
    iter = iter + 1;

    if abs(nextGuess-guess) < 0.0001
        break;
    end

    guess = nextGuess;
end

fprintf('Root = %.6f\n',nextGuess);
fprintf('Iterations = %d\n',iter);


testValues = [25 7 0.5];

for idx = 1:length(testValues)
    num = testValues(idx);
    guess = num;
    iter = 0;

    while true
        nextGuess = (guess + num/guess)/2;
        iter = iter + 1;

        if abs(nextGuess-guess) < 0.0001
            break;
        end

        guess = nextGuess;
    end

    errDiff = abs(nextGuess-sqrt(num));

    fprintf('a = %.2f | Root = %.6f | sqrt = %.6f | Difference = %.8f\n', ...
        num,nextGuess,sqrt(num),errDiff);
end