SHOW TIMEZONE;

SELECT NOW();

SELECT TIMEOFDAY();

SELECT CURRENT_TIME;

SELECT CURRENT_DATE;

-- EXTRACT() - Allows to "extract" or obtain a sub-component of a date value
-- EXTRACT(YEAR FROM date_col)
SELECT EXTRACT(YEAR FROM payment_date) AS year
FROM payment;

SELECT EXTRACT(MONTH FROM payment_date) AS pay_month
FROM payment;

SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;

-- AGE()  - Calculates and returns the current age given a timestamp
--  AGE(date_col)
SELECT AGE(payment_date)
FROM payment;

-- TO_CHAR()  -  General function to convert data types to text
-- TO_CHAR(date_col, 'mm-dd-yyyy')
SELECT TO_CHAR(payment_date, 'MONTH-YYYY')
FROM payment;

SELECT TO_CHAR(payment_date, 'mon/dd/YYYY')
FROM payment;

SELECT DISTINCT(TO_CHAR(payment_date,'MONTH')) FROM payment;

-- Mathematical Functions and Operators
SELECT rental_rate/replacement_cost FROM film;
SELECT ROUND(rental_rate/replacement_cost,2)*100 AS percent_cost FROM film;

-- String Functions and Operators
SELECT LENGTH(first_name) FROM customer;

SELECT first_name || ' ' || last_name AS full_name
FROM customer

SELECT LEFT(first_name,1) || last_name || '@gmail.com'
FROM customer;

-- SubQuery
SELECT student,grade
FROM test_scores
WHERE grade > (SELECT AVG(grade) FROM test_scores);

SELECT student,grade
FROM test_scores
WHERE student IN
(SELECT student FROM honor_roll_table);

SELECT column_name
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

SELECT title,rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

SELECT film_id,title
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY title;

SELECT first_name,last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment as p
where p.customer_id = c.customer_id
AND amount > 11);

-- SelfJoin

SELECT tableA.col, tableB.col
FROM table AS tableA
JOIN table AS tableB ON
tableA.some_col = tableB.other_col;

SELECT emp.name, report.name AS rep
FROM employees AS emp
JOIN employees AS report 
ON emp.emp_id = report.report_id;

SELECT f1.title, f2.title, f1.length
FROM film AS f1
INNER JOIN film AS f2 
ON f1.film_id != f2.film_id
AND f1.length = f2.length;






