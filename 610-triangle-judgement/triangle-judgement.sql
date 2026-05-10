# Write your MySQL query statement below
select x,y,z,
CASE 
when x+y >z AND x+z >y AND y+z >x #Triangle inequality
then  'Yes'
else 'No'
end as 'triangle'
from Triangle

-- x+y, y+z, x+z

-- then/end as  #LEARN