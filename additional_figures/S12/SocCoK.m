function [z,y] = SocCoK(n,beta,T,conf)
% A is the adjacency matrix, x0 the initial condition, weight of the consistency dynamics k, weight
%of the prediction dynamics r, weight of the coordination dynamics, total number of rounds T, and s
%is a vector of dimension n with 1 in correspondence of the stubborn nodes
%or an integer number with the number of stubborn nodes (automatically
%placed in a the last s nodes). If flag is st to 'y', then the output includes the
%state of the stubborn nodes. Otherwise, the flag variable can be omitted.
x=[zeros((1-conf)*n,1); ones(conf*n,1)];
t=0;
flag=0;
z=sum(x)/n;
y=zeros((1-conf)*n,1);
ts=T;
while  t<T
    t=t+1;
    old=x(1:(1-conf)*n);
    x=zeros(n,1);
    x(rand(n,1)<exp(beta.*(z(end)))./(exp(beta.*z(end))+exp(beta.*(1-z(end)))))=1;
    x((1-conf)*n+1:n)=1;
    z=[z sum(x)/n];
    if flag==0
            y=y+abs(old-x(1:(1-conf)*n));
    end
    if z(end)>.95 && flag==0
        flag=1;
        ts=t;
    end
end
if T>400
    z=reducev(z,0:T,200);
end
plot(linspace(0,T,length(z)),(z-conf)/(1-conf))
if ts<T
    y=(y-1)/ts;
else
    y=y/T;
end
end