-- Query to retrieve the first name, last name, 
-- and total amount paid for all customers who are currently active. 
-- Order the results by the total amount paid, from highest to lowest.
SELECT c.first_name, c.last_name,
             SUM(p.amount) AS total_paid
FROM customer AS c
INNER JOIN payment AS p ON c.customer_id = p.customer_id
WHERE c.active = 1
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_paid DESC;
-- Tips:
-- Filter the results to include only customers where the active column is set to 1.
-- Calculate the total amount paid for each customer by grouping the results.
-- Order the results by the calculated total amount, in descending order.