select C.customer_name,
       O.order_date,
       P.product_name,
       OD.quantity
from Customers C
join Orders O
on C.customer_id = O.customer_id
join OrderDetails Od
on O.order_id = OD.order_id
join Products P
on OD.product_id = P.product_id
order by order_date desc