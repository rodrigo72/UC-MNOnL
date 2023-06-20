% Ingredients
f = @(x) 1250/x * (1-(1+x)^(-10)) - 10000;
x0 = 0.01;
x1 = 0.05;
e = 10^(-3);
n = 2;

% Processing
for i=1:n
    x2 = x1 - ((x1-x0)*f(x1))/(f(x1)-f(x0));
    fprintf("x%d = %.4f. \n", i, x2);
    x0 = x1;
    x1 = x2;
end