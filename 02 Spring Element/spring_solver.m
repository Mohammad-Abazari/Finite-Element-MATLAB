function [U,F,K,ur,pr,kr] = spring_solver(k,P,ic,bcs)
K = zeros(length(P));
for i = 1:length(k)
    K = SpringAssemble(K,SpringElementStiffness(k(i)),ic(i,1),ic(i,2))
end
kr = apply_boundary_conditions(K,bcs)
pr = apply_boundary_conditions(P,bcs)
ur = inv(kr) * pr
U = displacements(ur,bcs);
F = K*U;
end
