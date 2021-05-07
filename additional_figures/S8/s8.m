clc
clear all
n=200;
beta=7.8;
r_e=0.42;
r_f=0.16;
k_e=0.10;
k_f=0.42;
rho=0.2;
n_e=round(n*rho*3/4);
M=50;
L=(0.99-.25)/M;
v=zeros(1,M);
count=zeros(1,M);
for i=1:10000
z=SocDynK_traj(n,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);

for t=2:length(z)-1
    bin=ceil((z(t)-.25+eps)/L);
    count(bin)=count(bin)+1;
    v(bin)=v(bin)+(z(t+1)-z(t));
end
end
figure
plot(linspace(.25+L/2,.99-L/2,M),v./count)

rho=0.6;
n_e=round(n*rho*3/4);
M=50;
L=(0.99-.25)/M;
v=zeros(1,M);
count=zeros(1,M);
for i=1:10000
z=SocDynK_traj(n,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);

for t=2:length(z)-1
    bin=ceil((z(t)-.25+eps)/L);
    count(bin)=count(bin)+1;
    v(bin)=v(bin)+(z(t+1)-z(t));
end
end
figure
plot(linspace(.25+L/2,.99-L/2,M),v./count)