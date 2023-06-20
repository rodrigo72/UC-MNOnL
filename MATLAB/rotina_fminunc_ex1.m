
x = [1 1];
[xval,fval,exitflag,output] = fminunc(@func, x, []);
fval = - fval; % ao utilizar o inverso da função para encontrar o mínimo, 
% depois é necessário utilizar o simétrico do valor y
disp("Solução f: " + fval);

function f = func(x) 
    a = [3 4 1];
    b = [1.2 1.5 1];
    f = -a(1)*(1-exp(-b(1)*x(1))) - a(2)*(1-exp(-b(2)*x(2))) - a(3)*(1-exp(-b(3)*x(1)*x(2))) + x(1) + x(2); % simetrica
end