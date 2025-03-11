class Library:
    # Class Attributes
    total_books = 0
    all_books = []

    def __init__(self, name):
        # Instance Attributes
        self.name = name
        self.borrowed_books = []

    def borrow_book(self, book):
        # Check if the book is available in the library
        if book in Library.all_books:
            # Add the book to the member's borrowed list
            self.borrowed_books.append(book)
            # Remove the book from the library's all_books list
            Library.all_books.remove(book)
            # Decrease total_books by 1
            Library.total_books -= 1
            print(f"{self.name} has borrowed the book: {book}")
        else:
            print(f"Book '{book}' is not available.")

    def return_book(self, book):
        # Check if the book is in the member's borrowed_books list
        if book in self.borrowed_books:
            # Add the book back to the library's all_books list
            Library.all_books.append(book)
            # Remove the book from the member's borrowed_books list
            self.borrowed_books.remove(book)
            # Increase total_books by 1
            Library.total_books += 1
            print(f"{self.name} has returned the book: {book}")
        else:
            print(f"{self.name} did not borrow the book '{book}'.")

    @classmethod
    def view_library_books(cls):
        # Class method to view total number of books and list all available books
        print(f"Total number of books in the library: {cls.total_books}")
        if cls.all_books:
            print("Available Books in the Library:")
            for book in cls.all_books:
                print(f"- {book}")
        else:
            print("No books are currently available in the library.")

    @classmethod
    def add_books(cls, books):
        # Add multiple books to the library
        cls.all_books.extend(books)
        cls.total_books += len(books)
        print(f"Books added to the library: {', '.join(books)}")

# Usage example:

# Creating the library system and adding books to it
Library.add_books(['The Great Gatsby', '1984', 'To Kill a Mockingbird', 'Moby Dick'])

# Creating a member and assigning a name
member = Library('Alice')

# View available books in the library
Library.view_library_books()

# Member borrows some books
member.borrow_book('1984')
member.borrow_book('Moby Dick')

# View available books after borrowing
Library.view_library_books()

# Member returns a book
member.return_book('1984')

# View available books after returning a book
Library.view_library_books()

# View member's borrowed books
print(f"{member.name}'s borrowed books: {member.borrowed_books}")

'''OUTPUT:
Books added to the library: The Great Gatsby, 1984, To Kill a Mockingbird, Moby Dick
Total number of books in the library: 4
Available Books in the Library:
- The Great Gatsby
- 1984
- To Kill a Mockingbird
- Moby Dick
Alice has borrowed the book: 1984
Alice has borrowed the book: Moby Dick
Total number of books in the library: 2
Available Books in the Library:
- The Great Gatsby
- To Kill a Mockingbird
Alice has returned the book: 1984
Total number of books in the library: 3
Available Books in the Library:
- The Great Gatsby
- To Kill a Mockingbird
- 1984
Alice's borrowed books: ['Moby Dick']
'''
