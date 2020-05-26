function [t,dt] = SocDynK_time(n,beta,r,k,conf)
% A is the adjacency matrix, x0 the initial condition, weight of the consistency dynamics k, weight
%of the prediction dynamics r, weight of the coordination dynamics, total number of rounds T, and s
%is a vector of dimension n with 1 in correspondence of the stubborn nodes
%or an integer number with the number of stubborn nodes (automatically
%placed in a the last s nodes).
n_n=n-conf;
if length(k)==1
    k=ones(n_n,1)*k;
end
if length(r)==1
    r=ones(n_n,1)*r;
end

if size(k,1)==1
    k=k';
end
if size(r,1)==1
    r=r';
end
b=ones(n_n,1)-k-r;
old=zeros(n_n,1);
x=old;
p=.5;
t=0;
flag=0;
dt=1;
z=sum(x)+conf;
z_old=z;
while flag==0 && t<200000
    t=t+1;
    pi(:,1)=b*(n-z)/(n-1)+(k-b/(n-1)).*(1-x)+r.*(1-p);
    pi(:,2)=b*z/(n-1)+(k-b/(n-1)).*x+r.*p;
    x=zeros(n_n,1);
    x(rand(n_n,1)<exp(beta*pi(:,2))./(exp(beta*pi(:,2))+exp(beta*pi(:,1))))=1;
    z=sum(x)+conf;
    p=.5*(1+(z-z_old)/n);
    z_old=z;
     if z<=.5*n
         dt=t;
    end
    if z>=.99*n
        flag=1;
    end
end
dt=t-dt;
if t==200000
    dt=NaN;
end
end