# Write your MySQL query statement below
select a.product_id, round(coalesce(sum(units * price) / nullif(sum(units),0),0),2) as average_price
from prices a
left join unitssold b
on a.product_id = b.product_id
and b.purchase_date between a.start_date and a.end_date
group by a.product_id



