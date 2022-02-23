A = rand(4);
lambdas = eig(A);
disp(trace(A) - sum(lambdas));
disp(det(A) - prod(lambdas));