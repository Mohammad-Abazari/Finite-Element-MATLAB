%%
% Example 2.1
clear;
k1 = 100; k2 = 200; P = [0,0,15]';
k = [k1,k2]
ic = [1,2;2,3]
bcs = [1]
[U,F,K] = spring_solver(k,P,ic,bcs)
%%
% Exmaple 2.2
clear;
k = 120*[1,1,1,1,1,1]
p = 20
P = [0 0 0 0 p]'
ic = [1,3;3,4;3,5;3,5;5,4;4,2]
bcs = [1,2]
[U,F,K] = spring_solver(k,P,ic,bcs)
%%
% Problem 2.1
clear;
k1 = 200; k2 = 250; P = [0 10 0]';
k = [k1,k2]
ic = [1,2;2,3]
bcs = [1,3]
[U,F,K] = spring_solver(k,P,ic,bcs)
%%
% Problem 2.2
clear;
k = 170;
P = [0,0,0,25]'
k = [k,k,k,k]
ic = [1,2;2,3;2,3;3,4]
bcs = [1]
[U,F,K] = spring_solver(k,P,ic,bcs)
