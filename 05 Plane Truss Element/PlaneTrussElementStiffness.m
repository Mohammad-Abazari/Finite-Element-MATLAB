function y = PlaneTrussElementStiffness(E,A,x,y)
%PlaneTrussElementStiffness
% This function returns the element
% stiffness matrix for a plane truss
% element with modulus of elasticity E,
% cross-sectional area A, length L, and
% angle theta (in degrees).
% The size of the element stiffness
% matrix is 4 x 4..
l = PlaneTrussElementLength(x,y);
y = E*A/l(1)*[l(2)*l(2) l(2)*l(3) -l(2)*l(2) -l(2)*l(3) ; l(2)*l(3) l(3)*l(3) -l(2)*l(3) -l(3)*l(3) ;
-l(2)*l(2) -l(2)*l(3) l(2)*l(2) l(2)*l(3) ; -l(2)*l(3) -l(3)*l(3) l(2)*l(3) l(3)*l(3)];
end
