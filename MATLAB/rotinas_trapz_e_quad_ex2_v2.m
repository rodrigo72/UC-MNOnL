% trapz accepts data points (set of data points)
% quad creates the data points themselves (functional relationship
% -> create the data points -> reduce the space between them to 
% increase precision)

format long

[q, nfc] = quad("4./(1+x.^2)", 0, 1);
disp(q);
disp(nfc);