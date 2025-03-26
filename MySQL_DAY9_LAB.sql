mysql> USE company;
Database changed
mysql> CREATE TABLE departments (
    ->     department_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     department_name VARCHAR(255) NOT NULL
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> CREATE TABLE employees (
    ->     employee_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     employee_name VARCHAR(255) NOT NULL,
    ->     department_id INT,
    ->     FOREIGN KEY (department_id) REFERENCES departments(department_id)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> INSERT INTO departments (department_name) VALUES
    -> ('HR'),
    -> ('Engineering'),
    -> ('Sales'),
    -> ('Marketing');
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> INSERT INTO employees (employee_name, department_id) VALUES
    -> ('John Doe', 1), -- John is in HR
    -> ('Jane Smith', 2), -- Jane is in Engineering
    -> ('Tom Brown', 2), -- Tom is in Engineering
    -> ('Lucy Gray', 3), -- Lucy is in Sales
    -> ('Mark White', NULL); -- Mark has no department (NULL)
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0
mysql> show tables;
+-------------------+
| Tables_in_company |
+-------------------+
| departments       |
| employees         |
+-------------------+
2 rows in set (0.00 sec)

mysql> SELECT e.employee_name, d.department_name
    -> FROM employees e
    -> INNER JOIN departments d ON e.department_id = d.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| John Doe      | HR              |
| Jane Smith    | Engineering     |
| Tom Brown     | Engineering     |
| Lucy Gray     | Sales           |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> SELECT e.employee_name, d.department_name
    -> FROM employees e
    -> LEFT JOIN departments d ON e.department_id = d.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| John Doe      | HR              |
| Jane Smith    | Engineering     |
| Tom Brown     | Engineering     |
| Lucy Gray     | Sales           |
| Mark White    | NULL            |
+---------------+-----------------+
5 rows in set (0.00 sec)