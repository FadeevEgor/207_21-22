clear;
F = @(X) expm(X) - eye(3);
% disp(fsolve(F, zeros(3)));
% disp(fsolve(F, eye(3)));
% disp(fsolve(F, ones(3)));