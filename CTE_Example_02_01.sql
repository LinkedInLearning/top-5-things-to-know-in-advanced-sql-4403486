/*
Created By: Kendall Ruber
The following is an example of a query using Common Table Expression (CTE), as discussed in video 02_01.
Task: Re-write the query from video 01_02 that uses a CTE instead of a subquery to yield the same results.
The query identifies orders whose Order Total is higher than the average total price of all other orders.
*/

-- Write a CTE
WITH AVGTOTAL (AVG_TOTAL) AS
	(SELECT AVG([Order Total]) AS AVG_TOTAL 
	FROM [Red30Tech].[dbo].[OnlineRetailSales$])

SELECT * 
FROM [Red30Tech].[dbo].[OnlineRetailSales$], AVGTOTAL
WHERE [Order Total] >= AVG_TOTAL
