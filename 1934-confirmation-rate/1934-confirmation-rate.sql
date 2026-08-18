# Write your MySQL query statement below
with c as 
(
 select s.user_id ,count(s.user_id) as b,
 sum(case when c.action = 'confirmed' then 1 else 0 end ) as a
 from signups s
 left join confirmations c 
 on s.user_id = c.user_id
 group by s.user_id
)

select user_id,
round(a/b,2) as  confirmation_rate 
from c