%% Example 5.1
E = 210e6; A = 1e-4;
csp = [0,0;4,0;2,3];
E = E*[1,1,1];
A = A*[1,1,1];
bcs = [1,2,4];
P = [0,0,0,0,5,-10]';
ic = [1,2;1,3;2,3];
[U,F,K,S] = planetruss_solver(E,A,csp(:,1),csp(:,2),P,ic,bcs)
%% example 5.2 
E = 70e6; A = 4e-3;
csp = [0,0;0,3.5;4,3.5;4,0];
ic = [1,2;1,4;1,3;2,4;2,3;3,4];
E = E*ones(1,size(ic,1));
A = A*ones(size(E));
alpha = pi/4;
bcs = [1,2,8];
ibc = [4,alpha]
P = zeros(size(csp,1)*2,1);
P(5) = 30;
[U,F,K,S] = planetruss_solver(E,A,csp(:,1),csp(:,2),P,ic,bcs,ibc)
figure(1);
draw_plane_truss(csp,ic,U*100)
%% Problem 5.1
E = 210e6; A = 5e-3;
csp = [0,0;5,7;5,0;10,7;10,0;15,0];
ic = [1,2;1,3;2,3;2,4;2,5;3,5;4,5;4,6;5,6];
E = E*ones(1,size(ic,1));
A = A*ones(size(E));
bcs = [1,2,11,12];
P = zeros(size(csp,1)*2,1);
P(3) = 20;
[U,F,K,S] = planetruss_solver(E,A,csp(:,1),csp(:,2),P,ic,bcs)
figure(2);
draw_plane_truss(csp,ic,U*100)
%% Problem 5.2
figure(2);
draw_plane_truss(csp,ic,U*1000)