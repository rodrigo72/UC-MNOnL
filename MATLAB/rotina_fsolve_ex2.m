vector = [1 1];

op = optimset("display", "iter", "tolx", 10e-10, "tolfun", 10e-20);

[xsol, fsol, exitflag, ouptu] = fsolve(@sistema, vector, op);
disp(xsol);
function [f] = sistema (i)
    f(1) = i(1)^(2) + i(2)^2 - 1;
    f(2) = sin((pi*i(1))/2) + i(2)^(3);
end