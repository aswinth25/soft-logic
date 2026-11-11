
CREATE DATABASE Day51_StoredProcedure;
USE Day51_StoredProcedure;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Address VARCHAR(200),
    RegisteredAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Customers (FirstName, LastName, Email, Phone, City, Address)
VALUES
('Aswinth', 'S', 'aswinth@gmail.com', '9876543210', 'Nagercoil', 'Main Road'),
('Arun', 'Kumar', 'arun@gmail.com', '9876543211', 'Chennai', 'Anna Nagar'),
('Bala', 'Raj', NULL, '9876543212', 'Madurai', 'Gandhi Street'),
('David', 'Sam', 'david@gmail.com', '9876543213', 'Chennai', 'Velachery'),
('John', 'Peter', NULL, '9876543214', 'Trichy', 'Market Road');

DELIMITER //

CREATE PROCEDURE AddCustomer(
    IN p_FirstName VARCHAR(50),
    IN p_LastName VARCHAR(50),
    IN p_Email VARCHAR(100),
    IN p_Phone VARCHAR(15),
    IN p_City VARCHAR(50),
    IN p_Address VARCHAR(200)
)
BEGIN
    INSERT INTO Customers
    (FirstName, LastName, Email, Phone, City, Address)
    VALUES
    (p_FirstName, p_LastName, p_Email, p_Phone, p_City, p_Address);
END //

CREATE PROCEDURE GetCustomerByID(
    IN p_CustomerID INT
)
BEGIN
    SELECT * FROM Customers
    WHERE CustomerID = p_CustomerID;
END //

CREATE PROCEDURE UpdateCustomerContact(
    IN p_CustomerID INT,
    IN p_Email VARCHAR(100),
    IN p_Phone VARCHAR(15)
)
BEGIN
    UPDATE Customers
    SET Email = p_Email,
        Phone = p_Phone
    WHERE CustomerID = p_CustomerID;
END //

CREATE PROCEDURE GetCustomersByCity(
    IN p_City VARCHAR(50)
)
BEGIN
    SELECT * FROM Customers
    WHERE City = p_City;
END //

CREATE PROCEDURE DeleteCustomer(
    IN p_CustomerID INT
)
BEGIN
    DELETE FROM Customers
    WHERE CustomerID = p_CustomerID;
END //

CREATE PROCEDURE GetCustomersByDateRange(
    IN p_StartDate DATE,
    IN p_EndDate DATE
)
BEGIN
    SELECT * FROM Customers
    WHERE RegisteredAt >= p_StartDate
    AND RegisteredAt < DATE_ADD(p_EndDate, INTERVAL 1 DAY);
END //

CREATE PROCEDURE SearchCustomers(
    IN p_Search VARCHAR(50)
)
BEGIN
    SELECT * FROM Customers
    WHERE FirstName LIKE CONCAT('%', p_Search, '%')
    OR LastName LIKE CONCAT('%', p_Search, '%');
END //

CREATE PROCEDURE UpdateCustomerAddress(
    IN p_CustomerID INT,
    IN p_Address VARCHAR(200)
)
BEGIN
    UPDATE Customers
    SET Address = p_Address
    WHERE CustomerID = p_CustomerID;
END //

CREATE PROCEDURE GetTotalCustomers()
BEGIN
    SELECT COUNT(*) AS TotalCustomers
    FROM Customers;
END //

CREATE PROCEDURE GetCustomersWithoutEmail()
BEGIN
    SELECT * FROM Customers
    WHERE Email IS NULL OR TRIM(Email) = '';
END //

DELIMITER ;

CALL AddCustomer('Ram', 'Kumar', 'ram@gmail.com', '9876543215', 'Chennai', 'T Nagar');

CALL GetCustomerByID(1);

CALL UpdateCustomerContact(2, 'newarun@gmail.com', '9999999999');

CALL GetCustomersByCity('Chennai');

CALL DeleteCustomer(5);

CALL GetCustomersByDateRange('2026-01-01', '2026-12-31');

CALL SearchCustomers('Ar');

CALL UpdateCustomerAddress(1, 'New Bus Stand Road');

CALL GetTotalCustomers();

CALL GetCustomersWithoutEmail();

SELECT * FROM Customers;
