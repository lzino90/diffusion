tic
load('y_data_missing.mat')
a=[1 .5 1 1.5];
step=.01;
beta=7.8:0.2:7.8;
re=0.42:step:.42;
rf=0.08:step:0.24;
ke=0.1:step:.1;
kf=.42:step:.42;
R=5000;
best=Inf;
me=mean(y_e);
mf=mean(y_f);
se=std(y_e);
sf=std(y_f);
n=12;


for i=1:length(kf)
    display(strcat('Progress: ',num2str(round(100*(i-1)/length(kf))),'%'))
    for j=1:length(re)
        k_f=kf(i);
        r_e=re(j);
        for h=1:length(rf)
            r_f=rf(h);
            for l=1:length(ke)
                k_e=ke(l);
                for q=1:length(beta)
                    ye=[];
                    yf=[];
                    
                    
                    %%xwdrs2qi
                    n_c = 2;
                    n_e = 8;
                    n_f=1;
                    n_s=1;
                    n_d=0;
                    init_e = 0; 
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%5ujsta7x
                    n_c = 2;
                    n_e = 6;
                    n_f=2;
                    n_s=1;
                    n_d=1;
                    init_e = 0;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%40f1g62u
                    n_c = 4;
                    n_e = 3;
                    n_f=5;
                    n_s=0;
                    n_d=0;
                    init_e = 0;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%aja45oln
                    n_c = 2;
                    n_e = 5;
                    n_f=3;
                    n_s=0;
                    n_d=2;
                    init_e = 1;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%64ag2bet
                    n_c = 3;
                    n_e = 5;
                    n_f=1;
                    n_s=0;
                    n_d=3;
                    init_e = 1;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%x4uh46zp
                    n_c = 3;
                    n_e = 4;
                    n_f=4;
                    n_s=0;
                    n_d=1;
                    init_e = 0;
                    init_f = 1;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%t2g8ny5s
                    n_c = 2;
                    n_e = 3;
                    n_f=5;
                    n_s=1;
                    n_d=1;
                    init_e = 1;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%blx07qvq
                    n_c = 3;
                    n_e =5;
                    n_f=1;
                    n_s=0;
                    n_d=3;
                    init_e = 0;
                    init_f = 1;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%wfl99oaf
                    n_c = 2;
                    n_e =7;
                    n_f=3;
                    n_s=0;
                    n_d=0;
                    init_e = 2;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%0ulivmqy
                    n_c = 4;
                    n_e =3;
                    n_f=4;
                    n_s=0;
                    n_d=1;
                    init_e = 0;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%qjel9zq8
                    n_c = 2;
                    n_e =7;
                    n_f=2;
                    n_s=0;
                    n_d=1;
                    init_e = 0;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    
                    %%nxuwpodq
                    n_c = 4;
                    n_e =4;
                    n_f=2;
                    n_s=0;
                    n_d=2;
                    init_e = 0;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    
                    %%ns8qzpq8
                    n_c =4 ;
                    n_e =3;
                    n_f=2;
                    n_s=0;
                    n_d=3;
                    init_e = 0;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    
                    %%nzsohfpk
                    n_c =4 ;
                    n_e =3;
                    n_f=3;
                    n_s=0;
                    n_d=2;
                    init_e = 0;
                    init_f = 0;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%q6mnubsq
                    n_c =4 ;
                    n_e =5;
                    n_f=3;
                    n_s=0;
                    n_d=0;
                    init_e = 0;
                    init_f = 2;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    %%bl4un3q4
                    n_c =3;
                    n_e =4;
                    n_f=3;
                    n_s=0;
                    n_d=2;
                    init_e = 1;
                    init_f = 1;
                    [temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
                    ye=[ye temp_e];
                    yf=[yf temp_f];
                    
                    
                    m_e=mean(ye);
                    m_f=mean(yf);
                    s_e=std(ye);
                    s_f=std(yf);
                    
                    cost(i,j,h,l,q)=a*[abs(m_e-me);abs(m_f-mf);abs(s_e-se);abs(s_f-sf)];
                    
                    if cost(i,j,h,l,q)<best
                        best=cost(i,j,h,l,q);
                        best_par=[beta(q),r_e,r_f,k_e,k_f];
                        best_ye=ye;
                        best_yf=yf;
                        display(strcat('Improving: ',num2str(round(100*((i-1)*length(re)+j)/(length(re)*length(kf)))),'%'))
                    end
                end
            end
        end
    end
end
time_run = toc;
C = reshape(cost,[numel(cost) 1]);
[B,I] = mink(C,8);

A = cost < B(end);

% [i,j,h,l,q]= ind2sub(size(A),I);
% para = [beta(q); re(j); rf(h); ke(l); kf(i)]'

