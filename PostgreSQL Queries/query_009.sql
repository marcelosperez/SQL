-- Query to display the film titles in two ways: 
-- all in uppercase and all in lowercase. 
-- This exercise uses these two functions UPPER(column_name) and LOWER(column_name)
SELECT title,
             UPPER(title) AS UPPERCASE_TITLE,
            LOWER(title) AS LOWERCASE_TITLE
FROM film
ORDER BY title;
