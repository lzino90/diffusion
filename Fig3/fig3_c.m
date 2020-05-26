n=1000;
R=1000;
beta=7.8;
r_e=0.42;
r_f=0.16;
k_e=0.10;
k_f=0.42;
rho=0.7;
n_e=round(n*rho*3/4);
y=[];
for i=1:1000
[t,dt,temp]=SocDynK_time2(n,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);
y=[y temp/t];
end
figure
histogram(abs(y),33,'Normalization','probability')

%%SI

n=52;
beta=8;
k_e=.105;
k_f=.32;
r_f=.135;
r_e=.36;
r=[.1 .3 .4 .5 .6 .7];
for i=1:7
    rho=.1;
n_e=round(n*rho*3/4);
y=[];
for i=1:1000
[t,dt,temp]=SocDynK_time2(n,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);
y=[y temp/t];
end
figure
histogram(abs(y),33,'Normalization','probability')
end