# Advanced Select

```sql
-- case statement
CASE WHEN A IS NULL THEN function
     WHEN B IS NULL THEN function
     ELSE function
END

-- if statement
IF (A+B <= C, true case, false case)
```

```sql
-- selection
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName="Around the Horn" AND c.CustomerID=o.CustomerID;

SELECT c.company_code, l.lead_manager_code
FROM Comany c, Lead_Manager l;
```

```sql
-- group by
-- If a particular column has same values in different rows then it will arrange
-- these rows in a group.
-- Group By single column means, to place all the rows with same value of only that particular column in one group.
-- Group by multiple column means to place all the rows with same values of both
-- the columns column1 and column2 in one group.


SELECT column1, function_name(column2)
FROM table_name
WHERE condition
GROUP BY column1, column2
ORDER BY column1, column2;
```