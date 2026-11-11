
CREATE DATABASE Day52_Triggers;
USE Day52_Triggers;

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10,2),
    stock_quantity INT,
    status VARCHAR(20) DEFAULT 'Available'
);

CREATE TABLE Inventory_Audit (
    audit_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    action_type VARCHAR(50),
    old_value VARCHAR(100),
    new_value VARCHAR(100),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER prevent_negative_stock
BEFORE UPDATE ON Products
FOR EACH ROW
BEGIN
    IF NEW.stock_quantity < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock cannot be negative';
    END IF;
END //

CREATE TRIGGER audit_price_changes
AFTER UPDATE ON Products
FOR EACH ROW
BEGIN
    IF OLD.price <> NEW.price THEN
        INSERT INTO Inventory_Audit
        (product_id, action_type, old_value, new_value)
        VALUES
        (NEW.product_id, 'PRICE_UPDATED', OLD.price, NEW.price);
    END IF;
END //

CREATE TRIGGER update_stock_status
BEFORE UPDATE ON Products
FOR EACH ROW
BEGIN
    IF NEW.stock_quantity = 0 THEN
        SET NEW.status = 'Out of Stock';
    END IF;
END //

CREATE TRIGGER uppercase_product_name
BEFORE INSERT ON Products
FOR EACH ROW
BEGIN
    SET NEW.name = UPPER(NEW.name);
END //

CREATE TRIGGER log_new_product
AFTER INSERT ON Products
FOR EACH ROW
BEGIN
    INSERT INTO Inventory_Audit
    (product_id, action_type, old_value, new_value)
    VALUES
    (NEW.product_id, 'NEW_PRODUCT_ADDED', NULL, NEW.name);
END //

DELIMITER ;

INSERT INTO Products (name, price, stock_quantity)
VALUES
('Laptop', 55000, 10),
('Mouse', 500, 20),
('Keyboard', 1200, 15),
('Monitor', 15000, 5),
('Headphone', 2000, 8);

UPDATE Products SET stock_quantity = -5 WHERE product_id = 1;

UPDATE Products SET price = 60000 WHERE product_id = 1;

UPDATE Products SET stock_quantity = 0 WHERE product_id = 2;

INSERT INTO Products (name, price, stock_quantity)
VALUES ('smart watch', 3000, 10);

INSERT INTO Products (name, price, stock_quantity)
VALUES ('tablet', 25000, 5);

SELECT * FROM Products;

SELECT * FROM Inventory_Audit;

SHOW TRIGGERS;
