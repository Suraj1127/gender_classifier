load('final_input');
load('output');
random_list = randperm(size(X,1));

frequency = X(:,end);
X = [ones(size(X,1),1) X(:,1:(end-1))];
initial_theta = zeros(size(X,2),1);
options = optimset('GradObj','on','MaxIter',400);
[theta, cost] = fminunc(@(t)(costFunction(t,X,y,frequency)), initial_theta, options);
save('theta_values','theta');
