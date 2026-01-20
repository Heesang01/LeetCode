# Write your MySQL query statement below
select c.category, count(a.account_id) as accounts_count
from
(select 'Low Salary' as category
union all
select 'Average Salary' as category
union all
select 'High Salary') c
left join accounts a
on (
    (c.category = 'Low Salary' and a.income <20000)
or  (c.category = 'Average Salary' and a.income between 20000 and 50000)
or  (c.category = 'High Salary' and a.income >50000)
)
group by c.category