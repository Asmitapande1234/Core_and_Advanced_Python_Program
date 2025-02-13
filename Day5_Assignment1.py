# Function to divide two numbers
def div(a, b):
    if b != 0:
        return a / b
    else:
        return "Error: Division by zero"

# Calling the div() function with two numbers
result_div = div(10, 2)
print("Division Result:", result_div)

''' Output:
   Division Result: 5.0
 '''
