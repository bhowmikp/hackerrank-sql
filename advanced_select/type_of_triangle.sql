-- Identify type of triangle based on condtitions

SELECT IF (A + B <= C,
           'Not A Triangle',
           IF (A = B
               AND A = C,
                   'Equilateral',
                   IF(A = B
                      OR B = C
                      OR A = C, 'Isosceles', 'Scalene')))
FROM TRIANGLES;


SELECT CASE
           WHEN A + B <= C THEN 'Not A Triangle'
           WHEN A = B
                AND A = C THEN 'Equilateral'
           WHEN A = B
                OR B = C
                OR A = C THEN 'Isosceles'
           ELSE 'Scalene'
       END
FROM TRIANGLES;
