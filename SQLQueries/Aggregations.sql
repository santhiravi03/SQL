-- 1. Count the number of employees in each department
-- This query groups employees by department_id and counts how many employees exist in each.
SELECT department_id, COUNT(*) AS total_employees
FROM hr.employees
GROUP BY department_id;

-- 2. Find the average salary in each department
-- this query finds the average for each of the department by grouping at the department id level
select DEPARTMENT_ID,avg(SALARY) from hr.employees
group by DEPARTMENT_ID


