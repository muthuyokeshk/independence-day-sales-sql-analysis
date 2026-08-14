-- Independence Day Sales Analysis
-- Date and Time SQL Queries


--Q1. Find the total sales made during January 2026.
SELECT SUM(SalesAmount) AS Total_Sales
FROM sales
WHERE SaleDate >= '2026-01-01'
  AND SaleDate < '2026-02-01';

--Q2. Find the total sales made during Independence Day month – August 2026.
SELECT SUM(SalesAmount) AS Total_Sales
FROM sales
WHERE monthname(SaleDate)='August'
AND year(SaleDate)='2026'

--Q3. Display sales made in the last 30 days.
SELECT * FROM sales
WHERE SaleDate>= CURRENT_DATE - INTERVAL 30 day

--Q4. Find total sales for each month.
SELECT MONTH(SaleDate) AS Month,
       SUM(SalesAmount) AS Total_Sales
FROM sales
GROUP BY MONTH(SaleDate)
ORDER BY MONTH(SaleDate);

--Q5. Find the number of transactions for each month.
SELECT MONTHname(SaleDate) AS Month,
       COUNT(*) AS Total_Transactions
FROM sales
GROUP BY MONTH(SaleDate)

--Q6. Find the highest-sales month.
SELECT MONTHNAME(SaleDate) AS Month,
       SUM(SalesAmount) AS Total_Sales
FROM sales
GROUP BY MONTHNAME(SaleDate)
ORDER BY Total_Sales DESC
LIMIT 1;

--Q7. Find the lowest-sales month.
SELECT MONTHNAME(SaleDate) AS Month,
       SUM(SalesAmount) AS Total_Sales
FROM sales
GROUP BY MONTHNAME(SaleDate)
ORDER BY Total_Sales ASC
LIMIT 1;

--Q8. Find total sales for each year.
SELECT YEAR(SaleDate) AS Year,
       SUM(SalesAmount) AS Total_Sales
FROM sales
GROUP BY YEAR(SaleDate)

--Q9. Find sales made on weekends.
SELECT *
FROM sales
WHERE DAYOFWEEK(SaleDate) IN (1, 7);

--Q10. Find the number of sales transactions made on each day of the week.
SELECT DAYNAME(SaleDate) AS Day,
       COUNT(*) AS Total_Transactions
FROM sales
GROUP BY DAYOFWEEK(SaleDate)
ORDER BY DAYOFWEEK(SaleDate);
