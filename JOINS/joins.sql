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

