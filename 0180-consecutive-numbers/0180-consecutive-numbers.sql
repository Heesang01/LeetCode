# Write your MySQL query statement below
select a.num as ConsecutiveNums
from (select num, lag(num, 1) over (order by id) as prev1_num, lag(num,2) over (order by id) as prev2_num
from logs) a
where a.num = prev1_num and a.num = prev2_num
group by ConsecutiveNums;