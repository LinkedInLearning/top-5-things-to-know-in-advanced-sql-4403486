/*
Created By: Kendall Ruber
Challenge Solution: Subqueries
Task: Use the Inventory table to write a query that uses a subquery to return the ProdCategory, ProdNumber, ProdName, 
and In Stock of items that have less than the average amount of products left in stock to 
help the business know which products they are running low on.
*/

-- Preview data if necessary 
-- select top (5) * FROM [Red30Tech].[dbo].[Inventory$]

SELECT [ProdCategory], [ProdNumber], [ProdName], [In Stock]
FROM [Red30Tech].[dbo].[Inventory$]
WHERE [In Stock] < (SELECT AVG([In Stock]) FROM [Red30Tech].[dbo].[Inventory$])
