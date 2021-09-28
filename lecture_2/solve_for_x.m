function x = solve_for_x(lambda)
    A = ones(4) + (lambda - 1) * eye(4);
    b = ones(4, 1);
    x = A \ b;
end

