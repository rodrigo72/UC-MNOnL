
x1 = [1 1];
[x,fval,exitflag,output] = fminunc(@func1, x1, []); % como pede o máximo, a resposta é o simétrico do fval

function [ f ] = func1(x)

a1 = 3;
a2 = 4;
a3 = 1;
b1 = 1.2;
b2 = 1.5;
b3 = 1;

f = -a1.*(1-exp(-b1.*x(1))) - a2.*(1-exp(-b2.*x(2))) - a3.*(1-exp(-b3*x(1)*x(2))) + x(1) + x(2); % simetrica, pois é para encontrar o máximo e o fminunc encontra o mínimo

end