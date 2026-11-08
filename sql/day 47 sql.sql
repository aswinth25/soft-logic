
CREATE DATABASE Day45_Assignment;
USE Day45_Assignment;


-- 1. CREATE EMPLOYEE TABLE

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);


-- 2. CREATE CUSTOMER TABLE

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50)
);


-- 3. CREATE STUDENT TABLE

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT
);


-- 4. CREATE STAFF TABLE

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    experience INT
);


-- 5. CREATE PRODUCT TABLE

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT
);


-- DDL OPERATIONS

ALTER TABLE Employee ADD email VARCHAR(100);

ALTER TABLE Customer ADD age INT;

ALTER TABLE Student ADD city VARCHAR(50);

ALTER TABLE Staff ADD phone VARCHAR(15);

ALTER TABLE Product ADD brand VARCHAR(50);

ALTER TABLE Employee RENAME COLUMN city TO location;

ALTER TABLE Product MODIFY product_name VARCHAR(100);

RENAME TABLE Staff TO Staff_Details;
-- EMPLOYEE

INSERT INTO Employee VALUES
(1,'Arun','IT',35000,'Chennai','arun@gmail.com'),
(2,'Kumar','HR',30000,'Nagercoil','kumar@gmail.com'),
(3,'Ravi','Sales',28000,'Madurai','ravi@gmail.com');

UPDATE Employee
SET salary = 40000
WHERE emp_id = 1;

DELETE FROM Employee
WHERE emp_id = 3;


-- CUSTOMER

INSERT INTO Customer VALUES
(1,'Ajay','ajay@gmail.com','9876543210','Chennai',25),
(2,'Bala','bala@gmail.com','9876543211','Madurai',28),
(3,'David','david@gmail.com','9876543212','Nagercoil',30);

UPDATE Customer
SET city = 'Trivandrum'
WHERE customer_id = 2;

DELETE FROM Customer
WHERE customer_id = 3;


-- STUDENT

INSERT INTO Student VALUES
(1,'Anu',21,'Python',85,'Chennai'),
(2,'Vijay',22,'Java',90,'Madurai'),
(3,'Raja',20,'React',75,'Nagercoil');

UPDATE Student
SET marks = 95
WHERE student_id = 1;

DELETE FROM Student
WHERE student_id = 3;


-- STAFF

INSERT INTO Staff_Details VALUES
(1,'Suresh','Manager',45000,5,'9876500001'),
(2,'Manoj','Developer',35000,3,'9876500002'),
(3,'Priya','Tester',30000,2,'9876500003');

UPDATE Staff_Details
SET salary = 50000
WHERE staff_id = 1;

DELETE FROM Staff_Details
WHERE staff_id = 3;


-- PRODUCT

INSERT INTO Product VALUES
(1,'Laptop','Electronics',55000,10,'Dell'),
(2,'Mobile','Electronics',25000,20,'Samsung'),
(3,'Headphones','Accessories',2000,30,'Sony');

UPDATE Product
SET price = 30000
WHERE product_id = 2;

DELETE FROM Product
WHERE product_id = 3;


-- DISPLAY ALL TABLES

SELECT * FROM Employee;
SELECT * FROM Customer;
SELECT * FROM Student;
SELECT * FROM Staff_Details;
SELECT * FROM Product;