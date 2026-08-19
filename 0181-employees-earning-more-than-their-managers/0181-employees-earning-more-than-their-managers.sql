# Write your MySQL query statement below
select e.name as Employee
from employee e 
join employee a 
on e.managerId = a.Id
where e.salary > a.salary
