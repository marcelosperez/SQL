-- Source:
-- https://livesql.oracle.com/next/
-- Find the names and salary of all employees who work 
-- in the same department as the employee with the last name 'Grant'
-- Note: The AND last_name ! = 'Grant'; clause is included to prevent 
-- the employee 'Grant' from appearing in the final result set.
SELECT first_name, last_name, salary
FROM hr.employees
WHERE department_id IN (
            SELECT department_id
            FROM hr.employees
            WHERE last_name = 'Grant')
AND
  last_name ! = 'Grant';
