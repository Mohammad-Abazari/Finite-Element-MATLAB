function K = QuadraticBarAssemble(K,k,i,j,m)
%QuadraticBarAssemble
% This function assembles the element stiffness
% matrix k of the quadratic bar with nodes i, j
% and m into the global stiffness matrix K.
% This function returns the global stiffness
% matrix K after the element stiffness matrix
% k is assembled.
K([i,j,m],[i,j,m]) = K([i,j,m],[i,j,m]) + k;
end
