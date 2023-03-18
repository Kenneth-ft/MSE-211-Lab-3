%x = inv(A)*b
%x = A/b
%x = pinv(A)*b
%c = Ax
clear all;
close all;
A = [1 0 0 0 2000 0 0 0 0 0;
     1 -1 0 0 0 -12000 0 0 0 0;
     1 0 0 -1 0 0 -20000 0 0 0;
     0 1 0 -1 0 0 0 -18000 0 0;
     0 1 -1 0 0 0 0 0 -10000 0;
     ]
[L,U,P] = lu (A); %Apply LU decomposition
n = size(L);
% Forward Substitution
d = zeros(n,1);
d(1) = ;
    for i = 2 : 1 : n
        sum = 0;
        for k = 1:1:(i-1)
            sum = %insert eqn;
        end
        di = %insert eqn;
    end 
% Backward Substitution
