x = [0 0.1 0.2 0.3 0.4 1.4 2.4 3.4 4.4 5.4];
f = [1 0.8710 0.6880 0.4570 0.1840 -3.5360 -4.8560 2.2240 23.7040 65.5840];

i1 = trapz(x, f);
disp(i1);

[p, s] = polyfit(x, f, 3);

q = polyint(p); % returns the integral of the polynomial represented by the 
% coefficients in p using a constant of integration 0.
i2 = diff(polyval(q, [0 5.4]));
disp(i2);
disp("Erro relativo: " + abs(i1-i2)/abs(i1) + "%");
disp("Erro absoluto: " + abs(i1-i2));