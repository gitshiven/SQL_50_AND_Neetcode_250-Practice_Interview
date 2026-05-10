SELECT m.employee_id, m.name, COUNT(e.employee_id) AS reports_count, ROUND(AVG(e.age)) AS average_age
FROM Employees m
JOIN Employees e ON m.employee_id = e.reports_to
GROUP BY m.employee_id, m.name
ORDER BY m.employee_id



#The rule: join the "pointer" column to the "target" column.
#In this reports_to is a pointer(it points to the manager) and target is employee_id(it is the manager) 



#Learn window function