function [x, y] = getCircle(center, r)
    theta = 0:0.01:2*pi;
    
    x0 = center(1);
    y0 = center(2);
    
    x = x0 + r * cos(theta);
    y = y0 + r * sin(theta);
end