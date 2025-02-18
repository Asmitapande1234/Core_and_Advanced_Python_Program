def find_duplicates(nums):
    seen = set()
    duplicates = set()
    
    for num in nums:
        if num in seen:
            duplicates.add(num)
        else:
            seen.add(num)
    
    return list(duplicates)

# Example usage:
my_list = [1, 2, 3, 2, 4, 5, 1]
print("Duplicate values:", find_duplicates(my_list))

'''Output:
  Duplicate values: [1, 2]
'''
