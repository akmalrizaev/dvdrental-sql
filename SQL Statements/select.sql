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