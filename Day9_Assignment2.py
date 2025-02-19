input_string = "String and String Function"

# Remove duplicate characters while preserving order
output_string = "".join(sorted(set(input_string), key=input_string.index))

# Output the result
print(f"Output: {output_string}")


'''Output:
String and Function
'''
