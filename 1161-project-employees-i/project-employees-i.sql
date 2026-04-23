# Write your MySQL query statement below
Select P.project_id, ROUND(SUM(E.experience_years)/Count(E.experience_years),2) as average_years
from Project P
Left join Employee E
On P.employee_id = E.employee_id
Group by P.project_id