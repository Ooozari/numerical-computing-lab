clc;
clear;
x = [0 1.3 1.6 1.9 2.2];          
y = [0.7655197 0.6200860 0.4554022 0.2818186 0.1103623];             
n = length(x);
h = x(2) - x(1);
X = 1.5;
% Parameter s
s = (X - x(1)) / h;
DD = zeros(n,n);
DD(:,1) = y';

for j = 2:n
    for i = 1:n-j+1
        DD(i,j) = (DD(i+1,j-1) - DD(i,j-1)) / (x(i+j-1) - x(i));
    end
end

% -------------------------------
% Forward Interpolation Polynomial
% -------------------------------
P = DD(1,1);    % f(x0)
prodTerm = 1;

for k = 1:n-1
    prodTerm = prodTerm * (s - (k-1));
    P = P + (h^k) * prodTerm * DD(1,k+1);
end
fprintf('Interpolated value at x = %.2f is %.6f\n', X, P);
