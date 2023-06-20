v = 0.25;
h  = 2;
r1 = 1;

input = [v h r1];
op = optimset("Display", "iter");

[xsol, fsol, exitflag, output] = fsolve(@func1, r1, op);

function [f] = func1(x)
    v = 0.25;
    h = 2;
    f = (pi*(2*x^(3) - 3*x^(2)*h + h^(3))/3) - v;
end