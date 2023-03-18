function d = ForwSub(L,b)
% Set n as size of matrix L
n = size(L);
% Forward Substitution
d = zeros(n(1),1); %allocate vector d
d(1) = b(1)/L(1,1); %evaluate the first component from Ld = b
    for i = 2 : 1 : n
        sum = 0;
        for k = 1:1:(i-1)
            sum = sum - L(i,k)*d(k);
        end
        d(i) = (1/L(i,i))*(b(i) + sum); % evaluate the i component of d
    end 