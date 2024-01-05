function [U,F,K,ur,pr,kr] = bar_solver(E,A,L,P,ic,bcs)
K = zeros(length(P));
for i = 1:length(E)
    K = LinearBarAssemble(K,LinearBarElementStiffness(E(i),A(i),L(i)),ic(i,1),ic(i,2))
end
kr = apply_boundary_conditions(K,bcs)
pr = apply_boundary_conditions(P,bcs)
ur = inv(kr) * pr
U = displacements(ur,bcs);
F = K*U;
function K = apply_boundary_conditions(K,bcs)
  sk = size(K);
  if sum(sk == 1)
      K(bcs) = [];
  else
      K = K(~ismember(1:size(K, 1), bcs), ~ismember(1:size(K, 2), bcs));
  end
end
function U = displacements(ur,bcs)
  U = zeros(length(ur)+length(bcs),1);
  k = 0;
  for i = 1:length(U)
    if sum(i == bcs)
      U(i) = 0;
    else
      k = k + 1;
      U(i) = ur(k);
    end
  end
end
end