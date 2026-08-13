-- Independence Day Sales Data Analysis
-- Database: independence_day_sales

CREATE DATABASE independence_day_sales;

USE independence_day_sales;

CREATE TABLE sales (
    SaleID INT PRIMARY KEY,
    SaleDate DATE,
    CustomerName VARCHAR(50),
    City VARCHAR(30),
    State VARCHAR(30),
    Product VARCHAR(50),
    Category VARCHAR(30),
    Quantity INT,
    Price DECIMAL(10,2),
    Discount DECIMAL(5,2),
    SalesAmount DECIMAL(10,2)
);

INSERT INTO sales
(SaleID, SaleDate, CustomerName, City, State, Product, Category, Quantity, Price, Discount, SalesAmount)
VALUES
(1, '2026-01-05', 'Arun Kumar', 'Chennai', 'Tamil Nadu', 'Laptop', 'Electronics', 2, 55000, 10, 99000),
(2, '2026-01-08', 'Priya Sharma', 'Bangalore', 'Karnataka', 'Smartphone', 'Electronics', 3, 30000, 5, 85500),
(3, '2026-01-12', 'Rahul Verma', 'Hyderabad', 'Telangana', 'Monitor', 'Electronics', 4, 18000, 10, 64800),
(4, '2026-01-18', 'Anjali Rao', 'Chennai', 'Tamil Nadu', 'Office Chair', 'Furniture', 5, 8000, 5, 38000),
(5, '2026-01-25', 'Amit Singh', 'Mumbai', 'Maharashtra', 'Desk', 'Furniture', 3, 12000, 10, 32400),

(6, '2026-02-03', 'Vijay Kumar', 'Delhi', 'Delhi', 'Laptop', 'Electronics', 1, 65000, 5, 61750),
(7, '2026-02-07', 'Arjun Patel', 'Ahmedabad', 'Gujarat', 'Keyboard', 'Electronics', 10, 2500, 10, 22500),
(8, '2026-02-14', 'Sneha Reddy', 'Hyderabad', 'Telangana', 'Mouse', 'Electronics', 15, 1200, 5, 17100),
(9, '2026-02-20', 'Karthik Raj', 'Coimbatore', 'Tamil Nadu', 'Printer', 'Electronics', 2, 22000, 10, 39600),
(10, '2026-02-28', 'Meena Devi', 'Madurai', 'Tamil Nadu', 'Notebook Pack', 'Office Supplies', 20, 500, 5, 9500),

(11, '2026-03-04', 'Anand Kumar', 'Chennai', 'Tamil Nadu', 'Smartphone', 'Electronics', 4, 28000, 10, 100800),
(12, '2026-03-09', 'Divya Menon', 'Bangalore', 'Karnataka', 'Tablet', 'Electronics', 3, 25000, 5, 71250),
(13, '2026-03-15', 'Suresh Babu', 'Hyderabad', 'Telangana', 'Office Chair', 'Furniture', 8, 7500, 10, 54000),
(14, '2026-03-22', 'Akash Gupta', 'Delhi', 'Delhi', 'Bookshelf', 'Furniture', 4, 9000, 5, 34200),
(15, '2026-03-30', 'Lakshmi Priya', 'Madurai', 'Tamil Nadu', 'Printer Paper', 'Office Supplies', 30, 400, 5, 11400),

(16, '2026-04-02', 'Ravi Shankar', 'Chennai', 'Tamil Nadu', 'Laptop', 'Electronics', 2, 60000, 10, 108000),
(17, '2026-04-10', 'Asha Nair', 'Kochi', 'Kerala', 'Smartphone', 'Electronics', 5, 26000, 5, 123500),
(18, '2026-04-17', 'Manoj Kumar', 'Bangalore', 'Karnataka', 'Desk', 'Furniture', 6, 11000, 10, 59400),
(19, '2026-04-23', 'Pooja Singh', 'Mumbai', 'Maharashtra', 'Office Chair', 'Furniture', 10, 7000, 15, 59500),
(20, '2026-04-29', 'Vignesh R', 'Coimbatore', 'Tamil Nadu', 'Keyboard', 'Electronics', 12, 2200, 5, 25080),

(21, '2026-05-05', 'Arun Prakash', 'Chennai', 'Tamil Nadu', 'Monitor', 'Electronics', 5, 17000, 10, 76500),
(22, '2026-05-11', 'Neha Kapoor', 'Delhi', 'Delhi', 'Tablet', 'Electronics', 4, 24000, 5, 91200),
(23, '2026-05-18', 'Ramesh Kumar', 'Hyderabad', 'Telangana', 'Desk', 'Furniture', 5, 12500, 10, 56250),
(24, '2026-05-24', 'Kavya Iyer', 'Bangalore', 'Karnataka', 'Bookshelf', 'Furniture', 7, 8500, 5, 56525),
(25, '2026-05-30', 'Sanjay Rao', 'Madurai', 'Tamil Nadu', 'Notebook Pack', 'Office Supplies', 25, 450, 10, 10125),

