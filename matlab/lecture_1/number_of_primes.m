clear;
n = 100;

n_primes = zeros(1, n);
for i = 1:n
    for j = 1 : i
        if isprime(j)
            n_primes(i) = n_primes(i) + 1;
        end
    end
end
subplot(2, 2, 1)
scatter(1:n, n_primes)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% или 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear n_primes;
n_primes = zeros(1, n);
for i = 1:n
    n_primes(i) = sum(isprime(1:i)); % убрали внутренний цикл
end
subplot(2, 2, 2)
scatter(1:n, n_primes)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% или 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear n_primes;
f = @(n) sum(isprime(1:n)); 
n_primes = arrayfun(f, 1:n); % убрали внешний цикл
subplot(2, 2, 3)
scatter(1:n, n_primes)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% или 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear n_primes;
f = @(n) numel(primes(n));
n_primes = arrayfun(f, 1:n);
subplot(2, 2, 4)
scatter(1:n, n_primes)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% или 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n = 20;
is_prime_bool_array = ones(1, n);
for i = 2:n   % здесь цикл можно закончить на ~n/2
    for j = 2*i : i : n % вычеркиваем все кратные числа
        is_prime_bool_array(j) = 0;
    end
end
fprintf('%i ', is_prime_bool_array)
disp(' ')