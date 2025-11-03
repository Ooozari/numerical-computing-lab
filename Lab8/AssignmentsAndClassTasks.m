%% Task 3
% f(x) = x^3 - x - 1 = 0
f = @(x) x^3 - x - 1;

% Find suitable interval [a, b]
a = 0; b = 1;
while f(a)*f(b) > 0
    a = b;
    b = b + 1;
end

% Tolerance and max iterations
tol = 1e-5;
maxIter = 100;

fprintf('\n--- Task 3 ---\n');
for i = 1:maxIter
    fa = f(a); fb = f(b);
    c = (a*fb - b*fa) / (fb - fa);
    fc = f(c);
    fprintf('Iter %d: a=%.4f, b=%.4f, c=%.4f, f(c)=%.4f\n', i, a, b, c, fc);
    if abs(fc) < tol
        fprintf('Root found at x = %.4f after %d iterations\n', c, i);
        break;
    end
    if fa * fc < 0
        b = c;
    else
        a = c;
    end
end

%% Task 4
% f(x) = x^2 - 3 = 0
f = @(x) x^2 - 3;

% Find suitable interval [a, b]
a = 0; b = 1;
while f(a)*f(b) > 0
    a = b;
    b = b + 1;
end

tol = 1e-5;
maxIter = 100;

fprintf('\n--- Task 4 ---\n');
for i = 1:maxIter
    fa = f(a); fb = f(b);
    c = (a*fb - b*fa) / (fb - fa);
    fc = f(c);
    fprintf('Iter %d: a=%.4f, b=%.4f, c=%.4f, f(c)=%.4f\n', i, a, b, c, fc);
    if abs(fc) < tol
        fprintf('Root found at x = %.4f after %d iterations\n', c, i);
        break;
    end
    if fa * fc < 0
        b = c;
    else
        a = c;
    end
end

%% Assignment 1
% f(x) = ln(x) + x^2 - 3 = 0
f = @(x) log(x) + x^2 - 3;

% Find suitable interval [a, b]
a = 0.1; b = 1;
while f(a)*f(b) > 0
    a = b;
    b = b + 1;
end

tol = 1e-5;
maxIter = 100;

fprintf('\n--- Assignment 1 ---\n');
for i = 1:maxIter
    fa = f(a); fb = f(b);
    c = (a*fb - b*fa) / (fb - fa);
    fc = f(c);
    fprintf('Iter %d: a=%.4f, b=%.4f, c=%.4f, f(c)=%.4f\n', i, a, b, c, fc);
    if abs(fc) < tol
        fprintf('Root found at x = %.4f after %d iterations\n', c, i);
        break;
    end
    if fa * fc < 0
        b = c;
    else
        a = c;
    end
end

%% Assignment 2
% f(x) = x*e^(-x) - 0.1 = 0, given [0, 1]
f = @(x) x*exp(-x) - 0.1;

a = 0;
b = 1;
tol = 1e-5;
maxIter = 100;

fprintf('\n--- Assignment 2 ---\n');
for i = 1:maxIter
    fa = f(a); fb = f(b);
    c = (a*fb - b*fa) / (fb - fa);
    fc = f(c);
    fprintf('Iter %d: a=%.4f, b=%.4f, c=%.4f, f(c)=%.4f\n', i, a, b, c, fc);
    if abs(fc) < tol
        fprintf('Root found at x = %.4f after %d iterations\n', c, i);
        break;
    end
    if fa * fc < 0
        b = c;
    else
        a = c;
    end
end
