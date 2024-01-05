function y = PlaneTrussElementStress(E,l,u)
%PlaneTrussElementStress
% This function returns the element stress
% given the modulus of elasticity E, the
% the length L, the angle theta (in
% degrees), and the element nodal
% displacement vector u.
y = E/l(1)*[-l(2) -l(3) l(2) l(3)]* u;
end
