load('y_data.mat')
a=[1 .5 1 1.5];
step=.01;
beta=7:0.2:8;
re=0.42:step:.46;
rf=0.12:step:0.16;
ke=0.11:step:.14;
kf=.44:step:.46;
R=1000;
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

%%8igxr7e6
n_c = 3;
n_e = 2;
n_f=4;
n_s=0;
n_d=3;
init_e = 0;
init_f = 0;
[temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
ye=[ye temp_e];
yf=[yf temp_f];


%%ka8ktoqo
n_c =2;
n_e =3;
n_f=2;
n_s=0;
n_d=5;
init_e = 1;
init_f = 0;
[temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
ye=[ye temp_e];
yf=[yf temp_f];


%%hyywcyyy
n_c = 4;
n_e = 2;
n_f=1;
n_s=0;
n_d=5;
init_e = 0;
init_f = 1;
[temp_e,temp_f] = SocDynYMC_O(n,init_e,init_f,beta(q),r_e,r_f,k_e,k_f,n_e,n_f,n_d,n_c,R);
ye=[ye temp_e];
yf=[yf temp_f];


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

%%bskefeeq
n_c = 3;
n_e =4;
n_f=1;
n_s=0;
n_d=4;
init_e = 0;
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