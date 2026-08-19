# Write your MySQL query statement below
with c as 
(select machine_id,count(distinct process_id) as p,
sum(case when activity_type = 'end' then timestamp  end ) as a ,
sum(case when activity_type = 'start' then timestamp end ) as b
from activity
group by machine_id
)

select machine_id,
round((a-b)/p,3) as processing_time
from c