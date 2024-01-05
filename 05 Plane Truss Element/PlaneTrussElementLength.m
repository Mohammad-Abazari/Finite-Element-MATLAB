function l = PlaneTrussElementLength(x,y)
%PlaneTrussElementLength
% This function returns the length of the
% plane truss element whose first node has
% coordinates (x1, y1) and second node has
% coordinates (x2, y2).
dx = diff(x); dy = diff(y);
l(1) = norm([dx,dy]);
l(2) = dx/l(1);
l(3) = dy/l(1);
end
