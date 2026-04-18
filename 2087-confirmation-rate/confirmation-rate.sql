# Write your MySQL query statement below
Select s.user_id, Round((count(CASE WHEN action = 'confirmed' THEN 1 END)/Count(*)),2) AS confirmation_rate from Signups s
LEFT JOin
Confirmations c
ON s.user_id = c.user_id
group by s.user_id