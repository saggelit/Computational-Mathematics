dy=@ (t,y)y*(t^2-1.1);

t_in=0;
t_f=2;
y0=1;
h=0.5;
%h=0.25;

fprintf('t \t\t y \t\n')
fprintf('%f \t %f \t \n',t_in,y0);

for t=t_in:h:t_f-h
    k1=dy(t,y0);
    k2=dy(t+h/2,y0+k1*h/2);
    k3=dy(t+h/2,y0+k2*h/2);
    k4=dy(t+h,y0+k3*h);
    y0=y0+h/6*(k1+2*k2+2*k3+k4);
    t=t+h;
    fprintf('%f \t %f \t \n',t,y0);
end