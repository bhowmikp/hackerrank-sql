-- Given value(n), parent(p) determine different types of nodes

SELECT CASE
           WHEN P IS NULL THEN CONCAT(N, ' Root')
           WHEN N IN
                  (SELECT DISTINCT P
                   FROM BST) THEN CONCAT(N, ' Inner')
           ELSE CONCAT(N, ' Leaf')
       END
FROM BST
ORDER BY N ASC;
