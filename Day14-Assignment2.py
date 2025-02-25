# Program to raise ValueError if the input is not a valid integer
try:
    user_input = input("Enter an integer: ")
    user_input = int(user_input)  # Try converting the input to an integer
    print(f"Valid integer entered: {user_input}")
except ValueError:
    print("Error: Invalid input. Please enter a valid integer.")


'''Output:
Enter an integer: 56
Valid integer entered: 56


Enter an integer: A
Error: Invalid input. Please enter a valid integer.

'''
