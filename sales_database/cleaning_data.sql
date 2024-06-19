-- checking missing data
SELECT *
FROM Sales
WHERE InvoiceId IS NULL
   OR Branch IS NULL
   OR City IS NULL
   OR CustomerType IS NULL
   OR Gender IS NULL
   OR ProductLine IS NULL
   OR UnitPrice IS NULL
   OR Quantity IS NULL
   OR Tax IS NULL
   OR Total IS NULL
   OR PurchaseDate IS NULL
   OR PurchaseTime IS NULL
   OR PaymentMethod IS NULL
   OR COGS IS NULL
   OR GrossMarginPercentage IS NULL
   OR GrossIncome IS NULL
   OR Rating IS NULL;

----searching for duplicates
SELECT InvoiceId FROM sales
GROUP BY InvoiceId
HAVING COUNT(*)>1;

---- data validation for PaymentMethod
SELECT DISTINCT PaymentMethod 
FROM sales;

-- data validation for Branch 
SELECT DISTINCT Branch 
FROM sales;

-- data validation for City
SELECT DISTINCT City 
FROM sales;

-- data validation for CustomerType
SELECT DISTINCT CustomerType
FROM sales;

-- data validation for Gender
SELECT DISTINCT Gender
FROM sales;


-- data validation for ProductLine
SELECT DISTINCT ProductLine
FROM sales;
