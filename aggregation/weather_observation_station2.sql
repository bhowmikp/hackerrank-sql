-- Find sum of all values in LAT_N and LONG_W rounded to a scale of 2
-- decimal places.

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;