
-- Query to find all films in the 'Action' category
SELECT f.title
FROM film AS f
JOIN film_category AS fc ON f.film_id = fc.film_id
JOIN category AS c ON fc.category_id = c.category_id
WHERE c.name = 'Action';