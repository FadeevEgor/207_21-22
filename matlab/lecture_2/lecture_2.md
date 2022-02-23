```matlab:Code
A = 1 : 16
```

```text:Output
A = 
     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16

```

```matlab:Code
A = reshape(A, 4, 4)
```

```text:Output
A = 
     1     5     9    13
     2     6    10    14
     3     7    11    15
     4     8    12    16

```

```matlab:Code
size(A)
```

```text:Output
ans = 
     4     4

```

```matlab:Code
[n, m] = size(A)
```

```text:Output
n = 4
m = 4
```

```matlab:Code
total = 0;
for i=1:n
    for j=1:m
        total = total + A(i, j);
    end
end
total
```

```text:Output
total = 136
```

```matlab:Code
sum(A)
```

```text:Output
ans = 
    10    26    42    58

```

```matlab:Code
sum(sum(A))
```

```text:Output
ans = 136
```

```matlab:Code
A(1:end, 2)
```

```text:Output
ans = 
     5
     6
     7
     8

```

```matlab:Code
A(n:-1:1, 2)
```

```text:Output
ans = 
     8
     7
     6
     5

```

```matlab:Code
A(:)
```

```text:Output
ans = 
     1
     2
     3
     4
     5
     6
     7
     8
     9
    10

```

```matlab:Code
A(2:3, 2:3)
```

```text:Output
ans = 
     6    10
     7    11

```

```matlab:Code
diag(A)
```

```text:Output
ans = 
     1
     6
    11
    16

```

# Обращение матриц

```matlab:Code
det(A)
```

```text:Output
ans = -4.4373e-31
```

```matlab:Code
inv(A)
```

```text:Output
Warning: Matrix is close to singular or badly scaled. Results may be inaccurate. RCOND =  4.785444e-19.
ans = 
   1.0e+16 *

   -0.3002   -0.1501    1.2010   -0.7506
    0.6005         0   -1.8014    1.2010
   -0.3002    0.4504         0   -0.1501
    0.0000   -0.3002    0.6005   -0.3002

```

```matlab:Code
A = ones(3) + 9 * eye(3)
```

```text:Output
A = 
    10     1     1
     1    10     1
     1     1    10

```

```matlab:Code
ones(3)
```

```text:Output
ans = 
     1     1     1
     1     1     1
     1     1     1

```

```matlab:Code
inv(A)
```

```text:Output
ans = 
    0.1019   -0.0093   -0.0093
   -0.0093    0.1019   -0.0093
   -0.0093   -0.0093    0.1019

```

```matlab:Code
A * inv(A)
```

```text:Output
ans = 
    1.0000   -0.0000         0
         0    1.0000         0
    0.0000         0    1.0000

```

```matlab:Code
inv(A) * A
```

```text:Output
ans = 
    1.0000         0    0.0000
   -0.0000    1.0000         0
         0         0    1.0000

```

# Решение СЛАУ

```matlab:Code
x = [1; 2; 3];
b = A * x
```

```text:Output
b = 
    15
    24
    33

```

```matlab:Code
x_ = linsolve(A, b) 
```

```text:Output
x_ = 
     1
     2
     3

```

```matlab:Code
A \ b
```

```text:Output
ans = 
    1.0000
    2.0000
    3.0000

```

# Собственные числа

```matlab:Code
values = eig(A)
```

```text:Output
values = 
    9.0000
    9.0000
   12.0000

```

```matlab:Code
[vectors, values] = eig(A)
```

```text:Output
values = 
    0.1297    0.8061    0.5774
    0.6333   -0.5154    0.5774
   -0.7630   -0.2907    0.5774

vectors = 
    9.0000         0         0
         0    9.0000         0
         0         0   12.0000

```

```matlab:Code
trace(A)
```

```text:Output
ans = 30
```
