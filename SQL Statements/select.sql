-- SELECT column_name FROM table_name

SELECT * FROM actor;

SELECT first_name FROM actor;

SELECT first_name, last_name FROM actor;

-- SELECT DISTINCT column FROM table;

SELECT DISTINCT release_year FROM film;

SELECT DISTINCT(rental_rate) FROM film;

SELECT DISTINCT rating FROM film;

SELECT COUNT(name) FROM table;

SELECT COUNT(choice) FROM table;

SELECT COUNT(*) FROM table;

SELECT COUNT(DISTINCT name) FROM table;

-- SELECT column1, column2 FROM table WHERE conditions;

SELECT name, choice FROM table WHERE name='David';

SELECT name, choice FROM table WHERE name='David' AND choice='Red';

SELECT COUNT(*) FROM film WHERE rental_rate > 4 AND replacement_cost >= 19.99 AND rating='R';

SELECT * FROM film WHERE rating != 'R';

SELECT email FROM customer WHERE first_name= 'Nancy' AND last_name='Thomas';

-- SELECT column_1, column_2 FROM table ORDER BY column_1 ASC/DESC

SELECT company,name,sales FROM table ORDER BY company, sales

SELECT store_id,first_name FROM customer ORDER BY store_id DESC,first_name ASC;

-- LIMIT

SELECT * FROM payment ORDER BY payment_date DESC LIMIT 5;

SELECT * FROM payment WHERE amount != 0.00 ORDER BY payment_date DESC LIMIT 5;

-- BETWEEN

SELECT * FROM payment WHERE amount BETWEEN 8 AND 9;

SELECT COUNT(*) FROM payment WHERE amount BETWEEN 8 AND 9;

SELECT * FROM payment WHERE amount NOT BETWEEN 8 AND 9;

SELECT * FROM payment WHERE payment_date BETWEEN '2023-02-01' AND '2023-02-15';

-- IN

SELECT color FROM table WHERE color IN ('red','blue');

SELECT color FROM table WHERE color NOT IN ('red','blue');

SELECT * FROM payment WHERE amount IN (0.99,1.98,1.99);
