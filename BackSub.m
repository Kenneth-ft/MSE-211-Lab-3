function y = BackSub(a,b)

n = length(b);
y(n,1) = b(n)/a(n,n);
    for i = n-1:-1:1
        y(i,1) = (b(i)-a(i,i+1:n)*y(i+1:n,1) ./a(i,i));
    end