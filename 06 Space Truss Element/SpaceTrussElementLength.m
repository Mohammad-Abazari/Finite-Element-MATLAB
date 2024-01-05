function l = SpaceTrussElementLength(x,y,z)
%SpaceTrussElementLength
% This function returns the length of the
% space truss element whose first node has
% coordinates (x1,y1,z1) and second node has
% coordinates (x2,y2,z2).
dx = diff(x); dy = diff(y); dz = diff(z);
l = norm([dx,dy,dz]);
l = [l,[dx,dy,dz]/l];
end