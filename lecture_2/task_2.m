lambda = 4;
true_x = 1./ (3 + lambda);
x = solve_for_x(lambda);
disp('точное решение: ');
disp(true_x);
disp('вычисленное решение: ');
disp(x);
disp('ѕогрешность');
disp(sum((true_x - x)).^ 2);
disp('_______________________________________________________')

n = 17;
lambdas = 1 + (1./10 .^ (1:n));
errors = zeros(1, n);
for i=1:n
    lambda = lambdas(i);
    true_x = 1./(3 + lambda);
    x = solve_for_x(lambda);
    error = sum((true_x - x)).^ 2;
    errors(i) = error;
end
%set(gca, 'xscale', 'log', 'yscale', 'log')
%plot(lambdas, errors);
disp(errors)

disp('_______________________________________________________')

lambda = 1;
true_x = 1./(3 + lambda);
disp('точное решение: ');
disp(true_x);
disp('вычисленное решение: ');
disp(x);
disp('ѕогрешность');
disp(sum((true_x - x)).^ 2);
A = ones(4) + (lambda - 1) * eye(4);
disp(det(A));

