function y = BackSub(U,d)

n = length(d);
y(n,1) = d(n)/U(n,n);
    for i = n-1:-1:1
        y(i,1) = (d(i)-U(i,i+1:n)*y(i+1:n,1) ./U(i,i));
    end