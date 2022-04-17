clear; clc; clf;
syms x
x1=[0.2;0.3;0.4;0.5;0.6;0.7];
f=[0.185;0.106;0.093;0.24;0.579;0.561];
s=10*x-2;
d=zeros(1,5);
df=zeros(5,5);
P=0;

for j=1:5
    d(1,j)=factorial(s)/(factorial(j)*factorial(s-j));
end

for j=1:5
    for i=1:5
        df(i,j)=f(i+1,1)-f(i,1);
    end
end
for j=1:5
    P=P+df(1,j)*d(1,j);
end
disp(P);

fprintf('The Polynomial of f is\n');
disp(P);
figure (1)
scatter(x1,f)
hold on
fplot(P,[0.2,0.7])
title('Newton-Gregory')
legend('f(x)','P')
grid on