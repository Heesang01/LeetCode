# Write your MySQL query statement below
select x, y, z, 
case 
when x < z + y and z < x + y and y < x + z then 'Yes'
else 'No' end triangle
from triangle