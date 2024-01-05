function K = SpaceTrussAssemble(K,k,i,j)
%SpaceTrussAssemble
% This function assembles the element stiffness
% matrix k of the space truss element with nodes
% i and j into the global stiffness matrix K.
% This function returns the global stiffness
% matrix K after the element stiffness matrix
% k is assembled.
id = [(3*i-2):3*i,(3*j-2):3*j];
K(id,id) = K(id,id) + k;
end