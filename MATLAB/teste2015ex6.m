clear
% fminunc utiliza o métod de quasi newton, o fminsearch o métod de
% nelder-mead

x1 = [1 1];
op = optimset("HessUpdate", "dfp");
[xval,fval,exitflag,output] = fminunc(@func, x1, op);

function [f] = func(x) 
    f = x(1).^2 + 2.*x(2).^2 - 0.3*cos(3*pi.*x(1)) - 0.4*cos(4*pi.*x(2)) + 0.7;
end