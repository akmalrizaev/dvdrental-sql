-- Data Types
-- Boolean - True or False
-- Character - char, varchar, and text
-- Numeric - integer and floating-point number
-- Temporal - date, time, timestamp, and interval

-- The most common constraints used:
-- - NOTNULL - Ensures that a column cannot have NULL value 
-- - UNIQUE - Ensures that all values in a column are different
-- - PRIMARY key - Uniquely identifies each row/record in a database table 
-- - FOREIGN key - Constarains data based on columns in other tables
-- - CHECK - Ensures that all values in a column satisfy certain consition
-- - EXCLUSION - 

-- CREATE Table
-- CREATE TABLE table_name (
--   column_name TYPE column_constraint,
--   column_name TYPE column_constraint,
--   table_constrait table_constraint
--   ) INHERITS existing_table_name;

CREATE TABLE players(
player_id SERIAL PRIMARY KEY,
age SMALLINT NOT NULL);

CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
);

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOTNULL
);

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);

-- INSERT
-- INSERT INTO table (column1, column2,...)
-- VALUES
-- (value1, value2, ...),
-- (value1, value2, ...),...;

INSERT INTO table(column1, column2, ...)
SELECT column1, column2, ...
FROM another_table
WHERE condition;

INSERT INTO account(username,password,email,created_on)
VALUES
('Alex','password','alex@mail.com',CURRENT_TIMESTAMP);

INSERT INTO job(job_name)
VALUES
('Astronaut')

-- UPDATE
-- UPDATE table 
-- SET column1 = value1,
-- 	column2 = value2 ,...
-- WHERE condition;

UPDATE account
SET last_login = CURRENT_TIMESTAMP
WHERE last_login IS NULL;

UPDATE TableA
SET original_col = TableB.new_col
FROM tableB
WHERE TableA.id = TableB.id;

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id

UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email,created_on,last_login;

-- DELETE

DELETE FROM table 
WHERE row_id = 1;

DELETE FROM tableA
USING tableB
WHERE tableA.id=TableB.id;

DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id,job_name;

-- ALTER
ALTER TABLE table_name action

ALTER TABLE table_name
ADD COLUMN new_col TYPE

ALTER TABLE information
RENAME TO new_info

ALTER TABLE new_info
RENAME COLUMN person TO people;

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;











