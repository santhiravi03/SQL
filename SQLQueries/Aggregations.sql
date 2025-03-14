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

-- 6. Find the average salary for each job role
select job_id,AVG(SALARY)
from hr.EMPLOYEES
group by JOB_ID

-- 7. Find the maximum salary for each job role
select job_id,MAX(SALARY)
from hr.EMPLOYEES
group by JOB_ID

-- 8. Find the minimum salary for each job role
select job_id,MIN(SALARY)
from hr.EMPLOYEES
group by JOB_ID

-- 9. Find the total salary paid for each job role
select job_id,sum(SALARY)
from hr.EMPLOYEES
group by JOB_ID

-- 10. Count the number of employees hired in each year
select EXTRACT(YEAR FROM hire_date) HRD_Year,count(EMPLOYEE_ID)
from hr.EMPLOYEES
group by HRD_Year