(26, '2026-06-03', 'Ajay Kumar', 'Chennai', 'Tamil Nadu', 'Smartphone', 'Electronics', 6, 29000, 10, 156600),
(27, '2026-06-09', 'Deepa N', 'Kochi', 'Kerala', 'Laptop', 'Electronics', 2, 58000, 5, 110200),
(28, '2026-06-15', 'Mohan Das', 'Mumbai', 'Maharashtra', 'Office Chair', 'Furniture', 12, 7200, 10, 77760),
(29, '2026-06-21', 'Swetha R', 'Hyderabad', 'Telangana', 'Printer', 'Electronics', 3, 21000, 5, 59850),
(30, '2026-06-28', 'Gokul Raj', 'Coimbatore', 'Tamil Nadu', 'Mouse', 'Electronics', 20, 1100, 5, 20900),

(31, '2026-07-02', 'Arun Kumar', 'Chennai', 'Tamil Nadu', 'Laptop', 'Electronics', 3, 55000, 10, 148500),
(32, '2026-07-08', 'Priya Sharma', 'Bangalore', 'Karnataka', 'Smartphone', 'Electronics', 5, 30000, 5, 142500),
(33, '2026-07-14', 'Rahul Verma', 'Hyderabad', 'Telangana', 'Monitor', 'Electronics', 6, 18000, 10, 97200),
(34, '2026-07-20', 'Anjali Rao', 'Chennai', 'Tamil Nadu', 'Office Chair', 'Furniture', 10, 8000, 5, 76000),
(35, '2026-07-27', 'Amit Singh', 'Mumbai', 'Maharashtra', 'Desk', 'Furniture', 5, 12000, 10, 54000),

(36, '2026-08-01', 'Vijay Kumar', 'Delhi', 'Delhi', 'Laptop', 'Electronics', 2, 65000, 5, 123500),
(37, '2026-08-05', 'Arjun Patel', 'Ahmedabad', 'Gujarat', 'Keyboard', 'Electronics', 20, 2500, 10, 45000),
(38, '2026-08-08', 'Sneha Reddy', 'Hyderabad', 'Telangana', 'Mouse', 'Electronics', 25, 1200, 5, 28500),
(39, '2026-08-10', 'Karthik Raj', 'Coimbatore', 'Tamil Nadu', 'Printer', 'Electronics', 4, 22000, 10, 79200),
(40, '2026-08-15', 'Meena Devi', 'Madurai', 'Tamil Nadu', 'Notebook Pack', 'Office Supplies', 30, 500, 5, 14250),
(41, '2026-08-16', 'Anand Kumar', 'Chennai', 'Tamil Nadu', 'Smartphone', 'Electronics', 6, 28000, 10, 151200),
(42, '2026-08-18', 'Divya Menon', 'Bangalore', 'Karnataka', 'Tablet', 'Electronics', 5, 25000, 5, 118750),
(43, '2026-08-20', 'Suresh Babu', 'Hyderabad', 'Telangana', 'Office Chair', 'Furniture', 12, 7500, 10, 81000),
(44, '2026-08-22', 'Akash Gupta', 'Delhi', 'Delhi', 'Bookshelf', 'Furniture', 6, 9000, 5, 51300),
(45, '2026-08-25', 'Lakshmi Priya', 'Madurai', 'Tamil Nadu', 'Printer Paper', 'Office Supplies', 40, 400, 5, 15200),
(46, '2026-08-27', 'Ravi Shankar', 'Chennai', 'Tamil Nadu', 'Laptop', 'Electronics', 3, 60000, 10, 162000),
(47, '2026-08-28', 'Asha Nair', 'Kochi', 'Kerala', 'Smartphone', 'Electronics', 7, 26000, 5, 172900),
(48, '2026-08-29', 'Manoj Kumar', 'Bangalore', 'Karnataka', 'Desk', 'Furniture', 8, 11000, 10, 79200),
(49, '2026-08-30', 'Pooja Singh', 'Mumbai', 'Maharashtra', 'Office Chair', 'Furniture', 15, 7000, 15, 89250),
(50, '2026-08-31', 'Vignesh R', 'Coimbatore', 'Tamil Nadu', 'Keyboard', 'Electronics', 20, 2200, 5, 41800);
