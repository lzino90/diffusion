function [y] = SocDynK(n,beta,r,k,s)
% A is the adjacency matrix, x0 the initial condition, weight of the consistency dynamics k, weight
%of the prediction dynamics r, weight of the coordination dynamics, total number of rounds T, and s
%is a vector of dimension n with 1 in correspondence of the stubborn nodes
%or an integer number with the number of stubborn nodes (automatically
%placed in a the last s nodes). If flag is st to 'y', then the output includes the
%state of the stubborn nodes. Otherwise, the flag variable can be omitted.
pp=s/n;
y=zeros(n,1);
if length(s)==1
    s=[zeros(n-s,1); ones(s,1)];
end
if length(k)==1
    k=ones(n,1)*k;
end
if length(r)==1
    r=ones(n,1)*r;
end

if size(k,1)==1
    k=k';
end

if size(s,1)==1
    s=s';
end

if size(r,1)==1
    r=r';
end
b=ones(n,1)-k-r;

old=zeros(n,1)+s;
x=old;
p=.5;
t=0;
flag=0;
z=n/4;
while flag==0 && t<500
    t=t+1;
    pi(:,1)=b*sum(1-x)/(n-1)+(k-b/(n-1)).*(1-x)+r.*(1-p);
    pi(:,2)=b*sum(x)/(n-1)+(k-b/(n-1)).*x+r.*p;
    x=zeros(n,1);
    x(rand(n,1)<exp(beta*pi(:,2))./(exp(beta*pi(:,2))+exp(beta*pi(:,1))))=1;
    x(s==1)=1;
    p=.5*(1+(sum(x)-x)/(n-1)-(sum(old)-old)/(n-1));
    z=[z sum(x)];
     if sum(x)>=.99*n
         flag=1;
     end
    y=y+abs(old-x);
    old=x;
end
y=y(1:round((1-pp)*n))'-1;
plot((z/n-pp)/(1-pp))
end