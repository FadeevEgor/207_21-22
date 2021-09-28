function [d, M] = Vandermonde(x) 
    n = numel(x);
    x = reshape(x, n, 1);
    M = x .^ (0:n-1);
    d = det(M); 
end

