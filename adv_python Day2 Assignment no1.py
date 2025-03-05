employees = [
    {"name": "John Doe", "department": "Sales"},
    {"name": "Jane Smith", "department": "Marketing"},
    {"name": "Emily Johnson", "department": "Sales"},
    {"name": "Michael Brown", "department": "HR"}
]

# List comprehension to get names of employees in 'Sales' department in uppercase
sales_employees = [employee['name'].upper() for employee in employees if employee['department'] == 'Sales']

print(sales_employees)

'''Output:

['JOHN DOE', 'EMILY JOHNSON']
'''
