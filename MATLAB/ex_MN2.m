% length do vetor e somatorio

format long % 15 casas decimais

n=5;
i=1:n;
x1=i-(n/2+0.5);

op=optimset("Display", "iter", "TolX", 10e-20, "MaxFunEvals", 10000, "MaxIter", 10000);
[X,FVAL,EXITFLAG,OUTPUT] = fminsearch(@MN2, x1, op);

fprintf("%.15f\n", FVAL);

function f=MN2 (x) 
    nn=length(x);
    f=nn*max(x)-sum(x);
end