# Write your MySQL query statement below
SELECT 
    unique_id , name
From 
    Employees
    LEFT JOIN EmployeeUNI USING(id);
