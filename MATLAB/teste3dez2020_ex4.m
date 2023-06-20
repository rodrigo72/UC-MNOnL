clear

initial_t = 0.66;
x_value = 0;

op = optimset("tolx", 0.15, "tolfun", 0.05);
[xval, fval, exitflag, output] = fminsearch(@(t) abs(func(t, 0) - 8), initial_t, op);
disp("fminsearch: " + xval + " => " + func(xval, 0));

t_values = 0.62:0.01:0.68;
y_values = zeros(size(t_values));

for i = 1:length(t_values)
    t = t_values(i);
    y_values(i) = func(t, 0);
end

% plot
[p, s] = polyfit(t_values, y_values, 2);
new_y_values = polyval(p, t_values);
plot(t_values, new_y_values);

% Find t value corresponding to new_y_value closest to 8
[value, index] = min(abs(new_y_values - 8));
t_closest_to_8 = t_values(index);
disp("polyfit:    " + t_closest_to_8 + "    => " + (8 + value));

op2 = optimset("maxiter", 1);
result = fzero(@(t) func(t, 0) - 8, 0.65, op2);
disp("fzero:      " + result + " => " + func(result, 0));

function [ f ] = func(t, x)
    ymax = 10;
    lambda = 0.5;
    fr = 1;
    f = ymax * sin(2*pi*((x/lambda) - fr*t));
end