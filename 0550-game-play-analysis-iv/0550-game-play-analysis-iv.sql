# Write your MySQL query statement below
select round(avg(exists (select 1 from activity b where a.player_id = b.player_id and b.event_date = date_add(first_date, interval 1 day))),2) as fraction
from (
    select player_id, min(event_date) first_date
    from activity
    group by player_id
) a
