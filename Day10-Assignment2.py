def find_largest_smallest(nums):
    largest = nums[0]
    smallest = nums[0]
    
    for num in nums:
        if num > largest:
            largest = num
        if num < smallest:
            smallest = num
    
    return largest, smallest

# Example usage:
my_list = [12, 45, 7, 89, 34]
largest, smallest = find_largest_smallest(my_list)
print("Largest number:", largest)
print("Smallest number:", smallest)


'''Ouput:
  Largest number: 89
  Smallest number: 7
'''
