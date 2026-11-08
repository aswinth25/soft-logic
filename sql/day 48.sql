
-- 1. CREATE DATABASE

CREATE DATABASE Day46_Assignment;
USE Day46_Assignment;


-- 2. CREATE TABLES

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    age INT
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    experience INT
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT
);


-- 3. INSERT DATA

INSERT INTO Employee VALUES
(1,'Arun','IT',35000,'Chennai'),
(2,'Kumar','HR',30000,'Nagercoil'),
(3,'Ravi','Sales',28000,'Madurai'),
(4,'Ajay','IT',45000,'Chennai'),
(5,'Mano','HR',25000,'Trivandrum');

INSERT INTO Customer VALUES
(1,'Anto','anto@gmail.com','9876543210',25),
(2,'Sara','sara@gmail.com','9876543211',28),
(3,'David','david@gmail.com','9876543212',30),
(4,'Bala',NULL,'9876543213',22),
(5,'John','john@gmail.com',NULL,35);

INSERT INTO Student VALUES
(1,'Anu',21,'Python',85),
(2,'Vijay',22,'Java',90),
(3,'Raja',20,'React',75),
(4,'Priya',23,'Python',95),
(5,'Kavin',21,'Java',65);

INSERT INTO Staff VALUES
(1,'Suresh','Manager',45000,5),
(2,'Manoj','Developer',35000,3),
(3,'Priya','Tester',30000,2),
(4,'Arun','Developer',40000,4),
(5,'Kumar','Manager',50000,6);

INSERT INTO Product VALUES
(1,'Laptop','Electronics',55000,10),
(2,'Mobile','Electronics',25000,20),
(3,'Headphones','Accessories',2000,30),
(4,'Keyboard','Accessories',1500,15),
(5,'Monitor','Electronics',12000,8);


-- 4. EMPLOYEE OPERATORS

SELECT emp_name, salary, salary + 5000 AS new_salary FROM Employee;
SELECT emp_name, salary, salary - 5000 AS reduced_salary FROM Employee;
SELECT emp_name, salary, salary * 2 AS double_salary FROM Employee;
SELECT emp_name, salary / 2 AS half_salary FROM Employee;

SELECT * FROM Employee WHERE salary > 30000;
SELECT * FROM Employee WHERE salary < 35000;
SELECT * FROM Employee WHERE salary = 35000;
SELECT * FROM Employee WHERE salary >= 35000;
SELECT * FROM Employee WHERE salary <= 30000;
SELECT * FROM Employee WHERE salary <> 30000;

SELECT * FROM Employee WHERE salary > 30000 AND department = 'IT';
SELECT * FROM Employee WHERE department = 'IT' OR department = 'HR';
SELECT * FROM Employee WHERE NOT department = 'HR';

SELECT * FROM Employee WHERE salary BETWEEN 25000 AND 45000;
SELECT * FROM Employee WHERE department IN ('IT','HR');
SELECT * FROM Employee WHERE emp_name LIKE 'A%';
SELECT * FROM Employee WHERE city IS NULL;


-- 5. CUSTOMER OPERATORS

SELECT * FROM Customer WHERE age > 25;
SELECT * FROM Customer WHERE age < 30;
SELECT * FROM Customer WHERE age = 25;
SELECT * FROM Customer WHERE age >= 25;
SELECT * FROM Customer WHERE age <= 30;
SELECT * FROM Customer WHERE age <> 25;

SELECT * FROM Customer WHERE age > 20 AND age < 30;
SELECT * FROM Customer WHERE age = 25 OR age = 30;
SELECT * FROM Customer WHERE NOT age = 25;

SELECT * FROM Customer WHERE age BETWEEN 20 AND 30;
SELECT * FROM Customer WHERE customer_name IN ('Anto','Sara');
SELECT * FROM Customer WHERE customer_name LIKE 'A%';
SELECT * FROM Customer WHERE email IS NULL;


-- 6. STUDENT OPERATORS

SELECT student_name, marks, marks + 5 AS new_marks FROM Student;
SELECT student_name, marks, marks - 5 AS reduced_marks FROM Student;
SELECT student_name, marks, marks * 2 AS total_marks FROM Student;
SELECT student_name, marks / 2 AS half_marks FROM Student;

SELECT * FROM Student WHERE marks > 80;
SELECT * FROM Student WHERE marks < 80;
SELECT * FROM Student WHERE marks = 90;
SELECT * FROM Student WHERE marks >= 85;
SELECT * FROM Student WHERE marks <= 75;
SELECT * FROM Student WHERE marks <> 75;

SELECT * FROM Student WHERE marks > 80 AND age > 20;
SELECT * FROM Student WHERE course = 'Java' OR course = 'Python';
SELECT * FROM Student WHERE NOT course = 'React';

SELECT * FROM Student WHERE marks BETWEEN 70 AND 95;
SELECT * FROM Student WHERE course IN ('Java','Python');
SELECT * FROM Student WHERE student_name LIKE 'A%';
SELECT * FROM Student WHERE course IS NULL;


-- 7. STAFF OPERATORS

SELECT staff_name, salary, salary + 5000 AS new_salary FROM Staff;
SELECT staff_name, salary, salary - 5000 AS reduced_salary FROM Staff;

SELECT * FROM Staff WHERE salary > 35000;
SELECT * FROM Staff WHERE salary < 40000;
SELECT * FROM Staff WHERE salary = 45000;
SELECT * FROM Staff WHERE salary >= 35000;
SELECT * FROM Staff WHERE salary <= 40000;
SELECT * FROM Staff WHERE salary <> 30000;

