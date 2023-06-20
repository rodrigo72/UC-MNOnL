% trapz computes the approximate integral of Y via the trapezoidal method
% with unit spacing

% quad function performs numerical integration using adptive quadrature
% methods. It attemprs to fund the most accurate approximation of the
% definite integral by adaptively refining the subintervals.

clear

a = 0;
b = 1;
n = 10;

x_values = linspace(a,b,n);

func = @(x) 4./(1+x.^2);
y_values = func(x_values);

integral = trapz(x_values, y_values);

precision = 1e-12;

while abs(integral - pi) > precision
    n = n*2;

    x_values = linspace(a,b,n);
    y_values = func(x_values);
  
    integral = trapz(x_values, y_values);
end

format long
disp("valor de n: " + n);
disp(integral);
