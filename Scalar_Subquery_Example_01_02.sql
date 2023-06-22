/*
Created By: Kendall Ruber
The following is an example of a query using a scalar subquery, as discussed in video 01_02.

Task: Write a query that uses a scalar subquery to identify orders whose Order Total  
is higher than the average total price of all other orders.

*/

-- Preview data if necessary 
-- select top (5) * FROM [Red30Tech].[dbo].[OnlineRetailSales$]

-- Write query
SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]
WHERE [Order Total] >= 
					(SELECT AVG([Order Total]) from [Red30Tech].[dbo].[OnlineRetailSales$])

-- OR-- 

-- Write query with the subquery in the select statement
SELECT *,  (SELECT AVG([Order Total]) from [Red30Tech].[dbo].[OnlineRetailSales$]) as AVG_TOTAL
FROM [Red30Tech].[dbo].[OnlineRetailSales$]
WHERE [Order Total] >= 
					(SELECT AVG([Order Total]) from [Red30Tech].[dbo].[OnlineRetailSales$])
