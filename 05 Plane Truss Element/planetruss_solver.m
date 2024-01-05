function [U,F,K,S,ur,pr,kr] = planetruss_solver(E,A,x,y,P,ic,bcs,ibc,idp)
K = zeros(length(P));
for i = 1:length(E)
    K = PlaneTrussAssemble(K,PlaneTrussElementStiffness(E(i),A(i),...
        x(ic(i,:)),y(ic(i,:))),ic(i,1),ic(i,2))
end
if nargin>7
    for i2 = 1:size(ibc,1)
    T = PlaneTrussInclinedSupport(eye(size(K)),ibc(i2,1),ibc(i2,2))
    K = T*K*T'
    end
end
kr = apply_boundary_conditions(K,bcs)
if nargin>8
    kidp = apply_boundary_conditions(K(:,idp(1)),bcs)
    pr = apply_boundary_conditions(P,bcs)-idp(2)*kidp
else
    pr = apply_boundary_conditions(P,bcs);
end
ur = kr \ pr
U = displacements(ur,bcs);
if nargin>8
    U(idp(1)) = idp(2);
end
F = K*U;
if nargout>3
    S = zeros(length(E),1);
    for i1 = 1:length(E)
        S(i1) = PlaneTrussElementStress(E(i1),...
            PlaneTrussElementLength(x(ic(i1,:)),...
            y(ic(i1,:))),PlaneTrussElementDisplacement(U,ic(i1,:)));
    end
end
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