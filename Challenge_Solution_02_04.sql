/*
Created By: Kendall Ruber
Challenge Solution: CTEs
Task: Write a query that uses a CTE to return the ProdCategory, ProdNumber, ProdName, and In Stock of 
items that have less than the average amount of products left in stock to help the business know which 
products they are running low on.
*/

-- Preview data if necessary 
-- select top (5) * FROM [Red30Tech].[dbo].[Inventory$]

WITH LOWSTOCK (STOCK) AS 
		(SELECT AVG([In Stock]) AS STOCK FROM [Red30Tech].[dbo].[Inventory$])

SELECT [ProdCategory], [ProdNumber], [ProdName], [In Stock]
FROM [Red30Tech].[dbo].[Inventory$], LOWSTOCK
WHERE [In Stock] < STOCK
