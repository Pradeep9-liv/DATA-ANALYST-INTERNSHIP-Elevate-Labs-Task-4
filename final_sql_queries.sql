-- FINAL SQL QUERIES FILE
-- Dataset: Customers, Orders, Order_Details, Products, Categories
-- Tool Used: CSV SQL Live
-- Purpose: Joins, revenue analysis, filtering, and business insights

--------------------------------------------------
-- STEP 2: Inner Join - Orders with Customers (orders_customers_inner_join.csv)
--------------------------------------------------
SELECT 
    o.OrderID,
    o.OrderDate,
    c.CustomerID,
    c.ContactName
FROM orders o
INNER JOIN customers c
ON o.CustomerID = c.CustomerID;

--------------------------------------------------
-- STEP 3: Left Join - Customers with No Orders (customers_without_orders.csv)
--------------------------------------------------
SELECT 
    c.CustomerID,
    c.ContactName
FROM customers c
LEFT JOIN orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

--------------------------------------------------
-- STEP 4: Revenue Per Product (product_revenue.csv)
--------------------------------------------------
SELECT 
    p.ProductID,
    p.ProductName,
    SUM(od.Quantity * p.UnitPrice) AS total_revenue
FROM order_details od
JOIN products p
ON od.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY total_revenue DESC;

--------------------------------------------------
-- STEP 5: Category-wise Revenue (category_revenue.csv)
--------------------------------------------------
SELECT 
    cat.CategoryName,
    SUM(od.Quantity * p.UnitPrice) AS category_revenue
FROM order_details od
JOIN products p ON od.ProductID = p.ProductID
JOIN categories cat ON p.CategoryID = cat.CategoryID
GROUP BY cat.CategoryName
ORDER BY category_revenue DESC;

--------------------------------------------------
-- STEP 6: Sales by Region and Date Range (region_date_sales_OR.csv)
--------------------------------------------------
SELECT 
    o.OrderID,
    o.OrderDate,
    c.Region,
    SUM(od.Quantity * p.UnitPrice) AS total_sales
FROM orders o
JOIN customers c ON o.CustomerID = c.CustomerID
JOIN order_details od ON o.OrderID = od.OrderID
JOIN products p ON od.ProductID = p.ProductID
WHERE c.Region = 'OR'
AND o.OrderDate BETWEEN '1996-07-04 00:00:00' AND '1998-05-06 00:00:00'
GROUP BY o.OrderID, o.OrderDate, c.Region;
