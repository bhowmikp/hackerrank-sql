-- Consider P(a, b) and P(c, d) to be two points on a 2D plane.
--   a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
--   b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
--   c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
--   d happens to equal the maximum value in Western Longitude (LONG_W in STATION).

SELECT ROUND((MAX(LAT_N) - MIN(LAT_N)) + (MAX(LONG_W) - MIN(LONG_W)), 4)
FROM STATION;