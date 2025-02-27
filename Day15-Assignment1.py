def read_file_line_by_line(file_name):
    try:
        with open(file_name, 'r') as file:  # Open the file in read mode
            for line in file:
                print(line, end='')  # Print each line without adding extra newlines
    except FileNotFoundError:
        print(f"The file '{abc.txt}' was not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Call the function with the file name
read_file_line_by_line("abc.txt")

'''Output:
  Good morning everyone
Welcome to data file...
'''

