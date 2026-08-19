# Write your MySQL query statement below
with c as 
(select p.product_id ,
sum(p.price *u.units) as a,
sum(u.units) as b 
from prices p 
left  join unitsSold u
on p.product_id = u.product_id 
where (p.start_date <= u.purchase_date
and p.end_date >= u.purchase_date)
or u.purchase_date is null
group by p.product_id


)

select product_id,
ifnull(round((a/b),2),0) as average_price
from c 