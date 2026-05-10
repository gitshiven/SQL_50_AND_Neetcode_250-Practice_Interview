# Write your MySQL query statement below
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'OR employee_id IN (
SELECT employee_id
FROM Employee GROUP BY employee_id 
HAVING COUNT(*) = 1);

#why i cant thinkkkkkkkkkkkkkkkkkkkkkkkkkkkk
#so easy
#subquery (my intuition was right)

#Union approach
-- SELECT employee_id, department_id
-- FROM Employee
-- WHERE primary_flag = 'Y'

-- UNION

-- SELECT employee_id, department_id
-- FROM Employee
-- GROUP BY employee_id
-- HAVING COUNT(department_id) = 1;

-- https://youtube.com/shorts/JxSBtDhgz3g?si=iopzq1lusXpM2HDs