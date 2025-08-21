def gcd(a,b):
    cnt=0
    while b!=0:
        a,b=b,a%b
        cnt=cnt+1
    return a,cnt
num1=10**9
num2=num1+7
result=gcd(num1,num2)
print(f"The GCD of {num1} and {num2} is: {result}")