SELECT * FROM Staff WHERE salary > 30000 AND experience >= 3;
SELECT * FROM Staff WHERE designation = 'Manager' OR designation = 'Developer';
SELECT * FROM Staff WHERE NOT designation = 'Tester';

SELECT * FROM Staff WHERE salary BETWEEN 30000 AND 50000;
SELECT * FROM Staff WHERE designation IN ('Manager','Developer');
SELECT * FROM Staff WHERE staff_name LIKE 'S%';
SELECT * FROM Staff WHERE designation IS NULL;


-- 8. PRODUCT OPERATORS

SELECT product_name, price, price + 1000 AS new_price FROM Product;
SELECT product_name, price, price - 500 AS reduced_price FROM Product;
SELECT product_name, price, price * quantity AS total_value FROM Product;
SELECT product_name, price / 2 AS half_price FROM Product;

SELECT * FROM Product WHERE price > 2000;
SELECT * FROM Product WHERE price < 25000;
SELECT * FROM Product WHERE price = 25000;
SELECT * FROM Product WHERE price >= 12000;
SELECT * FROM Product WHERE price <= 2000;
SELECT * FROM Product WHERE price <> 2000;

SELECT * FROM Product WHERE price > 1000 AND quantity > 10;
SELECT * FROM Product WHERE category = 'Electronics' OR category = 'Accessories';
SELECT * FROM Product WHERE NOT category = 'Electronics';

SELECT * FROM Product WHERE price BETWEEN 1000 AND 30000;
SELECT * FROM Product WHERE category IN ('Electronics','Accessories');
SELECT * FROM Product WHERE product_name LIKE 'L%';
SELECT * FROM Product WHERE category IS NULL;


-- 9. BUILT-IN FUNCTIONS - EMPLOYEE

SELECT UPPER(emp_name) FROM Employee;
SELECT LOWER(department) FROM Employee;
SELECT LENGTH(emp_name) FROM Employee;
SELECT CONCAT(emp_name,'-',department) FROM Employee;
SELECT COUNT(*) FROM Employee;
SELECT SUM(salary) FROM Employee;
SELECT AVG(salary) FROM Employee;
SELECT MAX(salary) FROM Employee;
SELECT MIN(salary) FROM Employee;
SELECT ROUND(AVG(salary),2) FROM Employee;


-- 10. BUILT-IN FUNCTIONS - CUSTOMER

SELECT UPPER(customer_name) FROM Customer;
SELECT LOWER(customer_name) FROM Customer;
SELECT LENGTH(customer_name) FROM Customer;
SELECT CONCAT(customer_name,'-',age) FROM Customer;
SELECT COUNT(*) FROM Customer;
SELECT MAX(age) FROM Customer;
SELECT MIN(age) FROM Customer;
SELECT SUM(age) FROM Customer;
SELECT AVG(age) FROM Customer;


-- 11. BUILT-IN FUNCTIONS - STUDENT

SELECT UPPER(student_name) FROM Student;
SELECT LOWER(course) FROM Student;
SELECT LENGTH(student_name) FROM Student;
SELECT CONCAT(student_name,'-',course) FROM Student;
SELECT COUNT(*) FROM Student;
SELECT SUM(marks) FROM Student;
SELECT AVG(marks) FROM Student;
SELECT MAX(marks) FROM Student;
SELECT MIN(marks) FROM Student;
SELECT ROUND(AVG(marks),2) FROM Student;


-- 12. BUILT-IN FUNCTIONS - STAFF

SELECT UPPER(staff_name) FROM Staff;
SELECT LOWER(designation) FROM Staff;
SELECT LENGTH(staff_name) FROM Staff;
SELECT CONCAT(staff_name,'-',designation) FROM Staff;
SELECT COUNT(*) FROM Staff;
SELECT SUM(salary) FROM Staff;
SELECT AVG(salary) FROM Staff;
SELECT MAX(salary) FROM Staff;
SELECT MIN(salary) FROM Staff;


-- 13. BUILT-IN FUNCTIONS - PRODUCT

SELECT UPPER(product_name) FROM Product;
SELECT LOWER(category) FROM Product;
SELECT LENGTH(product_name) FROM Product;
SELECT CONCAT(product_name,'-',category) FROM Product;
SELECT COUNT(*) FROM Product;
SELECT SUM(price) FROM Product;
SELECT AVG(price) FROM Product;
SELECT MAX(price) FROM Product;
SELECT MIN(price) FROM Product;
SELECT ROUND(AVG(price),2) FROM Product;


-- 14. ADDITIONAL BUILT-IN FUNCTIONS

-- NUMERIC FUNCTIONS

SELECT ABS(-100);
SELECT CEIL(25.4);
SELECT FLOOR(25.9);
SELECT ROUND(25.678,2);
SELECT MOD(10,3);

-- STRING FUNCTIONS

SELECT UPPER('hello');
SELECT LOWER('MYSQL');
SELECT LENGTH('Database');
SELECT REVERSE('MYSQL');
SELECT TRIM('  Hello  ');
SELECT CONCAT('Hello',' ','World');

-- DATE FUNCTIONS

SELECT CURDATE();
SELECT NOW();
SELECT YEAR(CURDATE());
SELECT MONTH(CURDATE());
SELECT DAY(CURDATE());

-- CONDITIONAL FUNCTIONS

SELECT IF(100 > 50,'Greater','Smaller');
SELECT IFNULL(NULL,'No Value');
SELECT COALESCE(NULL,NULL,'Available');


-- 15. DISPLAY ALL TABLES

SELECT * FROM Employee;
SELECT * FROM Customer;
SELECT * FROM Student;
SELECT * FROM Staff;
SELECT * FROM Product;
