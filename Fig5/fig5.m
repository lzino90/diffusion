tic;
n=1000;
R=200;
beta=7.8;
r_e=0.42;
r_f=0.16;
k_e=0.10;
k_f=0.42;
conf=0.265:0.005:0.30;
rho=0:.1:1;
M=length(rho);
N=length(conf);
count=zeros(M,N);
time=zeros(M,N);
for i=1:M
    for j=1:N
        n_n=round(n*(1-conf(j)));
        n_e=round(n_n*rho(i));
        for k=1:R
            [temp_c,temp_t]=SocDynK_time_t(n,beta,[r_e*ones(1,n_e) r_f*ones(1,n_n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n_n-n_e)],n-n_n);
            count(i,j)=count(i,j)+temp_c;
            time(i,j)=time(i,j)+temp_c*temp_t;
            display(strcat('Progress:',num2str((i-1)*R*N+(j-1)*R+k),'/',num2str(R*M*N)))
        end
    end
end
time=time./count;
count=count/R;
view
surf(conf, rho, count)
view(0, 90);
figure
surf(conf, rho, time)
view(0, 90);
toc

