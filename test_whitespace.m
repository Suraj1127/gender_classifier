load('test_data');
load('output.mat');
y = y(:);
error_rows = [];
for i = 1:length(X_1)
  for j = 1:4
    if X_1(i,j) < 0
      error_rows = [error_rows; i];
    end
  end
end

for i = 1:length(error_rows)
  y(error_rows(i)-i+1) = [];
end

save('output','y');


