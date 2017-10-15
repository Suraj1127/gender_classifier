load('input.mat');
X_1 = X;
m = length(X_1);
X = zeros(m,105);
for i = 1:m
  for j = 0:3
    temp = X_1(i,j+1);
    if temp < 0
      continue;
    end
    
    X(i,26*j + temp) = 1;
  end
  X(i,105) = X_1(i,5);
end

