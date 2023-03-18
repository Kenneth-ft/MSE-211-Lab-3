function [L,U,P] = LU_decomp(A)
%Apply LU decomposition
[L,U,P] = lu(A);
