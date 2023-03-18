clear;
close all;

% Initialize Matrix A and b
A = [1 0 0 0 2000 0 0 0 0 0;
     1 -1 0 0 0 -12000 0 0 0 0;
     1 0 0 -1 0 0 -20000 0 0 0;
     0 1 0 -1 0 0 0 -18000 0 0;
     0 1 -1 0 0 0 0 0 -10000 0;
     0 0 1 -1 0 0 0 0 -20000 0;
     0 0 0 1 0 0 0 0 0 -15000;
     0 0 0 0 1 -1 -1 0 0 0;
     0 0 0 0 0 1 0 -1 -1 0;
     0 0 0 0 0 0 1 1 1 -1];

b = [5;0;0;0;0;0;0;0;0;0];

% Invert A
Ai = inv(A);

% Solve for x
x = Ai*b;

% Solve for c
c = A*x - b;

% Take norm c
cn = norm(c);

% Frobenius norm:
k = cond(A);

% 1-norm:
k_1 = cond(A,1);

% inf-norm:
k_i = cond(A,inf);

%Apply LU decomposition
[L,U,P] = lu(A);

% Set n as size of matrix L
n = size(L);

% Forward Substitution
d = ForwSub(L,b);

% Backward Substitution
y = BackSub(U,d);
