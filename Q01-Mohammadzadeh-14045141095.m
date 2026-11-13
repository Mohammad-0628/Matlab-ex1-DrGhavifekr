%Tamrin 1
clear;
clc;
%Bakhsh A
% x = Masraf , y = Hazine
    x = 245;
if  x <= 100
     y = x * 1500;
else
     y = ((100 * 1500) + ((x - 100) * 3000));
end
    fprintf('Mablagh Ghabz baraye 245kwh: %d Toman\n', y);
%Bakhsh B
    data = [245 , 400];
    for i = 1:length(data)
        x = data(i);

        if x <= 100
            P = (x * 1500);
        else
            P = (100 * 1500) + ((x - 100) * 3000);
        end
        fprintf('Mablagh Masraf %d kwh: %d Toman\n', x, P);
    end
