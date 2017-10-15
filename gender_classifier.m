load('final_input');
load('output.mat');
random_list = randperm(size(X,1));
%X = X(random_list(1:10000),:);
%y = y(random_list(1:10000),:);
frequency = X(:,end);
X(:,end) = [];
X = [ones(size(X,1),1) X];
initial_theta = zeros(size(X,2),1);
options = optimset('GradObj','on','MaxIter',400);
[theta, cost] = fminunc(@(t)(costFunction(t,X,y,frequency)), initial_theta, options);
save('theta_values','theta');
