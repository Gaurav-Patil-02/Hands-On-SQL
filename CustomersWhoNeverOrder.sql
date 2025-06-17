# Write your MySQL query statement below
SELECT name As Customers
from Customers
where id not in (Select customerID from Orders)
