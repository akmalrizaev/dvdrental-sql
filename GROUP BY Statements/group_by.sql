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