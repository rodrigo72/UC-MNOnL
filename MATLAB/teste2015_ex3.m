clear

format long

f = @(x) log(x)./(1+x);
[q, nfc] = quad(f, 0.1, 1, 10e-10);
disp(q);