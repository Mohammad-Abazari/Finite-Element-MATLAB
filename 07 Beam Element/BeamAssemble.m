function K = BeamAssemble(K,k,i,j)
%BeamAssemble
% This function assembles the element stiffness
% matrix k of the beam element with nodes
% i and j into the global stiffness matrix K.
% This function returns the global stiffness
% matrix K after the element stiffness matrix
% k is assembled.
id = [2*i-1:2*i,2*j-1:2*j];
K(id,id) = K(id,id) + k;
end