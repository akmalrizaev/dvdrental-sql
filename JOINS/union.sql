-- UNION

-- SELECT column_name(s) FROM table1
-- UNION
-- SELECT column_name(s) FROM table2;

SELECT * FROM Sales2023_Q1
UNION
SELECT * FROM Sales2023_Q2;

SELECT * FROM Sales2023_Q1
UNION
SELECT * FROM Sales2023_Q2
ORDER BY name;

