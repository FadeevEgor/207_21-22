clear;  
n = 10; % до n в какой степени считать результат
m = 10; % будем устреднять измерения
sizes = 2.0 .^ (1 : n);
times_to_compute = zeros(n, m);

for i = 1:n
    for j = 1:10
        l = sizes(i);
        m = rand(l, l);
        
        % так я сделал изначально, но в 1-32 нет функции timeit 
        % и мы не знакомы с указателями на функции
        % f = @() det(m); 
        % times_to_compute(i)  = timeit(f);
        
        % запустили таймер
        tic; 
        % произвели вычисления
        det(m);
        % посмотрели на таймер и записали значение в массив
        times_to_compute(i, m) = toc;
    end
end

% строим усредненное
to_plot = mean(times_to_compute, 2);  % для каждой сроки находим среднее
scatter(sizes, to_plot, 'b*')

to_plot(2:10)./to_plot(1:9) % отношение 


