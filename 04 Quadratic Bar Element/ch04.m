%% Example 4.1
clear;
E = 210e6; A = 0.003; l = 2;
P = [0,5,-10,-7,10]';
bcs = [1]; ic = [1,2,3;3,4,5];
A = A*ones(1,size(ic,1));
E = E*ones(1,size(ic,1));
L = l*ones(1,size(ic,1));
[U,F,K] = qbar_solver(E,A,L,P,ic,bcs)
%% Example 4.2
clear;
idp = [5,0.002];
E = 210e6; A = 0.003;
P = [0,0,-10,0,0]';
bcs = [1,5]; ic = [1,2,3;3,4,5];
A = A*ones(1,size(ic,1));
E = E*ones(1,size(ic,1));
L = [1.5,1];
[U,F,K] = qbar_solver(E,A,L,P,ic,bcs,idp)
%% Problem 4.1

%% Problem 4.2