-- 1. Find products with low stock (< 10 items)
SELECT product_name, stock_quantity
FROM Products
WHERE stock_quantity < 10;

-- 2. Show number of orders placed per customer
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- 3. Calculate total revenue per product
SELECT p.product_name, SUM(oi.quantity * p.price) AS total_revenue
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- 4. List top 3 best-selling products by quantity sold
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 3;

-- 5. Show suppliers and the products they supply
SELECT s.supplier_name, p.product_name, p.stock_quantity
FROM Suppliers s
JOIN Products p ON s.supplier_id = p.supplier_id
ORDER BY s.supplier_name, p.product_name;

-- 6. Show customer purchase history with total spent
SELECT c.customer_name, SUM(oi.quantity * p.price) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- 7. Pending orders with details
SELECT o.order_id, c.customer_name, o.order_date, p.product_name, oi.quantity
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
WHERE o.status = 'Pending';
