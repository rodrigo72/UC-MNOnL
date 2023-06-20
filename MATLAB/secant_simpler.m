function []=secant_simpler(func,Xo,X1,n)

X=0;
for i=1:n
    X=X1-((func(X1)*(Xo-X1))/(func(Xo)-func(X1)));
    Xo=X1;
    X1=X;
end
fprintf("Xr = %.3f. \n",X);

end