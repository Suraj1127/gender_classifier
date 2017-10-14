single_string = fileread('names.txt');
string_list = strsplit(single_string, '\n');
m = size(string_list,2);
X = zeros(size(m,4));
y = zeros(size(m,1));
for i = 1:m
  y(i) = string_list{i}(end);
  X(i,1) = double(string_list{i}(1)) - 64;
  X(i,2) = double(string_list{i}(2)) - 64;
  X(i,3) = double(string_list{i}(3)) - 64;
  X(i,4) = str2num(string_list{i}(4:end-1)); 
end
save('input.mat','X');
save('output.mat','y') - 48;
