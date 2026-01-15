# Write your MySQL query statement below

select round(avg(order_date = customer_pref_delivery_date)*100,2) as immediate_percentage
from
(select order_date, customer_pref_delivery_date, 
row_number() over (partition by customer_id order by order_date) as rn
from delivery) a
where rn=1



