clear

x = [1.5 0.5];
op = optimset("tolx", 10e-5, "tolfun", 10e-5);
[xsol, fsol, exitflag, output] = fsolve(@func, x, op);

function [f] = func(x, y) 
    f(1) = (x(1)^6 - x(2)^3 - 0.5) * exp(-x(1)^2-x(2)^2);
    f(2) = 20*(x(1)^2 - x(2)^2) - 5;
end

% exitflag = 1 => convergiu