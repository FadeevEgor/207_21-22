clear;
for i=1:2:32
    delta = mean(abs(roots(BinomialCoefficients(i)) + 1));
    disp([i, delta]);
end