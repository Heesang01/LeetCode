# Write your MySQL query statement below

select machine_id, round(avg(dif),3) as processing_time
from(
select machine_id, process_id, max(timestamp) - min(timestamp) as dif
from activity
group by machine_id, process_id) a
group by machine_id