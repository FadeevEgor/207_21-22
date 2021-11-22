# Символьные вычисления
# Объявление символьных переменных

```matlab:Code
syms x y
s1 = x + y
```

s1 = 

   <img src="https://latex.codecogs.com/gif.latex?&space;x+y"/>

```matlab:Code
s2 = 3*x + 17*y
```

s2 = 

   <img src="https://latex.codecogs.com/gif.latex?&space;3\,x+17\,y"/>

```matlab:Code
S = s1 + s2
```

S = 

   <img src="https://latex.codecogs.com/gif.latex?&space;4\,x+18\,y"/>
# simplify 

```matlab:Code
X = x^2 - 2*x*y + y^2
```

X = 

   <img src="https://latex.codecogs.com/gif.latex?&space;x^2&space;-2\,x\,y+y^2&space;"/>

```matlab:Code
Y = x - y
```

Y = 

   <img src="https://latex.codecogs.com/gif.latex?&space;x-y"/>

```matlab:Code
X/Y
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\frac{x^2&space;-2\,x\,y+y^2&space;}{x-y}"/>

```matlab:Code
simplify(X/Y)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;x-y"/>
# expand

```matlab:Code
expand((x+y)^3)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;x^3&space;+3\,x^2&space;\,y+3\,x\,y^2&space;+y^3&space;"/>
# factor

```matlab:Code
factor(x^3 - 1)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\left(\begin{array}{cc}&space;x-1&space;&&space;x^2&space;+x+1&space;\end{array}\right)"/>

```matlab:Code
factor(1000001)
```

```text:Output
ans = 
         101        9901

```

```matlab:Code
syms x y a b
expression = x^2 * y^2
```

expression = 

   <img src="https://latex.codecogs.com/gif.latex?&space;x^2&space;\,y^2&space;"/>

```matlab:Code
old = [x, y]
```

old = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\left(\begin{array}{cc}&space;x&space;&&space;y&space;\end{array}\right)"/>

```matlab:Code
new = [a + b, a - b]
```

new = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\left(\begin{array}{cc}&space;a+b&space;&&space;a-b&space;\end{array}\right)"/>

```matlab:Code
subs(expression, old, new)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;{{\left(a+b\right)}}^2&space;\,{{\left(a-b\right)}}^2&space;"/>
# Матрицы

```matlab:Code
syms a11 a12 a21 a22
A = [a12, a12; 21 a22]
```

A = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\left(\begin{array}{cc}&space;a_{12}&space;&space;&&space;a_{12}&space;\\&space;21&space;&&space;a_{22}&space;&space;\end{array}\right)"/>

```matlab:Code
det(A)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;a_{12}&space;\,a_{22}&space;-21\,a_{12}&space;"/>

```matlab:Code
inv(A)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\left(\begin{array}{cc}&space;-\frac{a_{22}&space;}{21\,a_{12}&space;-a_{12}&space;\,a_{22}&space;}&space;&&space;-\frac{1}{a_{22}&space;-21}\\&space;\frac{21}{21\,a_{12}&space;-a_{12}&space;\,a_{22}&space;}&space;&&space;\frac{1}{a_{22}&space;-21}&space;\end{array}\right)"/>
# Производная (diff), интеграл(int), предел (limit), ряд Тейлора (taylor)

```matlab:Code
syms x
y = sin(x^2) + x^3
```

y = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\sin&space;\left(x^2&space;\right)+x^3&space;"/>

```matlab:Code
diff(y, x)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;2\,x\,\cos&space;\left(x^2&space;\right)+3\,x^2&space;"/>

```matlab:Code
y = log(x)
```

y = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\log&space;\left(x\right)"/>

```matlab:Code
int(y, x)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;x\,{\left(\log&space;\left(x\right)-1\right)}"/>

```matlab:Code
y = sin(x-1) / (x - 1)
```

y = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\frac{\sin&space;\left(x-1\right)}{x-1}"/>

```matlab:Code
limit(y, x, 1)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;1"/>

```matlab:Code
y = exp(x)
```

y = 

   <img src="https://latex.codecogs.com/gif.latex?&space;{\mathrm{e}}^x&space;"/>

```matlab:Code
taylor(y, x, 0)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\frac{x^5&space;}{120}+\frac{x^4&space;}{24}+\frac{x^3&space;}{6}+\frac{x^2&space;}{2}+x+1"/>
# Решение уравнений

```matlab:Code
clear a b c x
syms a b c x 
lhs = a*x^2 + b*x + c
```

lhs = 

   <img src="https://latex.codecogs.com/gif.latex?&space;a\,x^2&space;+b\,x+c"/>

```matlab:Code
solve(lhs, x)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\left(\begin{array}{c}&space;-\frac{b+\sqrt{b^2&space;-4\,a\,c}}{2\,a}\\&space;-\frac{b-\sqrt{b^2&space;-4\,a\,c}}{2\,a}&space;\end{array}\right)"/>

```matlab:Code
syms t n(t)
eq = diff(n, t) == n^2
```

eq(t) = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\frac{\partial&space;}{\partial&space;t}\;n\left(t\right)={n\left(t\right)}^2&space;"/>

```matlab:Code
dsolve(eq, t)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;\left(\begin{array}{c}&space;0\\&space;-\frac{1}{C_6&space;+t}&space;\end{array}\right)"/>

```matlab:Code
init_cond = n(0) == 1
```

init_cond = 

   <img src="https://latex.codecogs.com/gif.latex?&space;n\left(0\right)=1"/>

```matlab:Code
dsolve(eq, init_cond, t)
```

ans = 

   <img src="https://latex.codecogs.com/gif.latex?&space;-\frac{1}{t-1}"/>
