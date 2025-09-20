-- Source:
-- https://livesql.oracle.com/next/
-- List all departments that have at least one employee
-- Use the EXISTS operator to check if a subquery returns any rows
SELECT d.department_name
FROM hr.departments d
WHERE EXISTS (
  SELECT 1
  FROM hr.employees e
  WHERE e.department_id = d.department_id
-- Tip:
-- The outer query selects the department_name from hr_departments
-- The subquery checks if there is at least one row in hr_employees 
-- where the department_id matches
-- The EXISTS operator ensures that only departments with at least 
-- one employee are included.

