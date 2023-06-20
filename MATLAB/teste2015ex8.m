clear

f = @(x) (x(1)-2)^2 + (x(2)-2)^2 + (x(3)-3)^2 + (x(4)-4)^2;

x0 = [1, 1, 1, 1];  % Initial guess for the variables
lb = [];            % No lower bounds on the variables
ub = [];            % No upper bounds on the variables

options = optimoptions('fmincon', 'Display', 'iter');  % Optional: Display iterative output

[x_opt, fval_opt] = fmincon(@func, x0, [], [], [], [], lb, ub, @constraints, options);


function [c, ceq] = constraints(x)
    c = x(1) - 2;                     % Inequality constraint (x(1) - 2 = 0)
    ceq = x(3)^2 + x(4)^2 - 2;        % Equality constraint (x(3)^2 + x(4)^2 = 2)
end

function [f] = func(x) 
    f = (x(1)-2)^2 + (x(2)-2)^2 + (x(3)-3)^2 + (x(4)-4)^2;
end