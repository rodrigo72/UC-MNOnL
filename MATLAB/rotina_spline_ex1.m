clear

x = [1 3 4 7 9 10 11];
y = [8 10 5 13 18 16 25];

% ex 1
sol = spline(x, y, 5); % spline básica
disp(sol);

res = spline(x, y);
res.coefs


% ex 2
sol2 = spline(x, [10 y -4], 9.5); % forçar derivadas nas fronteiras (1 e 11)
disp(sol2);

res2 = spline(x, [10 y 0-4]);
res2.coefs

xaux = 1:0.1:11;
yaux = spline(x, y, xaux);
plot(xaux, yaux, 'blue');
hold on;

yaux_der = spline(x, [10 y -4], xaux);
plot(xaux, yaux_der, 'green');


% Spline COMPLETA (ex 3)
np = length(x);

% estimativa da derivada na fronteira inferior
d1 = (y(1) - y(2)) / (x(1) - x(2));

% estimatica da derivada na fronteira superior
dn = (y(np) - y(np-1)) / (x(np) - x(np-1));


yaux_c=spline(x(1:np),[d1 y(1:np) dn],xaux);
plot(xaux,yaux_c,'red')

sol3 = spline([1 4 7 9 10], [d1 8 5 13 18 25 dn], 3.25);
disp(sol3);

yaux_c=spline(x([1,3:(np-2),np]),[d1 y([1,3:(np-2),np]) dn],xaux);
sol3_2 = spline(x([1,3:(np-2),np]),[d1 y([1,3:(np-2),np]) dn], 3.25);
disp(sol3);
plot(xaux,yaux_c,'k')

% spline(X, Y, XQ)
% - X must be a vector
% - if Y is a vector, Y(j) is the value at X(j)
% - if Y is a matrix, Y(:,...,:,j) is the value at X(j)
