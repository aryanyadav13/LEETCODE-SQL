# Write your MySQL query statement below
select a.unique_id , b.name
from EmployeeUNI a 
right join Employees b 
on b.id = a.id
