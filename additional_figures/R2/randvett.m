function r = randvett(q)
%randvett(q) genera un numero da una distribuzione a partire dalla distribuzione cumulativa
%discreta. Se si ha la densità discreta occorre prima applicare la funzione sommacumulativa, presente nella stessa libreria, per ottenere la distribuzione cumulativa.

if nargin<1
error('Mancano dati');
end

if q(1)<0
error('Il vettore q non è una distribuzione cumulativa');
end

p=rand;
j=1;
while p>=q(j)
   j=j+1;
end
r=j;
end
