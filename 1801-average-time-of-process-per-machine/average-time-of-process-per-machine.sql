select a1.machine_id, ROUND(SUM(a2.timestamp - a1.timestamp)/ COUNT(DISTINCT a1.process_id),3) as processing_time
from Activity a1
Join Activity a2 on a1.activity_type = 'start' and a2.activity_type = 'end' 
and a1.machine_id = a2.machine_id 
and a1.process_id = a2.process_id
group by a1.machine_id
