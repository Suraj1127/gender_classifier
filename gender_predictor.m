load('theta_values');
name = input("Enter your name:\n", 's');
name = upper(name);
name = strtrim(name);
[temp1 temp2] = regexp(name,'[a-zA-Z ]+');
if ((length(name) != (temp2-temp1 + 1))||(length(temp1) == 0))
  printf("Please enter valid name! \n \n");
  gender_predictor
end
if length(name) >= 4
  parameters_char = {name(end), name(end-1), name(end-2), name(end-3)};
else
  parameters_char = {name(end), name(end-1), name(end-2), '@'};
end




for i = 1:4
  parameters(i) = double(parameters_char{i})-64;
end

x = zeros(1,105);
for i = 1:4
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