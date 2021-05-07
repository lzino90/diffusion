clear all
clc

%% Our
n=200;
beta=7.8;
r_e=0.42;
r_f=0.16;
k_e=0.1;
k_f=0.42;
rho=0.5;
n_e=round(n*rho*3/4);
figure
hold on
for i=1:50
[y,t]=SocDynK_time2(n,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);
end
figure
histogram(y/t,15)

beta_h=19.7;
beta_l=4.8;
T=100000;


%% Heterogeneous
beta=[beta_l*ones(75,1);beta_h*ones(125,1)];
figure
hold on
for i=1:50
[a,b]=SocCoK(200,beta,T,1/4);
end
%plot(0:T,a);
figure
histogram(max(b,0),15)



%% Heterogeneous diffusion 1
ex=105;
T=120;
beta=[beta_l*ones(ex,1);beta_h*ones(n-ex,1)];
figure
hold on
for i=1:50
[a,b]=SocCoK(200,beta,T,1/4);
end
figure
histogram(max(b,0),15)

%% Heterogeneous diffusion 2
beta_h=8.5;
T=120;
beta=[beta_l*ones(75,1);beta_h*ones(125,1)];
figure
hold on
for i=1:50
[a,b]=SocCoK(200,beta,T,1/4);
end
figure
histogram(max(b,0),15,'Normalization','probability')

