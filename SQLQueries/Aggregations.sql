-- 1. Count the number of employees in each department
-- This query groups employees by department_id and counts how many employees exist in each.
SELECT department_id, COUNT(*) AS total_employees
FROM hr.employees
GROUP BY department_id;

-- 2. Find the average salary in each department
-- this query finds the average for each of the department by grouping at the department id level
select DEPARTMENT_ID,avg(SALARY) from hr.employees
group by DEPARTMENT_ID

-- 3. Find the maximum and minimum salary in each department
SELECT DEPARTMENT_ID,MAX(SALARY),MIN(SALARY)
from hr.employees
group by DEPARTMENT_ID

-- 4. Find the total salary paid in each department
select department_id, sum(salary)
from hr.EMPLOYEES
group by DEPARTMENT_ID

-- 5. Count the number of employees in each job role
--desc hr.employees
select job_id,count(employee_id)
from hr.EMPLOYEES
group by JOB_ID


