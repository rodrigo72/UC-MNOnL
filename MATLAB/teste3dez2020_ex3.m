% s13(0) = s23(0); s13'(0) = s23'(0); s13''(0) -- deve ser continuamente
% diferenciavel até à segunda ordem (pois é um função cúbica)

syms x a; 
func1 = 0.125*(x+2)^3 - 0.25*(x+2)^2 + x + 3;
func2 = -0.375*x^3 + a*x^2 + 1.5*x + 3;

mt_func1 = matlabFunction(func1);
mt_func2 = matlabFunction(func2);

a_zero_1 = fsolve(@(a) mt_func1(0) - mt_func2(0, a), 0);

mt_func1_diff = matlabFunction(diff(mt_func1, x));
mt_func2_diff = matlabFunction(diff(mt_func2, x));

a_zero_2 = fsolve(@(a) mt_func1_diff(0) - mt_func2_diff(0, a), 0);

mt_func1_diff_2 = matlabFunction(diff(mt_func1_diff, x));
mt_func2_diff_2 = matlabFunction(diff(mt_func2_diff, x));

a_zero_3 = fsolve(@(a) mt_func1_diff_2(0) - mt_func2_diff_2(0, a), 0);

mt_func1_diff_3 = matlabFunction(diff(mt_func1_diff_2, x));
mt_func2_diff_3 = matlabFunction(diff(mt_func2_diff_2, x));

disp("a em s:   " + a_zero_1);
disp("a em s':  " + a_zero_2);
disp("a em s'': " + a_zero_3);