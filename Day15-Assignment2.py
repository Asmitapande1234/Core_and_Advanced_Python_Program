def count_words_in_file(file_name):
    try:
        # Open the file in read mode
        with open(file_name, 'r') as file:
            # Read the content of the file
            content = file.read()
            
            # Split the content into words using whitespace as separator
            words = content.split()
            
            # Count the total number of words
            total_words = len(words)
            
            # Display the total number of words
            print(f"Total number of words in the file '{file_name}': {total_words}")
    
    except FileNotFoundError:
        print(f"The file '{file_name}' was not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Example usage
count_words_in_file('ABC.txt')


'''Output:
  Total number of words in the file 'ABC.txt': 7
  '''
