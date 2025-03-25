mysql>  use studentmanagementsystem;
Database changed
mysql>  show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| course                            |
| enrollment                        |
| feedback                          |
| instructor                        |
| score                             |
| student                           |
+-----------------------------------+
6 rows in set (0.00 sec)

mysql>  select * from student;
+-----------+-----------+----------+-------------+--------+----------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                      | Phone      |
+-----------+-----------+----------+-------------+--------+----------------------------+------------+
|         1 | John      | Doe      | 2000-05-15  | Male   | john.doe@example.com       | 1234567890 |
|         2 | Jane      | Smith    | 1999-08-20  | Female | jane.smith@example.com     | 0987654321 |
|         3 | Jim       | Brown    | 1998-12-25  | Male   | jim.brown@example.com      | 1122334455 |
|         4 | Emily     | Davis    | 2001-03-10  | Female | emily.davis@example.com    | 6677889900 |
|         5 | Michael   | Wilson   | 2000-09-30  | Male   | michael.wilson@example.com | 5566778899 |
+-----------+-----------+----------+-------------+--------+----------------------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT *
    ->     -> FROM student
    -> ORDER BY LastName ASC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> FROM student
ORDER BY LastName ASC' at line 2
mysql> select * from student order by LastName ASC;
+-----------+-----------+----------+-------------+--------+----------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                      | Phone      |
+-----------+-----------+----------+-------------+--------+----------------------------+------------+
|         3 | Jim       | Brown    | 1998-12-25  | Male   | jim.brown@example.com      | 1122334455 |
|         4 | Emily     | Davis    | 2001-03-10  | Female | emily.davis@example.com    | 6677889900 |
|         1 | John      | Doe      | 2000-05-15  | Male   | john.doe@example.com       | 1234567890 |
|         2 | Jane      | Smith    | 1999-08-20  | Female | jane.smith@example.com     | 0987654321 |
|         5 | Michael   | Wilson   | 2000-09-30  | Male   | michael.wilson@example.com | 5566778899 |
+-----------+-----------+----------+-------------+--------+----------------------------+------------+
5 rows in set (0.00 sec)
mysql> SELECT gender, COUNT(*) AS student_count
    -> FROM student
    -> GROUP BY gender;
+--------+---------------+
| gender | student_count |
+--------+---------------+
| Male   |             3 |
| Female |             2 |
+--------+---------------+
2 rows in set (0.00 sec)