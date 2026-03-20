__ show all orders with customer and product
SELECT 
C.customer_name,
P.product_name,
O.order_date,
OD.quantity,
P.price,
(OD.quantity * P.price) AS total_price
FROM Orders O
JOIN Customers C
ON O.customer_id = C.customer_id
JOIN OrderDetails OD
ON O.order_id = OD.order_id
JOIN Products P
ON OD.product_id = P.product_id;
