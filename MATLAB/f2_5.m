function [F, d] = f2_5 (x)
F = 7*(2-0.9^(x))-10;
if nargout > 1
    d = -7 * 0.9^(x) * log(0.9);
end

