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








