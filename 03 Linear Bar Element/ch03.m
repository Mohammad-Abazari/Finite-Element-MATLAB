% ch03
%% example 3.1
clear;
E = 210e6; p = -10;  A1 = .003; A2 = .003;
E = E*[1,1]; P = [0,p,0]'; A = [A1,A2];
L = [1.5,1]; ic = [1,2;2,3]; bcs = [1,3];
[U,F,K,ur,pr,kr] = bar_solver(E,A,L,P,ic,bcs)
%% example 3.2
clear;
E = 210e6; p = -18;  A1 = .002; A2 = .012;
fA = @(x) A1+0.01*x/3;
Lt = 3; ne = 5; L = Lt/ne*ones(1,ne);
E = E*ones(1,ne); P = zeros(ne+1,1); P(1) = p; 
A = fA((Lt/ne)/2:Lt/ne:Lt);
ic = [];
for i = 1:ne+1
    ic = [ic;i,i+1];
end
bcs = [ne+1];
[U,F,K] = bar_solver(E,A,L,P,ic,bcs)
%% Problem 3.1
clear;
E = 70e6; A = 0.005; P1 = 10; P2 = 15;
L = [1 2 1]; E = E*[1,1,1]; A = A*[1,1,1];
P = [0,-P1,0,P2]'; ic = [1,2;2,3;3,4]; bcs = 1;
[U,F,K] = bar_solver(E,A,L,P,ic,bcs)
%% Problem 3.2
clear;
E = 210e6; p = -18;  A1 = .002; A2 = .012;
fA = @(x) A1+0.01*x/3;
Lt = 3; ne = 10; L = Lt/ne*ones(1,ne);
E = E*ones(1,ne); P = zeros(ne+1,1); P(1) = p; 
A = fA((Lt/ne)/2:Lt/ne:Lt);
ic = [];
for i = 1:ne+1
    ic = [ic;i,i+1];
end
bcs = [ne+1];
[U,F,K] = bar_solver(E,A,L,P,ic,bcs)
%% Problem 3.3
