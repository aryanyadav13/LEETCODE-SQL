# Write your MySQL query statement below
select e.name
from employee e
join employee b
on e.id = b.managerid
group by e.name,e.id
having count(b.managerid)>=5
