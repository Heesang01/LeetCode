# Write your MySQL query statement below

with pdod as(
select p.product_id, p.product_name, o.unit
from products p
join (
    select product_id, sum(unit) as unit
    from orders
    where date_format(order_date, '%Y-%m') = '2020-02'
    group by product_id) o
on p.product_id = o.product_id
)
select product_name, unit
from pdod
where unit >= 100