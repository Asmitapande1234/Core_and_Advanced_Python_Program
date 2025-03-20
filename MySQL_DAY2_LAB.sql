. ● Create a database with the name StudentManagementSystem. 

mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> USE StudentManagementSystem;
Database changed

 ● StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone 

mysql> CREATE TABLE Student (
    ->     StudentID INT AUTO_INCREMENT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     DateOfBirth DATE,
    ->     Gender VARCHAR(10),
    ->     Email VARCHAR(100),
    ->     Phone VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.05 sec)


 ● CourseID (Primary Key) ● CourseTitle ● Credits
mysql> CREATE TABLE Course (
    ->     CourseID INT AUTO_INCREMENT PRIMARY KEY,
    ->     CourseTitle VARCHAR(100),
    ->     Credits INT
    -> );
Query OK, 0 rows affected (0.05 sec)



 ● InstructorID (Primary Key) ● FirstName ● LastName ● Email 
mysql> CREATE TABLE Instructor (
    ->     InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     Email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.02 sec)



 ● EnrollmentID (Primary Key) ● EnrollmentDate ● StudentID(Foreign key) ● CourseID(Foreign Key) ● InstructorID(Foreign key) 

mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    ->     EnrollmentDate DATE,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     InstructorID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
    -> );
Query OK, 0 rows affected (0.07 sec)




● ScoreID (Primary Key) ● CourseID (Foreign key) ● StudentID (Foreign Key) ● DateOfExam ● CreditObtained 


mysql> CREATE TABLE Score (
    ->     ScoreID INT AUTO_INCREMENT PRIMARY KEY,
    ->     CourseID INT,
    ->     StudentID INT,
    ->     DateOfExam DATE,
    ->     CreditObtained INT,
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.04 sec)



 ● FeedbackID (Primary Key) ● StudentID (Foreign key) ● Date ● InstructorName ● Feedback

mysql> CREATE TABLE Feedback (
    ->     FeedbackID INT AUTO_INCREMENT PRIMARY KEY,
    ->     StudentID INT,
    ->     Date DATE,
    ->     InstructorName VARCHAR(100),
    ->     Feedback TEXT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.06 sec)


""""Insert 5 records in each table and retrieve data from all tables and display""""


