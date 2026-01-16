# Write your MySQL query statement below


select max(case when cnt = 1 then num end) AS num
from (
    select num, count(*) as cnt
    from mynumbers
    group by num) t;