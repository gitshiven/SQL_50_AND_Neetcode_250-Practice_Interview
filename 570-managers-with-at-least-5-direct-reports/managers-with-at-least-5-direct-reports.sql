# Write your MySQL query statement below
Select name from Employee
where id IN(
    Select managerID
    From Employee
    Group by ManagerId
    Having Count(*) >=5
);

