-- Given the CITY and COUNTRY tables, query the names of all cities where the
-- CONTINENT is 'Africa'.

SELECT CITY.NAME
FROM COUNTRY, CITY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE AND COUNTRY.CONTINENT = 'Africa';