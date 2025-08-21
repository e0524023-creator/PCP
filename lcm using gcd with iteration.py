def gcd_with_count(x,y):
    cnt=0
    while y:
        x,y=y,x%y
        cnt+=1
    return x,cnt
def lcm(a,b):
    gcd_result,gcd_iterations=gcd_with_count(a,b)
    product=a*b
    lcm_result=product//gcd_result
    return lcm_result,gcd_iterations,gcd_result
def display_lcm_and_gcd_count(num1,num2):
    lcm_result,gcd_iterations,gcd_result=lcm(num1,num2)
    print(f"The LCM of {num1} and {num2} is: {lcm_result}")
    print(f"The GCD of {num1} and {num2} is {gcd_result} and it requires {gcd_iterations} iterations to compute")
num1=48
num2=18
display_lcm_and_gcd_count(num1,num2)

num1=564674
num2=184847
display_lcm_and_gcd_count(num1,num2)

num1=6
num2=8
display_lcm_and_gcd_count(num1,num2)

num1=1526389600
num2=5798238092
display_lcm_and_gcd_count(num1,num2)

num1=845982739487
num2=498103948508
display_lcm_and_gcd_count(num1,num2)
