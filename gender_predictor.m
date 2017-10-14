load('theta_values');
name = input("Enter your name:\n", 's');
name = upper(name);
parameters_char = {name(end), name(end-1), name(end-2)};
for i = 1:3
  parameters(i) = double(parameters_char{i})-64;
end

x = zeros(1,79);
for i = 1:3
  x(26*(i-1) + parameters(i) + 1) = 1;
end
x(1) = 1;
y_value = sigmoid(x*theta);
if y_value >= 0.5
  printf("Male");
  printf("\n");
else
  printf("Female");
  printf("\n");
end

clear; 
printf('\n \n');
gender_predictor