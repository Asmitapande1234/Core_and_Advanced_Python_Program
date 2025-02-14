# Function to calculate the factorial of a number
def factorial(number):
    result = 1
    while number > 1:
        result *= number  # Multiply result by the current number
        number -= 1  # Decrease the number by 1
    return result

# Input from the user
num = int(input("Enter a number: "))

# Calculate the factorial and display the result
fact = factorial(num)
print(f"The factorial of {num} is: {fact}")

'''Output:
  Enter a number: 3
The factorial of 3 is: 6

Enter a number: 6
The factorial of 6 is: 720
'''
