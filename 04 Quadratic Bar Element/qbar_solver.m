function [U,F,K,ur,pr,kr] = qbar_solver(E,A,L,P,ic,bcs,idp)
K = zeros(length(P));
for i = 1:length(E)
    K = QuadraticBarAssemble(K,QuadraticBarElementStiffness(E(i),A(i),L(i)),ic(i,1),ic(i,3),ic(i,2))
end
kr = apply_boundary_conditions(K,bcs)
if nargin>6
    kidp = apply_boundary_conditions(K(:,idp(1)),bcs)
    pr = apply_boundary_conditions(P,bcs)-idp(2)*kidp
else
    pr = apply_boundary_conditions(P,bcs);
end
ur = inv(kr) * pr
U = displacements(ur,bcs);
if nargin>6
    U(idp(1)) = idp(2);
end
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