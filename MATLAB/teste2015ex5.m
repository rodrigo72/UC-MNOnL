clear

op = optimset("TolX", 10e-12, "TolFun", 10e-12);
[x, y, exitflag, output] = fsolve(@func, 5, op);

function [f] = func(b)
    f = 10*b*sin(b/2) - 10;
end