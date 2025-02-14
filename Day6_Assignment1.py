# Function to reverse a number
def reverse_number(number):
    reversed_num = 0
    while number > 0:
        remainder = number % 10  # Get the last digit
        reversed_num = reversed_num * 10 + remainder  # Add it to the reversed number
        number = number // 10  # Remove the last digit from the number
    return reversed_num

# Input from the user
num = int(input("Enter a number: "))

# Reverse the number and display the result
reversed_num = reverse_number(num)
print(f"The reversed number is: {reversed_num}")


'''  Output:
  Enter a number: 586479
The reversed number is: 974685
 '''
