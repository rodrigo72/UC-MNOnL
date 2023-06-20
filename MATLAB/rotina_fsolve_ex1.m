z = 0.892;
y1 = 0.5;

opts = optimoptions(@fsolve,'Algorithm', 'levenberg-marquardt');
[xsol, fsol, exitflag, output] = fsolve(@func1, y1, opts);

function [ f ] = func1 (x) 
    z = 0.892;
    f = (1 + x + x.^(2) - x.^(3))/((1-x).^(3)) - z;
end