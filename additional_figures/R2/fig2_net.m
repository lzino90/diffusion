clc
clear all
n=200;
beta=7.8;
r_e=0.42;
r_f=0.16;
k_e=0.10;
k_f=0.42;
rho=0.2;
A=WS(n,20,.1);
n_e=round(n*rho*3/4);
[t,dt,y]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],[ones(1,50) zeros(1,150)]);
rho=0.6;
hold on
n_e=round(n*rho*3/4);
[t,dt,y]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],[ones(1,50) zeros(1,150)]);



figure
rho=0.2;
n_e=round(n*rho*3/4);
[t2,dt2,y2]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],[zeros(1,150) ones(1,50)]);
rho=0.6;
hold on
n_e=round(n*rho*3/4);
[t2,dt2,y2]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],[zeros(1,150) ones(1,50)]);

figure
n_e=round(n*rho*3/4);
[t,dt,y]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);
rho=0.6;
hold on
n_e=round(n*rho*3/4);
[t,dt,y]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);

figure

A=AB(200,10)
figure
rho=0.2;
n_e=round(n*rho*3/4);
[t2,dt2,y2]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],[zeros(1,150) ones(1,50)]);
rho=0.6;
hold on
n_e=round(n*rho*3/4);
[t2,dt2,y2]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],[zeros(1,150) ones(1,50)]);
figure
n_e=round(n*rho*3/4);
[t,dt,y]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);
rho=0.6;
hold on
n_e=round(n*rho*3/4);
[t,dt,y]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);
figure
n_e=round(n*rho*3/4);
[t,dt,y]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);
rho=0.6;
hold on
n_e=round(n*rho*3/4);
[t,dt,y]=SocDynK_time2_net(n,A,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n/4);
