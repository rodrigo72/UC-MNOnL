clear

x = [1 3 4 7 9 10 11 14 15];
y = [8 10 5 13 18 16 25 18 14];

% reta 
[P1, S1] = polyfit(x,y,1);
erroP1 = S1.normr^2;

% parábola
[P2, S2] = polyfit(x,y,2);
erroP2 = S2.normr^2;

% gráficos
plot(x,y,"red");
novo_x = 1:0.1:15;

% evaluate the polinomial (grau 1) at the x values (1:0.1:15)
novo_y = polyval(P1, novo_x);
hold on
plot(novo_x, novo_y);

% evaluate the polinomial (grau 2) at the x values (1:0.1:15)
novo_y2 = polyval(P2, novo_x);
hold on
plot(novo_x, novo_y2);