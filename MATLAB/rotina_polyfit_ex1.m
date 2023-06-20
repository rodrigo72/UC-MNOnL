clear

a = [1 3 4 7 9 10 11];
b = [8 10 10 13 18 20 26];

% reta : grau 1
[p1, s1] = polyfit(a, b, 1);
erroP1 = s1.normr^2;
disp(p1);
disp(erroP1);

% parábola : grau 2
[p2, s2] = polyfit(a, b, 2);
erroP2 = s2.normr^2;
disp(p2);
disp(erroP2);

% gráficos
plot(a, b, 'red');
novo_a = 1:0.1:11;
novo_b = polyval(p1, novo_a); % mais valores de y a partir de [p1] e novos 
% valores de x (espaçamento 0.1)

hold on
plot(novo_a, novo_b, "blue");
novo_b2 = polyval(p2,novo_a); % mais valores de y a partir de [p2] e novos 
% valores de x (espaçamento 0.1)

hold on
plot(novo_a, novo_b2, "green");

% modelo não linear polinomial
phi1 = @(x) 1./x;
phi2 = @(x) sin(x);
phi3 = @(x) x.^2;

A = [sum(phi1(a).*phi1(a)) sum(phi1(a).*phi2(a)) sum(phi1(a).*phi3(a)); 
     sum(phi2(a).*phi1(a)) sum(phi2(a).*phi2(a)) sum(phi2(a).*phi3(a));
     sum(phi3(a).*phi1(a)) sum(phi3(a).*phi2(a)) sum(phi3(a).*phi3(a))];

B = [sum(b.*phi1(a)); sum(b.*phi2(a)); sum(b.*phi3(a))];

C = A\B;
disp(C);

M = @(x) C(1)./x + C(2).*sin(x) + C(3).*x.^2;
erroM = sum((M(a) - b).^2);
hold on
M_novo = M(novo_a);
plot(novo_a, M_novo);

