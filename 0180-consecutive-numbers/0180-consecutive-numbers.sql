# Write your MySQL query statement below
with a as 
(select num ,
lag(num,1)over(order by id asc) as num2,

lag(num,2)over(order by id asc) as num3 
from logs
 
)

select distinct num as ConsecutiveNums
from a 
where( num = num2) and (num = num3)



-- WITH a AS (
--     SELECT 
       
--         num,
--         LAG(num, 1) OVER(ORDER BY id) AS num1,
--         LAG(num, 2) OVER(ORDER BY id) AS num2
--     FROM Logs
-- )

-- SELECT DISTINCT num AS ConsecutiveNums
-- FROM a
-- WHERE num = num1
--   AND num = num2;