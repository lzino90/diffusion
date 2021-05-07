function z = SIS(n,lambda,mu,T)
x=zeros(n,1);
x(1:n/4)=1;
z(1)=1/4;
for t=1:T
    x=x-(rand(n,1)<mu).*x+(1-x).*(rand(n,1)<lambda)*z(t);
    z=[z sum(x)/n];
end
end