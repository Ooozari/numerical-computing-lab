clc;
clear;
x = [0 0.5 1.0 1.5 2.0];          
y = [1.000000 0.606531 0.367879 0.223130 0.135335];         

n = length(x);

% Step size
h = x(2) - x(1);

X = 2.5;

% Parameter s
s = (X - x(n)) / h;

DD = zeros(n,n);
DD(:,1) = y';

for j = 2:n
    for i = 1:n-j+1
        DD(i,j) = (DD(i+1,j-1) - DD(i,j-1)) / (x(i+j-1) - x(i));
    end
end

% --------------------------------
% Display Divided Difference Table
% --------------------------------
disp('Backward Divided Difference Table');
disp('-------------------------------------------');

% --------------------------------
P = DD(n,1);      
prodTerm = 1;

for k = 1:n-1
    prodTerm = prodTerm * (s + (k-1));
    P = P + (h^k) * prodTerm * DD(n-k, k+1);
end
fprintf('\nInterpolated value at x = %.2f is %.6f\n', X, P);
