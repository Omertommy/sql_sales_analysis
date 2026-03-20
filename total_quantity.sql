SELECT
P.product_name,
SUM(OD.quantity) AS total_quantity
FROM OrderDetails OD
JOIN Products P
ON OD.product_id = P.product_id
GROUP BY P.product_name
ORDER BY total_quantity DESC