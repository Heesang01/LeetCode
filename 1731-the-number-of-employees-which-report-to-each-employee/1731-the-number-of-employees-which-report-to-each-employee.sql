# Write your MySQL query statement below

select a.employee_id, a.name as name,count(b.reports_to) reports_count, round(avg(b.age),0) as average_age
from employees a
join(
    select *
    from employees
) b
on b.reports_to = a.employee_id
group by a.employee_id
order by a.employee_id