mysql> INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, Email, Phone)
    -> VALUES
    -> ('Johny', 'Doe', '2000-05-15', 'Male', 'john.doe@example.com', '1234567890'),
    -> ('Asmi', 'Smith', '1999-08-20', 'Female', 'jane.smith@example.com', '0987654321'),
    -> ('Jahan', 'Brown', '1998-12-25', 'Male', 'jim.brown@example.com', '1122334455'),
    -> ('Pooja', 'Davis', '2001-03-10', 'Female', 'emily.davis@example.com', '6677889900'),
    -> ('Michael', 'Sharma', '2000-09-30', 'Male', 'michael.wilson@example.com', '5566778899');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Course (CourseTitle, Credits)
    -> VALUES
    -> ('Introduction to Computer Science', 3),
    -> ('Data Structures', 4),
    -> ('Algorithms', 3),
    -> ('Database Systems', 3),
    -> ('Web Development', 3);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Instructor (FirstName, LastName, Email)
    -> VALUES
    -> ('Alice', 'Johnson', 'alice.johnson@example.com'),
    -> ('Bob', 'Martinez', 'bob.martinez@example.com'),
    -> ('Charlie', 'Taylor', 'charlie.taylor@example.com'),
    -> ('Diana', 'White', 'diana.white@example.com'),
    -> ('Eve', 'Clark', 'eve.clark@example.com');
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Enrollment (EnrollmentDate, StudentID, CourseID, InstructorID)
    -> VALUES
    -> ('2025-01-10', 1, 1, 1),
    -> ('2025-01-15', 2, 2, 2),
    -> ('2025-01-20', 3, 3, 3),
    -> ('2025-01-25', 4, 4, 4),
    -> ('2025-02-01', 5, 5, 5);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Score (CourseID, StudentID, DateOfExam, CreditObtained)
    -> VALUES
    -> (1, 1, '2025-06-15', 3),
    -> (2, 2, '2025-06-16', 4),
    -> (3, 3, '2025-06-17', 3),
    -> (4, 4, '2025-06-18', 3),
    -> (5, 5, '2025-06-19', 3);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Feedback (StudentID, Date, InstructorName, Feedback)
    -> VALUES
    -> (1, '2025-06-20', 'Alice Johnson', 'Great course, very informative.'),
    -> (2, '2025-06-21', 'Bob Martinez', 'The course content was challenging but rewarding.'),
    -> (3, '2025-06-22', 'Charlie Taylor', 'Clear explanations, would recommend.'),
    -> (4, '2025-06-23', 'Diana White', 'Good course structure and engaging instructor.'),
    -> (5, '2025-06-24', 'Eve Clark', 'Well-organized course, learned a lot.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+-----------+-----------+----------+-------------+--------+----------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                      | Phone      |
+-----------+-----------+----------+-------------+--------+----------------------------+------------+
|         1 | Johny     | Doe      | 2000-05-15  | Male   | john.doe@example.com       | 1234567890 |
|         2 | Asmi      | Smith    | 1999-08-20  | Female | jane.smith@example.com     | 0987654321 |
|         3 | Jahan     | Brown    | 1998-12-25  | Male   | jim.brown@example.com      | 1122334455 |
|         4 | Pooja     | Davis    | 2001-03-10  | Female | emily.davis@example.com    | 6677889900 |
|         5 | Michael   | Sharma   | 2000-09-30  | Male   | michael.wilson@example.com | 5566778899 |
+-----------+-----------+----------+-------------+--------+----------------------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Course;
+----------+----------------------------------+---------+
| CourseID | CourseTitle                      | Credits |
+----------+----------------------------------+---------+
|        1 | Introduction to Computer Science |       3 |
|        2 | Data Structures                  |       4 |
|        3 | Algorithms                       |       3 |
|        4 | Database Systems                 |       3 |
|        5 | Web Development                  |       3 |
+----------+----------------------------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Instructor;
+--------------+-----------+----------+----------------------------+
| InstructorID | FirstName | LastName | Email                      |
+--------------+-----------+----------+----------------------------+
|            1 | Alice     | Johnson  | alice.johnson@example.com  |
|            2 | Bob       | Martinez | bob.martinez@example.com   |
|            3 | Charlie   | Taylor   | charlie.taylor@example.com |
|            4 | Diana     | White    | diana.white@example.com    |
|            5 | Eve       | Clark    | eve.clark@example.com      |
+--------------+-----------+----------+----------------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
|            1 | 2025-01-10     |         1 |        1 |            1 |
|            2 | 2025-01-15     |         2 |        2 |            2 |
|            3 | 2025-01-20     |         3 |        3 |            3 |
|            4 | 2025-01-25     |         4 |        4 |            4 |
|            5 | 2025-02-01     |         5 |        5 |            5 |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
|       1 |        1 |         1 | 2025-06-15 |              3 |
|       2 |        2 |         2 | 2025-06-16 |              4 |
|       3 |        3 |         3 | 2025-06-17 |              3 |
|       4 |        4 |         4 | 2025-06-18 |              3 |
|       5 |        5 |         5 | 2025-06-19 |              3 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+----------------+---------------------------------------------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback                                          |
+------------+-----------+------------+----------------+---------------------------------------------------+
|          1 |         1 | 2025-06-20 | Alice Johnson  | Great course, very informative.                   |
|          2 |         2 | 2025-06-21 | Bob Martinez   | The course content was challenging but rewarding. |
|          3 |         3 | 2025-06-22 | Charlie Taylor | Clear explanations, would recommend.              |
|          4 |         4 | 2025-06-23 | Diana White    | Good course structure and engaging instructor.    |
|          5 |         5 | 2025-06-24 | Eve Clark      | Well-organized course, learned a lot.             |
+------------+-----------+------------+----------------+---------------------------------------------------+
5 rows in set (0.00 sec)