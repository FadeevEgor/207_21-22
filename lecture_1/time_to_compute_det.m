clear;  
n = 10; % �� n � ����� ������� ������� ���������
m = 10; % ����� ���������� ���������
sizes = 2.0 .^ (1 : n);
times_to_compute = zeros(n, m);

for i = 1:n
    for j = 1:10
        l = sizes(i);
        m = rand(l, l);
        
        % ��� � ������ ����������, �� � 1-32 ��� ������� timeit 
        % � �� �� ������� � ����������� �� �������
        % f = @() det(m); 
        % times_to_compute(i)  = timeit(f);
        
        % ��������� ������
        tic; 
        % ��������� ����������
        det(m);
        % ���������� �� ������ � �������� �������� � ������
        times_to_compute(i, m) = toc;
    end
end

% ������ �����������
to_plot = mean(times_to_compute, 2);  % ��� ������ ����� ������� �������
scatter(sizes, to_plot, 'b*')

to_plot(2:10)./to_plot(1:9) % ��������� 


