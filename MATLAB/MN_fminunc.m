clear

n = 10;
i = 1:2:n;
x(i) = 2;

i = 2:2:n;
x(i) = 1;

t=pi/6;
m=10;

func(x, t, m);

op = optimset('display', 'iter', 'MaxFunEvals', 2000, 'hessupdate', 'dfp'); % por defeito é bfgs (atualiza a metriz hessiana com dfp)

[x,f,exitflag,output] = fminunc(@func, x, [op], t, m); % rotina
% options argument must be created, se não tiver fica vetor vazio

function [ f ] = func( x, t, m ) % t e m são parâmetros

n=length(x); 

% executa tudo

i = 1:2:n-1; % ímpares; 1 até n-1 com espaçamento 2
y(i) = x(i) * cos(t) - x(i+1) * sin(t);

i = 2:2:n-1; % pares; 2 até n-1 com espaçamento 2
y(i) = x(i) * sin(t) + x(i+1) * cos(t);

i = n;
y(i) = x(i); % ou y(n) = x(n)

i = 1:n;
f = -sum(sin(y).*(sin(i.*y.^2/pi)).^(2*m));

end

