SELECT
    DATE_TRUNC('month', sale_date) AS month,
    SUM(total_price) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

SELECT
    p.name,
    SUM(s.total_price) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.id
GROUP BY p.name
ORDER BY total_revenue DESC
LIMIT 10;

SELECT
    c.name AS customer_name,
    AVG(s.total_price) AS average_check
FROM sales s
JOIN customers c ON s.customer_id = c.id
GROUP BY c.name
ORDER BY average_check DESC;

SELECT
    c.name AS customer_name,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY s.total_price) AS median_check
FROM sales s
JOIN customers c ON s.customer_id = c.id
GROUP BY c.name
ORDER BY median_check DESC;

SELECT
    c.name AS customer_name,
    COUNT(s.id) AS purchase_count
FROM sales s
JOIN customers c ON s.customer_id = c.id
GROUP BY c.name
HAVING COUNT(s.id) > 1
ORDER BY purchase_count DESC;

SELECT
    c.name AS customer_name,
    CASE
        WHEN c.registration_date > NOW() - INTERVAL '3 months' THEN 'New'
        ELSE 'Returning'
    END AS customer_segment,
    COUNT(s.id) AS purchase_count
FROM sales s
JOIN customers c ON s.customer_id = c.id
GROUP BY c.name, customer_segment
ORDER BY customer_segment DESC, purchase_count DESC;
