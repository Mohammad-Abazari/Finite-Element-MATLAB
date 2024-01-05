% Example 7.1
clear; close all;
E = 210e6; E = E*[1,1];
I = 60e-6; I = I*[1,1];
L = 2; L = L*[1,1];
bcs = [1:2,5];
ic = [1,2;2,3];
P = zeros(max(max(ic))*2,1); P(3) = -20;
[U,F,K] = beam_solver(E,I,L,P,ic,bcs)
figure(1);
draw_beam(L,E,I,ic,U,100)
% Example 7.2
clear;
E = 210e6; E = E*[1,1,1];
I = 5e-6; I = I*[1,1,1];
L = [3,4,2];
bcs = [1,3,5,7,8];
ic = [1,2;2,3;3,4];
w = 7; P = zeros(max(max(ic))*2,1);
P(3:6) = w*L(2)/2*[-1, -L(2)/6, -1, L(2)/6]';
[U,F,K] = beam_solver(E,I,L,P,ic,bcs)
figure(2);
draw_beam(L,E,I,ic,U,100)
% Problem 7.3
clear;
E = 210e6; E = E*[1,1,1];
I = 5e-6; I = I*[1,1,1];
L = [3,4,2];
bcs = [1,3,5,7,8];
ic = [1,2;2,3;3,4];
w = 7; P = zeros(max(max(ic))*2,1);
P(3:6) = w*L(2)/2*[-1, -L(2)/6, -1, L(2)/6]';
[U,F,K] = beam_solver(E,I,L,P,ic,bcs)
figure(3);
draw_beam(L,E,I,ic,U,100)