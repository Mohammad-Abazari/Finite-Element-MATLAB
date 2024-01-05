function [v] = SpaceTrussElementDisplacement(V,member)
    v = [V(member(1)*3-2:member(1)*3);V(member(2)*3-2:member(2)*3)];
end