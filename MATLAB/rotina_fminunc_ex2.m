clear
n = 5;

i = 1:2:n;
x(i) = 2;

i = 2:2:n;
x(i) = 1;

op = optimset('display', 'iter', 'MaxFunEvals', 2000, 'hessupdate', 'dfp'); 
% por defeito é bfgs (agr atualiza a matriz hessiana com dfp)

[x,f,exitflag,output] = fminunc(@func, x, op);

% exitflag = 0 => não convergiu, foi atingido o número máximo de interações
% exitflag = 2 => convergiu
function [ f ] = func(x)
    t = pi/6;
    m = 10;
    n = length(x); 

    i = 1:2:n-1;
    y(i) = x(i) * cos(t) - x(i+1) * sin(t);

    i = 2:2:n-1;
    y(i) = x(i) * sin(t) + x(i+1) * cos(t);

    i = n;
    y(i) = x(i);

    i = 1:n;
    f = -sum(sin(y(i)).*(sin((i.*y(i).^(2)/pi))).^(2.*m));
end
