def print_divisor(num):
    if num<=0:
        print("Please enter a positive integer.")
        return
    
    print(f"Divisors of {num}:")
    for i in range(1,num+1):
        if num%i==0:
            print(i)
print_divisor(36)
print_divisor(37)