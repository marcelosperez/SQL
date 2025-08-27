-- List the first name, last name, and salary of all employees 
-- who have a job title of 'Sales Manager' or 'Shipping Clerk'
-- Note: This is a variation of the previous query
SELECT first_name, last_name, job_title, salary
FROM hr.employees e
INNER JOIN hr.jobs j ON e.job_id = j.job_id
WHERE job_title IN ('Sales Manager', 'Shipping Clerk');