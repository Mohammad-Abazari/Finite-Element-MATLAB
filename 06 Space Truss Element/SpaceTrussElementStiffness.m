function y = SpaceTrussElementStiffness(E,A,x,y,z)
%SpaceTrussElementStiffness
% This function returns the element
% stiffness matrix for a space truss
% element with modulus of elasticity E,
% cross-sectional area A, length L, and
% angles thetax, thetay, thetaz
% (in degrees). The size of the element
% stiffness matrix is 6 x 6.
l = SpaceTrussElementLength(x,y,z);
y = E*A/l(1)*[  l(2)*l(2) l(2)*l(3) l(2)*l(4);...
                l(3)*l(2) l(3)*l(3) l(3)*l(4);...
                l(4)*l(2) l(4)*l(3) l(4)*l(4)];
y = [y,-y;-y,y];
end