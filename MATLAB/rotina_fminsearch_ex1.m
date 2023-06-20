clear 

x = [1 1];
op = optimset("TolX", 1.0e-3, "Display", "iter");

[x,f,exitflag,output]=fminsearch(@func,x,op);

function f = func(x) 
    f = max(abs(x(1)), abs(x(2)-1));
end

% exit flag == 1 => converge
% output => 38 iterações
% output => 72 cálculos
% output => algoritmo Nelder-Mead