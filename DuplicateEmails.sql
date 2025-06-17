# Write your MySQL query statement below

Select email As Email
from Person 
Group By email
Having (Count(*) > 1);
