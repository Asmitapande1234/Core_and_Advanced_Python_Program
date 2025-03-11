class MovieLibrary:
    # Class Attribute: List of available movies
    available_movies = []

    def __init__(self, member_name):
        # Instance Attributes
        self.member_name = member_name
        self.borrowed_movies = []

    def borrow_movie(self, movie):
        # Borrows a movie if available in the library
        if movie in MovieLibrary.available_movies:
            self.borrowed_movies.append(movie)
            MovieLibrary.available_movies.remove(movie)
            print(f"{self.member_name} has borrowed the movie: {movie}")
        else:
            print(f"Movie '{movie}' is not available in the library.")

    def return_movie(self, movie):
        # Returns a movie to the library
        if movie in self.borrowed_movies:
            self.borrowed_movies.remove(movie)
            MovieLibrary.available_movies.append(movie)
            print(f"{self.member_name} has returned the movie: {movie}")
        else:
            print(f"{self.member_name} did not borrow the movie '{movie}'.")

    def view_borrowed_movies(self):
        # Prints a list of borrowed movies by the member
        if self.borrowed_movies:
            print(f"Movies borrowed by {self.member_name}:")
            for movie in self.borrowed_movies:
                print(f"- {movie}")
        else:
            print(f"{self.member_name} has not borrowed any movies.")

    @classmethod
    def add_movies(cls, movies):
        # Add a list of movies to the library's collection
        cls.available_movies.extend(movies)
        print(f"Movies added to the library: {', '.join(movies)}")

    @classmethod
    def view_available_movies(cls):
        # Prints the list of available movies in the library
        if cls.available_movies:
            print("Available Movies in the Library:")
            for movie in cls.available_movies:
                print(f"- {movie}")
        else:
            print("No movies are currently available in the library.")

# Usage example:

# Create a MovieLibrary and add movies to the collection
MovieLibrary.add_movies(['Inception', 'The Matrix', 'The Godfather', 'Avatar'])

# Create a member and assign a name
member = MovieLibrary('Alice')

# View available movies
MovieLibrary.view_available_movies()

# Member borrows some movies
member.borrow_movie('Inception')
member.borrow_movie('Avatar')

# View available movies after borrowing
MovieLibrary.view_available_movies()

# View borrowed movies
member.view_borrowed_movies()

# Member returns a movie
member.return_movie('Inception')

# View available movies after returning
MovieLibrary.view_available_movies()

# View borrowed movies after returning a movie
member.view_borrowed_movies()

'''OUTPUT:
Movies added to the library: Inception, The Matrix, The Godfather, Avatar
Available Movies in the Library:
- Inception
- The Matrix
- The Godfather
- Avatar
Alice has borrowed the movie: Inception
Alice has borrowed the movie: Avatar
Available Movies in the Library:
- The Matrix
- The Godfather
Movies borrowed by Alice:
- Inception
- Avatar
Alice has returned the movie: Inception
Available Movies in the Library:
- The Matrix
- The Godfather
- Inception
Movies borrowed by Alice:
- Avatar
'''
