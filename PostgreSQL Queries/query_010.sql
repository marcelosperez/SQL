-- Instructions: The video store is running an end-of-year inventory review 
-- and wants to create a special catalog. The goal is to identify all 
-- films that were released during or before 2007. For this special 
-- catalog, the following information needs to be extracted from the database:
-- The title of each film, presented in all lowercase for a clean, consistent look.
-- The original price to rent the film.
-- A new column that shows the price of the film with a 25% discount 
-- displayed with decimal places. For that you'll need to use the round function
-- the number 2 in the function indicates the number of decimal spaces
SELECT LOWER(title) AS lower_case_title, rental_rate,
             ROUND(rental_rate * 0.75, 2) AS sale_rate
FROM film
WHERE release_year <= 2007;
