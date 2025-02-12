# Taking a number as input
num = float(input("Enter a number: "))

# Checking if the number is positive, negative, or zero
if num > 0:
    print(f"{num} is a positive number.")
elif num < 0:
    print(f"{num} is a negative number.")
else:
    print(f"{num} is zero.")


'''Output:
 Enter a number: 89
89.0 is a positive number.

Enter a number: -56
-56.0 is a negative number.

Enter a number: 0
0.0 is zero.
'''
