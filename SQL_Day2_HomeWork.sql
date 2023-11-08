-- Question 1
SELECT COUNT(first_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;

-- Question 3
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id -- takes the total amount of the columns associated with the source it's locating***
ORDER BY COUNT(film_id) DESC;

-- Question 4
SELECT COUNT(customer_id)
FROM customer
WHERE last_name = 'William';

-- Question 5
SELECT COUNT(rental_id), staff_id
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC
LIMIT 1;

-- Question 6
SELECT COUNT(DISTINCT(district))
FROM address
WHERE district LIKE '%';

-- Question 7
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC
LIMIT 1;

-- Question 8
SELECT (first_name), last_name
FROM customer
WHERE last_name LIKE '%es'
ORDER BY last_name ASC;

-- Question 9
SELECT COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250;

-- Question 10
SELECT COUNT(DISTINCT(rating))
FROM film;

SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating 
ORDER BY COUNT(film_id) DESC;








