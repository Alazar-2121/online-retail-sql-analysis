-- ======================================================
-- Online Retail Analysis SQL Queries
-- Portfolio Project by [Your Name]
-- Dataset: Online Retail (cleaned)
-- ======================================================

-- 1. Total Sales
-- This query calculates the total revenue from all transactions
SELECT SUM(totalprice) AS total_sales
FROM online_retail;

-- 2. Top 10 Customers by Total Spending
-- Shows which customers generated the most revenue
SELECT customerid,
       SUM(totalprice) AS total_spent
FROM online_retail
GROUP BY customerid
ORDER BY total_spent DESC
LIMIT 10;

-- 3. Sales by Country
-- Shows revenue per country to understand market performance
SELECT country,
       SUM(totalprice) AS total_sales
FROM online_retail
GROUP BY country
ORDER BY total_sales DESC;

-- 4. Monthly Sales Trend
-- Aggregates revenue by month to show trends over time
SELECT DATE_TRUNC('month', invoicedate) AS month,
       SUM(totalprice) AS monthly_sales
FROM online_retail
GROUP BY month
ORDER BY month;

-- 5. Most Sold Products
-- Identifies top-selling products based on quantity
SELECT description,
       SUM(quantity) AS total_sold
FROM online_retail
GROUP BY description
ORDER BY total_sold DESC
LIMIT 10;

-- 6. Hourly Sales Trend
-- Aggregates sales by hour to see peak business hours
SELECT DATE_TRUNC('hour', invoicedate) AS hour,
       SUM(totalprice) AS hourly_sales
FROM online_retail
GROUP BY hour
ORDER BY hour;
