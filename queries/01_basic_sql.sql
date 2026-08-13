-- Independence Day Sales Analysis
-- Basic SQL Queries

-- Q1. Display all records from the sales table
SELECT *
FROM sales;

--Q2. Display only CustomerName, Product, Quantity, and SalesAmount.
SELECT CustomerName,Product,Quantity,SalesAmount
FROM sales;

--Q3. Find all sales made from Tamil Nadu.
SELECT *
FROM sales
WHERE State='Tamil Nadu';

--Q4. Find all sales where SalesAmount is greater than ₹10,000.
SELECT *
FROM sales
WHERE SalesAmount>10000;

--Q5. Display all products belonging to the Electronics category.
SELECT Product
FROM sales
WHERE Category='electronics';

--Q6. Find sales where the quantity is between 5 and 20.
SELECT * 
FROM sales
WHERE Quantity BETWEEN 5 AND 20;

--Q7. Display sales made from Chennai, Bangalore, and Hyderabad
SELECT *
FROM sales
WHERE City IN ('Chennai','Bangalore','Hyderabad');

--Q8. Find customers whose names start with the letter 'A'.
SELECT CustomerName 
FROM sales
WHERE CustomerName LIKE 'a%';

--Q9. Display all unique cities from the sales table.
SELECT DISTINCT City
FROM sales;

--Q10. Display all records ordered by SalesAmount from highest to lowest.
SELECT * 
FROM sales
ORDER BY SalesAmount DESC;
