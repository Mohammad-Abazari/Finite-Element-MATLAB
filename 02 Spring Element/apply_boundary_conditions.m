function K = apply_boundary_conditions(K,bcs)
  sk = size(K);
  if sum(sk == 1)
      K(bcs) = [];
  else
      K = K(~ismember(1:size(K, 1), bcs), ~ismember(1:size(K, 2), bcs));
  end
end
