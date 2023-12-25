-- INNER JOIN
-- An INNER JOIN will result with the set of records that match in both tables

-- SELECT * FROM TableA
-- INNER JOIN TableB
-- ON TableA.col_match = TableB.col_match;

SELECT * FROM Registrations
INNER JOIN Logins
ON Registrations.name = Logins.name;

SELECT reg_id, Logins.name, log_id
FROM Registrations
INNER JOIN Logins
ON Registration.name = Logins.name;

SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT payment_id, payment.customer_id, first_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

-- Full Outer Joins

-- SELECT * FROM TableA
-- FULL OUTER JOIN TableB
-- ON TableA.col_match = TableB.col_match;

SELECT * FROM Registrations
FULL OUTER JOIN Logins
ON Registrations.name = Logins.name;

SELECT * FROM TableA
FULL OUTER JOIN TableB
ON TableA.col_match = TableB.col_match
WHERE TableA.id IS NULL OR
TableB.id IS NULL;

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS NULL
OR payment.payment_id IS NULL;

-- Left Outer Join

-- SELECT * FROM TableA
-- LEFT OUTER JOIN TableB
-- ON TableA.col_match = TableB.col_match;

SELECT * FROM Registrations
LEFT OUTER JOIN Logins
ON Registrations.name = Logins.name;

SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.col_match = TableB.col_match
WHERE TableB.id IS NULL;

SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory 
ON inventory.film_id = film.film_id;



