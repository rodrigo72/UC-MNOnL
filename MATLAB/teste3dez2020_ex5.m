x = [-3 -2 0 3 4];
f = [16 9 1 4 9];

p = @(x) 16 + (x-(-3))*(-7) + (x-(-3))*(x-(-2))*(1);
result = p(1.25);
disp("sem polyfit: " + result); 
% para o cálculo do erro "à mão" seria necessário ter a tabela das dd de
% ordem 3

[p1, s1] = polyfit(x, f, 2);
result_2 = polyval(p1, 1.25);
error = s1.normr^2;
disp("com polyfit: " + result_2 + "; erro: " + error);