x = [-1 1 2];
f = [-1.635 4.75 8.25];

phi1 = @(x) 1./x;
phi2 = @(x) exp(x);

A = [sum(phi1(x).*phi1(x)) sum(phi1(x).*phi2(x)); sum(phi2(x).*phi1(x)) sum(phi2(x).*phi2(x))];

b = [f.*sum(phi1(x)); f.*sum(phi2(x))];

c = A\b;
disp(c);

M = @(x) c(1).*phi1(x) + c(2).*phi2(x);

res = f - M(x);
S = sum((res).^2); % somatório do quadrado dos resíduos
disp(S);

new_x = -1:0.1:2;
new_f = M(new_x);

plot(new_x, new_f, "red");