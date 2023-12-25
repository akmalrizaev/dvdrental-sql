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







