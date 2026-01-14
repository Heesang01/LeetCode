# Write your MySQL query statement below
select name
from (
    select o.id, o.name, count(t.managerid) as count_emp
    from employee o
    inner join employee t
    on o.id = t.managerid
    group by id, name
    having count_emp >= 5
) a
