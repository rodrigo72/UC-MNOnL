input = [0.5 0.5];

op = optimset("tolx", 10e-20, "tolfun", 10e-10, "display", "iter");
[xsol, fsol, exitflag, output] = fsolve(@func1, input, op);

function [f] = func1(i)
    f(1) = 0.7*sin(i(1)) + 0.2*cos(i(2)) - i(1);
    f(2) = 0.7*cos(i(1)) - 0.2*sin(i(2)) - i(2);
end