function coeffs = BinomialCoefficients(n)
    coeffs = arrayfun(@nchoosek, n*ones(1, n + 1), 0:n);
end

