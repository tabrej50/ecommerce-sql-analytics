
-- 1. Customers who placed at least one order
SELECT DISTINCT c.customer_id, c.customer_name, c.email
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- 2. Total spending by each customer
SELECT c.customer_id, c.customer_name, SUM(o.total) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC;

-- 3. Products ordered more than 50 times
SELECT p.product_id, p.product_name, SUM(oi.quantity) AS total_quantity
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
HAVING total_quantity > 50
ORDER BY total_quantity DESC;

-- 4. Average order value per customer
SELECT c.customer_id, c.customer_name, AVG(o.total) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;

-- 5. Top 5 best-selling products
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;

-- 6. Orders placed each month
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, COUNT(*) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;

-- 7. Full order details
SELECT o.order_id, o.order_date, c.customer_name, p.product_name,
       oi.quantity, p.price, (oi.quantity * p.price) AS item_total
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_id;

-- 8. Most valuable single order
SELECT order_id, customer_id, total
FROM orders
ORDER BY total DESC
LIMIT 1;
