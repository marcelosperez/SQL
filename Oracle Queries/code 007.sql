-- Source:
-- https://livesql.oracle.com/next/
-- Find all employees who do not have the job title 'Manager'.
SELECT first_name, last_name, job_id
FROM hr.employees
WHERE job_id NOT IN 
  (SELECT  job_id
    FROM   hr.jobs
    WHERE job_title LIKE '%Manager%');
-- Tip:
-- Use NOT IN, LIKE, '%'
-- This exercise uses a subquery in the WHERE clause to find 
-- the job_id for all jobs with the title 'Manager' and then  
-- excludes any employees with that job_id
