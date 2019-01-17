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