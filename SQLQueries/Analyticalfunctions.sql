-- 6. Assign a rank to employees based on their salary within each department.
-- This query assigns the ranking to the complete data as per the values in the column salary starting rank 1 with the highest salary
SELECT department_id, employee_id, salary, 
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM HR.employees;

-- the below query groups each department id and then applies the ranking by salary only within each group of department

SELECT department_id, employee_id, salary, 
       RANK() OVER (Partition by department_id ORDER BY salary DESC) AS salary_rank
FROM HR.employees;
