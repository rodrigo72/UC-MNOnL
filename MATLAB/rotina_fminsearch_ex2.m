clear 

format long 

n = 5;
i = 1:n;
x = i - ((n/2) + 0.5);

op=optimset("Display", "iter", "TolX", 10e-20, "MaxFunEvals", 10000, "MaxIter", 10000);
[x,f,exitflag,output]=fminsearch(@func,x,op);

disp(f);

function f = func(x) 
    nn = length(x);
    f = nn*max(x) - sum(x);
end