%% bemenet: A matrix, v0 kezdővektor, eps hibahatár
z = cell;
v = cell;
gamma = cell;
k = 1;
v{1} = v0;
do
  k = k + 1;
  z{k} = A * v{k - 1};
  v{k} = z{k} / norm(z{k}, Inf);
  % arg max keresése 
  [m,i] = max (v{k - 1});
  %i=1;
  %for j = 1:length(v{k})
  %  if (abs(v{k-1}(j)) > abs(v{k-1}(i)))
  %    i = j;
  %  endif
  %endfor
  gamma{k} = z{k}(i) / v{k - 1}(i);
until ( norm(A * v{k} - gamma{k} * v{k}) / norm(v{k}) < eps )