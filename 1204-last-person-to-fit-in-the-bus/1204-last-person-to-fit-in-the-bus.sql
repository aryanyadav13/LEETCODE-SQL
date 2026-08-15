# Write your MySQL query statement below
with a as 
(select person_id,person_name,
sum(weight)over(order by turn asc) as total_weight
from queue
order by turn desc

)
select person_name 
from a 
where total_weight <= 1000
limit 1