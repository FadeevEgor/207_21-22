clear;
% более продвинутые указатели на функции
F_1 = @(x) F_prblm_1(x, 1);
F_3 = @(x) F_prblm_1(x, 3);
F_5 = @(x) F_prblm_1(x, 5);
x = 0:0.1:6;
y1 = arrayfun(F_1, x);
y3 = arrayfun(F_3, x);
y5 = arrayfun(F_5, x);
plot(x, y1, x, y3, x, y5);

figure;
x0 = 0.75:0.5:5.25;
n = numel(x0);
roots = zeros(1, n);
plot(x, y5);
hold on;
for i = 1:n
    roots(i) = fzero(F_5, x0(i));
    x_coords = [x0(i), roots(i)];
    y_coords = arrayfun(F_5, x_coords);
    plot(x_coords, y_coords, 'r-o');
end




