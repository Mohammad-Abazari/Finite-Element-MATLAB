function [v] = PlaneTrussElementDisplacement(V,member)
    v = [V(member(1)*2-1:member(1)*2);V(member(2)*2-1:member(2)*2)];
end