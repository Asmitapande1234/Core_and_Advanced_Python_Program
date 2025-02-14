# Function to check if the number is a palindrome
def is_palindrome(number):
    # Reverse the number
    original_number = number
    reversed_num = 0
    while number > 0:
        remainder = number % 10
        reversed_num = reversed_num * 10 + remainder
        number = number // 10
    
    # Check if the original number is equal to its reversed version
    if original_number == reversed_num:
        return True
    else:
        return False

# Input from the user
num = int(input("Enter a number: "))

# Check and display the result
if is_palindrome(num):
    print(f"{num} is a palindrome.")
else:
    print(f"{num} is not a palindrome.")

'''Output:
   Enter a number: 356
356 is not a palindrome.

Enter a number: 232
232 is a palindrome.
'''

