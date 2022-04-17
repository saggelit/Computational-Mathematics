dy=@ (t,y)y*(t^2-1.1);

t_in=0;
t_f=2;
y0=1;
h=0.5;
%h=0.25;

fprintf('t \t y \t\n')
fprintf('%f \t %f \t \n',t_in,y0);

for t=t_in:h:t_f-h
    y0=y0+dy(t,y0)*h;
    t=t+h;
    fprintf('%f \t %f \t \n',t,y0);
end