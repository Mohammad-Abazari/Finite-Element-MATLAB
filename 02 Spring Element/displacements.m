function U = displacements(ur,bcs)
  U = zeros(length(ur)+length(bcs),1);
  k = 0;
  for i = 1:length(U)
    if sum(i == bcs)
      U(i) = 0;
    else
      k = k + 1;
      U(i) = ur(k);
    end
  end
end
