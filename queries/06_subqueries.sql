-- Independence Day Sales Analysis
-- SubQueries Statements SQL Queries


--Q1. Find customers whose sales amount is greater than the average sales amount.
SELECT CustomerName, SalesAmount
FROM sales
WHERE SalesAmount > (
    SELECT AVG(SalesAmount)
    FROM sales
);

--Q2. Find products whose total sales are greater than the average product sales.
SELECT Product,SUM(SalesAmount) AS Total_Sales
FROM sales
GROUP BY Product
HAVING Total_Sales>(
    SELECT AVG(Product_Total)
    FROM(SELECT SUM(SalesAmount) AS Product_Total
        FROM sales
        GROUP BY Product
        ) AS AVG_Product_Total
    )

--Q3. Find the product with the highest sales amount.
SELECT Product, SalesAmount
FROM sales
WHERE SalesAmount = (
    SELECT MAX(SalesAmount)
    FROM sales
);

--Q4. Find the second-highest sales amount.
SELECT MAX(SalesAmount)
FROM sales
WHERE SalesAmount<(
    SELECT MAX(SalesAmount)
    FROM sales
    )

--Q5. Find customers who have made more sales than the average customer sales.
SELECT CustomerName, SUM(SalesAmount) AS Total_Sales
FROM sales
GROUP BY CustomerName
HAVING SUM(SalesAmount) > (
    SELECT AVG(Customer_Total)
    FROM (
        SELECT SUM(SalesAmount) AS Customer_Total
        FROM sales
        GROUP BY CustomerName
    ) AS Avg_Customer_Sales
);

--Q6. Find the city having the highest total sales.
SELECT City,SUM(SalesAmount)
FROM sales
GROUP BY City 
HAVING SUM(SalesAmount)=
(
    SELECT MAX(City_Total)
    FROM (
        SELECT SUM(SalesAmount) AS City_Total
        FROM sales 
        GROUP BY City)
    AS Highest_Total_city
    )

--Q7. Find all transactions having sales greater than the maximum sales of Chennai.
  SELECT *
FROM sales
WHERE SalesAmount > (
    SELECT MAX(SalesAmount)
    FROM sales
    WHERE City = 'Chennai'
);

--Q8. Find products whose price is greater than the average product price.
SELECT Product, Price
FROM sales
WHERE Price > (
    SELECT AVG(Price)
    FROM sales
);

--Q9. Find the customer with the highest total purchase amount.
SELECT CustomerName, SUM(SalesAmount) AS Total_Purchase
FROM sales
GROUP BY CustomerName
HAVING SUM(SalesAmount) = (
    SELECT MAX(Customer_Total)
    FROM (
        SELECT SUM(SalesAmount) AS Customer_Total
        FROM sales
        GROUP BY CustomerName
    ) AS Highest_Customer
);

--Q10. Find the second-highest-selling product.
SELECT Product, SUM(SalesAmount) AS Total_Sales
FROM sales
GROUP BY Product
HAVING SUM(SalesAmount) = (
    SELECT MAX(Product_Total)
    FROM (
        SELECT SUM(SalesAmount) AS Product_Total
        FROM sales
        GROUP BY Product
        HAVING SUM(SalesAmount) < (
            SELECT MAX(Product_Total)
            FROM (
                SELECT SUM(SalesAmount) AS Product_Total
                FROM sales
                GROUP BY Product
            ) AS Highest_Product
        )
    ) AS Second_Highest_Product
);
