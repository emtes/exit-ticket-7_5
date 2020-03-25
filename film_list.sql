-- 1
SELECT COUNT(*) FROM film_list;

-- 2
SELECT title, description FROM film_list
ORDER BY LENGTH(description) ASC
LIMIT 10;

-- 3
SELECT * FROM film_list
ORDER BY length DESC
LIMIT 1;

-- 4
SELECT title, description FROM film_list
WHERE actors LIKE '%CAMERON STREEP%';

-- 5
SELECT COUNT(category), AVG(price), AVG(length)
FROM film_list;

-- Edit
SELECT category AS 'Genre',
AVG(price), AVG(length)
FROM film_list
GROUP BY catergory;


-- 6
SELECT rating, COUNT(rating) FROM film_list
GROUP BY rating;

-- 7
UPDATE film_list SET category = 'International' WHERE category = 'Foreign';

-- 8
DELETE FROM film_list WHERE category = 'Children';
