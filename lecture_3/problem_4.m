clc;
clear;
a = [1 0 -1; 0 1 0; 2 0 0];
b = [-1 0 1; 2 0 0; 0 0 -1];
c = [0 -1 -2; -2 -3 -4; -2 -4 -5];
F = @(X) a*X*X + b*X + c;
X0 = fsolve(F, zeros(3));
disp(X0)
disp(F(X0));