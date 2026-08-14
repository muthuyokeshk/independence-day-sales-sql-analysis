-- Independence Day Sales Analysis
-- Case and End Statements SQL Queries


--Q1. Create a SalesLevel column: Sales ≥ ₹50,000 → High, Sales ≥ ₹20,000 → Medium, Otherwise → Low
SELECT SalesAmount,
CASE
WHEN SalesAmount>=50000 THEN 'High'
WHEN SalesAmount>=20000 THEN 'Medium'
ELSE 'Low'
END AS SalesLevel
FROM sales

--Q2. Create a QuantityLevel column: Quantity ≥ 20 → Bulk, Quantity ≥ 10 → Medium, Otherwise → Regular
SELECT Quantity,
CASE
WHEN Quantity>=20 THEN 'Bulk'
WHEN Quantity>=10 THEN 'Medium'
ELSE 'Regular'
END AS QuantityLevel
FROM sales

--Q3. Categorize products based on sales amount.
  SELECT Product,
       SalesAmount,
       CASE
           WHEN SalesAmount >= 50000 THEN 'High Sales'
           WHEN SalesAmount >= 20000 THEN 'Medium Sales'
           ELSE 'Low Sales'
       END AS SalesCategory
FROM sales;

--Q4. Calculate a DiscountCategory using: Discount ≥ 20% → High Discount, Discount ≥ 10% → Medium Discount, Otherwise → Low Discount
SELECT Discount,
CASE
WHEN Discount>=20 THEN 'High Discount'
WHEN Discount>=10 THEN 'Medium Discount'
ELSE 'Low Discount'
END AS Discount_Category
FROM sales

--Q5. Find the number of transactions in each sales level.
SELECT
    CASE
        WHEN SalesAmount >= 50000 THEN 'High'
        WHEN SalesAmount >= 20000 THEN 'Medium'
        ELSE 'Low'
    END AS SalesLevel,
    COUNT(*) AS Transaction_Count
FROM sales
GROUP BY SalesLevel;
