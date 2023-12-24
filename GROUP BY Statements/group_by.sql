-- Most Common Aggregate Functions:
-- AVG() - returns average VALUES
-- COUNT() - returns number of VALUES
-- MAX() - returns maximum value 
-- MIN() - returns minimum value
-- SUM() - returns the sum of all values

SELECT MIN(replacement_cost) FROM film;

SELECT MAX(replacement_cost) FROM film;

SELECT MAX(replacement_cost), MIN(replacement_cost) FROM film;

SELECT AVG(replecement_cost) FROM film;

SELECT ROUND(AVG(replecement_cost),2) FROM film;

SELECT SUM(replecement_cost) FROM film;

-- GROUP BY 
-- SELECT category_col, AGG(data_col) FROM table GROUP BY category_col;
-- SELECT category_col, AGG(data_col) FROM table WHERE category_col != 'A' GROUP BY category_col;

SELECT company, division, SUM(sales) FROM finance_table GROUP BY company,division;

SELECT company, division, SUM(sales) FROM finance_table WHERE division IN ('marketing', 'transport') GROUP BY company,division;

SELECT company, SUM(sales) FROM finance_table GROUP BY company ORDER BY SUM(sales);

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount);

SELECT customer_id,staff_id, SUM(amount) FROM payment GROUP BY staff_id, customer_id ORDER BY customer_id;

SELECT DATE(payment_date), SUM(amount) FROM payment GROUP BY DATE(payment_date) ORDER BY SUM(amount);

SELECT staff_id,COUNT(*) FROM payment GROUP BY staff_id;

SELECT rating, ROUND(AVG(replacement_cost),2) FROM film GROUP BY rating;

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC LIMIT 5;




