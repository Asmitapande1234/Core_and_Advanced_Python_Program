input_string = "P@#yn26at^&i5ve"

# Initialize counters
chars = 0
digits = 0
symbols = 0

# Iterate through each character in the string
for char in input_string:
    if char.isalpha():  # Check if the character is a letter
        chars += 1
    elif char.isdigit():  # Check if the character is a digit
        digits += 1
    else:  # If it's neither a letter nor a digit, it's a symbol
        symbols += 1

# Output the results
print(f"Chars = {chars}")
print(f"Digits = {digits}")
print(f"Symbols = {symbols}")

'''Output:
 Chars = 8
Digits = 3
Symbols = 4
'''
