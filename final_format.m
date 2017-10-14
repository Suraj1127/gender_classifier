load('test_data_final');
m = length(X_1);
X = zeros(m,79);
for i = 1:m
  for j = 0:2
    X(i,26*j + X_1(i,j+1)) = 1;
  end
  X(i,79) = X_1(i,4);
end

