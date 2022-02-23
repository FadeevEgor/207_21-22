# engine.cpp

```matlab:Code
mex "-LC:\Program Files\MATLAB\R2017b\extern\lib\win64\mingw64"  -llibeng -llibmx -client engine engine.cpp
```

```text:Output
Building with 'MinGW64 Compiler (C++)'.
MEX completed successfully.
```

# engine2.cpp

```matlab:Code
mex "-LC:\Program Files\MATLAB\R2017b\extern\lib\win64\mingw64"  -llibeng -llibmx -client engine engine2.cpp
```

```text:Output
Building with 'MinGW64 Compiler (C++)'.
MEX completed successfully.
```

# mcc -m Int.m

```matlab:Code
mcc -m Int.m
```
