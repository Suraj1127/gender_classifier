function [J, grad] = costFunction(theta,X,y,frequency)
  total = sum(frequency);
  m = size(X,1);
  J = (1/total)*sum((-y.*log(sigmoid(X*theta)) - (1-y).*(log(1-sigmoid(X*theta)))).*frequency);
  
  for i=1:length(theta)
    grad(i) = (sum(frequency.*((sigmoid(X*theta)-y).*X(:,i))))/total;
  end
  
end

