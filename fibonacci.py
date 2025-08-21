def fibonacci_iterative(n):
    a,b=0,1
    if n<=0:
        return 0
    elif n==1:
        return b
    else:
        for _ in range(2,n+1):
            c=a+b
            a=b
            b=c
        return b
print(fibonacci_iterative(60))
print(fibonacci_iterative(61))