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