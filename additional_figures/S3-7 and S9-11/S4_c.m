n=1000;
R=1000;
beta=7.2;
r_e=0.44;
r_f=0.14;
k_e=0.11;
k_f=0.46;
rho=0.2;
n_e=round(n*rho*3/4);
y=[];
for i=1:1000
[t,dt,temp]=SocDynK_time2(n,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);
y=[y temp/t];
end
figure
histogram(abs(y),33,'Normalization','probability')