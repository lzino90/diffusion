function y = SocDynY_O(n,init,beta,r,k,n_e,n_f,n_d,n_s,n_c)
%E-F-D-S-C
n_n=n_e+n_f;
y=zeros(n_n,1);
b=ones(n_n,1)-k-r;
old=init;
x=old;
p=.5;
t=0;
z_old=sum(old)+n_c;
z=sum(x)+n_c;
while z+n_s<n && t<24
    t=t+1;
    pi(:,1)=b*(sum(1-x)+n_s+n_d*(z<=0.5))/(n-1)+(k-b/(n-1)).*(1-x)+r.*(1-p);
    pi(:,2)=b*(sum(x)+n_c+n_d*(z>0.5))/(n-1)+(k-b/(n-1)).*x+r.*p;
    x=zeros(n_n,1);
    x(rand(n_n,1)<exp(beta*pi(:,2))./(exp(beta*pi(:,2))+exp(beta*pi(:,1))))=1;
    p=.5*(1+(z-z_old)/n);
    z_old=z;
    z=sum(x)+n_c+n_d*(z>0.5);
    y=y+abs(old-x);
    old=x;
end
y=y';
if z==n
    y=y-1;
end
y=max(y,0);
y=y/t;
end