-- Query to retrieve the first_name and last_name of customer and the amount paid
-- Only include payments from customers who are active in the database.
-- Sort the entire list of payments by the amount, from the highest amount to the lowest.
SELECT c.first_name, c.last_name, p.amount
FROM payment AS p
INNER JOIN customer AS c
  ON p.customer_id = c.customer_id
WHERE c.active IS NOT NULL
ORDER BY amount DESC;
