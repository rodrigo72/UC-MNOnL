a = [1 3 4 7 9 10 11];
b = [8 10 10 13 18 20 26];

[p, s] = polyfit(a, b, 3);
disp(p);
% p3(x) = 0.03x^3 - 0.35x^2 + 1.88x + 6.45

new_a = 1:0.1:11;
new_b = polyval(p, new_a);
% plot(new_a, new_b, "red");

val = polyval(p, 8);
disp(val);

% M(x) = c1 ln(x) + c2 sen(x) + c3 x^2

phi1 = @(x) log(x);
phi2 = @(x) sin(x);
phi3 = @(x) x.^2;

A = [sum(phi1(x).*phi1(x)) sum(phi1(x).*phi2(x)) sum(phi1(x).*phi3(x));
     sum(phi2(x).*phi1(x)) sum(phi2(x).*phi2(x)) sum(phi2(x).*phi3(x));
     sum(phi3(x).*phi1(x)) sum(phi3(x).*phi3(x)) sum(phi3(x).*phi3(x))];

b = [sum(b.*phi1(x)); sum(b.*phi2(x)); sum(b.*phi3(x))];

c = A\b;

M = @(x) c(1)*phi1(x) + c(2)*phi2(x) + c(3)*phi3(x);

x = a; 
fun = @(c, x) c(1)*log(x) + c(2)*sin(x) + c(3)*x.^2;
c0 = [1, 1, 1];

c_approx = lsqcurvefit(fun, c0, x, b);
