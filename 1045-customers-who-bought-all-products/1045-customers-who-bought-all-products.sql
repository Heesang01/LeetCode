# Write your MySQL query statement below
select customer_id
from customer a
join product b
on a.product_key = b.product_key
group by customer_id
having count(distinct a.product_key) = (select count(*) from product);