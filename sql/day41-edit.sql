create database JoinsTest;

use JoinsTest;



CREATE TABLE customers (customer_id INT PRIMARY KEY,name VARCHAR(100),city VARCHAR(100));

CREATE TABLE products (product_id INT PRIMARY KEY,product_name VARCHAR(100),price DECIMAL(10,2));

CREATE TABLE orders (order_id INT PRIMARY KEY,customer_id INT,product_id INT,quantity INT,order_date DATE,

FOREIGN KEY (customer_id) REFERENCES customers(customer_id),FOREIGN KEY (product_id) REFERENCES products(product_id));


INSERT INTO customers VALUES (1, 'Anto', 'Delhi'),(2, 'Sara', 'Mumbai'),(3, 'John', 'Chennai'),(4, 'Jesy', 'Bangalore');

INSERT INTO products VALUES(101, 'Laptop', 50000),(102, 'Phone', 20000),(103, 'Tablet', 30000),(104, 'Monitor', 6000);

INSERT INTO orders VALUES(1001, 1, 101, 1, '2024-01-10'),(1002, 1, 102, 2, '2024-01-15'),(1003, 2, 103, 1, '2024-02-01'),(1004, 3, 102, 3, '2024-02-10');

select * from customers;

select * from products;

select * from orders;

