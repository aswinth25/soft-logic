
CREATE DATABASE IF NOT EXISTS Day48_Assignment;
USE Day48_Assignment;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(50) DEFAULT 'Chennai'
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    salary DECIMAL(10,2) CHECK (salary > 0),
    city VARCHAR(50) DEFAULT 'Nagercoil',
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    course VARCHAR(50) DEFAULT 'Python',
    marks INT CHECK (marks BETWEEN 0 AND 100)
);

INSERT INTO Departments (dept_name, location) VALUES
('IT', 'Chennai'),
('HR', 'Bangalore'),
('Finance', 'Mumbai'),
('Testing', 'Trivandrum');

INSERT INTO Employees
(emp_name, email, age, salary, city, dept_id)
VALUES
('Aswinth', 'aswinth@gmail.com', 22, 30000, 'Nagercoil', 1),
('Arun', 'arun@gmail.com', 25, 40000, 'Chennai', 1),
('Priya', 'priya@gmail.com', 24, 35000, 'Bangalore', 2),
('Kumar', 'kumar@gmail.com', 28, 50000, 'Mumbai', 3),
('Ravi', 'ravi@gmail.com', 26, 45000, 'Trivandrum', 4);

INSERT INTO Students
(student_name, email, age, course, marks)
VALUES
('Aswinth', 'aswinth.student@gmail.com', 22, 'Python', 85),
('Arun', 'arun.student@gmail.com', 23, 'Java', 78),
('Priya', 'priya.student@gmail.com', 21, 'SQL', 92),
('Kumar', 'kumar.student@gmail.com', 24, 'Python', 88),
('Ravi', 'ravi.student@gmail.com', 22, 'Java', 75);

SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Students;

-- PRIMARY KEY

SELECT dept_id, dept_name
FROM Departments;

SELECT emp_id, emp_name
FROM Employees;

SELECT student_id, student_name
FROM Students;

-- NOT NULL

INSERT INTO Departments (dept_name)
VALUES ('Marketing');

INSERT INTO Employees (emp_name, email, age, salary, dept_id)
VALUES ('Suresh', 'suresh@gmail.com', 25, 32000, 2);

INSERT INTO Students (student_name, email, age, marks)
VALUES ('Manoj', 'manoj@gmail.com', 22, 80);

-- UNIQUE

INSERT INTO Departments (dept_name)
VALUES ('Support');

-- DEFAULT

INSERT INTO Departments (dept_name)
VALUES ('Development');

INSERT INTO Employees (emp_name, email, age, salary, dept_id)
VALUES ('Vijay', 'vijay@gmail.com', 23, 28000, 1);

INSERT INTO Students (student_name, email, age, marks)
VALUES ('Ajay', 'ajay@gmail.com', 21, 90);

-- CHECK

INSERT INTO Employees
(emp_name, email, age, salary, dept_id)
VALUES ('TestUser', 'test@gmail.com', 20, 25000, 1);

INSERT INTO Students
(student_name, email, age, course, marks)
VALUES ('TestStudent', 'teststudent@gmail.com', 20, 'Java', 95);

-- FOREIGN KEY

INSERT INTO Employees
(emp_name, email, age, salary, dept_id)
VALUES ('Rahul', 'rahul@gmail.com', 25, 35000, 2);

-- DISPLAY ALL TABLES

SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Students;

-- FOREIGN KEY JOIN

SELECT e.emp_name, d.dept_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;

-- AUTO_INCREMENT

INSERT INTO Departments (dept_name)
VALUES ('Operations');

SELECT * FROM Departments;
