function y = PlaneTrussInclinedSupport(T,i,alpha)
%PlaneTrussInclinedSupport
% This function calculates the
% tranformation matrix T of the inclined
% support at node i with angle of
% inclination alpha (in degrees).
alpha
T(2*i-1,2*i-1) = cos(alpha) ;
T(2*i-1,2*i) = sin(alpha) ;
T(2*i,2*i-1) = -sin(alpha) ;
T(2*i,2*i) = cos(alpha) ;
y = T;
end
