clear

x0 = [1 1 1 1];
[xval, fval, exitflag, output] = fminsearch(@func, x0, []);

i=1:1:4;
x0_2(i) = 10;

[xval2, fval2, exitflag2, output2] = fminsearch(@func2, x0_2, []);

function [f] = func(x)
    i=1:1:21;
    t(i) = 0.25 + 0.75*(i-1)/20;
    u(i) = x(4) - (x(1).*t(i).^2 + x(2).*t(i) + x(3)).^2 - sqrt(t(i));
    f = max(u(i).^2) - max(abs(u(i)));
end

function [f] = func2(x)
    i=1:1:21;
    t(i) = 0.2*i;
    u(i) = x(4) - (x(1).*t(i).^2 + x(2).*t(i) + x(3)).^2 - sqrt(t(i));
    f = max(u(i).^2) - max(abs(u(i)));
end