-- Independence Day Sales Analysis
-- Group BY and Having SQL Queries


--Q1. Find total sales for each category.
SELECT Category,SUM(SalesAmount) AS Total_Sales
FROM sales
GROUP BY Category

--Q2. Find total sales for each city.
SELECT City,SUM(SalesAmount) AS Total_Sales
FROM sales
GROUP BY City

--Q3. Find total sales for each state.
SELECT State,SUM(SalesAmount) AS Total_Sales
FROM sales
GROUP BY State

--Q4. Find the total quantity sold for each product.
SELECT Product,SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY Product

--Q5. Find the average sales amount for each category.
SELECT Category,AVG(SalesAmount) AS Average_sales_Amount
FROM sales
GROUP BY Category

--Q6. Find the number of transactions for each city.
SELECT City,COUNT(*) AS No_of_Transaction
FROM sales
GROUP BY City

--Q7. Find categories where total sales are greater than ₹1,00,000.
SELECT Category,SUM(SalesAmount) AS Total_sales
FROM sales
GROUP BY Category
HAVING Total_sales>100000

--Q8. Find cities where the average sales amount is greater than ₹15,000.
SELECT City,round(AVG(SalesAmount)) AS Average_Sales
FROM sales
GROUP BY City
HAVING Average_Sales>15000

--Q9. Find the top-selling product based on total sales.
SELECT Product,SUM(SalesAmount) AS Total_sales
FROM sales
GROUP BY Product
ORDER BY Total_sales DESC
LIMIT 1

--Q10. Find the state with the highest total sales.
SELECT State,SUM(SalesAmount) AS total_sales
FROM sales
GROUP BY State
ORDER BY total_sales DESC
limit 1
