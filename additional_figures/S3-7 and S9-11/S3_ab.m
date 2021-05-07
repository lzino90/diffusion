n=[1000 2000 4000 8000];
K=length(n);
l=1;
R=200;
beta=7.8;
r_e=0.46;
r_f=0.16;
k_e=0.11;
k_f=0.42;
tr=0.4;
conf=0.25;
rho=0:0.05:1;
n_n=round(n(l)*(1-conf));
n_e=round(n_n*rho);
M=length(n_e);
t1=zeros(M,R);
dt1=zeros(M,R);
for i=1:M
    for j=1:R
        [t1(i,j),dt1(i,j)]=SocDynK_time(n(l),beta,[r_e*ones(1,n_e(i)) r_f*ones(1,n_n-n_e(i))],[k_e*ones(1,n_e(i)) k_f*ones(1,n_n-n_e(i))],n(l)-n_n,tr);
        display(strcat('Progress:',num2str((i-1)*R+j),'/',num2str(R*M*K)))
    end
end

l=2;
n_n=round(n(l)*(1-conf));
n_e=round(n_n*rho);
M=length(n_e);
t2=zeros(M,R);
dt2=zeros(M,R);
for i=1:M
    for j=1:R
        [t2(i,j),dt2(i,j)]=SocDynK_time(n(l),beta,[r_e*ones(1,n_e(i)) r_f*ones(1,n_n-n_e(i))],[k_e*ones(1,n_e(i)) k_f*ones(1,n_n-n_e(i))],n(l)-n_n,tr);
        display(strcat('Progress:',num2str(R*M+(i-1)*R+j),'/',num2str(K*R*M)))
    end
end



l=3;
n_n=round(n(l)*(1-conf));
n_e=round(n_n*rho);M=length(n_e);
t3=zeros(M,R);
dt3=zeros(M,R);
for i=1:M
    for j=1:R
        [t3(i,j),dt3(i,j)]=SocDynK_time(n(l),beta,[r_e*ones(1,n_e(i)) r_f*ones(1,n_n-n_e(i))],[k_e*ones(1,n_e(i)) k_f*ones(1,n_n-n_e(i))],n(l)-n_n,tr);
        display(strcat('Progress:',num2str(2*R*M+(i-1)*R+j),'/',num2str(K*R*M)))
    end
end

l=4;
n_n=round(n(l)*(1-conf));
n_e=round(n_n*rho);M=length(n_e);
M=length(n_e);
t4=zeros(M,R);
dt4=zeros(M,R);
for i=1:M
    for j=1:R
        [t4(i,j),dt4(i,j)]=SocDynK_time(n(l),beta,[r_e*ones(1,n_e(i)) r_f*ones(1,n_n-n_e(i))],[k_e*ones(1,n_e(i)) k_f*ones(1,n_n-n_e(i))],n(l)-n_n,tr);
        display(strcat('Progress:',num2str(3*R*M+(i-1)*R+j),'/',num2str(K*R*M)))
    end
end

% l=5;
% n_n=round(n(l)*(1-conf));
% n_e=round(n_n*rho);M=length(n_e);M=length(n_e);
% t5=zeros(M,R);
% dt5=zeros(M,R);
% for i=1:M
%     for j=1:R
%         [t5(i,j),dt5(i,j)]=SocDynK_time(n(l),beta,[r_e*ones(1,n_e(i)) r_f*ones(1,n_n-n_e(i))],[k_e*ones(1,n_e(i)) k_f*ones(1,n_n-n_e(i))],n(l)-n_n);
%         display(strcat('Progress:',num2str(4*R*M+(i-1)*R+j),'/',num2str(K*R*M)))
%     end
% end

%% Fig_a
figure
t1=t1-dt1;
t2=t2-dt2;
t3=t3-dt3;
t4=t4-dt4;
% t5=t5-dt5;
% t5(isnan(t5))=200000;
t4(isnan(t4))=200000;
t3(isnan(t3))=200000;
t2(isnan(t2))=200000;
t1(isnan(t1))=200000;
errorbar(rho,mean(t1,2),1.96*sqrt(mean(t1.^2,2)-mean(t1,2).^2)/sqrt(R))
hold on
errorbar(rho,mean(t2,2),1.96*sqrt(mean(t2.^2,2)-mean(t2,2).^2)/sqrt(R))
errorbar(rho,mean(t3,2),1.96*sqrt(mean(t3.^2,2)-mean(t3,2).^2)/sqrt(R))
errorbar(rho,mean(t4,2),1.96*sqrt(mean(t4.^2,2)-mean(t4,2).^2)/sqrt(R))
% errorbar(rho,mean(t5,2),1.96*sqrt(mean(t5.^2,2)-mean(t5,2).^2)/sqrt(R))

%% Fig_b
figure
errorbar(rho,mean(dt1,2),1.96*sqrt(nanmean(dt1.^2,2))/sqrt(R))
hold on
errorbar(rho,nanmean(dt2,2),1.96*sqrt(nanmean(dt2.^2,2))/sqrt(R))
errorbar(rho,nanmean(dt3,2),1.96*sqrt(nanmean(dt3.^2,2))/sqrt(R))
errorbar(rho,nanmean(dt4,2),1.96*sqrt(nanmean(dt4.^2,2))/sqrt(R))
% errorbar(rho,nanmean(dt5,2),1.96*sqrt(nanmean(dt5.^2,2)-nanmean(dt5,2).^2)/sqrt(R))
