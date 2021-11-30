```matlab:Code
mex -setup C++
```

```text:Output
MEX configured to use 'Microsoft Visual C++ 2019' for C++ language compilation.
```

# MyEmptyMexFunction

```matlab:Code
mex MyEmptyMexFunction.cpp
```

```text:Output
Building with 'Microsoft Visual C++ 2019'.
MEX completed successfully.
```

```matlab:Code
MyEmptyMexFunction
```

```matlab:Code
a=[1 2 3]; 
b=[3; 4; 5; 6];
[c, d] = MyEmptyMexFunction(a, b, b);
```

```text:Output
One or more output arguments not assigned during call to "MyEmptyMexFunction".
```

# MeMex2

```matlab:Code
mex MyMexF2.cpp
```

```text:Output
Building with 'Microsoft Visual C++ 2019'.
MEX completed successfully.
```

```matlab:Code
a = MyMexF2([1 2 3; 4 5 6; 7 8 9], 3)
```

```text:Output
a = 3x3    
     2     4     6
     8    10    12
    14    16    18

```

```matlab:Code
a = MyMexF2("mexFunction")
```

```text:Output
a = 1
```

# AverVector

```matlab:Code
mex AverVector.cpp
```

```text:Output
Building with 'Microsoft Visual C++ 2019'.
MEX completed successfully.
```

```matlab:Code
a = AverVector([1 2 3 4; 5 6 7 8; 9 10 11 12])
```

```text:Output
a = 3x1    
    2.5000
    6.5000
   10.5000

```

# MyMexDeterminant

```matlab:Code
mex MyMexDeterminant.cpp
```

```text:Output
Building with 'Microsoft Visual C++ 2019'.
MEX completed successfully.
```

```matlab:Code
MyMexDeterminant
```

```text:Output
determinant= 12.000000
```
