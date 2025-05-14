-- Create the database
-- CREATE DATABASE InventoryTrackingdb;

-- Use the created database
-- USE InventoryTrackingdb;

-- Create Suppliers table
-- CREATE TABLE Suppliers (
--     SupplierID INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key
--     SupplierName VARCHAR(100) NOT NULL,          -- Supplier's name, cannot be NULL
--     ContactInfo VARCHAR(255),
--     UNIQUE (SupplierName)                        -- Supplier name must be unique
-- );

-- Create Products table
-- CREATE TABLE Products (
--     ProductID INT AUTO_INCREMENT PRIMARY KEY,    -- Primary Key
--     ProductName VARCHAR(100) NOT NULL,            -- Product name, cannot be NULL
--     SupplierID INT,                              -- Foreign Key to Suppliers table
--     Price DECIMAL(10, 2) NOT NULL,                -- Price of the product
--     QuantityInStock INT NOT NULL,                -- Quantity in stock
--     FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),  -- Foreign key constraint
--     CHECK (QuantityInStock >= 0)                  -- Prevent negative stock
-- );

-- Create Customers table
-- CREATE TABLE Customers (
--     CustomerID INT AUTO_INCREMENT PRIMARY KEY,    -- Primary Key
--     CustomerName VARCHAR(100) NOT NULL,            -- Customer's name, cannot be NULL
--     ContactInfo VARCHAR(255)
-- );

-- Create Sales table
-- CREATE TABLE Sales (
--     SaleID INT AUTO_INCREMENT PRIMARY KEY,        -- Primary Key
--     CustomerID INT,                               -- Foreign Key to Customers table
--     SaleDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp of the sale
--     FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)  -- Foreign key constraint to Customers
-- );

-- Create Sales_Products table (Join Table for Many-to-Many Relationship)
-- CREATE TABLE Sales_Products (
--     SaleID INT,                                   -- Foreign Key to Sales table
--     ProductID INT,                                -- Foreign Key to Products table
--     Quantity INT NOT NULL,                        -- Quantity of the product sold
--     PRIMARY KEY (SaleID, ProductID),              -- Composite primary key
--     FOREIGN KEY (SaleID) REFERENCES Sales(SaleID),  -- Foreign key constraint to Sales
--     FOREIGN KEY (ProductID) REFERENCES Products(ProductID),  -- Foreign key constraint to Products
--     CHECK (Quantity > 0)                          -- Ensure that at least one product is sold
-- );

-- Insert data into Suppliers
-- INSERT INTO Suppliers (SupplierName, ContactInfo) 
-- VALUES 
-- ('ABC Supplies', '123 ABC St, City, Country'),
-- ('XYZ Traders', '456 XYZ Ave, City, Country');

-- Insert data into Products
-- INSERT INTO Products (ProductName, SupplierID, Price, QuantityInStock)
-- VALUES
-- ('Laptop', 1, 799.99, 50),
-- ('Mouse', 2, 19.99, 150),
-- ('Keyboard', 1, 49.99, 80);

-- Insert data into Customers
-- INSERT INTO Customers (CustomerName, ContactInfo)
-- VALUES
-- ('John Doe', 'john@example.com'),
-- ('Jane Smith', 'jane@example.com');

-- Insert data into Sales
-- INSERT INTO Sales (CustomerID)
-- VALUES
-- (1),
-- (2);

-- Insert data into Sales_Products
-- INSERT INTO Sales_Products (SaleID, ProductID, Quantity)
-- VALUES
-- (1, 1, 1),  -- SaleID 1, ProductID 1 (Laptop), Quantity 1
-- (1, 2, 2),  -- SaleID 1, ProductID 2 (Mouse), Quantity 2
-- (2, 3, 1);  -- SaleID 2, ProductID 3 (Keyboard), Quantity 1


-- Show all tables in the database
-- SHOW TABLES;

-- Display data from Suppliers
-- SELECT * FROM Suppliers;

-- Display data from Products
-- SELECT * FROM Products;

-- Display data from Customers
-- SELECT * FROM Customers;

-- Display data from Sales
-- SELECT * FROM Sales;

-- Display data from Sales_Products
SELECT * FROM Sales_Products;
