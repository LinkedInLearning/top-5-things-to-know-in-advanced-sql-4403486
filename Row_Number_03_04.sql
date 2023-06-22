/*
Created By: Kendall Ruber
Challenge Solution: ROW_NUMBER()
Task: Write a query using ROW_NUMBER() that returns the OrderNum, OrderDate, CustName, ProdCategory, ProdName, and 
Order Total of the top 3 orders that have the highest Order Total from each ProdCategory purchased by Boehm Inc.
*/

-- Preview data if necessary
-- SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]

-- Solution: Remember your solution may look slightly different than mine! You could also use a subquery to accomplish this.
WITH ROW_NUMBERS as (
					SELECT OrderNum, OrderDate, CustName, ProdCategory, ProdName, [Order Total],
					ROW_NUMBER() OVER(PARTITION BY [ProdCategory] ORDER BY [Order Total] DESC) as ROW_NUM
					FROM  [Red30Tech].[dbo].[OnlineRetailSales$]
					where CustName = 'Boehm Inc.'
					)

SELECT OrderNum, OrderDate, CustName, ProdCategory, ProdName, [Order Total] FROM ROW_NUMBERS 
WHERE ROW_NUM in (1,2,3)
ORDER BY [ProdCategory],[Order Total] DESC
