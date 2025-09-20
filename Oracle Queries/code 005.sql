-- Source:
-- https://livesql.oracle.com/next/
-- Find all employees who earn more 
-- than the average salary of their own department.
-- Note: A correlated subquery is a subquery that depends on 
-- the outer query for its values. It executes once for each 
-- row processed by the outer query
SELECT employee_id, first_name, last_name, 
            salary, department_id
FROM hr.employees outer_emp
WHERE salary > (
    SELECT AVG(salary)
    FROM hr.employees inner_emp
    WHERE inner_emp.department_id = outer_emp.department_id
  )
ORDER BY department_id, salary DESC;
