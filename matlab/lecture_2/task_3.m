L = [2 -3 1; 4 -5 2; 5 -7 3];
R = [9 7 6; 1 1 2; 1 1 1];
rhs = [2 0 -2; 18 12 9; 23 15 11];

X = L \ rhs / R;
disp(X);

disp(L * X * R - rhs);
