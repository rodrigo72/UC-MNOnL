x = [1 2 3 5 7 9];
y = [1 3 2 12 21 6];

sol = spline(x, y, 7.5);
disp(sol);

sol = spline(x, y);
disp(sol.coefs);

% s23(x) = 1.61(x-2)^3 -1.5(x-2)^2 - 1.11(x-2) + 3

d0 = (y(1)-y(2))/(x(1)-x(2)); % diferenças dividias
dn = (y(5)-y(6))/(x(5)-x(6));

sol_c = spline([1 3 5 9], [d0 1 2 12 6 dn], 7.5);
disp(sol_c);