%% Problema 1
syms a x;
y=2*x + a;
sol=vpasolve(y==5,x);
ysoln0=subs(sol,[a],[1])
comp = subs(y, [a x], [1 ysoln0])

%% Problema 2
syms a x b;
y1=x^2+a*x+b;
sol1=vpasolve(y1==0,x)
ysoln1=subs(sol1,[a b],[10 2])
comp = subs(y1, [a b x], [10 2 ysoln1(1)])

%% Problema 3
syms x;
y2=2*exp(x) + 3*cos(x);
sol2=vpasolve(y2==0,x);
ysoln2=subs(sol2,[x],[10])

%% Problema 4
syms x c y;
ec1=2*x-3*c*y;
ec2=c*x+2*y;
[x,y]=solve(ec1==5,ec2==7);
ysoln3=subs([x,y],[c],[10])

%% Problema 5
syms x y
ec1=3*x^2-2*x+y;
ec2=x*y+x;
ecuaciones = [ec1==7,ec2==5];
[sol5_1,sol5_2]=solve(ecuaciones)



