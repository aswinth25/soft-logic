
CREATE DATABASE IF NOT EXISTS Day47_Assignment;
USE Day47_Assignment;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Aswinth', 'aswinth@gmail.com', 'Nagercoil'),
(2, 'Arun', 'arun@gmail.com', 'Chennai'),
(3, 'Priya', 'priya@gmail.com', 'Bangalore'),
(4, 'Kumar', 'kumar@gmail.com', 'Mumbai'),
(5, 'Ravi', 'ravi@gmail.com', 'Trivandrum');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT
);

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 50000, 10),
(102, 'Mobile', 'Electronics', 20000, 15),
(103, 'Keyboard', 'Accessories', 1500, 20),
(104, 'Mouse', 'Accessories', 800, 25),
(105, 'Monitor', 'Electronics', 12000, 8);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_price DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders VALUES
(1, 1, 101, 50000, '2026-01-10'),
(2, 2, 102, 20000, '2026-01-15'),
(3, 3, 103, 1500, '2026-02-05'),
(4, 4, 101, 50000, '2026-02-10'),
(5, 5, 104, 800, '2026-03-01'),
(6, 1, 105, 12000, '2026-03-05'),
(7, 2, 102, 20000, '2026-03-10'),
(8, 3, 103, 1500, '2026-03-15');


CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);

INSERT INTO Employee VALUES
(1, 'Aswinth', 'IT', 30000, 'Nagercoil'),
(2, 'Arun', 'HR', 25000, 'Chennai'),
(3, 'Priya', 'IT', 40000, 'Bangalore'),
(4, 'Kumar', 'Finance', 35000, 'Mumbai'),
(5, 'Ravi', 'Testing', 28000, 'Trivandrum');


CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO Student VALUES
(1, 'Aswinth', 'Python', 85, 'Nagercoil'),
(2, 'Arun', 'Java', 78, 'Chennai'),
(3, 'Priya', 'Python', 92, 'Bangalore'),
(4, 'Kumar', 'SQL', 88, 'Mumbai'),
(5, 'Ravi', 'Java', 75, 'Trivandrum');


SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM Employee;
SELECT * FROM Student;


SELECT COUNT(*) AS Total_Orders
FROM orders;


SELECT SUM(order_price) AS Total_Order_Prices
FROM orders;


SELECT AVG(order_price) AS Average_Order_Price
FROM orders;


SELECT p.product_name, SUM(o.order_price) AS Total_Sales
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.product_name;


SELECT MAX(order_price) AS Maximum_Price,
MIN(order_price) AS Minimum_Price
FROM orders;


SELECT p.product_name, SUM(o.order_price) AS Total_Sales
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY Total_Sales DESC;


CREATE TABLE events (
    id INT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATE
);


INSERT INTO events VALUES
(1, 'Python Workshop', '2026-01-15'),
(2, 'SQL Training', '2026-02-20'),
(3, 'Web Development', '2026-03-10'),
(4, 'Java Seminar', '2026-04-25'),
(5, 'AI Workshop', '2026-05-30');


SELECT * FROM events;


SELECT NOW() AS Current_Date_And_Time;


SELECT event_name,
DATE_FORMAT(event_date, '%d-%m-%Y') AS Formatted_Date
FROM events;


SELECT event_name,
YEAR(event_date) AS Event_Year,
MONTH(event_date) AS Event_Month
FROM events;


SELECT CONCAT(event_name, ' - ', event_date) AS Event_Details
FROM events;
