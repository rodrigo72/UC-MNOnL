format long;

f = @(x) exp(-2.*x) - sin((x+7)./(x+1));

[q, nfc] = quad(f, 0, 8, 1.0e-15);
disp(q);
disp(nfc);