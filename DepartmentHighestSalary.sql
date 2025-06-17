# Write your MySQL query statement below
SELECT d.name as Department, e.name as Employee, e.salary As Salary
from Employee e JOIN Department d 
On e.departmentId = d.id
Where (e.departmentId, e.salary) IN (
    Select departmentId, Max(salary)
    From Employee
    Group By departmentID
);