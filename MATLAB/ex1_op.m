x0=[1 1];

% display mostra todas as iterações
op=optimset("Display", "iter", "TolX", 1.0e-3); % antes era 1.0e-4 levando a mais iterações
[X,FVAL,EXITFLAG,OUTPUT] = fminsearch(@MN1, x0, op);

function f=MN1 (x) 
    f=max(abs(x(1)), abs(x(2)-1));
end