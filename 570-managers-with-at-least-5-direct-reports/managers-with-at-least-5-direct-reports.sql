# Write your MySQL query statement below
Select e1.name
FROM Employee e1
   JOIN Employee e2 ON e1.id = e2.managerId
   group by e1.id, e1.name
   having count(e2.managerId) >=5