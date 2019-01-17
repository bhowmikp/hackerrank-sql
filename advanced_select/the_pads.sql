-- Output name and first letter of profession in format name(occupation)
-- Give count of different occupations present

SELECT CONCAT(NAME, '(', UPPER(SUBSTRING(OCCUPATION, 1, 1)), ')') AS NAME_OCCUPATION
FROM OCCUPATIONS
ORDER BY NAME_OCCUPATION ASC;


SELECT CONCAT('There are a total of ', COUNT(OCCUPATION), ' ', LOWER(OCCUPATION), 's.') AS TOTAL
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY TOTAL ASC;
