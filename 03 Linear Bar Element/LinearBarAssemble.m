function K = LinearBarAssemble(K,k,i,j)
%LinearBarAssemble
% This function assembles the element stiffness
% matrix k of the linear bar with nodes i and j
% into the global stiffness matrix K.
% This function returns the global stiffness
% matrix K after the element stiffness matrix
% k is assembled.
K([i,j],[i,j]) = K([i,j],[i,j]) + k;
end
