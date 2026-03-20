SELECT 
C.customer_name,
SUM(OD.quantity * p.price) AS total_spent
FROM Customers C
JOIN Orders O
ON C.customer_id = O.customer_id
JOIN OrderDetails OD
ON O.order_id = OD.order_id
JOIN Products P
ON OD.product_id = P.product_id
GROUP BY C.customer_name
ORDER BY total_spent DESC