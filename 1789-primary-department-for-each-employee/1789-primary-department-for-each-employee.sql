# Write your MySQL query statement below
select employee_id, department_id
from (
    select 
    *,
    count(*) over (partition by employee_id) as cnt
    from employee
) a
where cnt = 1 or primary_flag = 'Y';
