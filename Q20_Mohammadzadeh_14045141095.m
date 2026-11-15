clc
clear
coefA = input('a: ');
coefB = input('b: ');
coefC = input('c: ');

polyVec = [coefA coefB coefC];
solRoots = roots(polyVec);
disp(solRoots)

if isreal(solRoots)
    xVals = linspace(min(solRoots) - 2, max(solRoots) + 2, 100);
    yVals = polyval(polyVec, xVals);
    plot(xVals, yVals)
    title('Quadratic Equation')
    xlabel('x')
    ylabel('y')
    grid on
    hold on
    plot(solRoots, [0 0], 'ro')
end