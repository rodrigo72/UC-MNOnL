function[]=secant(x1,x2)
%let x1 and x2 the interval, x3 as the midpoint
fx1 = (pi*((300/cos(x1))^2)*0.8/(0.5*pi*14*14*(1+sin(x1)-0.5*cos(x1))))-1200;
fx2 = (pi*((300/cos(x2))^2)*0.8/(0.5*pi*14*14*(1+sin(x2)-0.5*cos(x2))))-1200;

if(fx1*fx2>0) %if the root is not found on interval, calculation will stop and displays "Wrong interval"
    disp('Wrong interval');
else %if the root is within the interval, calculation will continue
    
    n = 1;
    x3old = 0;
    d=abs(x1-x2);
    fprintf('n\tx1\t\tx2\t\tx3\t\terror\n');
    
    while(d>0.001)
        fx1 = (pi*((300/cos(x1))^2)*0.8/(0.5*pi*14*14*(1+sin(x1)-0.5*cos(x1))))-1200;
        fx2 = (pi*((300/cos(x2))^2)*0.8/(0.5*pi*14*14*(1+sin(x2)-0.5*cos(x2))))-1200;
        x3 = (x1*fx2-x2*fx1)/(fx2-fx1); %midpoint
        fx3 = (pi*((300/cos(x3))^2)*0.8/(0.5*pi*14*14*(1+sin(x3)-0.5*cos(x3))))-1200;
        
        d=abs(x1-x2);
        err = (abs(x3-x3old)/x3)*100;
        x3old = x3;
        fprintf('%d\t%0.3f\t%0.3f\t%0.3f\t%0.2f\n',n,x1,x2,x3,err);
        
        x1 = x2;
        x2 = x3;
        n = n+1;
    end
    x = x3;
    fprintf('\nx = %0.3f\n',x);
end
end