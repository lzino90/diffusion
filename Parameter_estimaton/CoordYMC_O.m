function [y_e,y_f] = CoordYMC_O(n,init_e,init_f,beta_e,beta_f,n_e,n_f,n_d,n_c,R)
%E-F-D-S-C
n_s=n-n_f-n_e-n_d-n_c;
beta=[ones(n_e,1)*beta_e; ones(n_f,1)*beta_f];
y_e=[];
y_f=[];
init=[ones(init_e,1);zeros(n_e-init_e,1);ones(init_f,1);zeros(n_f-init_f,1)];
for i=1:R
    temp=CoordY_O(n,init,beta,n_e,n_f,n_d,n_s,n_c);
    y_e=[y_e temp(1:n_e)];
    y_f=[y_f temp(n_e+1:(n_e+n_f))];
end
end