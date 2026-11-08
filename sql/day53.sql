
CREATE DATABASE IF NOT EXISTS Day50_Assignment;
USE Day50_Assignment;

DROP TABLE IF EXISTS Employee_Projects;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    job_title VARCHAR(50),
    manager_id INT,
    hire_date DATE,
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    budget DECIMAL(12,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Employee_Projects (
    emp_id INT,
    project_id INT,
    hours_worked INT,
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

INSERT INTO Departments VALUES
(10, 'HR', 'New York'),
(20, 'Engineering', 'San Francisco'),
(30, 'Marketing', 'London'),
(40, 'Sales', 'Chicago'),
(50, 'Legal', 'Toronto');

INSERT INTO Employees VALUES
(101, 'Alice Smith', 'HR Manager', NULL, '2020-01-15', 95000, 10),
(102, 'Bob Jones', 'Software Engineer', 105, '2021-03-22', 105000, 20),
(103, 'Charlie Brown', 'QA Engineer', 105, '2022-06-01', 70000, 20),
(104, 'David Miller', 'Marketing Specialist', 106, '2023-02-10', 65000, 30),
(105, 'Emma Davis', 'Engineering Director', NULL, '2019-05-12', 150000, 20),
(106, 'Frank Wilson', 'Marketing Director', NULL, '2018-11-20', 140000, 30),
(107, 'Grace Lee', 'Sales Rep', 108, '2024-01-05', 55000, 40),
(108, 'Henry Clark', 'Sales Manager', NULL, '2017-03-15', 115000, 40),
(109, 'Ivy Taylor', 'Software Engineer', 105, '2025-08-19', 98000, 20);

INSERT INTO Projects VALUES
(501, 'Apollo Project', 250000, 20),
(502, 'Zeus Initiative', 120000, 20),
(503, 'Global Branding', 85000, 30),
(504, 'CRM Migration', 150000, 40),
(505, 'Talent Acquisition', 30000, 10);

INSERT INTO Employee_Projects VALUES
(102, 501, 120),
(102, 502, 80),
(103, 501, 150),
(104, 503, 200),
(105, 501, 40),
(107, 504, 180),
(108, 504, 50),
(109, 502, 100);

SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Projects;
SELECT * FROM Employee_Projects;

SELECT *
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

SELECT *
FROM Employees
WHERE dept_id = (
    SELECT dept_id
    FROM Departments
    WHERE dept_name = 'Engineering'
);

SELECT emp_name
FROM Employees
WHERE emp_id IN (
    SELECT emp_id FROM Employee_Projects
);

SELECT emp_name
FROM Employees
WHERE emp_id NOT IN (
    SELECT emp_id FROM Employee_Projects
);

SELECT *
FROM Projects
WHERE budget = (
    SELECT MAX(budget) FROM Projects
);

SELECT d.dept_name, AVG(p.budget) AS Average_Project_Budget
FROM Departments d
JOIN Projects p ON d.dept_id = p.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING AVG(p.budget) > (
    SELECT AVG(budget) FROM Projects
);

SELECT *
FROM Employees
WHERE salary > (
    SELECT MAX(e.salary)
    FROM Employees e
    JOIN Departments d ON e.dept_id = d.dept_id
    WHERE d.dept_name = 'Marketing'
);

SELECT e.emp_name, e.salary, d.dept_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM Employees e2
    WHERE e2.dept_id = e.dept_id
);

SELECT d.dept_name
FROM Departments d
WHERE EXISTS (
    SELECT 1
    FROM Employees e
    WHERE e.dept_id = d.dept_id
);

SELECT d.dept_name
FROM Departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM Projects p
    WHERE p.dept_id = d.dept_id
);

SELECT emp_name,
(SELECT SUM(salary) FROM Employees) AS Total_Company_Payroll
FROM Employees;

SELECT *
FROM Employees
WHERE hire_date = (
    SELECT MIN(hire_date) FROM Employees
);

SELECT DISTINCT salary
FROM Employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

SELECT *
FROM Projects
WHERE budget > (
    SELECT SUM(p.budget)
    FROM Projects p
    JOIN Departments d ON p.dept_id = d.dept_id
    WHERE d.dept_name = 'Sales'
);

SELECT e.emp_name, m.emp_name AS Manager_Name
FROM Employees e
JOIN Employees m ON e.manager_id = m.emp_id
WHERE e.dept_id <> m.dept_id;

SELECT d.dept_name, COUNT(e.emp_id) AS Employee_Count
FROM Departments d
LEFT JOIN Employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(e.emp_id) = (
    SELECT MAX(employee_count)
    FROM (
        SELECT COUNT(*) AS employee_count
        FROM Employees
        GROUP BY dept_id
    ) AS Department_Counts
);

SELECT DISTINCT e.emp_name, p.project_name
FROM Employees e
JOIN Employee_Projects ep ON e.emp_id = ep.emp_id
JOIN Projects p ON ep.project_id = p.project_id
WHERE p.project_id IN (
    SELECT project_id
    FROM Employee_Projects
    GROUP BY project_id
    HAVING SUM(hours_worked) = (
        SELECT MAX(total_hours)
        FROM (
            SELECT SUM(hours_worked) AS total_hours
            FROM Employee_Projects
            GROUP BY project_id
        ) AS Project_Hours
    )
);

SELECT *
FROM Departments
WHERE location IN (
    SELECT location
    FROM Departments
    WHERE location LIKE 'New%'
       OR location LIKE 'San%'
);

SELECT *
FROM Employees
WHERE salary > ANY (
    SELECT salary
    FROM Employees
    WHERE YEAR(hire_date) = 2024
);

SELECT m.emp_id, m.emp_name, COUNT(e.emp_id) AS Team_Size
FROM Employees m
JOIN Employees e ON m.emp_id = e.manager_id
GROUP BY m.emp_id, m.emp_name
HAVING COUNT(e.emp_id) >= 2;

SELECT project_name, budget
FROM Projects
WHERE budget < (
    SELECT AVG(budget) FROM Projects
);

SELECT e.emp_name, p.project_name
FROM Employees e
JOIN Employee_Projects ep ON e.emp_id = ep.emp_id
JOIN Projects p ON ep.project_id = p.project_id
WHERE ep.project_id IN (
    SELECT project_id
    FROM Employee_Projects
    GROUP BY project_id
    HAVING COUNT(emp_id) = 1
);

SELECT
    emp_name,
    salary,
    (SELECT AVG(e2.salary)
     FROM Employees e2
     WHERE e2.dept_id = e.dept_id) AS Department_Average_Salary,
    salary - (
        SELECT AVG(e2.salary)
        FROM Employees e2
        WHERE e2.dept_id = e.dept_id
    ) AS Salary_Difference
FROM Employees e;

SELECT d.dept_name, SUM(e.salary) AS Total_Payroll
FROM Departments d
JOIN Employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING SUM(e.salary) = (
    SELECT MIN(department_payroll)
    FROM (
        SELECT SUM(salary) AS department_payroll
        FROM Employees
        GROUP BY dept_id
    ) AS Payrolls
);

SELECT DISTINCT p.project_name
FROM Projects p
JOIN Employee_Projects ep ON p.project_id = ep.project_id
JOIN Employees e ON ep.emp_id = e.emp_id
JOIN Departments d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Engineering';
