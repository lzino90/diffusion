function y = CoordY_O(n,init,beta,n_e,n_f,n_d,n_s,n_c)
%E-F-D-S-C
n_n=n_e+n_f;
y=zeros(n_n,1);
old=init;
x=old;
t=0;
z=sum(x)+n_c;
while z+n_s<n && t<24
    t=t+1;
    pi(:,1)=(sum(1-x)+n_s+n_d*(z<=0.5))/(n-1);
    pi(:,2)=(sum(x)+n_c+n_d*(z>0.5))/(n-1);
    x=zeros(n_n,1);
    x(rand(n_n,1)<exp(beta.*pi(:,2))./(exp(beta.*pi(:,2))+exp(beta.*pi(:,1))))=1;
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