clear all; clc; clf;
syms x
f=@(x)(1.+sin(pi.*x));
x1=[-1;0;1];
fx=f(x1);

n=length(x1);
Pf=0;  
for i=1:n
    mulf=1;
    for j=1:n
        if (i~=j)
            mulf=mulf*(x-x1(j,1))/(x1(i,1)-x1(j,1));
        end
    end
    Pf=Pf+expand(mulf)*fx(i,1);
end
fprintf('The calculated Polynomial of f(x) is %f\n',Pf);
figure (1)
fplot(f,[-1,1])
hold on
fplot(Pf ,[-1,1])
title('f(x)=1+sin(pi*x)')
legend('f(x) = 1+sin(pi*x)','Pf at 3 points')
grid on

g=@(x) (1./(1.+x.^2));
x2=[-5;-4;-3;-2;-1;0;1;2;3;4;5];
gx=g(x2);
m=length(x2);
Pg=0;
for i=1:m
    mulg=1;
    for j=1:m
        if (i~=j)
            mulg=mulg*(x-x2(j,1))/(x2(i,1)-x2(j,1));
        end
    end
    Pg= Pg +expand(mulg)*gx(i,1);
end
fprintf('The calculated Lagrange Polynomial is\n');
disp(Pg);
figure (2)
fplot(g,[-5,5])
hold on
fplot(Pg ,[-5,5])
title('g(x)=1./(1.+x.^2)')
legend('g(x) = 1./(1.+x.^2)','Pg at 11 points')
grid on
