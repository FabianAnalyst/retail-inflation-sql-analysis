-- 1. Total revenue
SELECT SUM(quantity * price) AS total_revenue
FROM sales_transactions;

-- 2. Revenue by product category
SELECT p.category,
       SUM(t.quantity * t.price) AS revenue
FROM sales_transactions t
JOIN products p ON t.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- 3. Revenue by province
SELECT s.province,
       SUM(t.quantity * t.price) AS revenue
FROM sales_transactions t
JOIN stores s ON t.store_id = s.store_id
GROUP BY s.province
ORDER BY revenue DESC;

-- 4. Nominal vs Inflation-adjusted revenue
SELECT p.category,
       SUM(t.quantity * t.price) AS nominal_revenue,
       AVG(i.inflation_rate) AS inflation_rate,
       SUM(t.quantity * t.price) / (1 + AVG(i.inflation_rate)/100) AS real_revenue
FROM sales_transactions t
JOIN products p ON t.product_id = p.product_id
JOIN inflation_index i ON p.category = i.category
GROUP BY p.category;
