-- Given the CITY and COUNTRY tables, query the sum of the populations of
-- all cities where the CONTINENT is 'Asia'.

SELECT SUM(CITY.POPULATION)
FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE AND COUNTRY.CONTINENT = 'Asia';