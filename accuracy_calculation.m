load('theta_values');
load('final_input');
load('output.mat');
X = [ones(size(X,1),1) X(:,1:(end-1))];
h_x = sigmoid(X*theta);
for i = 1:size(h_x,1)
  if h_x(i) >= 0.5
    h_x(i) = 1;
  else
    h_x(i) = 0;
  end
end
accuracy = 100*(sum(h_x==y))/(size(h_x,1))