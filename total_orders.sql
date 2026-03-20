SELECT 
C.customer_name,
COUNT (O.order_id) AS total_orders
FROM Customers C
JOIN Orders O
ON C.customer_id = O.customer_id
GROUP BY C.customer_name
ORDER BY total_orders DESC