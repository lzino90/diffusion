function [T, n_s, Type, x] = eds(filename)

%This function is the "Experiment Data Scraper"

file = filename;

%Read the number of confederates and rounds
T = readmatrix(file,'Range','B4:B4');  
n_s = readmatrix(file,'Range','B3:B3');  

%A column vector of the individual types
% N = normal, S = stubborn, M = missing actions, C = confederates
Type = readtable(file,'Range',[6 2 18 2]);

%A matrix where each column denotes the actions of individuals at a given
%time step. Thus, x(i,t) denotes the action of individual i at time t.
x = readmatrix(file,'Range',[6 3 18 2+T]);


return