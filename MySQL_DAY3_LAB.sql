mysql> create database employee_detail;
Query OK, 1 row affected (0.01 sec)

mysql> use employee_detail;
Database changed
mysql> CREATE TABLE Employee (
    ->     emp_id INT PRIMARY KEY,
    ->     first_name VARCHAR(50),
    ->     last_name VARCHAR(50),
    ->     age INT,
    ->     email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO Employee (emp_id, first_name, last_name, age, email)
    -> VALUES (1, 'John', 'Doe', 28, 'john.doe@example.com');
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> INSERT INTO Employee (emp_id, first_name, last_name, age, email)
    -> VALUES (2, 'Jane', 'Smith', 35, 'jane.smith@example.com');
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> INSERT INTO Employee (emp_id, first_name, last_name, age, email)
    -> VALUES (3, 'Emily', 'Johnson', 40, 'emily.johnson@example.com');
Query OK, 1 row affected (0.00 sec)

    -> FROM Employee;ame, last_name
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| John       | Doe       |
| Jane       | Smith     |
| Emily      | Johnson   |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, age
    -> FROM Employee
    -> WHERE age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Jane       | Smith     |   35 |
| Emily      | Johnson   |   40 |
+------------+-----------+------+
2 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, age
    -> FROM Employee
    -> WHERE age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Jane       | Smith     |   35 |
| Emily      | Johnson   |   40 |
+------------+-----------+------+
2 rows in set (0.00 sec)

mysql> SELECT first_name, last_name
    -> FROM Employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| John       | Doe       |
| Jane       | Smith     |
| Emily      | Johnson   |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> UPDATE Employee
    -> SET age = age + 1
    -> WHERE age > 25;
Query OK, 3 rows affected (0.01 sec)
Rows matched: 3  Changed: 3  Warnings: 0