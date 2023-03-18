%x = inv(A)*b
%x = A/b
%x = pinv(A)*b
%c = Ax
clear;
close all;
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
Ai = inv(A);
x = Ai*b;
c = A*x - b;
cn = norm(c);
[L,U,P] = lu (A); %Apply LU decomposition
n = size(L);
% Forward Substitution
d = zeros(n(1),1); %allocate vector d
d(1) = b(1)/L(1,1); %evaluate the first component from Ld = b
    for i = 2 : 1 : n
        sum = 0;
        for k = 1:1:(i-1)
            sum = sum - L(i,k)*d(k); %insert eqn
        end
        d(i) = (1/L(i,i))*(b(i) + sum); %insert eqn
    end 
% Backward Substitution
