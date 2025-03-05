emails = [ "alice@example.com", "bob@sample.org", "charlie@mydomain.net" ]

# List comprehension to extract the domain part
domains = [email.split('@')[1] for email in emails]

print(domains)


'''
Output:
['example.com', 'sample.org', 'mydomain.net']

'''
