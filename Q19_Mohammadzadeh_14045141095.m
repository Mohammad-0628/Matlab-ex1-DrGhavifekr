clc
clear

randMat = rand(4);
if all(randMat == randMat', 'all')
    disp('A is symmetric')
else
    disp('A is not symmetric')
end

symMat = (randMat + randMat') / 2;
if all(symMat == symMat', 'all')
    disp('S is symmetric')
else
    disp('S is not symmetric')
end

testMat = [1 2 3; 2 5 6; 3 6 9];
if all(testMat == testMat', 'all')
    disp('M is symmetric')
else
    disp('M is not symmetric')
end