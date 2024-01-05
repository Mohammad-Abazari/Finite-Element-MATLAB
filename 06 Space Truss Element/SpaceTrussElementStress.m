function y = SpaceTrussElementStress(E,A,l,u)
%SpaceTrussElementStress 
% This function returns the element stress
% given the modulus of elasticity E, the
% length L, the angles thetax, thetay,
% thetaz (in degrees), and the element
% nodal displacement vector u.
y = E*A/l(1)*[-l(2),-l(3),-l(4),l(2),l(3),l(4)]*u;
end