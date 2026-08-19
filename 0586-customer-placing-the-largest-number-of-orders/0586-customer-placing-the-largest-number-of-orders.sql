-- # Write your MySQL query statement below

-- with a as  (
-- select order_number  as num from orders
-- union all
-- select customer_number as num  from orders 
-- )
-- select count(num) as customer_number
-- from a 
-- group by num 
-- order by count(num) desc 
--  limit  1
SELECT customer_number
FROM orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;