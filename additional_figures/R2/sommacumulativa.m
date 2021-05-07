function [x] = sommacumulativa(x)
%sommacumulativa(x) dato un vettore x calcola la somma cumulativa. Comodo x trasformare
%distribuzioni di probabilità in funzioni cumulative. Funzione realizzata
%da Barbieri, Quadrio, Zino.
n=length(x);
for i=2:n
x(i)=x(i-1)+x(i);
end
end

