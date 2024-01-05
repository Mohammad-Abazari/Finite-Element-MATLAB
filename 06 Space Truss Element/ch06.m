%% Example 6.1
clear;
E = 200e6; 
A = [0.001,0.001,0.001];
E = E*ones(1,length(A));
csp = [0,0,-4;-3,0,0; 0,0,4; 0,5,0];
bcs = 1:9;
P = zeros(size(csp,1)*3,1);
P(10) = 12;
ic = [1,4;2,4;3,4];
[U,F,K,S] = spacetruss_solver(E,A,csp(:,1),csp(:,2),csp(:,3),P,ic,bcs)
draw_space_truss(csp,ic,U*100)
%% Example 6.2
clear;
E = 200e6; 
A = [0.003,0.003,0.003];
E = E*ones(1,length(A));
csp = [0,0,-3;-3,0,0;0,0,3;4,0,0;0,5,0];
bcs = 1:12;
P = zeros(size(csp,1)*3,1);
P(13) = 15; P(15) = -20; 
ic = [1,5;2,5;3,5;4,5];
[U,F,K,S] = spacetruss_solver(E,A,csp(:,1),csp(:,2),csp(:,3),P,ic,bcs)
draw_space_truss(csp,ic,U*100)