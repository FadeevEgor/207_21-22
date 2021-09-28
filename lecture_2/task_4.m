A = rand(4);
lhs = det(expm(A));
rhs = exp(trace(A));
disp(lhs - rhs);