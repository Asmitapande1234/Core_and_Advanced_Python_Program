# Program to handle ZeroDivisionError
try:
    num1 = float(input("Enter the numerator: "))
    num2 = float(input("Enter the denominator: "))
    result = num1 / num2
    print("Result:", result)
except ZeroDivisionError:
    print("Error: Cannot divide by zero.")



''' Output:
 Enter the numerator: 48
 Enter the denominator: 6
 Result: 8.0
'''
