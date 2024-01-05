function y = PlaneTrussElementForce(E,A,l,u)
%PlaneTrussElementForce
% This function returns the element force
% given the modulus of elasticity E, the
% cross-sectional area A, the length L,
% the angle theta (in degrees), and the
% element nodal displacement vector u.
y = E*A/l(1)*[–l(2) –l(2) l(1) l(2)]* u;
end
