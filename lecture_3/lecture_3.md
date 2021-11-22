# Размеры массива

```matlab:Code
A = rand(3, 2)
```

```text:Output
A = 
    0.2785    0.9649
    0.5469    0.1576
    0.9575    0.9706

```

```matlab:Code
[n_rows, n_cols] = size(A)
```

```text:Output
n_rows = 3
n_cols = 2
```

```matlab:Code
n_rows = size(A, 1)
```

```text:Output
n_rows = 3
```

```matlab:Code
n_cols = size(A, 2)
```

```text:Output
n_cols = 2
```

```matlab:Code
n_elements = numel(A)
```

```text:Output
n_elements = 6
```

```matlab:Code
n_elements = prod(size(A))
```

```text:Output
n_elements = 6
```

# Удаление элемента(ов) из массива

```matlab:Code
x = 1:5
```

```text:Output
x = 
     1     2     3     4     5

```

```matlab:Code
x(3) = [];
```

```matlab:Code
x
```

```text:Output
x = 
     1     2     4     5

```

```matlab:Code
size(x)
```

```text:Output
ans = 
     1     4

```

```matlab:Code
x(2:3) = [];
x 
```

```text:Output
x = 
     1     5

```

# Расширение массива

```matlab:Code
x(3) = 6;
x
```

```text:Output
x = 
     1     5     6

```

```matlab:Code
x(10) = 8
```

```text:Output
x = 
     1     5     6     0     0     0     0     0     0     8

```

# Конкатенация массивов

```matlab:Code
x = 1:3;
y = 4:6;
```

```matlab:Code
x_than_y = [x, y]
```

```text:Output
x_than_y = 
     1     2     3     4     5     6

```

```matlab:Code
x_and_y = [x; y]
```

```text:Output
x_and_y = 
     1     2     3
     4     5     6

```

```matlab:Code
x_and_y = reshape(x_than_y, 2, 3)
```

```text:Output
x_and_y = 
     1     3     5
     2     4     6

```

# Решение уравнений
# Указатели на функции. 

```matlab:Code
f = @myfunction
```

```text:Output
f = 
    @myfunction

```

```matlab:Code
f(pi)
```

```text:Output
ans = 9.8696
```

```matlab:Code
pi * pi
```

```text:Output
ans = 9.8696
```

```matlab:Code
f = @sin;
f(pi)
```

```text:Output
ans = 1.2246e-16
```

# fzero

Первый аргумент - указатель на функцию.

Второй аргумен - начальное приближение.

```matlab:Code
fzero(f, 1)
```

```text:Output
ans = 1.5485e-24
```

```matlab:Code
fzero(@sin, pi + 3)
```

```text:Output
ans = 6.2832
```

```matlab:Code
fzero(@myfunction, 0.1)
```

```text:Output
Exiting fzero: aborting search for an interval containing a sign change
    because NaN or Inf function value encountered during search.
(Function value at -1.37296e+154 is Inf.)
Check function or try again with a different starting value.
ans = NaN
```

> Больше подробностей

```matlab:Code
[xexitflag, output] = fzero(@sin, [-1, 1])
```

```text:Output
xexitflag = 0
output = 0
```

```matlab:Code
[x, fval, exitfla, fval, g, output] = fzero(@sin, [1, 2*pi + 1])
```

```text:Output
Error using fzero
Too many output arguments.
```

```matlab:Code
[x, fval, exitflag, output] = fzero(@myfunction, -1)
```

> Ещё больше подробностей

```matlab:Code
options = optimset('Display','iter'); % show iterations
[x, fval, exitflag, output] = fzero(@sin, [-1, 1], options)
```

```text:Output
 
 Func-count    x          f(x)             Procedure
    2               1      0.841471        initial
    3               0             0        bisection
 
Zero found in the interval [-1, 1]
x = 0
fval = 0
exitflag = 1
output = 
    intervaliterations: 0
            iterations: 1
             funcCount: 3
             algorithm: 'bisection, interpolation'
               message: 'Zero found in the interval [-1, 1]'

```

# roots
> Решение полиномиальных уравнений.

```matlab:Code
% массив коэффициентов ниже соответствует квадратному трехчлену
% 1 x ^ 2 - 5x + 6
coeffs = [1, -5, 6]; % Коэффициенты полинома начиная со старшинства
polyval(coeffs, 0) % вычисление значение полинома при x = 0
```

```text:Output
ans = 6
```

```matlab:Code
polyval(coeffs, 2)
```

```text:Output
ans = 0
```

```matlab:Code
polyval(coeffs, 3)
```

```text:Output
ans = 0
```

```matlab:Code
polyval(coeffs, [0, 2, 3]) % вычисление значения полинома при x пробегающем значения [0, 1, 2]
```

```text:Output
ans = 
     6     0     0

```

```matlab:Code
roots(coeffs)
```

```text:Output
ans = 
    3.0000
    2.0000

```

```matlab:Code
roots([1, 0, 1])
```

```text:Output
ans = 
   0.0000 + 1.0000i
   0.0000 - 1.0000i

```

```matlab:Code
n = 10;
k = 3;
nchoosek(n, k)

factorial(n) / (factorial(n - k) * factorial(k))
```

# fsolve

Первый аргумент - функция, принимающая на вход вектор (или матрицу) и выдающая на выходе вектор. Если функция в качастве второго выходного значения выдает матрицу Якоби, то сходимость существенно ускорится.

Второй аргумент - начальное приближение.

```matlab:Code
myfunction2d([0, 1])
```

```text:Output
ans = 
     0     0

```

```matlab:Code
[y, J] = myfunction2d([0, 1])
```

```text:Output
y = 
     0     0

J = 
     1    -1
     0     0

```

```matlab:Code
fsolve(@myfunction2d, [2, 1])
```

```text:Output
Equation solved.

fsolve completed because the vector of function values is near zero
as measured by the default value of the function tolerance, and
the problem appears regular as measured by the gradient.

<stopping criteria details>
ans = 
     0     1

```

```matlab:Code

```
