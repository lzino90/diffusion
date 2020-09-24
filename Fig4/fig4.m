%% Our
n=198;
beta=7.8;
r_e=0.42;
r_f=0.16;
k_e=0.1;
k_f=0.42;
rho=0.5;
n_e=round(n*rho*5/6);
figure
[t,dt,y]=SocDynK_time2(n,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/6);
figure
histogram(y/t,15)

beta_h=8;
beta_l=4;
T=100000;

%% Low noise
figure
[a,b]=SocCoK(200,beta_h,T)
plot(0:T,a);
figure
histogram(b,15)

%% High noise
figure
[a,b]=SocCoK(200,beta_l,T)
plot(0:T,a);
figure
histogram(b,15)

%% Heterogeneous
beta=[beta_l*ones(75,1);beta_h*ones(125,1)];
figure
[a,b]=SocCoK(200,beta,T)
plot(0:T,a);
figure
histogram(b,15)