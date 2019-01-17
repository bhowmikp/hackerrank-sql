-- Query the average population for all cities in CITY, rounded down to
-- the nearest integer.

SELECT ROUND(SUM(POPULATION) / COUNT(NAME), 0)
FROM CITY;