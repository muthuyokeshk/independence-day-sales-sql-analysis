-- Independence Day Sales Analysis
-- Aggregate SQL Queries


--Q1. Find the total sales amount.
SELECT SUM(SalesAmount) AS Total_Sales_Amount 
FROM sales

--Q2. Find the average sales amount.
SELECT round(AVG(SalesAmount),2) AS Average_Sales_Amount 
FROM sales

--Q3. Find the maximum sales amount.
SELECT MAX(SalesAmount) AS Maximum_Sales_Amount 
FROM sales
--Q4. Find the minimum sales amount.
SELECT MIN(SalesAmount) AS Minimum_Sales_Amount 
FROM sales

--Q5. Find the total quantity sold.
SELECT SUM(Quantity) AS Total_Quantity_Sold
FROM sales

--Q6. Count the total number of sales transactions.
SELECT COUNT(SalesAmount) AS Total_No_of_Sales
FROM sales

--Q7. Find the total sales amount for the Electronics category.
SELECT SUM(SalesAmount) AS Total_sales_amount
FROM sales
WHERE Category='electronics'

--Q8. Find the average quantity sold per transaction.
SELECT AVG(Quantity) AS Average_quantity
FROM sales

--Q9. Find the total sales for Tamil Nadu.
SELECT SUM(SalesAmount) AS Total_sales
FROM sales
WHERE State='Tamil Nadu'

--Q10. Find the number of unique customers.
SELECT COUNT(DISTINCT CustomerName) AS  No_of_customer
FROM sales
